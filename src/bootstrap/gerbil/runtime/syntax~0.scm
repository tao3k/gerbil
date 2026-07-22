(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1784461442)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (__make-class-type
       'SyntaxError::t
       'SyntaxError
       (list Exception::t StackTrace::t)
       '(message irritants where context phi marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define SyntaxError? (__make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _%$args175731%_
        (apply make-instance SyntaxError::t _%$args175731%_)))
    (define SyntaxError-message
      (__make-class-slot-accessor SyntaxError::t 'message))
    (define SyntaxError-irritants
      (__make-class-slot-accessor SyntaxError::t 'irritants))
    (define SyntaxError-where
      (__make-class-slot-accessor SyntaxError::t 'where))
    (define SyntaxError-context
      (__make-class-slot-accessor SyntaxError::t 'context))
    (define SyntaxError-phi (__make-class-slot-accessor SyntaxError::t 'phi))
    (define SyntaxError-marks
      (__make-class-slot-accessor SyntaxError::t 'marks))
    (define SyntaxError-continuation
      (__make-class-slot-accessor SyntaxError::t 'continuation))
    (define SyntaxError-message-set!
      (__make-class-slot-mutator SyntaxError::t 'message))
    (define SyntaxError-irritants-set!
      (__make-class-slot-mutator SyntaxError::t 'irritants))
    (define SyntaxError-where-set!
      (__make-class-slot-mutator SyntaxError::t 'where))
    (define SyntaxError-context-set!
      (__make-class-slot-mutator SyntaxError::t 'context))
    (define SyntaxError-phi-set!
      (__make-class-slot-mutator SyntaxError::t 'phi))
    (define SyntaxError-marks-set!
      (__make-class-slot-mutator SyntaxError::t 'marks))
    (define SyntaxError-continuation-set!
      (__make-class-slot-mutator SyntaxError::t 'continuation))
    (define &SyntaxError-message
      (__make-class-slot-unchecked-accessor SyntaxError::t 'message))
    (define &SyntaxError-irritants
      (__make-class-slot-unchecked-accessor SyntaxError::t 'irritants))
    (define &SyntaxError-where
      (__make-class-slot-unchecked-accessor SyntaxError::t 'where))
    (define &SyntaxError-context
      (__make-class-slot-unchecked-accessor SyntaxError::t 'context))
    (define &SyntaxError-phi
      (__make-class-slot-unchecked-accessor SyntaxError::t 'phi))
    (define &SyntaxError-marks
      (__make-class-slot-unchecked-accessor SyntaxError::t 'marks))
    (define &SyntaxError-continuation
      (__make-class-slot-unchecked-accessor SyntaxError::t 'continuation))
    (define &SyntaxError-message-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'message))
    (define &SyntaxError-irritants-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'irritants))
    (define &SyntaxError-where-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'where))
    (define &SyntaxError-context-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'context))
    (define &SyntaxError-phi-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'phi))
    (define &SyntaxError-marks-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'marks))
    (define &SyntaxError-continuation-set!
      (__make-class-slot-unchecked-mutator SyntaxError::t 'continuation))
    (define SyntaxError::display-exception
      (lambda (_%self175450%_ _%port175451%_)
        (let ((_%self175454%_ _%self175450%_))
          (letrec ((_%location175465%_
                    (lambda ()
                      (letrec ((_%from-irritants175606%_
                                (lambda ()
                                  (let _%lp175691%_ ((_%rest175693%_
                                                      (##unchecked-structure-ref
                                                       _%self175454%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest175694175702%_
                                            _%rest175693%_)
                                           (_%$%else175696175710%_
                                            (lambda () '#f))
                                           (_%$%K175698175719%_
                                            (lambda (_%rest175713%_
                                                     _%hd175714%_)
                                              (let ((_%$e175716%_
                                                     (__AST-source
                                                      _%hd175714%_)))
                                                (if _%$e175716%_
                                                    _%$e175716%_
                                                    (_%lp175691%_
                                                     _%rest175713%_))))))
                                      (if (pair? _%$%rest175694175702%_)
                                          (let ((_%$%hd175699175722%_
                                                 (##car _%$%rest175694175702%_))
                                                (_%$%tl175700175724%_
                                                 (##cdr _%$%rest175694175702%_)))
                                            (let* ((_%hd175727%_
                                                    _%$%hd175699175722%_)
                                                   (_%rest175729%_
                                                    _%$%tl175700175724%_))
                                              (_%$%K175698175719%_
                                               _%rest175729%_
                                               _%hd175727%_)))
                                          (_%$%else175696175710%_))))))
                               (_%from-context175607%_
                                (lambda ()
                                  (let _%lp175613%_ ((_%rest175615%_
                                                      (##unchecked-structure-ref
                                                       _%self175454%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest175616175624%_
                                            _%rest175615%_)
                                           (_%$%else175618175632%_
                                            (lambda () '#f))
                                           (_%$%K175620175678%_
                                            (lambda (_%rest175635%_
                                                     _%hd175636%_)
                                              (let* ((_%$%hd175637175647%_
                                                      _%hd175636%_)
                                                     (_%$%else175639175655%_
                                                      (lambda ()
                                                        (_%lp175613%_
                                                         _%rest175635%_)))
                                                     (_%$%K175641175663%_
                                                      (lambda (_%loc175658%_)
                                                        (let ((_%$e175660%_
                                                               (__AST-source
                                                                _%loc175658%_)))
                                                          (if _%$e175660%_
                                                              _%$e175660%_
                                                              (_%lp175613%_
                                                               _%rest175635%_))))))
                                                (if (pair? _%$%hd175637175647%_)
                                                    (let ((_%$%hd175642175666%_
                                                           (##car _%$%hd175637175647%_))
                                                          (_%$%tl175643175668%_
                                                           (##cdr _%$%hd175637175647%_)))
                                                      (if (##eq? _%$%hd175642175666%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%$%tl175643175668%_)
                      (let ((_%$%hd175644175671%_ (##car _%$%tl175643175668%_))
                            (_%$%tl175645175673%_
                             (##cdr _%$%tl175643175668%_)))
                        (let ((_%loc175676%_ _%$%hd175644175671%_))
                          (if (null? _%$%tl175645175673%_)
                              (_%$%K175641175663%_ _%loc175676%_)
                              (_%$%else175639175655%_))))
                      (_%$%else175639175655%_))
                  (_%$%else175639175655%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else175639175655%_))))))
                                      (if (pair? _%$%rest175616175624%_)
                                          (let ((_%$%hd175621175681%_
                                                 (##car _%$%rest175616175624%_))
                                                (_%$%tl175622175683%_
                                                 (##cdr _%$%rest175616175624%_)))
                                            (let* ((_%hd175686%_
                                                    _%$%hd175621175681%_)
                                                   (_%rest175688%_
                                                    _%$%tl175622175683%_))
                                              (_%$%K175620175678%_
                                               _%rest175688%_
                                               _%hd175686%_)))
                                          (_%$%else175618175632%_)))))))
                        (let ((_%$e175609%_ (_%from-irritants175606%_)))
                          (if _%$e175609%_
                              _%$e175609%_
                              (_%from-context175607%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e175468%_ (_%location175465%_)))
                 (if _%$e175468%_
                     (##display-locat _%$e175468%_ '#t _%port175451%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self175454%_ '2 '#f '#f))
               (let ((_%$e175474%_
                      (##unchecked-structure-ref _%self175454%_ '4 '#f '#f)))
                 (if _%$e175474%_
                     (let ()
                       (displayln '"--- Context: ")
                       (let _%lp175479%_ ((_%rest175481%_ _%$e175474%_))
                         (let* ((_%$%rest175482175490%_ _%rest175481%_)
                                (_%$%else175484175498%_ (lambda () '#!void))
                                (_%$%K175486175548%_
                                 (lambda (_%rest175501%_ _%hd175502%_)
                                   (let* ((_%$%hd175503175513%_ _%hd175502%_)
                                          (_%$%else175505175521%_
                                           (lambda ()
                                             (displayln '" at " _%hd175502%_)
                                             (_%lp175479%_ _%rest175501%_)))
                                          (_%$%K175507175533%_
                                           (lambda (_%ctx175524%_)
                                             (let ((_%$e175526%_
                                                    (__AST-source
                                                     _%ctx175524%_)))
                                               (if _%$e175526%_
                                                   (let ()
                                                     (display '" at ")
                                                     (##display-locat
                                                      _%$e175526%_
                                                      '#t
                                                      _%port175451%_)
                                                     (newline)
                                                     (_%lp175479%_
                                                      _%rest175501%_))
                                                   (if (##structure-instance-of?
                                                        _%ctx175524%_
                                                        'gerbil#AST::t)
                                                       (let ()
                                                         (display '" at ")
                                                         (__pp-syntax
                                                          _%ctx175524%_)
                                                         (_%lp175479%_
                                                          _%rest175501%_))
                                                       (_%lp175479%_
                                                        _%rest175501%_)))))))
                                     (if (pair? _%$%hd175503175513%_)
                                         (let ((_%$%hd175508175536%_
                                                (##car _%$%hd175503175513%_))
                                               (_%$%tl175509175538%_
                                                (##cdr _%$%hd175503175513%_)))
                                           (if (##eq? _%$%hd175508175536%_ '@)
                                               (if (pair? _%$%tl175509175538%_)
                                                   (let ((_%$%hd175510175541%_
                                                          (##car _%$%tl175509175538%_))
                                                         (_%$%tl175511175543%_
                                                          (##cdr _%$%tl175509175538%_)))
                                                     (let ((_%ctx175546%_
                                                            _%$%hd175510175541%_))
                                                       (if (null? _%$%tl175511175543%_)
                                                           (_%$%K175507175533%_
                                                            _%ctx175546%_)
                                                           (_%$%else175505175521%_))))
                                                   (_%$%else175505175521%_))
                                               (_%$%else175505175521%_)))
                                         (_%$%else175505175521%_))))))
                           (if (pair? _%$%rest175482175490%_)
                               (let ((_%$%hd175487175551%_
                                      (##car _%$%rest175482175490%_))
                                     (_%$%tl175488175553%_
                                      (##cdr _%$%rest175482175490%_)))
                                 (let* ((_%hd175556%_ _%$%hd175487175551%_)
                                        (_%rest175558%_ _%$%tl175488175553%_))
                                   (_%$%K175486175548%_
                                    _%rest175558%_
                                    _%hd175556%_)))
                               '#!void))))
                     '#!void))
               (let* ((_%$%self.irritants175559175567%_
                       (##unchecked-structure-ref _%self175454%_ '3 '#f '#f))
                      (_%$%else175561175575%_ (lambda () '#!void))
                      (_%$%K175563175588%_
                       (lambda (_%rest175578%_ _%stx175579%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx175579%_)
                         (for-each
                          (lambda (_%detail175581%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail175581%_))
                            (let ((_%$e175583%_
                                   (__AST-source _%detail175581%_)))
                              (if _%$e175583%_
                                  (let ()
                                    (display '" at ")
                                    (##display-locat
                                     _%$e175583%_
                                     '#t
                                     _%port175451%_))
                                  '#!void))
                            (newline))
                          _%rest175578%_))))
                 (if (pair? _%$%self.irritants175559175567%_)
                     (let ((_%$%hd175564175591%_
                            (##car _%$%self.irritants175559175567%_))
                           (_%$%tl175565175593%_
                            (##cdr _%$%self.irritants175559175567%_)))
                       (let* ((_%stx175596%_ _%$%hd175564175591%_)
                              (_%rest175598%_ _%$%tl175565175593%_))
                         (_%$%K175563175588%_ _%rest175598%_ _%stx175596%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%$%cont175599175601%_
                          (##unchecked-structure-ref
                           _%self175454%_
                           '1
                           '#f
                           '#f)))
                     (if _%$%cont175599175601%_
                         (let ((_%cont175603%_ _%$%cont175599175601%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont175603%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port175451%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass175313%_ SyntaxError::t) (_%klass175318%_ _%klass175313%_))
      (__seal-class! _%klass175318%_))
    (define make-syntax-error
      (lambda (_%message175306%_
               _%irritants175307%_
               _%where175308%_
               _%context175309%_
               _%marks175310%_
               _%phi175311%_)
        (let ((__obj175828
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj175828 _%message175306%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj175828
           _%irritants175307%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj175828 _%where175308%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj175828 _%context175309%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj175828 _%marks175310%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj175828 _%phi175311%_ '6 '#f '#f)
          __obj175828)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where175301%_
               _%message175302%_
               _%stx175303%_
               .
               _%details175304%_)
        (raise (make-syntax-error
                _%message175302%_
                (cons _%stx175303%_ _%details175304%_)
                _%where175301%_
                '#f
                '#f
                '#f))))
    (define AST::t
      (__make-class-type
       'gerbil#AST::t
       'syntax
       (list)
       '(e source)
       (cons (cons 'struct: '#t) '((print: e)))
       '#f))
    (define AST? (__make-class-predicate AST::t))
    (define make-AST
      (lambda _%$args175298%_ (apply make-instance AST::t _%$args175298%_)))
    (define AST-e (__make-class-slot-accessor AST::t 'e))
    (define AST-source (__make-class-slot-accessor AST::t 'source))
    (define AST-e-set! (__make-class-slot-mutator AST::t 'e))
    (define AST-source-set! (__make-class-slot-mutator AST::t 'source))
    (define &AST-e (__make-class-slot-unchecked-accessor AST::t 'e))
    (define &AST-source (__make-class-slot-unchecked-accessor AST::t 'source))
    (define &AST-e-set! (__make-class-slot-unchecked-mutator AST::t 'e))
    (define &AST-source-set!
      (__make-class-slot-unchecked-mutator AST::t 'source))
    (define __AST-e
      (lambda (_%stx175296%_)
        (if (##structure-instance-of? _%stx175296%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx175296%_ '1 '#f '#f)
            _%stx175296%_)))
    (define __AST-source
      (lambda (_%stx175287%_)
        (let _%lp175289%_ ((_%src175291%_ _%stx175287%_))
          (if (##structure-instance-of? _%src175291%_ 'gerbil#AST::t)
              (_%lp175289%_
               (##unchecked-structure-ref _%src175291%_ '2 '#f '#f))
              (if (##locat? _%src175291%_) _%src175291%_ '#f)))))
    (define __AST
      (lambda (_%e175279%_ _%src-stx175280%_)
        (let ((_%src175282%_ (__AST-source _%src-stx175280%_)))
          (if (or (##structure-instance-of? _%e175279%_ 'gerbil#AST::t)
                  (not _%src175282%_))
              _%e175279%_
              (##structure AST::t _%e175279%_ _%src175282%_)))))
    (define __AST-eq?
      (lambda (_%stx175276%_ _%obj175277%_)
        (eq? (__AST-e _%stx175276%_) _%obj175277%_)))
    (define __AST-pair?
      (lambda (_%stx175274%_) (pair? (__AST-e _%stx175274%_))))
    (define __AST-null?
      (lambda (_%stx175272%_) (null? (__AST-e _%stx175272%_))))
    (define __AST-datum?
      (lambda (_%stx175253%_)
        (let* ((_%e175255%_ (__AST-e _%stx175253%_))
               (_%$e175257%_ (number? _%e175255%_)))
          (if _%$e175257%_
              _%$e175257%_
              (let ((_%$e175260%_ (string? _%e175255%_)))
                (if _%$e175260%_
                    _%$e175260%_
                    (let ((_%$e175263%_ (char? _%e175255%_)))
                      (if _%$e175263%_
                          _%$e175263%_
                          (let ((_%$e175266%_ (keyword? _%e175255%_)))
                            (if _%$e175266%_
                                _%$e175266%_
                                (let ((_%$e175269%_ (boolean? _%e175255%_)))
                                  (if _%$e175269%_
                                      _%$e175269%_
                                      (eq? _%e175255%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx175251%_) (symbol? (__AST-e _%stx175251%_))))
    (define __AST-id-list?__%
      (lambda (_%stx175202%_ _%tail?175203%_)
        (let _%lp175205%_ ((_%rest175207%_ _%stx175202%_))
          (let* ((_%$e175209%_ _%rest175207%_)
                 (_%$%$E175211175224%_
                  (lambda ()
                    (let* ((_%$%$E175212175219%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e175209%_)))
                           (_%rest175222%_ _%$e175209%_))
                      (_%tail?175203%_ _%rest175222%_)))))
            (if (__AST-pair? _%$e175209%_)
                (let* ((_%$%$tgt175213175227%_ (__AST-e _%$e175209%_))
                       (_%$%$hd175214175230%_ (##car _%$%$tgt175213175227%_))
                       (_%$%$tl175215175233%_ (##cdr _%$%$tgt175213175227%_))
                       (_%hd175237%_ _%$%$hd175214175230%_)
                       (_%rest175239%_ _%$%$tl175215175233%_))
                  (if (__AST-id? _%hd175237%_)
                      (_%lp175205%_ _%rest175239%_)
                      '#f))
                (_%$%$E175211175224%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx175244%_)
        (let ((_%tail?175246%_ __AST-null?))
          (__AST-id-list?__% _%stx175244%_ _%tail?175246%_))))
    (define __AST-id-list?
      (lambda _g175830_
        (let ((_g175831_ (##length _g175830_)))
          (cond ((##fx= _g175831_ 1) (apply __AST-id-list?__0 _g175830_))
                ((##fx= _g175831_ 2) (apply __AST-id-list?__% _g175830_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g175830_))))))
    (define __AST-bind-list?
      (lambda (_%stx175194%_)
        (__AST-id-list?__%
         _%stx175194%_
         (lambda (_%e175196%_)
           (let ((_%$e175198%_ (__AST-null? _%e175196%_)))
             (if _%$e175198%_ _%$e175198%_ (__AST-id? _%e175196%_)))))))
    (define __AST-list?__%
      (lambda (_%stx175147%_ _%tail?175148%_)
        (let _%lp175150%_ ((_%rest175152%_ _%stx175147%_))
          (let* ((_%$e175154%_ _%rest175152%_)
                 (_%$%$E175156175169%_
                  (lambda ()
                    (let* ((_%$%$E175157175164%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e175154%_)))
                           (_%rest175167%_ _%$e175154%_))
                      (_%tail?175148%_ _%rest175167%_)))))
            (if (__AST-pair? _%$e175154%_)
                (let* ((_%$%$tgt175158175172%_ (__AST-e _%$e175154%_))
                       (_%$%$hd175159175175%_ (##car _%$%$tgt175158175172%_))
                       (_%$%$tl175160175178%_ (##cdr _%$%$tgt175158175172%_))
                       (_%rest175182%_ _%$%$tl175160175178%_))
                  (_%lp175150%_ _%rest175182%_))
                (_%$%$E175156175169%_))))))
    (define __AST-list?__0
      (lambda (_%stx175187%_)
        (let ((_%tail?175189%_ __AST-null?))
          (__AST-list?__% _%stx175187%_ _%tail?175189%_))))
    (define __AST-list?
      (lambda _g175832_
        (let ((_g175833_ (##length _g175832_)))
          (cond ((##fx= _g175833_ 1) (apply __AST-list?__0 _g175832_))
                ((##fx= _g175833_ 2) (apply __AST-list?__% _g175832_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g175832_))))))
    (define __AST->list
      (lambda (_%stx175112%_)
        (let* ((_%$e175114%_ _%stx175112%_)
               (_%$%$E175116175129%_
                (lambda ()
                  (let* ((_%$%$E175117175124%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e175114%_)))
                         (_%rest175127%_ _%$e175114%_))
                    (__AST-e _%rest175127%_)))))
          (if (__AST-pair? _%$e175114%_)
              (let* ((_%$%$tgt175118175132%_ (__AST-e _%$e175114%_))
                     (_%$%$hd175119175135%_ (##car _%$%$tgt175118175132%_))
                     (_%$%$tl175120175138%_ (##cdr _%$%$tgt175118175132%_))
                     (_%hd175142%_ _%$%$hd175119175135%_)
                     (_%rest175144%_ _%$%$tl175120175138%_))
                (cons _%hd175142%_ (__AST->list _%rest175144%_)))
              (_%$%$E175116175129%_)))))
    (define __AST->datum
      (lambda (_%stx175105%_)
        (if (##structure-instance-of? _%stx175105%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx175105%_))
            (if (pair? _%stx175105%_)
                (cons (__AST->datum (##car _%stx175105%_))
                      (__AST->datum (##cdr _%stx175105%_)))
                (if (vector? _%stx175105%_)
                    (vector-map __AST->datum _%stx175105%_)
                    (if (box? _%stx175105%_)
                        (box (__AST->datum (unbox _%stx175105%_)))
                        _%stx175105%_))))))
    (define get-readenv
      (lambda (_%port175103%_)
        (##make-readenv
         _%port175103%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in175091%_)
        (let ((_%e175093%_ (##read-datum-or-eof (get-readenv _%in175091%_))))
          (if (eof-object? (__AST-e _%e175093%_))
              (__AST-e _%e175093%_)
              _%e175093%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in175099%_ (current-input-port)))
          (read-syntax__% _%in175099%_))))
    (define read-syntax
      (lambda _g175834_
        (let ((_g175835_ (##length _g175834_)))
          (cond ((##fx= _g175835_ 0) (apply read-syntax__0 _g175834_))
                ((##fx= _g175835_ 1) (apply read-syntax__% _g175834_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g175834_))))))
    (define read-syntax-from-file
      (lambda (_%path175086%_)
        (let ((_%r175088%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path175086%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r175088%_)
              (cdr (__AST-e (vector-ref _%r175088%_ '1)))
              (error (err-code->string _%r175088%_) _%path175086%_)))))
    (define __wrap-syntax
      (lambda (_%re175083%_ _%e175084%_)
        (if (eof-object? _%e175084%_)
            _%e175084%_
            (##structure AST::t _%e175084%_ (##readenv->locat _%re175083%_)))))
    (define __unwrap-syntax
      (lambda (_%re175080%_ _%e175081%_) (__AST-e _%e175081%_)))
    (define __pp-syntax
      (lambda (_%stx175078%_) (pp (__AST->datum _%stx175078%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt175076%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt175076%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt175076%_ '@list)
          (macro-readtable-brace-handler-set! _%rt175076%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt175076%_
           '#\!
           __read-sharp-bang)
          _%rt175076%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt175072%_ _%kw175073%_)
        (macro-readtable-bracket-handler-set! _%rt175072%_ _%kw175073%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt175069%_ _%kw175070%_)
        (macro-readtable-brace-handler-set! _%rt175069%_ _%kw175070%_)))
    (define __read-sharp-bang
      (lambda (_%re175060%_ _%next175061%_ _%start-pos175062%_)
        (if (eq? _%start-pos175062%_ '0)
            (let* ((_%line175064%_
                    (##read-line
                     (macro-readenv-port _%re175060%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line175066%_
                    (substring
                     _%line175064%_
                     '1
                     (string-length _%line175064%_))))
              (macro-readenv-script-line-set!
               _%re175060%_
               _%script-line175066%_)
              (##script-marker))
            (##read-sharp-bang
             _%re175060%_
             _%next175061%_
             _%start-pos175062%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj175058%_)
        (if (source-location? _%obj175058%_)
            (string? (##locat-container _%obj175058%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj175056%_)
        (if (##locat? _%obj175056%_)
            (##container->path (##locat-container _%obj175056%_))
            '#f)))))
