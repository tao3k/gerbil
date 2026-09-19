(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/top::timestamp 1789839226)
  (begin
    (declare (not safe))
    (define gx#core-expand-begin%
      (lambda (_%stx194006%_)
        (letrec ((_%expand-special194008%_
                  (lambda (_%hd194010%_ _%K194011%_ _%rest194012%_ _%r194013%_)
                    (_%K194011%_
                     _%rest194012%_
                     (cons (gx#core-expand-top _%hd194010%_) _%r194013%_)))))
          (gx#core-expand-block__0 _%stx194006%_ _%expand-special194008%_))))
    (define gx#core-expand-begin-syntax%
      (lambda (_%stx193660%_)
        (letrec ((_%expand-special193662%_
                  (lambda (_%hd193782%_ _%K193783%_ _%rest193784%_ _%r193785%_)
                    (let* ((_%K*193789%_
                            (lambda (_%e193787%_)
                              (_%K193783%_
                               _%rest193784%_
                               (cons _%e193787%_ _%r193785%_))))
                           (_%$%e193790193842%_ _%hd193782%_)
                           (_%$%E193828193846%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e193790193842%_)))
                           (_%$%E193824193888%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193790193842%_)
                                  (let ((_%$%e193829193850%_
                                         (gx#syntax-e _%$%e193790193842%_)))
                                    (let ((_%$%hd193830193853%_
                                           (##car _%$%e193829193850%_))
                                          (_%$%tl193831193855%_
                                           (##cdr _%$%e193829193850%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193830193853%_)
                                               (gx#core-identifier=?
                                                _%$%hd193830193853%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl193831193855%_)
                                              (let ((_%$%e193832193858%_
                                                     (gx#syntax-e
                                                      _%$%tl193831193855%_)))
                                                (let ((_%$%hd193833193861%_
                                                       (##car _%$%e193832193858%_))
                                                      (_%$%tl193834193863%_
                                                       (##cdr _%$%e193832193858%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd193833193861%_)
                                                      (let ((_%$%e193838193866%_
                                                             (gx#syntax-e
                                                              _%$%hd193833193861%_)))
                                                        (let ((_%$%hd193839193869%_
                                                               (##car _%$%e193838193866%_))
                                                              (_%$%tl193840193871%_
                                                               (##cdr _%$%e193838193866%_)))
                                                          (let ((_%id193874%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd193839193869%_))
                    (if (gx#stx-null? _%$%tl193840193871%_)
                        (if (gx#stx-pair? _%$%tl193834193863%_)
                            (let ((_%$%e193835193876%_
                                   (gx#syntax-e _%$%tl193834193863%_)))
                              (let ((_%$%hd193836193879%_
                                     (##car _%$%e193835193876%_))
                                    (_%$%tl193837193881%_
                                     (##cdr _%$%e193835193876%_)))
                                (let ((_%props193884%_ _%$%hd193836193879%_))
                                  (if (gx#stx-null? _%$%tl193837193881%_)
                                      (let ((_%bind193886%_
                                             (gx#resolve-identifier__0
                                              _%id193874%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind193886%_
                                         _%props193884%_)
                                        (_%K193783%_
                                         _%rest193784%_
                                         _%r193785%_))
                                      (_%$%E193828193846%_)))))
                            (_%$%E193828193846%_))
                        (_%$%E193828193846%_)))))
              (_%$%E193828193846%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193828193846%_))
                                          (_%$%E193828193846%_))))
                                  (_%$%E193828193846%_))))
                           (_%$%E193820193900%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193790193842%_)
                                  (let ((_%$%e193825193892%_
                                         (gx#syntax-e _%$%e193790193842%_)))
                                    (let ((_%$%hd193826193895%_
                                           (##car _%$%e193825193892%_))
                                          (_%$%tl193827193897%_
                                           (##cdr _%$%e193825193892%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193826193895%_)
                                               (gx#core-identifier=?
                                                _%$%hd193826193895%_
                                                '%#define-runtime))
                                          (_%K*193789%_
                                           (gx#core-expand-define-runtime%
                                            _%hd193782%_))
                                          (_%$%E193824193888%_))))
                                  (_%$%E193824193888%_))))
                           (_%$%E193816193912%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193790193842%_)
                                  (let ((_%$%e193821193904%_
                                         (gx#syntax-e _%$%e193790193842%_)))
                                    (let ((_%$%hd193822193907%_
                                           (##car _%$%e193821193904%_))
                                          (_%$%tl193823193909%_
                                           (##cdr _%$%e193821193904%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193822193907%_)
                                               (gx#core-identifier=?
                                                _%$%hd193822193907%_
                                                '%#define-alias))
                                          (_%K*193789%_
                                           (gx#core-expand-define-alias%
                                            _%hd193782%_))
                                          (_%$%E193820193900%_))))
                                  (_%$%E193820193900%_))))
                           (_%$%E193806193924%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193790193842%_)
                                  (let ((_%$%e193817193916%_
                                         (gx#syntax-e _%$%e193790193842%_)))
                                    (let ((_%$%hd193818193919%_
                                           (##car _%$%e193817193916%_))
                                          (_%$%tl193819193921%_
                                           (##cdr _%$%e193817193916%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193818193919%_)
                                               (gx#core-identifier=?
                                                _%$%hd193818193919%_
                                                '%#define-syntax))
                                          (_%K*193789%_
                                           (gx#core-expand-define-syntax%
                                            _%hd193782%_))
                                          (_%$%E193816193912%_))))
                                  (_%$%E193816193912%_))))
                           (_%$%E193796193956%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193790193842%_)
                                  (let ((_%$%e193807193928%_
                                         (gx#syntax-e _%$%e193790193842%_)))
                                    (let ((_%$%hd193808193931%_
                                           (##car _%$%e193807193928%_))
                                          (_%$%tl193809193933%_
                                           (##cdr _%$%e193807193928%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193808193931%_)
                                               (gx#core-identifier=?
                                                _%$%hd193808193931%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl193809193933%_)
                                              (let ((_%$%e193810193936%_
                                                     (gx#syntax-e
                                                      _%$%tl193809193933%_)))
                                                (let ((_%$%hd193811193939%_
                                                       (##car _%$%e193810193936%_))
                                                      (_%$%tl193812193941%_
                                                       (##cdr _%$%e193810193936%_)))
                                                  (let ((_%hd-bind193944%_
                                                         _%$%hd193811193939%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl193812193941%_)
                                                        (let ((_%$%e193813193946%_
                                                               (gx#syntax-e
                                                                _%$%tl193812193941%_)))
                                                          (let ((_%$%hd193814193949%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e193813193946%_))
                        (_%$%tl193815193951%_ (##cdr _%$%e193813193946%_)))
                    (let ((_%expr193954%_ _%$%hd193814193949%_))
                      (if (gx#stx-null? _%$%tl193815193951%_)
                          (if (gx#core-bind-values? _%hd-bind193944%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind193944%_)
                                (_%K*193789%_ _%hd193782%_))
                              (_%$%E193806193924%_))
                          (_%$%E193806193924%_)))))
                (_%$%E193806193924%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193806193924%_))
                                          (_%$%E193806193924%_))))
                                  (_%$%E193806193924%_))))
                           (_%$%E193792193990%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193790193842%_)
                                  (let ((_%$%e193797193960%_
                                         (gx#syntax-e _%$%e193790193842%_)))
                                    (let ((_%$%hd193798193963%_
                                           (##car _%$%e193797193960%_))
                                          (_%$%tl193799193965%_
                                           (##cdr _%$%e193797193960%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193798193963%_)
                                               (gx#core-identifier=?
                                                _%$%hd193798193963%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl193799193965%_)
                                              (let ((_%$%e193800193968%_
                                                     (gx#syntax-e
                                                      _%$%tl193799193965%_)))
                                                (let ((_%$%hd193801193971%_
                                                       (##car _%$%e193800193968%_))
                                                      (_%$%tl193802193973%_
                                                       (##cdr _%$%e193800193968%_)))
                                                  (let ((_%hd-bind193976%_
                                                         _%$%hd193801193971%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl193802193973%_)
                                                        (let ((_%$%e193803193978%_
                                                               (gx#syntax-e
                                                                _%$%tl193802193973%_)))
                                                          (let ((_%$%hd193804193981%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e193803193978%_))
                        (_%$%tl193805193983%_ (##cdr _%$%e193803193978%_)))
                    (let* ((_%expr193986%_ _%$%hd193804193981%_)
                           (_%props193988%_ _%$%tl193805193983%_))
                      (if (and (gx#core-bind-values? _%hd-bind193976%_)
                               (gx#stx-list? _%props193988%_)
                               (not (gx#stx-null? _%props193988%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind193976%_)
                            (_%K193783%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind193976%_
                                          (cons _%props193988%_ '())))
                                   _%rest193784%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind193976%_
                                          (cons _%expr193986%_ '())))
                                   _%r193785%_)))
                          (_%$%E193796193956%_)))))
                (_%$%E193796193956%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193796193956%_))
                                          (_%$%E193796193956%_))))
                                  (_%$%E193796193956%_))))
                           (_%$%E193791194002%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193790193842%_)
                                  (let ((_%$%e193793193994%_
                                         (gx#syntax-e _%$%e193790193842%_)))
                                    (let ((_%$%hd193794193997%_
                                           (##car _%$%e193793193994%_))
                                          (_%$%tl193795193999%_
                                           (##cdr _%$%e193793193994%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193794193997%_)
                                               (gx#core-identifier=?
                                                _%$%hd193794193997%_
                                                '%#begin-syntax))
                                          (_%K*193789%_
                                           (gx#core-expand-begin-syntax%
                                            _%hd193782%_))
                                          (_%$%E193792193990%_))))
                                  (_%$%E193792193990%_)))))
                      (_%$%E193791194002%_))))
                 (_%eval-body193663%_
                  (lambda (_%rbody193671%_)
                    (let _%lp193673%_ ((_%rest193675%_ _%rbody193671%_)
                                       (_%body193676%_ '())
                                       (_%ebody193677%_ '()))
                      (let* ((_%$%rest193678193686%_ _%rest193675%_)
                             (_%$%else193680193694%_
                              (lambda ()
                                (values _%body193676%_
                                        (gx#eval-syntax*
                                         (gx#core-quote-syntax__1
                                          (gx#core-cons
                                           '%#begin
                                           _%ebody193677%_)
                                          (gx#stx-source _%stx193660%_))))))
                             (_%$%K193682193770%_
                              (lambda (_%rest193697%_ _%hd193698%_)
                                (let* ((_%$%e193699193716%_ _%hd193698%_)
                                       (_%$%E193711193720%_
                                        (lambda ()
                                          (_%lp193673%_
                                           _%rest193697%_
                                           (cons _%hd193698%_ _%body193676%_)
                                           (cons _%hd193698%_
                                                 _%ebody193677%_))))
                                       (_%$%E193701193732%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e193699193716%_)
                                              (let ((_%$%e193712193724%_
                                                     (gx#syntax-e
                                                      _%$%e193699193716%_)))
                                                (let ((_%$%hd193713193727%_
                                                       (##car _%$%e193712193724%_))
                                                      (_%$%tl193714193729%_
                                                       (##cdr _%$%e193712193724%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd193713193727%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd193713193727%_
                                                            '%#begin-syntax))
                                                      (_%lp193673%_
                                                       _%rest193697%_
                                                       (cons _%hd193698%_
                                                             _%body193676%_)
                                                       _%ebody193677%_)
                                                      (_%$%E193711193720%_))))
                                              (_%$%E193711193720%_))))
                                       (_%$%E193700193766%_
                                        (lambda ()
                                          (if (gx#stx-pair?
                                               _%$%e193699193716%_)
                                              (let ((_%$%e193702193736%_
                                                     (gx#syntax-e
                                                      _%$%e193699193716%_)))
                                                (let ((_%$%hd193703193739%_
                                                       (##car _%$%e193702193736%_))
                                                      (_%$%tl193704193741%_
                                                       (##cdr _%$%e193702193736%_)))
                                                  (if (and (gx#identifier?
                                                            _%$%hd193703193739%_)
                                                           (gx#core-identifier=?
                                                            _%$%hd193703193739%_
                                                            '%#define-values))
                                                      (if (gx#stx-pair?
                                                           _%$%tl193704193741%_)
                                                          (let ((_%$%e193705193744%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (gx#syntax-e _%$%tl193704193741%_)))
                    (let ((_%$%hd193706193747%_ (##car _%$%e193705193744%_))
                          (_%$%tl193707193749%_ (##cdr _%$%e193705193744%_)))
                      (let ((_%hd-bind193752%_ _%$%hd193706193747%_))
                        (if (gx#stx-pair? _%$%tl193707193749%_)
                            (let ((_%$%e193708193754%_
                                   (gx#syntax-e _%$%tl193707193749%_)))
                              (let ((_%$%hd193709193757%_
                                     (##car _%$%e193708193754%_))
                                    (_%$%tl193710193759%_
                                     (##cdr _%$%e193708193754%_)))
                                (let ((_%expr193762%_ _%$%hd193709193757%_))
                                  (if (gx#stx-null? _%$%tl193710193759%_)
                                      (let ((_%ehd193764%_
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#define-values)
                                                    (cons (gx#core-quote-bind-values
                                                           _%hd-bind193752%_)
                                                          (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%expr193762%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%hd193698%_))))
                                        (_%lp193673%_
                                         _%rest193697%_
                                         (cons _%ehd193764%_ _%body193676%_)
                                         (cons _%ehd193764%_ _%ebody193677%_)))
                                      (_%$%E193701193732%_)))))
                            (_%$%E193701193732%_)))))
                  (_%$%E193701193732%_))
              (_%$%E193701193732%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193701193732%_)))))
                                  (_%$%E193700193766%_)))))
                        (if (pair? _%$%rest193678193686%_)
                            (let ((_%$%hd193683193773%_
                                   (##car _%$%rest193678193686%_))
                                  (_%$%tl193684193775%_
                                   (##cdr _%$%rest193678193686%_)))
                              (let* ((_%hd193778%_ _%$%hd193683193773%_)
                                     (_%rest193780%_ _%$%tl193684193775%_))
                                (_%$%K193682193770%_
                                 _%rest193780%_
                                 _%hd193778%_)))
                            (_%$%else193680193694%_)))))))
          (call-with-parameters__1
           (lambda ()
             (let* ((_%rbody193666%_
                     (gx#core-expand-block__1
                      _%stx193660%_
                      _%expand-special193662%_
                      '#f))
                    (_g194039_ (_%eval-body193663%_ _%rbody193666%_)))
               (begin
                 (let ((_g194040_
                        (if (##values? _g194039_)
                            (##values-length _g194039_)
                            1)))
                   (if (not (##fx= _g194040_ 2))
                       (error "Context expects 2 values" _g194040_)))
                 (let ((_%expanded-body193668%_ (##values-ref _g194039_ 0))
                       (_%value193669%_ (##values-ref _g194039_ 1)))
                   (gx#core-quote-syntax__1
                    (if (##structure-instance-of?
                         (gx#current-expander-context)
                         'gx#module-context::t)
                        (gx#core-cons '%#begin-syntax _%expanded-body193668%_)
                        (cons (gx#core-quote-syntax__0 '%#quote)
                              (cons _%value193669%_ '())))
                    (gx#stx-source _%stx193660%_))))))
           gx#current-expander-phi
           (##fx+ (gx#current-expander-phi) '1)))))
    (define gx#core-expand-begin-foreign%
      (lambda (_%stx193630%_)
        (let* ((_%$%e193631193638%_ _%stx193630%_)
               (_%$%E193633193642%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193631193638%_)))
               (_%$%E193632193656%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193631193638%_)
                      (let ((_%$%e193634193646%_
                             (gx#syntax-e _%$%e193631193638%_)))
                        (let ((_%$%hd193635193649%_
                               (##car _%$%e193634193646%_))
                              (_%$%tl193636193651%_
                               (##cdr _%$%e193634193646%_)))
                          (let ((_%body193654%_ _%$%tl193636193651%_))
                            (if (gx#stx-list? _%body193654%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons '%#begin-foreign _%body193654%_)
                                 (gx#stx-source _%stx193630%_))
                                (_%$%E193633193642%_)))))
                      (_%$%E193633193642%_)))))
          (_%$%E193632193656%_))))
    (define gx#core-expand-begin-module%
      (lambda (_%stx193628%_)
        (gx#raise-syntax-error '#f '"Illegal expansion" _%stx193628%_)))
    (define gx#core-expand-begin-annotation%
      (lambda (_%stx193574%_)
        (let* ((_%$%e193575193588%_ _%stx193574%_)
               (_%$%E193577193592%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193575193588%_)))
               (_%$%E193576193624%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193575193588%_)
                      (let ((_%$%e193578193596%_
                             (gx#syntax-e _%$%e193575193588%_)))
                        (let ((_%$%hd193579193599%_
                               (##car _%$%e193578193596%_))
                              (_%$%tl193580193601%_
                               (##cdr _%$%e193578193596%_)))
                          (if (gx#stx-pair? _%$%tl193580193601%_)
                              (let ((_%$%e193581193604%_
                                     (gx#syntax-e _%$%tl193580193601%_)))
                                (let ((_%$%hd193582193607%_
                                       (##car _%$%e193581193604%_))
                                      (_%$%tl193583193609%_
                                       (##cdr _%$%e193581193604%_)))
                                  (let ((_%ann193612%_ _%$%hd193582193607%_))
                                    (if (gx#stx-pair? _%$%tl193583193609%_)
                                        (let ((_%$%e193584193614%_
                                               (gx#syntax-e
                                                _%$%tl193583193609%_)))
                                          (let ((_%$%hd193585193617%_
                                                 (##car _%$%e193584193614%_))
                                                (_%$%tl193586193619%_
                                                 (##cdr _%$%e193584193614%_)))
                                            (let ((_%expr193622%_
                                                   _%$%hd193585193617%_))
                                              (if (gx#stx-null?
                                                   _%$%tl193586193619%_)
                                                  (gx#core-quote-syntax__1
                                                   (cons (gx#core-quote-syntax__0
                                                          '%#begin-annotation)
                                                         (cons _%ann193612%_
                                                               (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%expr193622%_)
                             '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (gx#stx-source
                                                    _%stx193574%_))
                                                  (_%$%E193577193592%_)))))
                                        (_%$%E193577193592%_)))))
                              (_%$%E193577193592%_))))
                      (_%$%E193577193592%_)))))
          (_%$%E193576193624%_))))
    (define gx#core-expand-local-block
      (lambda (_%stx193199%_ _%body193200%_)
        (letrec ((_%expand-special193202%_
                  (lambda (_%hd193569%_ _%K193570%_ _%rest193571%_ _%r193572%_)
                    (_%K193570%_
                     '()
                     (cons (_%expand-internal193203%_
                            _%hd193569%_
                            _%rest193571%_)
                           _%r193572%_))))
                 (_%expand-internal193203%_
                  (lambda (_%hd193565%_ _%rest193566%_)
                    (call-with-parameters__1
                     (lambda ()
                       (_%wrap-internal193205%_
                        (gx#core-expand-block__1
                         (gx#stx-wrap-source
                          (cons '%#begin (cons _%hd193565%_ _%rest193566%_))
                          (gx#stx-source _%stx193199%_))
                         _%expand-internal-special193204%_
                         '#f)))
                     gx#current-expander-context
                     (let ((__obj194023
                            (##structure
                             gx#local-context::t
                             '#f
                             '#f
                             '#f
                             '#f
                             '#f)))
                       (gx#local-context:::init!__0 __obj194023)
                       __obj194023))))
                 (_%expand-internal-special193204%_
                  (lambda (_%hd193361%_ _%K193362%_ _%rest193363%_ _%r193364%_)
                    (let* ((_%$%e193365193413%_ _%hd193361%_)
                           (_%$%E193408193417%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; invalid syntax-case clause"
                               _%$%e193365193413%_)))
                           (_%$%E193395193429%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193365193413%_)
                                  (let ((_%$%e193409193421%_
                                         (gx#syntax-e _%$%e193365193413%_)))
                                    (let ((_%$%hd193410193424%_
                                           (##car _%$%e193409193421%_))
                                          (_%$%tl193411193426%_
                                           (##cdr _%$%e193409193421%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193410193424%_)
                                               (gx#core-identifier=?
                                                _%$%hd193410193424%_
                                                '%#declare))
                                          (_%K193362%_
                                           _%rest193363%_
                                           (cons (gx#core-expand-declare%
                                                  _%hd193361%_)
                                                 _%r193364%_))
                                          (_%$%E193408193417%_))))
                                  (_%$%E193408193417%_))))
                           (_%$%E193391193471%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193365193413%_)
                                  (let ((_%$%e193396193433%_
                                         (gx#syntax-e _%$%e193365193413%_)))
                                    (let ((_%$%hd193397193436%_
                                           (##car _%$%e193396193433%_))
                                          (_%$%tl193398193438%_
                                           (##cdr _%$%e193396193433%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193397193436%_)
                                               (gx#core-identifier=?
                                                _%$%hd193397193436%_
                                                '%#bind-runtime-properties!))
                                          (if (gx#stx-pair?
                                               _%$%tl193398193438%_)
                                              (let ((_%$%e193399193441%_
                                                     (gx#syntax-e
                                                      _%$%tl193398193438%_)))
                                                (let ((_%$%hd193400193444%_
                                                       (##car _%$%e193399193441%_))
                                                      (_%$%tl193401193446%_
                                                       (##cdr _%$%e193399193441%_)))
                                                  (if (gx#stx-pair?
                                                       _%$%hd193400193444%_)
                                                      (let ((_%$%e193405193449%_
                                                             (gx#syntax-e
                                                              _%$%hd193400193444%_)))
                                                        (let ((_%$%hd193406193452%_
                                                               (##car _%$%e193405193449%_))
                                                              (_%$%tl193407193454%_
                                                               (##cdr _%$%e193405193449%_)))
                                                          (let ((_%id193457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%$%hd193406193452%_))
                    (if (gx#stx-null? _%$%tl193407193454%_)
                        (if (gx#stx-pair? _%$%tl193401193446%_)
                            (let ((_%$%e193402193459%_
                                   (gx#syntax-e _%$%tl193401193446%_)))
                              (let ((_%$%hd193403193462%_
                                     (##car _%$%e193402193459%_))
                                    (_%$%tl193404193464%_
                                     (##cdr _%$%e193402193459%_)))
                                (let ((_%props193467%_ _%$%hd193403193462%_))
                                  (if (gx#stx-null? _%$%tl193404193464%_)
                                      (let ((_%bind193469%_
                                             (gx#resolve-identifier__0
                                              _%id193457%_)))
                                        (gx#core-bind-runtime-properties!
                                         _%bind193469%_
                                         _%props193467%_)
                                        (_%K193362%_
                                         _%rest193363%_
                                         _%r193364%_))
                                      (_%$%E193395193429%_)))))
                            (_%$%E193395193429%_))
                        (_%$%E193395193429%_)))))
              (_%$%E193395193429%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193395193429%_))
                                          (_%$%E193395193429%_))))
                                  (_%$%E193395193429%_))))
                           (_%$%E193387193483%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193365193413%_)
                                  (let ((_%$%e193392193475%_
                                         (gx#syntax-e _%$%e193365193413%_)))
                                    (let ((_%$%hd193393193478%_
                                           (##car _%$%e193392193475%_))
                                          (_%$%tl193394193480%_
                                           (##cdr _%$%e193392193475%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193393193478%_)
                                               (gx#core-identifier=?
                                                _%$%hd193393193478%_
                                                '%#define-alias))
                                          (begin
                                            (gx#core-expand-define-alias%
                                             _%hd193361%_)
                                            (_%K193362%_
                                             _%rest193363%_
                                             _%r193364%_))
                                          (_%$%E193391193471%_))))
                                  (_%$%E193391193471%_))))
                           (_%$%E193377193495%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193365193413%_)
                                  (let ((_%$%e193388193487%_
                                         (gx#syntax-e _%$%e193365193413%_)))
                                    (let ((_%$%hd193389193490%_
                                           (##car _%$%e193388193487%_))
                                          (_%$%tl193390193492%_
                                           (##cdr _%$%e193388193487%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193389193490%_)
                                               (gx#core-identifier=?
                                                _%$%hd193389193490%_
                                                '%#define-syntax))
                                          (begin
                                            (gx#core-expand-define-syntax%
                                             _%hd193361%_)
                                            (_%K193362%_
                                             _%rest193363%_
                                             _%r193364%_))
                                          (_%$%E193387193483%_))))
                                  (_%$%E193387193483%_))))
                           (_%$%E193367193527%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193365193413%_)
                                  (let ((_%$%e193378193499%_
                                         (gx#syntax-e _%$%e193365193413%_)))
                                    (let ((_%$%hd193379193502%_
                                           (##car _%$%e193378193499%_))
                                          (_%$%tl193380193504%_
                                           (##cdr _%$%e193378193499%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193379193502%_)
                                               (gx#core-identifier=?
                                                _%$%hd193379193502%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl193380193504%_)
                                              (let ((_%$%e193381193507%_
                                                     (gx#syntax-e
                                                      _%$%tl193380193504%_)))
                                                (let ((_%$%hd193382193510%_
                                                       (##car _%$%e193381193507%_))
                                                      (_%$%tl193383193512%_
                                                       (##cdr _%$%e193381193507%_)))
                                                  (let ((_%hd-bind193515%_
                                                         _%$%hd193382193510%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl193383193512%_)
                                                        (let ((_%$%e193384193517%_
                                                               (gx#syntax-e
                                                                _%$%tl193383193512%_)))
                                                          (let ((_%$%hd193385193520%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e193384193517%_))
                        (_%$%tl193386193522%_ (##cdr _%$%e193384193517%_)))
                    (let ((_%expr193525%_ _%$%hd193385193520%_))
                      (if (gx#stx-null? _%$%tl193386193522%_)
                          (if (gx#core-bind-values? _%hd-bind193515%_)
                              (begin
                                (gx#core-bind-values!__0 _%hd-bind193515%_)
                                (_%K193362%_
                                 _%rest193363%_
                                 (cons _%hd193361%_ _%r193364%_)))
                              (_%$%E193377193495%_))
                          (_%$%E193377193495%_)))))
                (_%$%E193377193495%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193377193495%_))
                                          (_%$%E193377193495%_))))
                                  (_%$%E193377193495%_))))
                           (_%$%E193366193561%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e193365193413%_)
                                  (let ((_%$%e193368193531%_
                                         (gx#syntax-e _%$%e193365193413%_)))
                                    (let ((_%$%hd193369193534%_
                                           (##car _%$%e193368193531%_))
                                          (_%$%tl193370193536%_
                                           (##cdr _%$%e193368193531%_)))
                                      (if (and (gx#identifier?
                                                _%$%hd193369193534%_)
                                               (gx#core-identifier=?
                                                _%$%hd193369193534%_
                                                '%#define-values))
                                          (if (gx#stx-pair?
                                               _%$%tl193370193536%_)
                                              (let ((_%$%e193371193539%_
                                                     (gx#syntax-e
                                                      _%$%tl193370193536%_)))
                                                (let ((_%$%hd193372193542%_
                                                       (##car _%$%e193371193539%_))
                                                      (_%$%tl193373193544%_
                                                       (##cdr _%$%e193371193539%_)))
                                                  (let ((_%hd-bind193547%_
                                                         _%$%hd193372193542%_))
                                                    (if (gx#stx-pair?
                                                         _%$%tl193373193544%_)
                                                        (let ((_%$%e193374193549%_
                                                               (gx#syntax-e
                                                                _%$%tl193373193544%_)))
                                                          (let ((_%$%hd193375193552%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e193374193549%_))
                        (_%$%tl193376193554%_ (##cdr _%$%e193374193549%_)))
                    (let* ((_%expr193557%_ _%$%hd193375193552%_)
                           (_%props193559%_ _%$%tl193376193554%_))
                      (if (and (gx#core-bind-values? _%hd-bind193547%_)
                               (gx#stx-list? _%props193559%_)
                               (not (gx#stx-null? _%props193559%_)))
                          (begin
                            (gx#core-bind-values!__0 _%hd-bind193547%_)
                            (_%K193362%_
                             (cons (gx#core-cons
                                    '%#bind-runtime-properties!
                                    (cons _%hd-bind193547%_
                                          (cons _%props193559%_ '())))
                                   _%rest193363%_)
                             (cons (gx#core-cons
                                    '%#define-values
                                    (cons _%hd-bind193547%_
                                          (cons _%expr193557%_ '())))
                                   _%r193364%_)))
                          (_%$%E193367193527%_)))))
                (_%$%E193367193527%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E193367193527%_))
                                          (_%$%E193367193527%_))))
                                  (_%$%E193367193527%_)))))
                      (_%$%E193366193561%_))))
                 (_%wrap-internal193205%_
                  (lambda (_%rbody193207%_)
                    (let _%lp193209%_ ((_%rest193211%_ _%rbody193207%_)
                                       (_%decls193212%_ '())
                                       (_%bind193213%_ '())
                                       (_%body193214%_ '()))
                      (let* ((_%$%e193215193222%_ _%rest193211%_)
                             (_%$%E193217193271%_
                              (lambda ()
                                (let* ((_%body193266%_
                                        (let* ((_%$%body193225193235%_
                                                _%body193214%_)
                                               (_%$%else193228193243%_
                                                (lambda ()
                                                  (gx#core-quote-syntax__1
                                                   (gx#core-cons
                                                    '%#begin
                                                    _%body193214%_)
                                                   (gx#stx-source
                                                    _%stx193199%_)))))
                                          (let ((_%$%K193233193263%_
                                                 (lambda ()
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; empty body"
                                                    _%stx193199%_)))
                                                (_%$%K193230193249%_
                                                 (lambda (_%expr193247%_)
                                                   _%expr193247%_)))
                                            (let ((_%$%try-match193227193259%_
                                                   (lambda ()
                                                     (if (pair? _%$%body193225193235%_)
                                                         (let ((_%$%tl193232193254%_
                                                                (##cdr _%$%body193225193235%_))
                                                               (_%$%hd193231193252%_
                                                                (##car _%$%body193225193235%_)))
                                                           (if (null? _%$%tl193232193254%_)
                                                               (let ((_%expr193257%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%hd193231193252%_))
                         (_%$%K193230193249%_ _%expr193257%_))
                       (_%$%else193228193243%_)))
                 (_%$%else193228193243%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (if (null? _%$%body193225193235%_)
                                                  (_%$%K193233193263%_)
                                                  (_%$%try-match193227193259%_))))))
                                       (_%body193268%_
                                        (if (null? _%bind193213%_)
                                            _%body193266%_
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#letrec*-values)
                                                   (cons _%bind193213%_
                                                         (cons _%body193266%_
                                                               '())))
                                             (gx#stx-source _%stx193199%_)))))
                                  (if (null? _%decls193212%_)
                                      _%body193268%_
                                      (gx#core-quote-syntax__1
                                       (cons (gx#core-quote-syntax__0
                                              '%#begin-annotation)
                                             (cons _%decls193212%_
                                                   (cons _%body193268%_ '())))
                                       (gx#stx-source _%stx193199%_))))))
                             (_%$%E193216193357%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e193215193222%_)
                                    (let ((_%$%e193218193275%_
                                           (gx#syntax-e _%$%e193215193222%_)))
                                      (let ((_%$%hd193219193278%_
                                             (##car _%$%e193218193275%_))
                                            (_%$%tl193220193280%_
                                             (##cdr _%$%e193218193275%_)))
                                        (let* ((_%hd193283%_
                                                _%$%hd193219193278%_)
                                               (_%rest193285%_
                                                _%$%tl193220193280%_)
                                               (_%$%e193286193303%_
                                                _%hd193283%_)
                                               (_%$%E193298193307%_
                                                (lambda ()
                                                  (if (null? _%bind193213%_)
                                                      (_%lp193209%_
                                                       _%rest193285%_
                                                       _%decls193212%_
                                                       _%bind193213%_
                                                       (cons _%hd193283%_
                                                             _%body193214%_))
                                                      (_%lp193209%_
                                                       _%rest193285%_
                                                       _%decls193212%_
                                                       (cons (cons '#f
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons _%hd193283%_ '()))
                     _%bind193213%_)
               _%body193214%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E193288193321%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e193286193303%_)
                                                      (let ((_%$%e193299193311%_
                                                             (gx#syntax-e
                                                              _%$%e193286193303%_)))
                                                        (let ((_%$%hd193300193314%_
                                                               (##car _%$%e193299193311%_))
                                                              (_%$%tl193301193316%_
                                                               (##cdr _%$%e193299193311%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd193300193314%_)
                           (gx#core-identifier=?
                            _%$%hd193300193314%_
                            '%#declare))
                      (let ((_%xdecls193319%_ _%$%tl193301193316%_))
                        (_%lp193209%_
                         _%rest193285%_
                         (gx#stx-foldr cons _%decls193212%_ _%xdecls193319%_)
                         _%bind193213%_
                         _%body193214%_))
                      (_%$%E193298193307%_))))
              (_%$%E193298193307%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%E193287193353%_
                                                (lambda ()
                                                  (if (gx#stx-pair?
                                                       _%$%e193286193303%_)
                                                      (let ((_%$%e193289193325%_
                                                             (gx#syntax-e
                                                              _%$%e193286193303%_)))
                                                        (let ((_%$%hd193290193328%_
                                                               (##car _%$%e193289193325%_))
                                                              (_%$%tl193291193330%_
                                                               (##cdr _%$%e193289193325%_)))
                                                          (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%hd193290193328%_)
                           (gx#core-identifier=?
                            _%$%hd193290193328%_
                            '%#define-values))
                      (if (gx#stx-pair? _%$%tl193291193330%_)
                          (let ((_%$%e193292193333%_
                                 (gx#syntax-e _%$%tl193291193330%_)))
                            (let ((_%$%hd193293193336%_
                                   (##car _%$%e193292193333%_))
                                  (_%$%tl193294193338%_
                                   (##cdr _%$%e193292193333%_)))
                              (let ((_%hd-bind193341%_ _%$%hd193293193336%_))
                                (if (gx#stx-pair? _%$%tl193294193338%_)
                                    (let ((_%$%e193295193343%_
                                           (gx#syntax-e _%$%tl193294193338%_)))
                                      (let ((_%$%hd193296193346%_
                                             (##car _%$%e193295193343%_))
                                            (_%$%tl193297193348%_
                                             (##cdr _%$%e193295193343%_)))
                                        (let ((_%expr193351%_
                                               _%$%hd193296193346%_))
                                          (if (gx#stx-null?
                                               _%$%tl193297193348%_)
                                              (_%lp193209%_
                                               _%rest193285%_
                                               _%decls193212%_
                                               (cons (cons (gx#core-quote-bind-values
                                                            _%hd-bind193341%_)
                                                           (cons (gx#core-expand-expression
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%expr193351%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%bind193213%_)
                                               _%body193214%_)
                                              (_%$%E193288193321%_)))))
                                    (_%$%E193288193321%_)))))
                          (_%$%E193288193321%_))
                      (_%$%E193288193321%_))))
              (_%$%E193288193321%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                          (_%$%E193287193353%_))))
                                    (_%$%E193217193271%_)))))
                        (_%$%E193216193357%_))))))
          (gx#core-expand-block*
           (gx#stx-wrap-source
            (cons '%#begin _%body193200%_)
            (gx#stx-source _%stx193199%_))
           _%expand-special193202%_))))
    (define gx#core-expand-declare%
      (lambda (_%stx193137%_)
        (let* ((_%$%e193138193145%_ _%stx193137%_)
               (_%$%E193140193149%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193138193145%_)))
               (_%$%E193139193195%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193138193145%_)
                      (let ((_%$%e193141193153%_
                             (gx#syntax-e _%$%e193138193145%_)))
                        (let ((_%$%hd193142193156%_
                               (##car _%$%e193141193153%_))
                              (_%$%tl193143193158%_
                               (##cdr _%$%e193141193153%_)))
                          (let ((_%body193161%_ _%$%tl193143193158%_))
                            (if (gx#stx-list? _%body193161%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#declare
                                  (gx#stx-map1
                                   (lambda (_%decl193163%_)
                                     (let* ((_%$%e193164193171%_
                                             _%decl193163%_)
                                            (_%$%E193166193175%_
                                             (lambda ()
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid syntax-case clause"
                                                _%$%e193164193171%_)))
                                            (_%$%E193165193191%_
                                             (lambda ()
                                               (if (gx#stx-pair?
                                                    _%$%e193164193171%_)
                                                   (let ((_%$%e193167193179%_
                                                          (gx#syntax-e
                                                           _%$%e193164193171%_)))
                                                     (let ((_%$%hd193168193182%_
                                                            (##car _%$%e193167193179%_))
                                                           (_%$%tl193169193184%_
                                                            (##cdr _%$%e193167193179%_)))
                                                       (let* ((_%head193187%_
                                                               _%$%hd193168193182%_)
                                                              (_%args193189%_
                                                               _%$%tl193169193184%_))
                                                         (if (gx#stx-list?
                                                              _%args193189%_)
                                                             (gx#stx-map1
                                                              gx#core-quote-syntax
                                                              _%decl193163%_)
                                                             (_%$%E193166193175%_)))))
                                                   (_%$%E193166193175%_)))))
                                       (_%$%E193165193191%_)))
                                   _%body193161%_))
                                 (gx#stx-source _%stx193137%_))
                                (_%$%E193140193149%_)))))
                      (_%$%E193140193149%_)))))
          (_%$%E193139193195%_))))
    (define gx#core-expand-extern%
      (lambda (_%stx193041%_)
        (let* ((_%$%e193042193049%_ _%stx193041%_)
               (_%$%E193044193053%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e193042193049%_)))
               (_%$%E193043193133%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e193042193049%_)
                      (let ((_%$%e193045193057%_
                             (gx#syntax-e _%$%e193042193049%_)))
                        (let ((_%$%hd193046193060%_
                               (##car _%$%e193045193057%_))
                              (_%$%tl193047193062%_
                               (##cdr _%$%e193045193057%_)))
                          (let ((_%body193065%_ _%$%tl193047193062%_))
                            (let _%lp193067%_ ((_%rest193069%_ _%body193065%_)
                                               (_%r193070%_ '()))
                              (let* ((_%$%e193071193085%_ _%rest193069%_)
                                     (_%$%E193083193089%_
                                      (lambda ()
                                        (gx#raise-syntax-error
                                         '#f
                                         '"Bad syntax; %#extern expects list of (internal external) identifier lists"
                                         _%stx193041%_)))
                                     (_%$%E193073193093%_
                                      (lambda ()
                                        (if (gx#stx-null? _%$%e193071193085%_)
                                            (gx#core-quote-syntax__1
                                             (gx#core-cons
                                              '%#extern
                                              (reverse _%r193070%_))
                                             (gx#stx-source _%stx193041%_))
                                            (_%$%E193083193089%_))))
                                     (_%$%E193072193129%_
                                      (lambda ()
                                        (if (gx#stx-pair? _%$%e193071193085%_)
                                            (let ((_%$%e193074193097%_
                                                   (gx#syntax-e
                                                    _%$%e193071193085%_)))
                                              (let ((_%$%hd193075193100%_
                                                     (##car _%$%e193074193097%_))
                                                    (_%$%tl193076193102%_
                                                     (##cdr _%$%e193074193097%_)))
                                                (if (gx#stx-pair?
                                                     _%$%hd193075193100%_)
                                                    (let ((_%$%e193077193105%_
                                                           (gx#syntax-e
                                                            _%$%hd193075193100%_)))
                                                      (let ((_%$%hd193078193108%_
                                                             (##car _%$%e193077193105%_))
                                                            (_%$%tl193079193110%_
                                                             (##cdr _%$%e193077193105%_)))
                                                        (let ((_%id193113%_
                                                               _%$%hd193078193108%_))
                                                          (if (gx#stx-pair?
                                                               _%$%tl193079193110%_)
                                                              (let ((_%$%e193080193115%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#syntax-e _%$%tl193079193110%_)))
                        (let ((_%$%hd193081193118%_
                               (##car _%$%e193080193115%_))
                              (_%$%tl193082193120%_
                               (##cdr _%$%e193080193115%_)))
                          (let ((_%eid193123%_ _%$%hd193081193118%_))
                            (if (gx#stx-null? _%$%tl193082193120%_)
                                (let ((_%rest193125%_ _%$%tl193076193102%_))
                                  (if (and (gx#identifier? _%id193113%_)
                                           (gx#identifier? _%eid193123%_))
                                      (let ((_%eid193127%_
                                             (gx#stx-e _%eid193123%_)))
                                        (gx#core-bind-extern!__0
                                         _%id193113%_
                                         _%eid193127%_)
                                        (_%lp193067%_
                                         _%rest193125%_
                                         (cons (cons (gx#core-quote-syntax__0
                                                      _%id193113%_)
                                                     (cons _%eid193127%_ '()))
                                               _%r193070%_)))
                                      (_%$%E193073193093%_)))
                                (_%$%E193073193093%_)))))
                      (_%$%E193073193093%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E193073193093%_))))
                                            (_%$%E193073193093%_)))))
                                (_%$%E193072193129%_))))))
                      (_%$%E193044193053%_)))))
          (_%$%E193043193133%_))))
    (define gx#core-expand-define-values%
      (lambda (_%stx192943%_)
        (let* ((_%$%e192944192967%_ _%stx192943%_)
               (_%$%E192956192971%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192944192967%_)))
               (_%$%E192946193003%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192944192967%_)
                      (let ((_%$%e192957192975%_
                             (gx#syntax-e _%$%e192944192967%_)))
                        (let ((_%$%hd192958192978%_
                               (##car _%$%e192957192975%_))
                              (_%$%tl192959192980%_
                               (##cdr _%$%e192957192975%_)))
                          (if (gx#stx-pair? _%$%tl192959192980%_)
                              (let ((_%$%e192960192983%_
                                     (gx#syntax-e _%$%tl192959192980%_)))
                                (let ((_%$%hd192961192986%_
                                       (##car _%$%e192960192983%_))
                                      (_%$%tl192962192988%_
                                       (##cdr _%$%e192960192983%_)))
                                  (let ((_%hd192991%_ _%$%hd192961192986%_))
                                    (if (gx#stx-pair? _%$%tl192962192988%_)
                                        (let ((_%$%e192963192993%_
                                               (gx#syntax-e
                                                _%$%tl192962192988%_)))
                                          (let ((_%$%hd192964192996%_
                                                 (##car _%$%e192963192993%_))
                                                (_%$%tl192965192998%_
                                                 (##cdr _%$%e192963192993%_)))
                                            (let ((_%expr193001%_
                                                   _%$%hd192964192996%_))
                                              (if (gx#stx-null?
                                                   _%$%tl192965192998%_)
                                                  (if (gx#core-bind-values?
                                                       _%hd192991%_)
                                                      (begin
                                                        (gx#core-bind-values!__0
                                                         _%hd192991%_)
                                                        (gx#core-quote-syntax__1
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-values)
                                                               (cons (gx#core-quote-bind-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%hd192991%_)
                             (cons (gx#core-expand-expression _%expr193001%_)
                                   '())))
                 (gx#stx-source _%stx192943%_)))
              (_%$%E192956192971%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192956192971%_)))))
                                        (_%$%E192956192971%_)))))
                              (_%$%E192956192971%_))))
                      (_%$%E192956192971%_))))
               (_%$%E192945193037%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192944192967%_)
                      (let ((_%$%e192947193007%_
                             (gx#syntax-e _%$%e192944192967%_)))
                        (let ((_%$%hd192948193010%_
                               (##car _%$%e192947193007%_))
                              (_%$%tl192949193012%_
                               (##cdr _%$%e192947193007%_)))
                          (if (gx#stx-pair? _%$%tl192949193012%_)
                              (let ((_%$%e192950193015%_
                                     (gx#syntax-e _%$%tl192949193012%_)))
                                (let ((_%$%hd192951193018%_
                                       (##car _%$%e192950193015%_))
                                      (_%$%tl192952193020%_
                                       (##cdr _%$%e192950193015%_)))
                                  (let ((_%hd193023%_ _%$%hd192951193018%_))
                                    (if (gx#stx-pair? _%$%tl192952193020%_)
                                        (let ((_%$%e192953193025%_
                                               (gx#syntax-e
                                                _%$%tl192952193020%_)))
                                          (let ((_%$%hd192954193028%_
                                                 (##car _%$%e192953193025%_))
                                                (_%$%tl192955193030%_
                                                 (##cdr _%$%e192953193025%_)))
                                            (let* ((_%expr193033%_
                                                    _%$%hd192954193028%_)
                                                   (_%props193035%_
                                                    _%$%tl192955193030%_))
                                              (if (and (gx#stx-list?
                                                        _%props193035%_)
                                                       (not (gx#stx-null?
                                                             _%props193035%_)))
                                                  (gx#core-cons
                                                   '%#begin
                                                   (cons (gx#core-cons
                                                          '%#define-values
                                                          (cons _%hd193023%_
                                                                (cons _%expr193033%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())))
                 (cons (gx#core-cons
                        '%#bind-runtime-properties!
                        (cons _%hd193023%_ (cons _%props193035%_ '())))
                       '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192946193003%_)))))
                                        (_%$%E192946193003%_)))))
                              (_%$%E192946193003%_))))
                      (_%$%E192946193003%_)))))
          (_%$%E192945193037%_))))
    (define gx#core-expand-define-runtime%
      (lambda (_%stx192882%_)
        (let* ((_%$%e192883192896%_ _%stx192882%_)
               (_%$%E192885192900%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192883192896%_)))
               (_%$%E192884192939%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192883192896%_)
                      (let ((_%$%e192886192904%_
                             (gx#syntax-e _%$%e192883192896%_)))
                        (let ((_%$%hd192887192907%_
                               (##car _%$%e192886192904%_))
                              (_%$%tl192888192909%_
                               (##cdr _%$%e192886192904%_)))
                          (if (gx#stx-pair? _%$%tl192888192909%_)
                              (let ((_%$%e192889192912%_
                                     (gx#syntax-e _%$%tl192888192909%_)))
                                (let ((_%$%hd192890192915%_
                                       (##car _%$%e192889192912%_))
                                      (_%$%tl192891192917%_
                                       (##cdr _%$%e192889192912%_)))
                                  (let ((_%id192920%_ _%$%hd192890192915%_))
                                    (if (gx#stx-pair? _%$%tl192891192917%_)
                                        (let ((_%$%e192892192922%_
                                               (gx#syntax-e
                                                _%$%tl192891192917%_)))
                                          (let ((_%$%hd192893192925%_
                                                 (##car _%$%e192892192922%_))
                                                (_%$%tl192894192927%_
                                                 (##cdr _%$%e192892192922%_)))
                                            (let* ((_%binding-id192930%_
                                                    _%$%hd192893192925%_)
                                                   (_%props192932%_
                                                    _%$%tl192894192927%_))
                                              (if (and (gx#identifier?
                                                        _%id192920%_)
                                                       (gx#identifier?
                                                        _%binding-id192930%_)
                                                       (gx#stx-list?
                                                        _%props192932%_))
                                                  (let* ((_%eid192934%_
                                                          (gx#stx-e
                                                           _%binding-id192930%_))
                                                         (_%bind192936%_
                                                          (gx#core-bind-runtime-reference!__0
                                                           _%id192920%_
                                                           _%eid192934%_)))
                                                    (gx#core-bind-runtime-properties!
                                                     _%bind192936%_
                                                     _%props192932%_)
                                                    (gx#core-quote-syntax__0
                                                     (cons (gx#core-quote-syntax__0
                                                            '%#define-runtime)
                                                           (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%id192920%_)
                         (cons _%eid192934%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192885192900%_)))))
                                        (_%$%E192885192900%_)))))
                              (_%$%E192885192900%_))))
                      (_%$%E192885192900%_)))))
          (_%$%E192884192939%_))))
    (define gx#core-expand-bind-runtime-properties%
      (lambda (_%stx192815%_)
        (let* ((_%$%e192816192832%_ _%stx192815%_)
               (_%$%E192818192836%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192816192832%_)))
               (_%$%E192817192878%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192816192832%_)
                      (let ((_%$%e192819192840%_
                             (gx#syntax-e _%$%e192816192832%_)))
                        (let ((_%$%hd192820192843%_
                               (##car _%$%e192819192840%_))
                              (_%$%tl192821192845%_
                               (##cdr _%$%e192819192840%_)))
                          (if (gx#stx-pair? _%$%tl192821192845%_)
                              (let ((_%$%e192822192848%_
                                     (gx#syntax-e _%$%tl192821192845%_)))
                                (let ((_%$%hd192823192851%_
                                       (##car _%$%e192822192848%_))
                                      (_%$%tl192824192853%_
                                       (##cdr _%$%e192822192848%_)))
                                  (if (gx#stx-pair? _%$%hd192823192851%_)
                                      (let ((_%$%e192828192856%_
                                             (gx#syntax-e
                                              _%$%hd192823192851%_)))
                                        (let ((_%$%hd192829192859%_
                                               (##car _%$%e192828192856%_))
                                              (_%$%tl192830192861%_
                                               (##cdr _%$%e192828192856%_)))
                                          (let ((_%id192864%_
                                                 _%$%hd192829192859%_))
                                            (if (gx#stx-null?
                                                 _%$%tl192830192861%_)
                                                (if (gx#stx-pair?
                                                     _%$%tl192824192853%_)
                                                    (let ((_%$%e192825192866%_
                                                           (gx#syntax-e
                                                            _%$%tl192824192853%_)))
                                                      (let ((_%$%hd192826192869%_
                                                             (##car _%$%e192825192866%_))
                                                            (_%$%tl192827192871%_
                                                             (##cdr _%$%e192825192866%_)))
                                                        (let ((_%props192874%_
                                                               _%$%hd192826192869%_))
                                                          (if (gx#stx-null?
                                                               _%$%tl192827192871%_)
                                                              (if (and (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                _%id192864%_)
                               (gx#stx-list? _%props192874%_))
                          (let ((_%bind192876%_
                                 (gx#resolve-identifier__0 _%id192864%_)))
                            (if (##structure-instance-of?
                                 _%bind192876%_
                                 'gx#runtime-binding::t)
                                '#!void
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; expected runtime binding"
                                 _%stx192815%_
                                 _%id192864%_
                                 _%bind192876%_))
                            (gx#core-bind-runtime-properties!
                             _%bind192876%_
                             _%props192874%_)
                            (gx#core-cons '%#begin '()))
                          (_%$%E192818192836%_))
                      (_%$%E192818192836%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%E192818192836%_))
                                                (_%$%E192818192836%_)))))
                                      (_%$%E192818192836%_))))
                              (_%$%E192818192836%_))))
                      (_%$%E192818192836%_)))))
          (_%$%E192817192878%_))))
    (define gx#core-bind-runtime-properties!
      (lambda (_%bind192750%_ _%props192751%_)
        (letrec ((_%eval-prop192753%_
                  (lambda (_%prop192813%_)
                    (gx#eval-expression+1 _%prop192813%_))))
          (let _%loop192755%_ ((_%rest192757%_ _%props192751%_)
                               (_%props192758%_ '()))
            (let* ((_%$%e192759192770%_ _%rest192757%_)
                   (_%$%E192768192774%_
                    (lambda ()
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid syntax-case clause"
                       _%$%e192759192770%_)))
                   (_%$%E192761192778%_
                    (lambda ()
                      (if (gx#stx-null? _%$%e192759192770%_)
                          (if (null? _%props192758%_)
                              '#!void
                              (##structure-set!
                               _%bind192750%_
                               (reverse! _%props192758%_)
                               '4
                               gx#binding::t
                               '#f))
                          (_%$%E192768192774%_))))
                   (_%$%E192760192809%_
                    (lambda ()
                      (if (gx#stx-pair? _%$%e192759192770%_)
                          (let ((_%$%e192762192782%_
                                 (gx#syntax-e _%$%e192759192770%_)))
                            (let ((_%$%hd192763192785%_
                                   (##car _%$%e192762192782%_))
                                  (_%$%tl192764192787%_
                                   (##cdr _%$%e192762192782%_)))
                              (let ((_%key192790%_ _%$%hd192763192785%_))
                                (if (gx#stx-pair? _%$%tl192764192787%_)
                                    (let ((_%$%e192765192792%_
                                           (gx#syntax-e _%$%tl192764192787%_)))
                                      (let ((_%$%hd192766192795%_
                                             (##car _%$%e192765192792%_))
                                            (_%$%tl192767192797%_
                                             (##cdr _%$%e192765192792%_)))
                                        (let* ((_%prop192800%_
                                                _%$%hd192766192795%_)
                                               (_%rest192802%_
                                                _%$%tl192767192797%_))
                                          (if (gx#stx-keyword? _%key192790%_)
                                              (let* ((_%key192804%_
                                                      (gx#stx-e _%key192790%_))
                                                     (_%$e192806%_
                                                      _%key192804%_))
                                                (if (eq? 'macro: _%$e192806%_)
                                                    (begin
                                                      (##structure-set!
                                                       _%bind192750%_
                                                       (if (gx#identifier?
                                                            _%prop192800%_)
                                                           (gx#core-quote-syntax__0
                                                            _%prop192800%_)
                                                           (gx#eval-expression+1
                                                            _%prop192800%_))
                                                       '6
                                                       gx#runtime-binding::t
                                                       '#f)
                                                      (_%loop192755%_
                                                       _%rest192802%_
                                                       _%props192758%_))
                                                    (if (eq? 'type:
                                                             _%$e192806%_)
                                                        (begin
                                                          (##structure-set!
                                                           _%bind192750%_
                                                           (gx#eval-expression+1
                                                            _%prop192800%_)
                                                           '5
                                                           gx#runtime-binding::t
                                                           '#f)
                                                          (_%loop192755%_
                                                           _%rest192802%_
                                                           _%props192758%_))
                                                        (_%loop192755%_
                                                         _%rest192802%_
                                                         (cons (gx#eval-expression+1
                                                                _%prop192800%_)
                                                               (cons _%key192804%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%props192758%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E192761192778%_)))))
                                    (_%$%E192761192778%_)))))
                          (_%$%E192761192778%_)))))
              (_%$%E192760192809%_))))))
    (define gx#core-expand-define-syntax%
      (lambda (_%stx192693%_)
        (let* ((_%$%e192694192707%_ _%stx192693%_)
               (_%$%E192696192711%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192694192707%_)))
               (_%$%E192695192746%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192694192707%_)
                      (let ((_%$%e192697192715%_
                             (gx#syntax-e _%$%e192694192707%_)))
                        (let ((_%$%hd192698192718%_
                               (##car _%$%e192697192715%_))
                              (_%$%tl192699192720%_
                               (##cdr _%$%e192697192715%_)))
                          (if (gx#stx-pair? _%$%tl192699192720%_)
                              (let ((_%$%e192700192723%_
                                     (gx#syntax-e _%$%tl192699192720%_)))
                                (let ((_%$%hd192701192726%_
                                       (##car _%$%e192700192723%_))
                                      (_%$%tl192702192728%_
                                       (##cdr _%$%e192700192723%_)))
                                  (let ((_%id192731%_ _%$%hd192701192726%_))
                                    (if (gx#stx-pair? _%$%tl192702192728%_)
                                        (let ((_%$%e192703192733%_
                                               (gx#syntax-e
                                                _%$%tl192702192728%_)))
                                          (let ((_%$%hd192704192736%_
                                                 (##car _%$%e192703192733%_))
                                                (_%$%tl192705192738%_
                                                 (##cdr _%$%e192703192733%_)))
                                            (let ((_%expr192741%_
                                                   _%$%hd192704192736%_))
                                              (if (gx#stx-null?
                                                   _%$%tl192705192738%_)
                                                  (if (gx#identifier?
                                                       _%id192731%_)
                                                      (let ((_g194041_
                                                             (gx#core-expand-expression+1
                                                              _%expr192741%_)))
                                                        (begin
                                                          (let ((_g194042_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (if (##values? _g194041_)
                             (##values-length _g194041_)
                             1)))
                    (if (not (##fx= _g194042_ 2))
                        (error "Context expects 2 values" _g194042_)))
                  (let ((_%e-stx192743%_ (##values-ref _g194041_ 0))
                        (_%e192744%_ (##values-ref _g194041_ 1)))
                    (begin
                      (gx#core-bind-syntax!__0 _%id192731%_ _%e192744%_)
                      (gx#core-quote-syntax__1
                       (cons (gx#core-quote-syntax__0 '%#define-syntax)
                             (cons (gx#core-quote-syntax__0 _%id192731%_)
                                   (cons _%e-stx192743%_ '())))
                       (gx#stx-source _%stx192693%_))))))
              (_%$%E192696192711%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192696192711%_)))))
                                        (_%$%E192696192711%_)))))
                              (_%$%E192696192711%_))))
                      (_%$%E192696192711%_)))))
          (_%$%E192695192746%_))))
    (define gx#core-expand-define-alias%
      (lambda (_%stx192637%_)
        (let* ((_%$%e192638192651%_ _%stx192637%_)
               (_%$%E192640192655%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192638192651%_)))
               (_%$%E192639192689%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192638192651%_)
                      (let ((_%$%e192641192659%_
                             (gx#syntax-e _%$%e192638192651%_)))
                        (let ((_%$%hd192642192662%_
                               (##car _%$%e192641192659%_))
                              (_%$%tl192643192664%_
                               (##cdr _%$%e192641192659%_)))
                          (if (gx#stx-pair? _%$%tl192643192664%_)
                              (let ((_%$%e192644192667%_
                                     (gx#syntax-e _%$%tl192643192664%_)))
                                (let ((_%$%hd192645192670%_
                                       (##car _%$%e192644192667%_))
                                      (_%$%tl192646192672%_
                                       (##cdr _%$%e192644192667%_)))
                                  (let ((_%id192675%_ _%$%hd192645192670%_))
                                    (if (gx#stx-pair? _%$%tl192646192672%_)
                                        (let ((_%$%e192647192677%_
                                               (gx#syntax-e
                                                _%$%tl192646192672%_)))
                                          (let ((_%$%hd192648192680%_
                                                 (##car _%$%e192647192677%_))
                                                (_%$%tl192649192682%_
                                                 (##cdr _%$%e192647192677%_)))
                                            (let ((_%alias-id192685%_
                                                   _%$%hd192648192680%_))
                                              (if (gx#stx-null?
                                                   _%$%tl192649192682%_)
                                                  (if (and (gx#identifier?
                                                            _%id192675%_)
                                                           (gx#identifier?
                                                            _%alias-id192685%_))
                                                      (let ((_%alias-id192687%_
                                                             (gx#core-quote-syntax__0
                                                              _%alias-id192685%_)))
                                                        (gx#core-bind-alias!__0
                                                         _%id192675%_
                                                         _%alias-id192687%_)
                                                        (gx#core-quote-syntax__0
                                                         (cons (gx#core-quote-syntax__0
                                                                '%#define-alias)
                                                               (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id192675%_)
                             (cons _%alias-id192687%_ '())))))
              (_%$%E192640192655%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E192640192655%_)))))
                                        (_%$%E192640192655%_)))))
                              (_%$%E192640192655%_))))
                      (_%$%E192640192655%_)))))
          (_%$%E192639192689%_))))
    (define gx#core-expand-lambda%__%
      (lambda (_%stx192580%_ _%wrap?192581%_)
        (let* ((_%$%e192582192592%_ _%stx192580%_)
               (_%$%E192584192596%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192582192592%_)))
               (_%$%E192583192623%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192582192592%_)
                      (let ((_%$%e192585192600%_
                             (gx#syntax-e _%$%e192582192592%_)))
                        (let ((_%$%hd192586192603%_
                               (##car _%$%e192585192600%_))
                              (_%$%tl192587192605%_
                               (##cdr _%$%e192585192600%_)))
                          (if (gx#stx-pair? _%$%tl192587192605%_)
                              (let ((_%$%e192588192608%_
                                     (gx#syntax-e _%$%tl192587192605%_)))
                                (let ((_%$%hd192589192611%_
                                       (##car _%$%e192588192608%_))
                                      (_%$%tl192590192613%_
                                       (##cdr _%$%e192588192608%_)))
                                  (let* ((_%hd192616%_ _%$%hd192589192611%_)
                                         (_%body192618%_ _%$%tl192590192613%_))
                                    (if (gx#core-bind-values? _%hd192616%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#core-bind-values!__0
                                            _%hd192616%_)
                                           (let ((_%body192621%_
                                                  (cons (gx#core-quote-bind-values
                                                         _%hd192616%_)
                                                        (cons (gx#core-expand-local-block
                                                               _%stx192580%_
                                                               _%body192618%_)
                                                              '()))))
                                             (if _%wrap?192581%_
                                                 (gx#core-quote-syntax__1
                                                  (gx#core-cons
                                                   '%#lambda
                                                   _%body192621%_)
                                                  (gx#stx-source
                                                   _%stx192580%_))
                                                 _%body192621%_)))
                                         gx#current-expander-context
                                         (let ((__obj194024
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj194024)
                                           __obj194024))
                                        (_%$%E192584192596%_)))))
                              (_%$%E192584192596%_))))
                      (_%$%E192584192596%_)))))
          (_%$%E192583192623%_))))
    (define gx#core-expand-lambda%__0
      (lambda (_%stx192630%_)
        (let ((_%wrap?192632%_ '#t))
          (gx#core-expand-lambda%__% _%stx192630%_ _%wrap?192632%_))))
    (define gx#core-expand-lambda%
      (lambda _g194043_
        (let ((_g194044_ (##length _g194043_)))
          (cond ((##fx= _g194044_ 1)
                 (apply gx#core-expand-lambda%__0 _g194043_))
                ((##fx= _g194044_ 2)
                 (apply gx#core-expand-lambda%__% _g194043_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-lambda%
                  _g194043_))))))
    (define gx#core-expand-case-lambda%
      (lambda (_%stx192544%_)
        (let* ((_%$%e192545192552%_ _%stx192544%_)
               (_%$%E192547192556%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192545192552%_)))
               (_%$%E192546192575%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192545192552%_)
                      (let ((_%$%e192548192560%_
                             (gx#syntax-e _%$%e192545192552%_)))
                        (let ((_%$%hd192549192563%_
                               (##car _%$%e192548192560%_))
                              (_%$%tl192550192565%_
                               (##cdr _%$%e192548192560%_)))
                          (let ((_%clauses192568%_ _%$%tl192550192565%_))
                            (if (gx#stx-list? _%clauses192568%_)
                                (gx#core-quote-syntax__1
                                 (gx#core-cons
                                  '%#case-lambda
                                  (gx#stx-map1
                                   (lambda (_%clause192570%_)
                                     (gx#core-expand-lambda%__%
                                      (gx#stx-wrap-source
                                       (cons '%#case-lambda-clause
                                             _%clause192570%_)
                                       (let ((_%$e192572%_
                                              (gx#stx-source
                                               _%clause192570%_)))
                                         (if _%$e192572%_
                                             _%$e192572%_
                                             (gx#stx-source _%stx192544%_))))
                                      '#f))
                                   _%clauses192568%_))
                                 (gx#stx-source _%stx192544%_))
                                (_%$%E192547192556%_)))))
                      (_%$%E192547192556%_)))))
          (_%$%E192546192575%_))))
    (define gx#core-expand-let-values%
      (lambda (_%stx192498%_)
        (let* ((_%$%e192499192509%_ _%stx192498%_)
               (_%$%E192501192513%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192499192509%_)))
               (_%$%E192500192540%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192499192509%_)
                      (let ((_%$%e192502192517%_
                             (gx#syntax-e _%$%e192499192509%_)))
                        (let ((_%$%hd192503192520%_
                               (##car _%$%e192502192517%_))
                              (_%$%tl192504192522%_
                               (##cdr _%$%e192502192517%_)))
                          (if (gx#stx-pair? _%$%tl192504192522%_)
                              (let ((_%$%e192505192525%_
                                     (gx#syntax-e _%$%tl192504192522%_)))
                                (let ((_%$%hd192506192528%_
                                       (##car _%$%e192505192525%_))
                                      (_%$%tl192507192530%_
                                       (##cdr _%$%e192505192525%_)))
                                  (let* ((_%hd192533%_ _%$%hd192506192528%_)
                                         (_%body192535%_ _%$%tl192507192530%_))
                                    (if (gx#core-expand-let-bind? _%hd192533%_)
                                        (let ((_%expressions192537%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-expression
                                                _%hd192533%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each1
                                              gx#core-expand-let-bind-values!
                                              _%hd192533%_)
                                             (gx#core-quote-syntax__1
                                              (cons (gx#core-quote-syntax__0
                                                     '%#let-values)
                                                    (cons (gx#stx-map2
                                                           gx#core-expand-let-bind-quote
                                                           _%hd192533%_
                                                           _%expressions192537%_)
                                                          (cons (gx#core-expand-local-block
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%stx192498%_
                         _%body192535%_)
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (gx#stx-source _%stx192498%_)))
                                           gx#current-expander-context
                                           (let ((__obj194025
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj194025)
                                             __obj194025)))
                                        (_%$%E192501192513%_)))))
                              (_%$%E192501192513%_))))
                      (_%$%E192501192513%_)))))
          (_%$%E192500192540%_))))
    (define gx#core-expand-letrec-values%__%
      (lambda (_%stx192443%_ _%form192444%_)
        (let* ((_%$%e192445192455%_ _%stx192443%_)
               (_%$%E192447192459%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192445192455%_)))
               (_%$%E192446192484%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192445192455%_)
                      (let ((_%$%e192448192463%_
                             (gx#syntax-e _%$%e192445192455%_)))
                        (let ((_%$%hd192449192466%_
                               (##car _%$%e192448192463%_))
                              (_%$%tl192450192468%_
                               (##cdr _%$%e192448192463%_)))
                          (if (gx#stx-pair? _%$%tl192450192468%_)
                              (let ((_%$%e192451192471%_
                                     (gx#syntax-e _%$%tl192450192468%_)))
                                (let ((_%$%hd192452192474%_
                                       (##car _%$%e192451192471%_))
                                      (_%$%tl192453192476%_
                                       (##cdr _%$%e192451192471%_)))
                                  (let* ((_%hd192479%_ _%$%hd192452192474%_)
                                         (_%body192481%_ _%$%tl192453192476%_))
                                    (if (gx#core-expand-let-bind? _%hd192479%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each1
                                            gx#core-expand-let-bind-values!
                                            _%hd192479%_)
                                           (gx#core-quote-syntax__1
                                            (cons (gx#core-quote-syntax__0
                                                   _%form192444%_)
                                                  (cons (gx#stx-map2
                                                         gx#core-expand-let-bind-quote
                                                         _%hd192479%_
                                                         (gx#stx-map1
                                                          gx#core-expand-let-bind-expression
                                                          _%hd192479%_))
                                                        (cons (gx#core-expand-local-block
                                                               _%stx192443%_
                                                               _%body192481%_)
                                                              '())))
                                            (gx#stx-source _%stx192443%_)))
                                         gx#current-expander-context
                                         (let ((__obj194026
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj194026)
                                           __obj194026))
                                        (_%$%E192447192459%_)))))
                              (_%$%E192447192459%_))))
                      (_%$%E192447192459%_)))))
          (_%$%E192446192484%_))))
    (define gx#core-expand-letrec-values%__0
      (lambda (_%stx192491%_)
        (let ((_%form192493%_ '%#letrec-values))
          (gx#core-expand-letrec-values%__% _%stx192491%_ _%form192493%_))))
    (define gx#core-expand-letrec-values%
      (lambda _g194045_
        (let ((_g194046_ (##length _g194045_)))
          (cond ((##fx= _g194046_ 1)
                 (apply gx#core-expand-letrec-values%__0 _g194045_))
                ((##fx= _g194046_ 2)
                 (apply gx#core-expand-letrec-values%__% _g194045_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-letrec-values%
                  _g194045_))))))
    (define gx#core-expand-letrec*-values%
      (lambda (_%stx192440%_)
        (gx#core-expand-letrec-values%__% _%stx192440%_ '%#letrec*-values)))
    (define gx#core-expand-let-bind?
      (lambda (_%stx192397%_)
        (if (gx#stx-list? _%stx192397%_)
            (gx#stx-andmap
             (lambda (_%bind192399%_)
               (let* ((_%$%e192400192410%_ _%bind192399%_)
                      (_%$%E192402192414%_ (lambda () '#f))
                      (_%$%E192401192436%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e192400192410%_)
                             (let ((_%$%e192403192418%_
                                    (gx#syntax-e _%$%e192400192410%_)))
                               (let ((_%$%hd192404192421%_
                                      (##car _%$%e192403192418%_))
                                     (_%$%tl192405192423%_
                                      (##cdr _%$%e192403192418%_)))
                                 (let ((_%hd192426%_ _%$%hd192404192421%_))
                                   (if (gx#stx-pair? _%$%tl192405192423%_)
                                       (let ((_%$%e192406192428%_
                                              (gx#syntax-e
                                               _%$%tl192405192423%_)))
                                         (let ((_%$%hd192407192431%_
                                                (##car _%$%e192406192428%_))
                                               (_%$%tl192408192433%_
                                                (##cdr _%$%e192406192428%_)))
                                           (if (gx#stx-null?
                                                _%$%tl192408192433%_)
                                               (gx#core-bind-values?
                                                _%hd192426%_)
                                               (_%$%E192402192414%_))))
                                       (_%$%E192402192414%_)))))
                             (_%$%E192402192414%_)))))
                 (_%$%E192401192436%_)))
             _%stx192397%_)
            '#f)))
    (define gx#core-expand-let-bind-expression
      (lambda (_%bind192356%_)
        (let* ((_%$%e192357192367%_ _%bind192356%_)
               (_%$%E192359192371%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192357192367%_)))
               (_%$%E192358192393%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192357192367%_)
                      (let ((_%$%e192360192375%_
                             (gx#syntax-e _%$%e192357192367%_)))
                        (let ((_%$%hd192361192378%_
                               (##car _%$%e192360192375%_))
                              (_%$%tl192362192380%_
                               (##cdr _%$%e192360192375%_)))
                          (if (gx#stx-pair? _%$%tl192362192380%_)
                              (let ((_%$%e192363192383%_
                                     (gx#syntax-e _%$%tl192362192380%_)))
                                (let ((_%$%hd192364192386%_
                                       (##car _%$%e192363192383%_))
                                      (_%$%tl192365192388%_
                                       (##cdr _%$%e192363192383%_)))
                                  (let ((_%expr192391%_ _%$%hd192364192386%_))
                                    (if (gx#stx-null? _%$%tl192365192388%_)
                                        (gx#core-expand-expression
                                         _%expr192391%_)
                                        (_%$%E192359192371%_)))))
                              (_%$%E192359192371%_))))
                      (_%$%E192359192371%_)))))
          (_%$%E192358192393%_))))
    (define gx#core-expand-let-bind-values!
      (lambda (_%bind192315%_)
        (let* ((_%$%e192316192326%_ _%bind192315%_)
               (_%$%E192318192330%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192316192326%_)))
               (_%$%E192317192352%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192316192326%_)
                      (let ((_%$%e192319192334%_
                             (gx#syntax-e _%$%e192316192326%_)))
                        (let ((_%$%hd192320192337%_
                               (##car _%$%e192319192334%_))
                              (_%$%tl192321192339%_
                               (##cdr _%$%e192319192334%_)))
                          (let ((_%hd192342%_ _%$%hd192320192337%_))
                            (if (gx#stx-pair? _%$%tl192321192339%_)
                                (let ((_%$%e192322192344%_
                                       (gx#syntax-e _%$%tl192321192339%_)))
                                  (let ((_%$%hd192323192347%_
                                         (##car _%$%e192322192344%_))
                                        (_%$%tl192324192349%_
                                         (##cdr _%$%e192322192344%_)))
                                    (if (gx#stx-null? _%$%tl192324192349%_)
                                        (gx#core-bind-values!__0 _%hd192342%_)
                                        (_%$%E192318192330%_))))
                                (_%$%E192318192330%_)))))
                      (_%$%E192318192330%_)))))
          (_%$%E192317192352%_))))
    (define gx#core-expand-let-bind-quote
      (lambda (_%bind192273%_ _%expr192274%_)
        (let* ((_%$%e192275192285%_ _%bind192273%_)
               (_%$%E192277192289%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192275192285%_)))
               (_%$%E192276192311%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192275192285%_)
                      (let ((_%$%e192278192293%_
                             (gx#syntax-e _%$%e192275192285%_)))
                        (let ((_%$%hd192279192296%_
                               (##car _%$%e192278192293%_))
                              (_%$%tl192280192298%_
                               (##cdr _%$%e192278192293%_)))
                          (let ((_%hd192301%_ _%$%hd192279192296%_))
                            (if (gx#stx-pair? _%$%tl192280192298%_)
                                (let ((_%$%e192281192303%_
                                       (gx#syntax-e _%$%tl192280192298%_)))
                                  (let ((_%$%hd192282192306%_
                                         (##car _%$%e192281192303%_))
                                        (_%$%tl192283192308%_
                                         (##cdr _%$%e192281192303%_)))
                                    (if (gx#stx-null? _%$%tl192283192308%_)
                                        (cons (gx#core-quote-bind-values
                                               _%hd192301%_)
                                              (cons _%expr192274%_ '()))
                                        (_%$%E192277192289%_))))
                                (_%$%E192277192289%_)))))
                      (_%$%E192277192289%_)))))
          (_%$%E192276192311%_))))
    (define gx#core-expand-let-syntax%
      (lambda (_%stx192227%_)
        (let* ((_%$%e192228192238%_ _%stx192227%_)
               (_%$%E192230192242%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192228192238%_)))
               (_%$%E192229192269%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192228192238%_)
                      (let ((_%$%e192231192246%_
                             (gx#syntax-e _%$%e192228192238%_)))
                        (let ((_%$%hd192232192249%_
                               (##car _%$%e192231192246%_))
                              (_%$%tl192233192251%_
                               (##cdr _%$%e192231192246%_)))
                          (if (gx#stx-pair? _%$%tl192233192251%_)
                              (let ((_%$%e192234192254%_
                                     (gx#syntax-e _%$%tl192233192251%_)))
                                (let ((_%$%hd192235192257%_
                                       (##car _%$%e192234192254%_))
                                      (_%$%tl192236192259%_
                                       (##cdr _%$%e192234192254%_)))
                                  (let* ((_%hd192262%_ _%$%hd192235192257%_)
                                         (_%body192264%_ _%$%tl192236192259%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd192262%_)
                                        (let ((_%expanders192266%_
                                               (gx#stx-map1
                                                gx#core-expand-let-bind-syntax-expression
                                                _%hd192262%_)))
                                          (call-with-parameters__1
                                           (lambda ()
                                             (gx#stx-for-each2
                                              gx#core-expand-let-bind-syntax!
                                              _%hd192262%_
                                              _%expanders192266%_)
                                             (gx#core-expand-local-block
                                              _%stx192227%_
                                              _%body192264%_))
                                           gx#current-expander-context
                                           (let ((__obj194027
                                                  (##structure
                                                   gx#local-context::t
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f
                                                   '#f)))
                                             (gx#local-context:::init!__0
                                              __obj194027)
                                             __obj194027)))
                                        (_%$%E192230192242%_)))))
                              (_%$%E192230192242%_))))
                      (_%$%E192230192242%_)))))
          (_%$%E192229192269%_))))
    (define gx#core-expand-letrec-syntax%
      (lambda (_%stx192176%_)
        (let* ((_%$%e192177192187%_ _%stx192176%_)
               (_%$%E192179192191%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192177192187%_)))
               (_%$%E192178192223%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192177192187%_)
                      (let ((_%$%e192180192195%_
                             (gx#syntax-e _%$%e192177192187%_)))
                        (let ((_%$%hd192181192198%_
                               (##car _%$%e192180192195%_))
                              (_%$%tl192182192200%_
                               (##cdr _%$%e192180192195%_)))
                          (if (gx#stx-pair? _%$%tl192182192200%_)
                              (let ((_%$%e192183192203%_
                                     (gx#syntax-e _%$%tl192182192200%_)))
                                (let ((_%$%hd192184192206%_
                                       (##car _%$%e192183192203%_))
                                      (_%$%tl192185192208%_
                                       (##cdr _%$%e192183192203%_)))
                                  (let* ((_%hd192211%_ _%$%hd192184192206%_)
                                         (_%body192213%_ _%$%tl192185192208%_))
                                    (if (gx#core-expand-let-bind-syntax?
                                         _%hd192211%_)
                                        (call-with-parameters__1
                                         (lambda ()
                                           (gx#stx-for-each2
                                            gx#core-expand-let-bind-syntax!
                                            _%hd192211%_
                                            (make-list
                                             (gx#stx-length _%hd192211%_)
                                             '#!void))
                                           (gx#stx-for-each2
                                            (lambda (_%$%g192215192218%_
                                                     _%$%g192216192220%_)
                                              (gx#core-expand-let-bind-syntax!__%
                                               _%$%g192215192218%_
                                               _%$%g192216192220%_
                                               '#t))
                                            _%hd192211%_
                                            (gx#stx-map1
                                             gx#core-expand-let-bind-syntax-expression
                                             _%hd192211%_))
                                           (gx#core-expand-local-block
                                            _%stx192176%_
                                            _%body192213%_))
                                         gx#current-expander-context
                                         (let ((__obj194028
                                                (##structure
                                                 gx#local-context::t
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f
                                                 '#f)))
                                           (gx#local-context:::init!__0
                                            __obj194028)
                                           __obj194028))
                                        (_%$%E192179192191%_)))))
                              (_%$%E192179192191%_))))
                      (_%$%E192179192191%_)))))
          (_%$%E192178192223%_))))
    (define gx#core-expand-let-bind-syntax?
      (lambda (_%stx192133%_)
        (if (gx#stx-list? _%stx192133%_)
            (gx#stx-andmap
             (lambda (_%bind192135%_)
               (let* ((_%$%e192136192146%_ _%bind192135%_)
                      (_%$%E192138192150%_ (lambda () '#f))
                      (_%$%E192137192172%_
                       (lambda ()
                         (if (gx#stx-pair? _%$%e192136192146%_)
                             (let ((_%$%e192139192154%_
                                    (gx#syntax-e _%$%e192136192146%_)))
                               (let ((_%$%hd192140192157%_
                                      (##car _%$%e192139192154%_))
                                     (_%$%tl192141192159%_
                                      (##cdr _%$%e192139192154%_)))
                                 (let ((_%hd192162%_ _%$%hd192140192157%_))
                                   (if (gx#stx-pair? _%$%tl192141192159%_)
                                       (let ((_%$%e192142192164%_
                                              (gx#syntax-e
                                               _%$%tl192141192159%_)))
                                         (let ((_%$%hd192143192167%_
                                                (##car _%$%e192142192164%_))
                                               (_%$%tl192144192169%_
                                                (##cdr _%$%e192142192164%_)))
                                           (if (gx#stx-null?
                                                _%$%tl192144192169%_)
                                               (gx#identifier? _%hd192162%_)
                                               (_%$%E192138192150%_))))
                                       (_%$%E192138192150%_)))))
                             (_%$%E192138192150%_)))))
                 (_%$%E192137192172%_)))
             _%stx192133%_)
            '#f)))
    (define gx#core-expand-let-bind-syntax-expression
      (lambda (_%bind192089%_)
        (let* ((_%$%e192090192100%_ _%bind192089%_)
               (_%$%E192092192104%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192090192100%_)))
               (_%$%E192091192129%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192090192100%_)
                      (let ((_%$%e192093192108%_
                             (gx#syntax-e _%$%e192090192100%_)))
                        (let ((_%$%hd192094192111%_
                               (##car _%$%e192093192108%_))
                              (_%$%tl192095192113%_
                               (##cdr _%$%e192093192108%_)))
                          (if (gx#stx-pair? _%$%tl192095192113%_)
                              (let ((_%$%e192096192116%_
                                     (gx#syntax-e _%$%tl192095192113%_)))
                                (let ((_%$%hd192097192119%_
                                       (##car _%$%e192096192116%_))
                                      (_%$%tl192098192121%_
                                       (##cdr _%$%e192096192116%_)))
                                  (let ((_%expr192124%_ _%$%hd192097192119%_))
                                    (if (gx#stx-null? _%$%tl192098192121%_)
                                        (let ((_g194047_
                                               (gx#core-expand-expression+1
                                                _%expr192124%_)))
                                          (begin
                                            (let ((_g194048_
                                                   (if (##values? _g194047_)
                                                       (##values-length
                                                        _g194047_)
                                                       1)))
                                              (if (not (##fx= _g194048_ 2))
                                                  (error "Context expects 2 values"
                                                         _g194048_)))
                                            (let ((_%_192126%_
                                                   (##values-ref _g194047_ 0))
                                                  (_%e192127%_
                                                   (##values-ref _g194047_ 1)))
                                              _%e192127%_)))
                                        (_%$%E192092192104%_)))))
                              (_%$%E192092192104%_))))
                      (_%$%E192092192104%_)))))
          (_%$%E192091192129%_))))
    (define gx#core-expand-let-bind-syntax!__%
      (lambda (_%bind192034%_ _%e192035%_ _%rebind?192036%_)
        (let* ((_%$%e192037192047%_ _%bind192034%_)
               (_%$%E192039192051%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e192037192047%_)))
               (_%$%E192038192073%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e192037192047%_)
                      (let ((_%$%e192040192055%_
                             (gx#syntax-e _%$%e192037192047%_)))
                        (let ((_%$%hd192041192058%_
                               (##car _%$%e192040192055%_))
                              (_%$%tl192042192060%_
                               (##cdr _%$%e192040192055%_)))
                          (let ((_%id192063%_ _%$%hd192041192058%_))
                            (if (gx#stx-pair? _%$%tl192042192060%_)
                                (let ((_%$%e192043192065%_
                                       (gx#syntax-e _%$%tl192042192060%_)))
                                  (let ((_%$%hd192044192068%_
                                         (##car _%$%e192043192065%_))
                                        (_%$%tl192045192070%_
                                         (##cdr _%$%e192043192065%_)))
                                    (if (gx#stx-null? _%$%tl192045192070%_)
                                        (gx#core-bind-syntax!__1
                                         _%id192063%_
                                         _%e192035%_
                                         _%rebind?192036%_)
                                        (_%$%E192039192051%_))))
                                (_%$%E192039192051%_)))))
                      (_%$%E192039192051%_)))))
          (_%$%E192038192073%_))))
    (define gx#core-expand-let-bind-syntax!__0
      (lambda (_%bind192080%_ _%e192081%_)
        (let ((_%rebind?192083%_ '#f))
          (gx#core-expand-let-bind-syntax!__%
           _%bind192080%_
           _%e192081%_
           _%rebind?192083%_))))
    (define gx#core-expand-let-bind-syntax!
      (lambda _g194049_
        (let ((_g194050_ (##length _g194049_)))
          (cond ((##fx= _g194050_ 2)
                 (apply gx#core-expand-let-bind-syntax!__0 _g194049_))
                ((##fx= _g194050_ 3)
                 (apply gx#core-expand-let-bind-syntax!__% _g194049_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-expand-let-bind-syntax!
                  _g194049_))))))
    (define gx#core-expand-expression%
      (lambda (_%stx191992%_)
        (let* ((_%$%e191993192003%_ _%stx191992%_)
               (_%$%E191995192007%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191993192003%_)))
               (_%$%E191994192029%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191993192003%_)
                      (let ((_%$%e191996192011%_
                             (gx#syntax-e _%$%e191993192003%_)))
                        (let ((_%$%hd191997192014%_
                               (##car _%$%e191996192011%_))
                              (_%$%tl191998192016%_
                               (##cdr _%$%e191996192011%_)))
                          (if (gx#stx-pair? _%$%tl191998192016%_)
                              (let ((_%$%e191999192019%_
                                     (gx#syntax-e _%$%tl191998192016%_)))
                                (let ((_%$%hd192000192022%_
                                       (##car _%$%e191999192019%_))
                                      (_%$%tl192001192024%_
                                       (##cdr _%$%e191999192019%_)))
                                  (let ((_%expr192027%_ _%$%hd192000192022%_))
                                    (if (gx#stx-null? _%$%tl192001192024%_)
                                        (gx#core-expand-expression
                                         _%expr192027%_)
                                        (_%$%E191995192007%_)))))
                              (_%$%E191995192007%_))))
                      (_%$%E191995192007%_)))))
          (_%$%E191994192029%_))))
    (define gx#core-expand-quote%
      (lambda (_%stx191951%_)
        (let* ((_%$%e191952191962%_ _%stx191951%_)
               (_%$%E191954191966%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191952191962%_)))
               (_%$%E191953191988%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191952191962%_)
                      (let ((_%$%e191955191970%_
                             (gx#syntax-e _%$%e191952191962%_)))
                        (let ((_%$%hd191956191973%_
                               (##car _%$%e191955191970%_))
                              (_%$%tl191957191975%_
                               (##cdr _%$%e191955191970%_)))
                          (if (gx#stx-pair? _%$%tl191957191975%_)
                              (let ((_%$%e191958191978%_
                                     (gx#syntax-e _%$%tl191957191975%_)))
                                (let ((_%$%hd191959191981%_
                                       (##car _%$%e191958191978%_))
                                      (_%$%tl191960191983%_
                                       (##cdr _%$%e191958191978%_)))
                                  (let ((_%e191986%_ _%$%hd191959191981%_))
                                    (if (gx#stx-null? _%$%tl191960191983%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote)
                                               (cons (gx#syntax->datum
                                                      _%e191986%_)
                                                     '()))
                                         (gx#stx-source _%stx191951%_))
                                        (_%$%E191954191966%_)))))
                              (_%$%E191954191966%_))))
                      (_%$%E191954191966%_)))))
          (_%$%E191953191988%_))))
    (define gx#core-expand-quote-syntax%
      (lambda (_%stx191910%_)
        (let* ((_%$%e191911191921%_ _%stx191910%_)
               (_%$%E191913191925%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191911191921%_)))
               (_%$%E191912191947%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191911191921%_)
                      (let ((_%$%e191914191929%_
                             (gx#syntax-e _%$%e191911191921%_)))
                        (let ((_%$%hd191915191932%_
                               (##car _%$%e191914191929%_))
                              (_%$%tl191916191934%_
                               (##cdr _%$%e191914191929%_)))
                          (if (gx#stx-pair? _%$%tl191916191934%_)
                              (let ((_%$%e191917191937%_
                                     (gx#syntax-e _%$%tl191916191934%_)))
                                (let ((_%$%hd191918191940%_
                                       (##car _%$%e191917191937%_))
                                      (_%$%tl191919191942%_
                                       (##cdr _%$%e191917191937%_)))
                                  (let ((_%e191945%_ _%$%hd191918191940%_))
                                    (if (gx#stx-null? _%$%tl191919191942%_)
                                        (gx#core-quote-syntax__1
                                         (cons (gx#core-quote-syntax__0
                                                '%#quote-syntax)
                                               (cons (gx#core-quote-syntax__0
                                                      _%e191945%_)
                                                     '()))
                                         (gx#stx-source _%stx191910%_))
                                        (_%$%E191913191925%_)))))
                              (_%$%E191913191925%_))))
                      (_%$%E191913191925%_)))))
          (_%$%E191912191947%_))))
    (define gx#core-expand-call%
      (lambda (_%stx191804%_)
        (letrec ((_%expand-runtime-call191806%_
                  (lambda (_%rator-expr191907%_ _%args191908%_)
                    (gx#core-quote-syntax__1
                     (gx#core-cons*
                      '%#call
                      _%rator-expr191907%_
                      (gx#stx-map1 gx#core-expand-expression _%args191908%_))
                     (gx#stx-source _%stx191804%_)))))
          (let* ((_%$%e191807191817%_ _%stx191804%_)
                 (_%$%E191809191821%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e191807191817%_)))
                 (_%$%E191808191903%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e191807191817%_)
                        (let ((_%$%e191810191825%_
                               (gx#syntax-e _%$%e191807191817%_)))
                          (let ((_%$%hd191811191828%_
                                 (##car _%$%e191810191825%_))
                                (_%$%tl191812191830%_
                                 (##cdr _%$%e191810191825%_)))
                            (if (gx#stx-pair? _%$%tl191812191830%_)
                                (let ((_%$%e191813191833%_
                                       (gx#syntax-e _%$%tl191812191830%_)))
                                  (let ((_%$%hd191814191836%_
                                         (##car _%$%e191813191833%_))
                                        (_%$%tl191815191838%_
                                         (##cdr _%$%e191813191833%_)))
                                    (let* ((_%rator191841%_
                                            _%$%hd191814191836%_)
                                           (_%args191843%_
                                            _%$%tl191815191838%_))
                                      (if (gx#stx-list? _%args191843%_)
                                          (let* ((_%rator-expr191845%_
                                                  (gx#core-expand-expression
                                                   _%rator191841%_))
                                                 (_%$%e191846191856%_
                                                  _%rator-expr191845%_)
                                                 (_%$%E191848191860%_
                                                  (lambda ()
                                                    (_%expand-runtime-call191806%_
                                                     _%rator-expr191845%_
                                                     _%args191843%_)))
                                                 (_%$%E191847191899%_
                                                  (lambda ()
                                                    (if (gx#stx-pair?
                                                         _%$%e191846191856%_)
                                                        (let ((_%$%e191849191864%_
                                                               (gx#syntax-e
                                                                _%$%e191846191856%_)))
                                                          (let ((_%$%hd191850191867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (##car _%$%e191849191864%_))
                        (_%$%tl191851191869%_ (##cdr _%$%e191849191864%_)))
                    (if (and (gx#identifier? _%$%hd191850191867%_)
                             (gx#core-identifier=?
                              _%$%hd191850191867%_
                              '%#ref))
                        (if (gx#stx-pair? _%$%tl191851191869%_)
                            (let ((_%$%e191852191872%_
                                   (gx#syntax-e _%$%tl191851191869%_)))
                              (let ((_%$%hd191853191875%_
                                     (##car _%$%e191852191872%_))
                                    (_%$%tl191854191877%_
                                     (##cdr _%$%e191852191872%_)))
                                (let ((_%id191880%_ _%$%hd191853191875%_))
                                  (if (gx#stx-null? _%$%tl191854191877%_)
                                      (let ((_%$e191882%_
                                             (gx#resolve-identifier__0
                                              _%id191880%_)))
                                        (if _%$e191882%_
                                            (let _%again191887%_ ((_%bind191889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$e191882%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (let ((_%$e191891%_
                                                     (if (##structure-instance-of?
                                                          _%bind191889%_
                                                          'gx#runtime-binding::t)
                                                         (##unchecked-structure-ref
                                                          _%bind191889%_
                                                          '6
                                                          '#f
                                                          '#f)
                                                         '#f)))
                                                (if _%$e191891%_
                                                    (gx#core-expand-expression
                                                     (gx#stx-wrap-source
                                                      (cons _%$e191891%_
                                                            _%args191843%_)
                                                      (gx#stx-source
                                                       _%stx191804%_)))
                                                    (if (##structure-direct-instance-of?
                                                         _%bind191889%_
                                                         'gx#import-binding::t)
                                                        (_%again191887%_
                                                         (##unchecked-structure-ref
                                                          _%bind191889%_
                                                          '5
                                                          '#f
                                                          '#f))
                                                        (_%expand-runtime-call191806%_
                                                         _%rator-expr191845%_
                                                         _%args191843%_)))))
                                            (_%expand-runtime-call191806%_
                                             _%rator-expr191845%_
                                             _%args191843%_)))
                                      (_%$%E191848191860%_)))))
                            (_%$%E191848191860%_))
                        (_%$%E191848191860%_))))
                (_%$%E191848191860%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E191847191899%_))
                                          (_%$%E191809191821%_)))))
                                (_%$%E191809191821%_))))
                        (_%$%E191809191821%_)))))
            (_%$%E191808191903%_)))))
    (define gx#core-expand-if%
      (lambda (_%stx191737%_)
        (let* ((_%$%e191738191754%_ _%stx191737%_)
               (_%$%E191740191758%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191738191754%_)))
               (_%$%E191739191800%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191738191754%_)
                      (let ((_%$%e191741191762%_
                             (gx#syntax-e _%$%e191738191754%_)))
                        (let ((_%$%hd191742191765%_
                               (##car _%$%e191741191762%_))
                              (_%$%tl191743191767%_
                               (##cdr _%$%e191741191762%_)))
                          (if (gx#stx-pair? _%$%tl191743191767%_)
                              (let ((_%$%e191744191770%_
                                     (gx#syntax-e _%$%tl191743191767%_)))
                                (let ((_%$%hd191745191773%_
                                       (##car _%$%e191744191770%_))
                                      (_%$%tl191746191775%_
                                       (##cdr _%$%e191744191770%_)))
                                  (let ((_%test191778%_ _%$%hd191745191773%_))
                                    (if (gx#stx-pair? _%$%tl191746191775%_)
                                        (let ((_%$%e191747191780%_
                                               (gx#syntax-e
                                                _%$%tl191746191775%_)))
                                          (let ((_%$%hd191748191783%_
                                                 (##car _%$%e191747191780%_))
                                                (_%$%tl191749191785%_
                                                 (##cdr _%$%e191747191780%_)))
                                            (let ((_%K191788%_
                                                   _%$%hd191748191783%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl191749191785%_)
                                                  (let ((_%$%e191750191790%_
                                                         (gx#syntax-e
                                                          _%$%tl191749191785%_)))
                                                    (let ((_%$%hd191751191793%_
                                                           (##car _%$%e191750191790%_))
                                                          (_%$%tl191752191795%_
                                                           (##cdr _%$%e191750191790%_)))
                                                      (let ((_%E191798%_
                                                             _%$%hd191751191793%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl191752191795%_)
                                                            (gx#core-quote-syntax__1
                                                             (cons (gx#core-quote-syntax__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '%#if)
                           (cons (gx#core-expand-expression _%test191778%_)
                                 (cons (gx#core-expand-expression _%K191788%_)
                                       (cons (gx#core-expand-expression
                                              _%E191798%_)
                                             '()))))
                     (gx#stx-source _%stx191737%_))
                    (_%$%E191740191758%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E191740191758%_)))))
                                        (_%$%E191740191758%_)))))
                              (_%$%E191740191758%_))))
                      (_%$%E191740191758%_)))))
          (_%$%E191739191800%_))))
    (define gx#core-expand-ref%
      (lambda (_%stx191696%_)
        (let* ((_%$%e191697191707%_ _%stx191696%_)
               (_%$%E191699191711%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191697191707%_)))
               (_%$%E191698191733%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191697191707%_)
                      (let ((_%$%e191700191715%_
                             (gx#syntax-e _%$%e191697191707%_)))
                        (let ((_%$%hd191701191718%_
                               (##car _%$%e191700191715%_))
                              (_%$%tl191702191720%_
                               (##cdr _%$%e191700191715%_)))
                          (if (gx#stx-pair? _%$%tl191702191720%_)
                              (let ((_%$%e191703191723%_
                                     (gx#syntax-e _%$%tl191702191720%_)))
                                (let ((_%$%hd191704191726%_
                                       (##car _%$%e191703191723%_))
                                      (_%$%tl191705191728%_
                                       (##cdr _%$%e191703191723%_)))
                                  (let ((_%id191731%_ _%$%hd191704191726%_))
                                    (if (gx#stx-null? _%$%tl191705191728%_)
                                        (if (gx#identifier? _%id191731%_)
                                            (gx#core-quote-syntax__1
                                             (cons (gx#core-quote-syntax__0
                                                    '%#ref)
                                                   (cons (gx#core-quote-runtime-ref
                                                          _%id191731%_
                                                          _%stx191696%_)
                                                         '()))
                                             (gx#stx-source _%stx191696%_))
                                            (_%$%E191699191711%_))
                                        (_%$%E191699191711%_)))))
                              (_%$%E191699191711%_))))
                      (_%$%E191699191711%_)))))
          (_%$%E191698191733%_))))
    (define gx#core-expand-setq%
      (lambda (_%stx191642%_)
        (let* ((_%$%e191643191656%_ _%stx191642%_)
               (_%$%E191645191660%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191643191656%_)))
               (_%$%E191644191692%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191643191656%_)
                      (let ((_%$%e191646191664%_
                             (gx#syntax-e _%$%e191643191656%_)))
                        (let ((_%$%hd191647191667%_
                               (##car _%$%e191646191664%_))
                              (_%$%tl191648191669%_
                               (##cdr _%$%e191646191664%_)))
                          (if (gx#stx-pair? _%$%tl191648191669%_)
                              (let ((_%$%e191649191672%_
                                     (gx#syntax-e _%$%tl191648191669%_)))
                                (let ((_%$%hd191650191675%_
                                       (##car _%$%e191649191672%_))
                                      (_%$%tl191651191677%_
                                       (##cdr _%$%e191649191672%_)))
                                  (let ((_%id191680%_ _%$%hd191650191675%_))
                                    (if (gx#stx-pair? _%$%tl191651191677%_)
                                        (let ((_%$%e191652191682%_
                                               (gx#syntax-e
                                                _%$%tl191651191677%_)))
                                          (let ((_%$%hd191653191685%_
                                                 (##car _%$%e191652191682%_))
                                                (_%$%tl191654191687%_
                                                 (##cdr _%$%e191652191682%_)))
                                            (let ((_%expr191690%_
                                                   _%$%hd191653191685%_))
                                              (if (gx#stx-null?
                                                   _%$%tl191654191687%_)
                                                  (if (gx#identifier?
                                                       _%id191680%_)
                                                      (gx#core-quote-syntax__1
                                                       (cons (gx#core-quote-syntax__0
                                                              '%#set!)
                                                             (cons (gx#core-quote-runtime-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%id191680%_
                            _%stx191642%_)
                           (cons (gx#core-expand-expression _%expr191690%_)
                                 '())))
               (gx#stx-source _%stx191642%_))
              (_%$%E191645191660%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%$%E191645191660%_)))))
                                        (_%$%E191645191660%_)))))
                              (_%$%E191645191660%_))))
                      (_%$%E191645191660%_)))))
          (_%$%E191644191692%_))))
    (define gx#macro-expand-extern
      (lambda (_%stx191487%_)
        (letrec ((_%generate191489%_
                  (lambda (_%body191519%_)
                    (let _%lp191521%_ ((_%rest191523%_ _%body191519%_)
                                       (_%ns191524%_
                                        (gx#core-context-namespace__0))
                                       (_%r191525%_ '()))
                      (let* ((_%$%e191526191541%_ _%rest191523%_)
                             (_%$%E191539191545%_
                              (lambda ()
                                (gx#raise-syntax-error
                                 '#f
                                 '"Bad syntax; invalid syntax-case clause"
                                 _%$%e191526191541%_)))
                             (_%$%E191535191549%_
                              (lambda ()
                                (if (gx#stx-null? _%$%e191526191541%_)
                                    (reverse _%r191525%_)
                                    (_%$%E191539191545%_))))
                             (_%$%E191528191606%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e191526191541%_)
                                    (let ((_%$%e191536191553%_
                                           (gx#syntax-e _%$%e191526191541%_)))
                                      (let ((_%$%hd191537191556%_
                                             (##car _%$%e191536191553%_))
                                            (_%$%tl191538191558%_
                                             (##cdr _%$%e191536191553%_)))
                                        (let* ((_%hd191561%_
                                                _%$%hd191537191556%_)
                                               (_%rest191563%_
                                                _%$%tl191538191558%_))
                                          (if (gx#identifier? _%hd191561%_)
                                              (_%lp191521%_
                                               _%rest191563%_
                                               _%ns191524%_
                                               (cons (cons _%hd191561%_
                                                           (cons (if _%ns191524%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gx#stx-identifier
                              _%hd191561%_
                              _%ns191524%_
                              '"#"
                              _%hd191561%_)
                             _%hd191561%_)
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r191525%_))
                                              (let* ((_%$%e191564191574%_
                                                      _%hd191561%_)
                                                     (_%$%E191566191578%_
                                                      (lambda ()
                                                        (gx#raise-syntax-error
                                                         '#f
                                                         '"Bad syntax; invalid syntax-case clause"
                                                         _%$%e191564191574%_)))
                                                     (_%$%E191565191602%_
                                                      (lambda ()
                                                        (if (gx#stx-pair?
                                                             _%$%e191564191574%_)
                                                            (let ((_%$%e191567191582%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gx#syntax-e _%$%e191564191574%_)))
                      (let ((_%$%hd191568191585%_ (##car _%$%e191567191582%_))
                            (_%$%tl191569191587%_ (##cdr _%$%e191567191582%_)))
                        (let ((_%id191590%_ _%$%hd191568191585%_))
                          (if (gx#stx-pair? _%$%tl191569191587%_)
                              (let ((_%$%e191570191592%_
                                     (gx#syntax-e _%$%tl191569191587%_)))
                                (let ((_%$%hd191571191595%_
                                       (##car _%$%e191570191592%_))
                                      (_%$%tl191572191597%_
                                       (##cdr _%$%e191570191592%_)))
                                  (let ((_%eid191600%_ _%$%hd191571191595%_))
                                    (if (gx#stx-null? _%$%tl191572191597%_)
                                        (if (and (gx#identifier? _%id191590%_)
                                                 (gx#identifier?
                                                  _%eid191600%_))
                                            (_%lp191521%_
                                             _%rest191563%_
                                             _%ns191524%_
                                             (cons (cons _%id191590%_
                                                         (cons _%eid191600%_
                                                               '()))
                                                   _%r191525%_))
                                            (_%$%E191566191578%_))
                                        (_%$%E191566191578%_)))))
                              (_%$%E191566191578%_)))))
                    (_%$%E191566191578%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E191565191602%_))))))
                                    (_%$%E191535191549%_))))
                             (_%$%E191527191638%_
                              (lambda ()
                                (if (gx#stx-pair? _%$%e191526191541%_)
                                    (let ((_%$%e191529191610%_
                                           (gx#syntax-e _%$%e191526191541%_)))
                                      (let ((_%$%hd191530191613%_
                                             (##car _%$%e191529191610%_))
                                            (_%$%tl191531191615%_
                                             (##cdr _%$%e191529191610%_)))
                                        (if (eq? (gx#stx-e
                                                  _%$%hd191530191613%_)
                                                 'namespace:)
                                            (if (gx#stx-pair?
                                                 _%$%tl191531191615%_)
                                                (let ((_%$%e191532191618%_
                                                       (gx#syntax-e
                                                        _%$%tl191531191615%_)))
                                                  (let ((_%$%hd191533191621%_
                                                         (##car _%$%e191532191618%_))
                                                        (_%$%tl191534191623%_
                                                         (##cdr _%$%e191532191618%_)))
                                                    (let* ((_%ns191626%_
                                                            _%$%hd191533191621%_)
                                                           (_%rest191628%_
                                                            _%$%tl191534191623%_)
                                                           (_%ns191636%_
                                                            (if (gx#identifier?
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%ns191626%_)
                        (symbol->string (gx#stx-e _%ns191626%_))
                        (if (or (gx#stx-string? _%ns191626%_)
                                (gx#stx-false? _%ns191626%_))
                            (gx#stx-e _%ns191626%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Bad syntax; extern expects namespace identifier"
                             _%stx191487%_
                             _%ns191626%_)))))
              (_%lp191521%_ _%rest191628%_ _%ns191636%_ _%r191525%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%E191528191606%_))
                                            (_%$%E191528191606%_))))
                                    (_%$%E191528191606%_)))))
                        (_%$%E191527191638%_))))))
          (let* ((_%$%e191490191497%_ _%stx191487%_)
                 (_%$%E191492191501%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e191490191497%_)))
                 (_%$%E191491191515%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e191490191497%_)
                        (let ((_%$%e191493191505%_
                               (gx#syntax-e _%$%e191490191497%_)))
                          (let ((_%$%hd191494191508%_
                                 (##car _%$%e191493191505%_))
                                (_%$%tl191495191510%_
                                 (##cdr _%$%e191493191505%_)))
                            (let ((_%body191513%_ _%$%tl191495191510%_))
                              (if (gx#stx-list? _%body191513%_)
                                  (gx#core-cons
                                   '%#extern
                                   (_%generate191489%_ _%body191513%_))
                                  (_%$%E191492191501%_)))))
                        (_%$%E191492191501%_)))))
            (_%$%E191491191515%_)))))
    (define gx#macro-expand-lambda%
      (lambda (_%stx191444%_)
        (let* ((_%$%e191445191455%_ _%stx191444%_)
               (_%$%E191447191459%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191445191455%_)))
               (_%$%E191446191483%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191445191455%_)
                      (let ((_%$%e191448191463%_
                             (gx#syntax-e _%$%e191445191455%_)))
                        (let ((_%$%hd191449191466%_
                               (##car _%$%e191448191463%_))
                              (_%$%tl191450191468%_
                               (##cdr _%$%e191448191463%_)))
                          (if (gx#stx-pair? _%$%tl191450191468%_)
                              (let ((_%$%e191451191471%_
                                     (gx#syntax-e _%$%tl191450191468%_)))
                                (let ((_%$%hd191452191474%_
                                       (##car _%$%e191451191471%_))
                                      (_%$%tl191453191476%_
                                       (##cdr _%$%e191451191471%_)))
                                  (let* ((_%hd191479%_ _%$%hd191452191474%_)
                                         (_%body191481%_ _%$%tl191453191476%_))
                                    (if (and (gx#stx-andmap
                                              gx#identifier?
                                              _%hd191479%_)
                                             (gx#stx-list? _%body191481%_)
                                             (not (gx#stx-null?
                                                   _%body191481%_)))
                                        (gx#core-cons*
                                         '%#lambda
                                         (gx#stx-map1 identity _%hd191479%_)
                                         _%body191481%_)
                                        (_%$%E191447191459%_)))))
                              (_%$%E191447191459%_))))
                      (_%$%E191447191459%_)))))
          (_%$%E191446191483%_))))
    (define gx#macro-expand-case-lambda
      (lambda (_%stx191380%_)
        (letrec ((_%generate191382%_
                  (lambda (_%clause191412%_)
                    (let* ((_%$%e191413191420%_ _%clause191412%_)
                           (_%$%E191415191424%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed clause"
                               _%stx191380%_
                               _%clause191412%_)))
                           (_%$%E191414191440%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191413191420%_)
                                  (let ((_%$%e191416191428%_
                                         (gx#syntax-e _%$%e191413191420%_)))
                                    (let ((_%$%hd191417191431%_
                                           (##car _%$%e191416191428%_))
                                          (_%$%tl191418191433%_
                                           (##cdr _%$%e191416191428%_)))
                                      (let* ((_%hd191436%_
                                              _%$%hd191417191431%_)
                                             (_%body191438%_
                                              _%$%tl191418191433%_))
                                        (if (and (gx#stx-andmap
                                                  gx#identifier?
                                                  _%hd191436%_)
                                                 (gx#stx-list? _%body191438%_)
                                                 (not (gx#stx-null?
                                                       _%body191438%_)))
                                            (gx#stx-wrap-source
                                             (cons (gx#stx-map1
                                                    identity
                                                    _%hd191436%_)
                                                   _%body191438%_)
                                             (gx#stx-source _%clause191412%_))
                                            (_%$%E191415191424%_)))))
                                  (_%$%E191415191424%_)))))
                      (_%$%E191414191440%_)))))
          (let* ((_%$%e191383191390%_ _%stx191380%_)
                 (_%$%E191385191394%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e191383191390%_)))
                 (_%$%E191384191408%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e191383191390%_)
                        (let ((_%$%e191386191398%_
                               (gx#syntax-e _%$%e191383191390%_)))
                          (let ((_%$%hd191387191401%_
                                 (##car _%$%e191386191398%_))
                                (_%$%tl191388191403%_
                                 (##cdr _%$%e191386191398%_)))
                            (let ((_%clauses191406%_ _%$%tl191388191403%_))
                              (if (gx#stx-list? _%clauses191406%_)
                                  (gx#core-cons
                                   '%#case-lambda
                                   (gx#stx-map1
                                    _%generate191382%_
                                    _%clauses191406%_))
                                  (_%$%E191385191394%_)))))
                        (_%$%E191385191394%_)))))
            (_%$%E191384191408%_)))))
    (define gx#macro-expand-let-values__%
      (lambda (_%stx191281%_ _%form191282%_)
        (letrec ((_%generate191284%_
                  (lambda (_%bind191327%_)
                    (let* ((_%$%e191328191338%_ _%bind191327%_)
                           (_%$%E191330191342%_
                            (lambda ()
                              (gx#raise-syntax-error
                               '#f
                               '"Bad syntax; malformed binding"
                               _%stx191281%_
                               _%bind191327%_)))
                           (_%$%E191329191366%_
                            (lambda ()
                              (if (gx#stx-pair? _%$%e191328191338%_)
                                  (let ((_%$%e191331191346%_
                                         (gx#syntax-e _%$%e191328191338%_)))
                                    (let ((_%$%hd191332191349%_
                                           (##car _%$%e191331191346%_))
                                          (_%$%tl191333191351%_
                                           (##cdr _%$%e191331191346%_)))
                                      (let ((_%ids191354%_
                                             _%$%hd191332191349%_))
                                        (if (gx#stx-pair? _%$%tl191333191351%_)
                                            (let ((_%$%e191334191356%_
                                                   (gx#syntax-e
                                                    _%$%tl191333191351%_)))
                                              (let ((_%$%hd191335191359%_
                                                     (##car _%$%e191334191356%_))
                                                    (_%$%tl191336191361%_
                                                     (##cdr _%$%e191334191356%_)))
                                                (let ((_%expr191364%_
                                                       _%$%hd191335191359%_))
                                                  (if (gx#stx-null?
                                                       _%$%tl191336191361%_)
                                                      (if (gx#stx-andmap
                                                           gx#identifier?
                                                           _%ids191354%_)
                                                          (cons (gx#stx-map1
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         identity
                         _%ids191354%_)
                        (cons _%expr191364%_ '()))
                  (_%$%E191330191342%_))
              (_%$%E191330191342%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (_%$%E191330191342%_)))))
                                  (_%$%E191330191342%_)))))
                      (_%$%E191329191366%_)))))
          (let* ((_%$%e191285191295%_ _%stx191281%_)
                 (_%$%E191287191299%_
                  (lambda ()
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid syntax-case clause"
                     _%$%e191285191295%_)))
                 (_%$%E191286191323%_
                  (lambda ()
                    (if (gx#stx-pair? _%$%e191285191295%_)
                        (let ((_%$%e191288191303%_
                               (gx#syntax-e _%$%e191285191295%_)))
                          (let ((_%$%hd191289191306%_
                                 (##car _%$%e191288191303%_))
                                (_%$%tl191290191308%_
                                 (##cdr _%$%e191288191303%_)))
                            (if (gx#stx-pair? _%$%tl191290191308%_)
                                (let ((_%$%e191291191311%_
                                       (gx#syntax-e _%$%tl191290191308%_)))
                                  (let ((_%$%hd191292191314%_
                                         (##car _%$%e191291191311%_))
                                        (_%$%tl191293191316%_
                                         (##cdr _%$%e191291191311%_)))
                                    (let* ((_%hd191319%_ _%$%hd191292191314%_)
                                           (_%body191321%_
                                            _%$%tl191293191316%_))
                                      (if (and (gx#stx-list? _%hd191319%_)
                                               (gx#stx-list? _%body191321%_)
                                               (not (gx#stx-null?
                                                     _%body191321%_)))
                                          (gx#core-cons*
                                           _%form191282%_
                                           (gx#stx-map1
                                            _%generate191284%_
                                            _%hd191319%_)
                                           _%body191321%_)
                                          (_%$%E191287191299%_)))))
                                (_%$%E191287191299%_))))
                        (_%$%E191287191299%_)))))
            (_%$%E191286191323%_)))))
    (define gx#macro-expand-let-values__0
      (lambda (_%stx191373%_)
        (let ((_%form191375%_ '%#let-values))
          (gx#macro-expand-let-values__% _%stx191373%_ _%form191375%_))))
    (define gx#macro-expand-let-values
      (lambda _g194051_
        (let ((_g194052_ (##length _g194051_)))
          (cond ((##fx= _g194052_ 1)
                 (apply gx#macro-expand-let-values__0 _g194051_))
                ((##fx= _g194052_ 2)
                 (apply gx#macro-expand-let-values__% _g194051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#macro-expand-let-values
                  _g194051_))))))
    (define gx#macro-expand-letrec-values
      (lambda (_%stx191278%_)
        (gx#macro-expand-let-values__% _%stx191278%_ '%#letrec-values)))
    (define gx#macro-expand-letrec*-values
      (lambda (_%stx191276%_)
        (gx#macro-expand-let-values__% _%stx191276%_ '%#letrec*-values)))
    (define gx#macro-expand-if
      (lambda (_%stx191167%_)
        (let* ((_%$%e191168191194%_ _%stx191167%_)
               (_%$%E191180191198%_
                (lambda ()
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; invalid syntax-case clause"
                   _%$%e191168191194%_)))
               (_%$%E191170191240%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191168191194%_)
                      (let ((_%$%e191181191202%_
                             (gx#syntax-e _%$%e191168191194%_)))
                        (let ((_%$%hd191182191205%_
                               (##car _%$%e191181191202%_))
                              (_%$%tl191183191207%_
                               (##cdr _%$%e191181191202%_)))
                          (if (gx#stx-pair? _%$%tl191183191207%_)
                              (let ((_%$%e191184191210%_
                                     (gx#syntax-e _%$%tl191183191207%_)))
                                (let ((_%$%hd191185191213%_
                                       (##car _%$%e191184191210%_))
                                      (_%$%tl191186191215%_
                                       (##cdr _%$%e191184191210%_)))
                                  (let ((_%test191218%_ _%$%hd191185191213%_))
                                    (if (gx#stx-pair? _%$%tl191186191215%_)
                                        (let ((_%$%e191187191220%_
                                               (gx#syntax-e
                                                _%$%tl191186191215%_)))
                                          (let ((_%$%hd191188191223%_
                                                 (##car _%$%e191187191220%_))
                                                (_%$%tl191189191225%_
                                                 (##cdr _%$%e191187191220%_)))
                                            (let ((_%K191228%_
                                                   _%$%hd191188191223%_))
                                              (if (gx#stx-pair?
                                                   _%$%tl191189191225%_)
                                                  (let ((_%$%e191190191230%_
                                                         (gx#syntax-e
                                                          _%$%tl191189191225%_)))
                                                    (let ((_%$%hd191191191233%_
                                                           (##car _%$%e191190191230%_))
                                                          (_%$%tl191192191235%_
                                                           (##cdr _%$%e191190191230%_)))
                                                      (let ((_%E191238%_
                                                             _%$%hd191191191233%_))
                                                        (if (gx#stx-null?
                                                             _%$%tl191192191235%_)
                                                            (gx#core-list
                                                             '%#if
                                                             _%test191218%_
                                                             _%K191228%_
                                                             _%E191238%_)
                                                            (_%$%E191180191198%_)))))
                                                  (_%$%E191180191198%_)))))
                                        (_%$%E191180191198%_)))))
                              (_%$%E191180191198%_))))
                      (_%$%E191180191198%_))))
               (_%$%E191169191272%_
                (lambda ()
                  (if (gx#stx-pair? _%$%e191168191194%_)
                      (let ((_%$%e191171191244%_
                             (gx#syntax-e _%$%e191168191194%_)))
                        (let ((_%$%hd191172191247%_
                               (##car _%$%e191171191244%_))
                              (_%$%tl191173191249%_
                               (##cdr _%$%e191171191244%_)))
                          (if (gx#stx-pair? _%$%tl191173191249%_)
                              (let ((_%$%e191174191252%_
                                     (gx#syntax-e _%$%tl191173191249%_)))
                                (let ((_%$%hd191175191255%_
                                       (##car _%$%e191174191252%_))
                                      (_%$%tl191176191257%_
                                       (##cdr _%$%e191174191252%_)))
                                  (let ((_%test191260%_ _%$%hd191175191255%_))
                                    (if (gx#stx-pair? _%$%tl191176191257%_)
                                        (let ((_%$%e191177191262%_
                                               (gx#syntax-e
                                                _%$%tl191176191257%_)))
                                          (let ((_%$%hd191178191265%_
                                                 (##car _%$%e191177191262%_))
                                                (_%$%tl191179191267%_
                                                 (##cdr _%$%e191177191262%_)))
                                            (let ((_%K191270%_
                                                   _%$%hd191178191265%_))
                                              (if (gx#stx-null?
                                                   _%$%tl191179191267%_)
                                                  (gx#core-list
                                                   '%#if
                                                   _%test191260%_
                                                   _%K191270%_
                                                   '#!void)
                                                  (_%$%E191170191240%_)))))
                                        (_%$%E191170191240%_)))))
                              (_%$%E191170191240%_))))
                      (_%$%E191170191240%_)))))
          (_%$%E191169191272%_))))
    (define gx#free-identifier=?
      (lambda (_%xid191152%_ _%yid191153%_)
        (let ((_%xe191155%_ (gx#resolve-identifier__0 _%xid191152%_))
              (_%ye191156%_ (gx#resolve-identifier__0 _%yid191153%_)))
          (if (and _%xe191155%_ _%ye191156%_)
              (let ((_%$e191159%_ (eq? _%xe191155%_ _%ye191156%_)))
                (if _%$e191159%_
                    _%$e191159%_
                    (if (##structure-instance-of? _%xe191155%_ 'gx#binding::t)
                        (if (##structure-instance-of?
                             _%ye191156%_
                             'gx#binding::t)
                            (eq? (##unchecked-structure-ref
                                  _%xe191155%_
                                  '1
                                  '#f
                                  '#f)
                                 (##unchecked-structure-ref
                                  _%ye191156%_
                                  '1
                                  '#f
                                  '#f))
                            '#f)
                        '#f)))
              (if (or _%xe191155%_ _%ye191156%_)
                  '#f
                  (gx#stx-eq? _%xid191152%_ _%yid191153%_))))))
    (define gx#bound-identifier=?
      (lambda (_%xid191133%_ _%yid191134%_)
        (letrec ((_%context191136%_
                  (lambda (_%e191150%_)
                    (if (##structure-direct-instance-of?
                         _%e191150%_
                         'gx#syntax-quote::t)
                        (##unchecked-structure-ref _%e191150%_ '3 '#f '#f)
                        (gx#current-expander-context))))
                 (_%marks191137%_
                  (lambda (_%e191145%_)
                    (if (symbol? _%e191145%_)
                        '()
                        (if (##structure-direct-instance-of?
                             _%e191145%_
                             'gx#identifier-wrap::t)
                            (##unchecked-structure-ref _%e191145%_ '3 '#f '#f)
                            (##unchecked-structure-ref
                             _%e191145%_
                             '4
                             '#f
                             '#f)))))
                 (_%unwrap191138%_
                  (lambda (_%e191143%_)
                    (if (symbol? _%e191143%_)
                        _%e191143%_
                        (gx#syntax-local-unwrap _%e191143%_)))))
          (let ((_%x191140%_ (_%unwrap191138%_ _%xid191133%_))
                (_%y191141%_ (_%unwrap191138%_ _%yid191134%_)))
            (if (gx#stx-eq? _%x191140%_ _%y191141%_)
                (if (eq? (_%context191136%_ _%x191140%_)
                         (_%context191136%_ _%y191141%_))
                    (equal? (_%marks191137%_ _%x191140%_)
                            (_%marks191137%_ _%y191141%_))
                    '#f)
                '#f)))))
    (define gx#underscore?
      (lambda (_%stx191131%_)
        (if (gx#identifier? _%stx191131%_)
            (gx#core-identifier=? _%stx191131%_ '_)
            '#f)))
    (define gx#ellipsis?
      (lambda (_%stx191129%_)
        (if (gx#identifier? _%stx191129%_)
            (gx#core-identifier=? _%stx191129%_ '...)
            '#f)))
    (define gx#check-duplicate-identifiers__%
      (lambda (_%stx191072%_ _%where191073%_)
        (let _%lp191075%_ ((_%rest191077%_ (gx#syntax->list _%stx191072%_)))
          (let* ((_%$%rest191078191086%_ _%rest191077%_)
                 (_%$%else191080191094%_ (lambda () '#t))
                 (_%$%K191082191107%_
                  (lambda (_%rest191097%_ _%hd191098%_)
                    (if (gx#identifier? _%hd191098%_)
                        (if (__find (lambda (_%$%g191100191102%_)
                                      (gx#bound-identifier=?
                                       _%$%g191100191102%_
                                       _%hd191098%_))
                                    _%rest191097%_)
                            (gx#raise-syntax-error
                             '#f
                             '"Duplicate identifier"
                             _%where191073%_
                             _%hd191098%_)
                            (_%lp191075%_ _%rest191097%_))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad identifier"
                         _%where191073%_
                         _%hd191098%_)))))
            (if (pair? _%$%rest191078191086%_)
                (let ((_%$%hd191083191110%_ (##car _%$%rest191078191086%_))
                      (_%$%tl191084191112%_ (##cdr _%$%rest191078191086%_)))
                  (let* ((_%hd191115%_ _%$%hd191083191110%_)
                         (_%rest191117%_ _%$%tl191084191112%_))
                    (_%$%K191082191107%_ _%rest191117%_ _%hd191115%_)))
                (_%$%else191080191094%_))))))
    (define gx#check-duplicate-identifiers__0
      (lambda (_%stx191122%_)
        (let ((_%where191124%_ _%stx191122%_))
          (gx#check-duplicate-identifiers__% _%stx191122%_ _%where191124%_))))
    (define gx#check-duplicate-identifiers
      (lambda _g194053_
        (let ((_g194054_ (##length _g194053_)))
          (cond ((##fx= _g194054_ 1)
                 (apply gx#check-duplicate-identifiers__0 _g194053_))
                ((##fx= _g194054_ 2)
                 (apply gx#check-duplicate-identifiers__% _g194053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#check-duplicate-identifiers
                  _g194053_))))))
    (define gx#core-bind-values?
      (lambda (_%stx191064%_)
        (gx#stx-andmap
         (lambda (_%x191066%_)
           (let ((_%$e191068%_ (gx#identifier? _%x191066%_)))
             (if _%$e191068%_ _%$e191068%_ (gx#stx-false? _%x191066%_))))
         _%stx191064%_)))
    (define gx#core-bind-values!__%
      (lambda (_%stx191028%_ _%rebind?191029%_ _%phi191030%_ _%ctx191031%_)
        (gx#stx-for-each1
         (lambda (_%id191033%_)
           (if (gx#identifier? _%id191033%_)
               (gx#core-bind-runtime!__%
                _%id191033%_
                _%rebind?191029%_
                _%phi191030%_
                _%ctx191031%_)
               '#!void))
         _%stx191028%_)))
    (define gx#core-bind-values!__0
      (lambda (_%stx191038%_)
        (let* ((_%rebind?191040%_ '#f)
               (_%phi191042%_ (gx#current-expander-phi))
               (_%ctx191044%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx191038%_
           _%rebind?191040%_
           _%phi191042%_
           _%ctx191044%_))))
    (define gx#core-bind-values!__1
      (lambda (_%stx191046%_ _%rebind?191047%_)
        (let* ((_%phi191049%_ (gx#current-expander-phi))
               (_%ctx191051%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx191046%_
           _%rebind?191047%_
           _%phi191049%_
           _%ctx191051%_))))
    (define gx#core-bind-values!__2
      (lambda (_%stx191053%_ _%rebind?191054%_ _%phi191055%_)
        (let ((_%ctx191057%_ (gx#current-expander-context)))
          (gx#core-bind-values!__%
           _%stx191053%_
           _%rebind?191054%_
           _%phi191055%_
           _%ctx191057%_))))
    (define gx#core-bind-values!
      (lambda _g194055_
        (let ((_g194056_ (##length _g194055_)))
          (cond ((##fx= _g194056_ 1) (apply gx#core-bind-values!__0 _g194055_))
                ((##fx= _g194056_ 2) (apply gx#core-bind-values!__1 _g194055_))
                ((##fx= _g194056_ 3) (apply gx#core-bind-values!__2 _g194055_))
                ((##fx= _g194056_ 4) (apply gx#core-bind-values!__% _g194055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-values!
                  _g194055_))))))
    (define gx#core-quote-bind-values
      (lambda (_%stx191023%_)
        (gx#stx-map1
         (lambda (_%x191025%_)
           (if (gx#identifier? _%x191025%_)
               (gx#core-quote-syntax__0 _%x191025%_)
               '#f))
         _%stx191023%_)))
    (define gx#core-runtime-ref?
      (lambda (_%stx191016%_)
        (if (gx#identifier? _%stx191016%_)
            (let* ((_%bind191018%_ (gx#resolve-identifier__0 _%stx191016%_))
                   (_%$e191020%_ (not _%bind191018%_)))
              (if _%$e191020%_
                  _%$e191020%_
                  (##structure-instance-of?
                   _%bind191018%_
                   'gx#runtime-binding::t)))
            '#f)))
    (define gx#core-quote-runtime-ref
      (lambda (_%id191005%_ _%form191006%_)
        (let ((_%bind191008%_ (gx#resolve-identifier__0 _%id191005%_)))
          (if (##structure-instance-of? _%bind191008%_ 'gx#runtime-binding::t)
              (gx#core-quote-syntax__0 _%id191005%_)
              (if _%bind191008%_
                  (gx#raise-syntax-error
                   '#f
                   '"Bad syntax; not a runtime binding"
                   _%form191006%_
                   _%id191005%_)
                  (if (or (gx#core-context-rebind?__% (gx#core-context-top__0))
                          (gx#core-extern-symbol? (gx#stx-e _%id191005%_)))
                      (gx#core-quote-syntax__0 _%id191005%_)
                      (gx#raise-syntax-error
                       '#f
                       '"Reference to unbound identifier"
                       _%form191006%_
                       _%id191005%_)))))))
    (define gx#core-bind-runtime!__%
      (lambda (_%id190960%_ _%rebind?190961%_ _%phi190962%_ _%ctx190963%_)
        (let* ((_%key190965%_ (gx#core-identifier-key _%id190960%_))
               (_%eid190967%_
                (gx#make-binding-id__%
                 _%key190965%_
                 '#f
                 _%phi190962%_
                 _%ctx190963%_))
               (_%bind190973%_
                (if (##structure-instance-of?
                     _%ctx190963%_
                     'gx#module-context::t)
                    (let ((__obj194032
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
                       __obj194032
                       _%eid190967%_
                       _%key190965%_
                       _%phi190962%_
                       _%ctx190963%_)
                      __obj194032)
                    (if (##structure-instance-of?
                         _%ctx190963%_
                         'gx#top-context::t)
                        (let ((__obj194031
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj194031
                           _%eid190967%_
                           _%key190965%_
                           _%phi190962%_)
                          __obj194031)
                        (if (##structure-instance-of?
                             _%ctx190963%_
                             'gx#local-context::t)
                            (let ((__obj194030
                                   (##structure
                                    gx#local-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#local-binding:::init!
                               __obj194030
                               _%eid190967%_
                               _%key190965%_
                               _%phi190962%_)
                              __obj194030)
                            (let ((__obj194029
                                   (##structure
                                    gx#runtime-binding::t
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f
                                    '#f)))
                              (gx#runtime-binding:::init!
                               __obj194029
                               _%eid190967%_
                               _%key190965%_
                               _%phi190962%_)
                              __obj194029))))))
          (gx#bind-identifier!__%
           _%id190960%_
           _%bind190973%_
           _%rebind?190961%_
           _%phi190962%_
           _%ctx190963%_))))
    (define gx#core-bind-runtime!__0
      (lambda (_%id190979%_)
        (let* ((_%rebind?190981%_ '#f)
               (_%phi190983%_ (gx#current-expander-phi))
               (_%ctx190985%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id190979%_
           _%rebind?190981%_
           _%phi190983%_
           _%ctx190985%_))))
    (define gx#core-bind-runtime!__1
      (lambda (_%id190987%_ _%rebind?190988%_)
        (let* ((_%phi190990%_ (gx#current-expander-phi))
               (_%ctx190992%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id190987%_
           _%rebind?190988%_
           _%phi190990%_
           _%ctx190992%_))))
    (define gx#core-bind-runtime!__2
      (lambda (_%id190994%_ _%rebind?190995%_ _%phi190996%_)
        (let ((_%ctx190998%_ (gx#current-expander-context)))
          (gx#core-bind-runtime!__%
           _%id190994%_
           _%rebind?190995%_
           _%phi190996%_
           _%ctx190998%_))))
    (define gx#core-bind-runtime!
      (lambda _g194057_
        (let ((_g194058_ (##length _g194057_)))
          (cond ((##fx= _g194058_ 1)
                 (apply gx#core-bind-runtime!__0 _g194057_))
                ((##fx= _g194058_ 2)
                 (apply gx#core-bind-runtime!__1 _g194057_))
                ((##fx= _g194058_ 3)
                 (apply gx#core-bind-runtime!__2 _g194057_))
                ((##fx= _g194058_ 4)
                 (apply gx#core-bind-runtime!__% _g194057_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime!
                  _g194057_))))))
    (define gx#core-bind-runtime-reference!__%
      (lambda (_%id190912%_
               _%eid190913%_
               _%rebind?190914%_
               _%phi190915%_
               _%ctx190916%_)
        (let* ((_%key190918%_ (gx#core-identifier-key _%id190912%_))
               (_%bind190923%_
                (if (##structure-instance-of?
                     _%ctx190916%_
                     'gx#module-context::t)
                    (let ((__obj194035
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
                       __obj194035
                       _%eid190913%_
                       _%key190918%_
                       _%phi190915%_
                       _%ctx190916%_)
                      __obj194035)
                    (if (##structure-instance-of?
                         _%ctx190916%_
                         'gx#top-context::t)
                        (let ((__obj194034
                               (##structure
                                gx#top-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#top-binding:::init!
                           __obj194034
                           _%eid190913%_
                           _%key190918%_
                           _%phi190915%_)
                          __obj194034)
                        (let ((__obj194033
                               (##structure
                                gx#runtime-binding::t
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f
                                '#f)))
                          (gx#runtime-binding:::init!
                           __obj194033
                           _%eid190913%_
                           _%key190918%_
                           _%phi190915%_)
                          __obj194033)))))
          (gx#bind-identifier!__%
           _%id190912%_
           _%bind190923%_
           _%rebind?190914%_
           _%phi190915%_
           _%ctx190916%_))))
    (define gx#core-bind-runtime-reference!__0
      (lambda (_%id190929%_ _%eid190930%_)
        (let* ((_%rebind?190932%_ '#f)
               (_%phi190934%_ (gx#current-expander-phi))
               (_%ctx190936%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id190929%_
           _%eid190930%_
           _%rebind?190932%_
           _%phi190934%_
           _%ctx190936%_))))
    (define gx#core-bind-runtime-reference!__1
      (lambda (_%id190938%_ _%eid190939%_ _%rebind?190940%_)
        (let* ((_%phi190942%_ (gx#current-expander-phi))
               (_%ctx190944%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id190938%_
           _%eid190939%_
           _%rebind?190940%_
           _%phi190942%_
           _%ctx190944%_))))
    (define gx#core-bind-runtime-reference!__2
      (lambda (_%id190946%_ _%eid190947%_ _%rebind?190948%_ _%phi190949%_)
        (let ((_%ctx190951%_ (gx#current-expander-context)))
          (gx#core-bind-runtime-reference!__%
           _%id190946%_
           _%eid190947%_
           _%rebind?190948%_
           _%phi190949%_
           _%ctx190951%_))))
    (define gx#core-bind-runtime-reference!
      (lambda _g194059_
        (let ((_g194060_ (##length _g194059_)))
          (cond ((##fx= _g194060_ 2)
                 (apply gx#core-bind-runtime-reference!__0 _g194059_))
                ((##fx= _g194060_ 3)
                 (apply gx#core-bind-runtime-reference!__1 _g194059_))
                ((##fx= _g194060_ 4)
                 (apply gx#core-bind-runtime-reference!__2 _g194059_))
                ((##fx= _g194060_ 5)
                 (apply gx#core-bind-runtime-reference!__% _g194059_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-runtime-reference!
                  _g194059_))))))
    (define gx#core-bind-extern!__%
      (lambda (_%id190872%_
               _%eid190873%_
               _%rebind?190874%_
               _%phi190875%_
               _%ctx190876%_)
        (gx#bind-identifier!__%
         _%id190872%_
         (let ((__obj194036
                (##structure gx#extern-binding::t '#f '#f '#f '#f '#f '#f)))
           (gx#extern-binding:::init!
            __obj194036
            _%eid190873%_
            (gx#core-identifier-key _%id190872%_)
            _%phi190875%_)
           __obj194036)
         _%rebind?190874%_
         _%phi190875%_
         _%ctx190876%_)))
    (define gx#core-bind-extern!__0
      (lambda (_%id190881%_ _%eid190882%_)
        (let* ((_%rebind?190884%_ '#f)
               (_%phi190886%_ (gx#current-expander-phi))
               (_%ctx190888%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id190881%_
           _%eid190882%_
           _%rebind?190884%_
           _%phi190886%_
           _%ctx190888%_))))
    (define gx#core-bind-extern!__1
      (lambda (_%id190890%_ _%eid190891%_ _%rebind?190892%_)
        (let* ((_%phi190894%_ (gx#current-expander-phi))
               (_%ctx190896%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id190890%_
           _%eid190891%_
           _%rebind?190892%_
           _%phi190894%_
           _%ctx190896%_))))
    (define gx#core-bind-extern!__2
      (lambda (_%id190898%_ _%eid190899%_ _%rebind?190900%_ _%phi190901%_)
        (let ((_%ctx190903%_ (gx#current-expander-context)))
          (gx#core-bind-extern!__%
           _%id190898%_
           _%eid190899%_
           _%rebind?190900%_
           _%phi190901%_
           _%ctx190903%_))))
    (define gx#core-bind-extern!
      (lambda _g194061_
        (let ((_g194062_ (##length _g194061_)))
          (cond ((##fx= _g194062_ 2) (apply gx#core-bind-extern!__0 _g194061_))
                ((##fx= _g194062_ 3) (apply gx#core-bind-extern!__1 _g194061_))
                ((##fx= _g194062_ 4) (apply gx#core-bind-extern!__2 _g194061_))
                ((##fx= _g194062_ 5) (apply gx#core-bind-extern!__% _g194061_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-extern!
                  _g194061_))))))
    (define gx#core-bind-syntax!__%
      (lambda (_%id190826%_
               _%e190827%_
               _%rebind?190828%_
               _%phi190829%_
               _%ctx190830%_)
        (gx#bind-identifier!__%
         _%id190826%_
         (let ((_%key190835%_ (gx#core-identifier-key _%id190826%_))
               (_%e190836%_
                (if (or (##structure-instance-of? _%e190827%_ 'gx#expander::t)
                        (##structure-instance-of?
                         _%e190827%_
                         'gx#expander-context::t))
                    _%e190827%_
                    (##structure
                     gx#user-expander::t
                     _%e190827%_
                     _%ctx190830%_
                     _%phi190829%_))))
           (let ((__obj194037
                  (##structure gx#syntax-binding::t '#f '#f '#f '#f '#f)))
             (gx#syntax-binding:::init!
              __obj194037
              (gx#make-binding-id__%
               _%key190835%_
               '#t
               _%phi190829%_
               _%ctx190830%_)
              _%key190835%_
              _%phi190829%_
              _%e190836%_)
             __obj194037))
         _%rebind?190828%_
         _%phi190829%_
         _%ctx190830%_)))
    (define gx#core-bind-syntax!__0
      (lambda (_%id190841%_ _%e190842%_)
        (let* ((_%rebind?190844%_ '#f)
               (_%phi190846%_ (gx#current-expander-phi))
               (_%ctx190848%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id190841%_
           _%e190842%_
           _%rebind?190844%_
           _%phi190846%_
           _%ctx190848%_))))
    (define gx#core-bind-syntax!__1
      (lambda (_%id190850%_ _%e190851%_ _%rebind?190852%_)
        (let* ((_%phi190854%_ (gx#current-expander-phi))
               (_%ctx190856%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id190850%_
           _%e190851%_
           _%rebind?190852%_
           _%phi190854%_
           _%ctx190856%_))))
    (define gx#core-bind-syntax!__2
      (lambda (_%id190858%_ _%e190859%_ _%rebind?190860%_ _%phi190861%_)
        (let ((_%ctx190863%_ (gx#current-expander-context)))
          (gx#core-bind-syntax!__%
           _%id190858%_
           _%e190859%_
           _%rebind?190860%_
           _%phi190861%_
           _%ctx190863%_))))
    (define gx#core-bind-syntax!
      (lambda _g194063_
        (let ((_g194064_ (##length _g194063_)))
          (cond ((##fx= _g194064_ 2) (apply gx#core-bind-syntax!__0 _g194063_))
                ((##fx= _g194064_ 3) (apply gx#core-bind-syntax!__1 _g194063_))
                ((##fx= _g194064_ 4) (apply gx#core-bind-syntax!__2 _g194063_))
                ((##fx= _g194064_ 5) (apply gx#core-bind-syntax!__% _g194063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-syntax!
                  _g194063_))))))
    (define gx#core-bind-root-syntax!__%
      (lambda (_%id190809%_ _%e190810%_ _%rebind?190811%_)
        (gx#core-bind-syntax!__%
         _%id190809%_
         _%e190810%_
         _%rebind?190811%_
         '0
         (gx#core-context-root__0))))
    (define gx#core-bind-root-syntax!__0
      (lambda (_%id190816%_ _%e190817%_)
        (let ((_%rebind?190819%_ '#f))
          (gx#core-bind-root-syntax!__%
           _%id190816%_
           _%e190817%_
           _%rebind?190819%_))))
    (define gx#core-bind-root-syntax!
      (lambda _g194065_
        (let ((_g194066_ (##length _g194065_)))
          (cond ((##fx= _g194066_ 2)
                 (apply gx#core-bind-root-syntax!__0 _g194065_))
                ((##fx= _g194066_ 3)
                 (apply gx#core-bind-root-syntax!__% _g194065_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-root-syntax!
                  _g194065_))))))
    (define gx#core-bind-alias!__%
      (lambda (_%id190767%_
               _%alias-id190768%_
               _%rebind?190769%_
               _%phi190770%_
               _%ctx190771%_)
        (gx#bind-identifier!__%
         _%id190767%_
         (let* ((_%key190773%_ (gx#core-identifier-key _%id190767%_))
                (__obj194038
                 (##structure gx#alias-binding::t '#f '#f '#f '#f '#f)))
           (gx#alias-binding:::init!
            __obj194038
            (gx#make-binding-id__%
             _%key190773%_
             '#t
             _%phi190770%_
             _%ctx190771%_)
            _%key190773%_
            _%phi190770%_
            _%alias-id190768%_)
           __obj194038)
         _%rebind?190769%_
         _%phi190770%_
         _%ctx190771%_)))
    (define gx#core-bind-alias!__0
      (lambda (_%id190778%_ _%alias-id190779%_)
        (let* ((_%rebind?190781%_ '#f)
               (_%phi190783%_ (gx#current-expander-phi))
               (_%ctx190785%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id190778%_
           _%alias-id190779%_
           _%rebind?190781%_
           _%phi190783%_
           _%ctx190785%_))))
    (define gx#core-bind-alias!__1
      (lambda (_%id190787%_ _%alias-id190788%_ _%rebind?190789%_)
        (let* ((_%phi190791%_ (gx#current-expander-phi))
               (_%ctx190793%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id190787%_
           _%alias-id190788%_
           _%rebind?190789%_
           _%phi190791%_
           _%ctx190793%_))))
    (define gx#core-bind-alias!__2
      (lambda (_%id190795%_ _%alias-id190796%_ _%rebind?190797%_ _%phi190798%_)
        (let ((_%ctx190800%_ (gx#current-expander-context)))
          (gx#core-bind-alias!__%
           _%id190795%_
           _%alias-id190796%_
           _%rebind?190797%_
           _%phi190798%_
           _%ctx190800%_))))
    (define gx#core-bind-alias!
      (lambda _g194067_
        (let ((_g194068_ (##length _g194067_)))
          (cond ((##fx= _g194068_ 2) (apply gx#core-bind-alias!__0 _g194067_))
                ((##fx= _g194068_ 3) (apply gx#core-bind-alias!__1 _g194067_))
                ((##fx= _g194068_ 4) (apply gx#core-bind-alias!__2 _g194067_))
                ((##fx= _g194068_ 5) (apply gx#core-bind-alias!__% _g194067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#core-bind-alias!
                  _g194067_))))))
    (define gx#make-binding-id__%
      (lambda (_%key190717%_ _%syntax?190718%_ _%phi190719%_ _%ctx190720%_)
        (if (uninterned-symbol? _%key190717%_)
            (##gensym 'L)
            (if (pair? _%key190717%_)
                (gensym (##car _%key190717%_))
                (if (##structure-instance-of? _%ctx190720%_ 'gx#top-context::t)
                    (let ((_%ns190725%_
                           (gx#core-context-namespace__% _%ctx190720%_)))
                      (if (and (fxzero? _%phi190719%_) (not _%syntax?190718%_))
                          (if _%ns190725%_
                              (make-symbol__1 _%ns190725%_ '"#" _%key190717%_)
                              _%key190717%_)
                          (if _%syntax?190718%_
                              (make-symbol__1
                               (let ((_%$e190729%_ _%ns190725%_))
                                 (if _%$e190729%_ _%$e190729%_ '""))
                               '"[:"
                               (number->string _%phi190719%_)
                               '":]#"
                               _%key190717%_)
                              (make-symbol__1
                               (let ((_%$e190733%_ _%ns190725%_))
                                 (if _%$e190733%_ _%$e190733%_ '""))
                               '"["
                               (number->string _%phi190719%_)
                               '"]#"
                               _%key190717%_))))
                    (gensym _%key190717%_))))))
    (define gx#make-binding-id__0
      (lambda (_%key190740%_)
        (let* ((_%syntax?190742%_ '#f)
               (_%phi190744%_ (gx#current-expander-phi))
               (_%ctx190746%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key190740%_
           _%syntax?190742%_
           _%phi190744%_
           _%ctx190746%_))))
    (define gx#make-binding-id__1
      (lambda (_%key190748%_ _%syntax?190749%_)
        (let* ((_%phi190751%_ (gx#current-expander-phi))
               (_%ctx190753%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key190748%_
           _%syntax?190749%_
           _%phi190751%_
           _%ctx190753%_))))
    (define gx#make-binding-id__2
      (lambda (_%key190755%_ _%syntax?190756%_ _%phi190757%_)
        (let ((_%ctx190759%_ (gx#current-expander-context)))
          (gx#make-binding-id__%
           _%key190755%_
           _%syntax?190756%_
           _%phi190757%_
           _%ctx190759%_))))
    (define gx#make-binding-id
      (lambda _g194069_
        (let ((_g194070_ (##length _g194069_)))
          (cond ((##fx= _g194070_ 1) (apply gx#make-binding-id__0 _g194069_))
                ((##fx= _g194070_ 2) (apply gx#make-binding-id__1 _g194069_))
                ((##fx= _g194070_ 3) (apply gx#make-binding-id__2 _g194069_))
                ((##fx= _g194070_ 4) (apply gx#make-binding-id__% _g194069_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#make-binding-id
                  _g194069_))))))))
