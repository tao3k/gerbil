(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1789188907)
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
      (lambda _%$args175935%_
        (apply make-instance SyntaxError::t _%$args175935%_)))
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
      (lambda (_%self175654%_ _%port175655%_)
        (let ((_%self175658%_ _%self175654%_))
          (letrec ((_%location175669%_
                    (lambda ()
                      (letrec ((_%from-irritants175810%_
                                (lambda ()
                                  (let _%lp175895%_ ((_%rest175897%_
                                                      (##unchecked-structure-ref
                                                       _%self175658%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest175898175906%_
                                            _%rest175897%_)
                                           (_%$%else175900175914%_
                                            (lambda () '#f))
                                           (_%$%K175902175923%_
                                            (lambda (_%rest175917%_
                                                     _%hd175918%_)
                                              (let ((_%$e175920%_
                                                     (__AST-source
                                                      _%hd175918%_)))
                                                (if _%$e175920%_
                                                    _%$e175920%_
                                                    (_%lp175895%_
                                                     _%rest175917%_))))))
                                      (if (pair? _%$%rest175898175906%_)
                                          (let ((_%$%hd175903175926%_
                                                 (##car _%$%rest175898175906%_))
                                                (_%$%tl175904175928%_
                                                 (##cdr _%$%rest175898175906%_)))
                                            (let* ((_%hd175931%_
                                                    _%$%hd175903175926%_)
                                                   (_%rest175933%_
                                                    _%$%tl175904175928%_))
                                              (_%$%K175902175923%_
                                               _%rest175933%_
                                               _%hd175931%_)))
                                          (_%$%else175900175914%_))))))
                               (_%from-context175811%_
                                (lambda ()
                                  (let _%lp175817%_ ((_%rest175819%_
                                                      (##unchecked-structure-ref
                                                       _%self175658%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest175820175828%_
                                            _%rest175819%_)
                                           (_%$%else175822175836%_
                                            (lambda () '#f))
                                           (_%$%K175824175882%_
                                            (lambda (_%rest175839%_
                                                     _%hd175840%_)
                                              (let* ((_%$%hd175841175851%_
                                                      _%hd175840%_)
                                                     (_%$%else175843175859%_
                                                      (lambda ()
                                                        (_%lp175817%_
                                                         _%rest175839%_)))
                                                     (_%$%K175845175867%_
                                                      (lambda (_%loc175862%_)
                                                        (let ((_%$e175864%_
                                                               (__AST-source
                                                                _%loc175862%_)))
                                                          (if _%$e175864%_
                                                              _%$e175864%_
                                                              (_%lp175817%_
                                                               _%rest175839%_))))))
                                                (if (pair? _%$%hd175841175851%_)
                                                    (let ((_%$%hd175846175870%_
                                                           (##car _%$%hd175841175851%_))
                                                          (_%$%tl175847175872%_
                                                           (##cdr _%$%hd175841175851%_)))
                                                      (if (##eq? _%$%hd175846175870%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%$%tl175847175872%_)
                      (let ((_%$%hd175848175875%_ (##car _%$%tl175847175872%_))
                            (_%$%tl175849175877%_
                             (##cdr _%$%tl175847175872%_)))
                        (let ((_%loc175880%_ _%$%hd175848175875%_))
                          (if (null? _%$%tl175849175877%_)
                              (_%$%K175845175867%_ _%loc175880%_)
                              (_%$%else175843175859%_))))
                      (_%$%else175843175859%_))
                  (_%$%else175843175859%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else175843175859%_))))))
                                      (if (pair? _%$%rest175820175828%_)
                                          (let ((_%$%hd175825175885%_
                                                 (##car _%$%rest175820175828%_))
                                                (_%$%tl175826175887%_
                                                 (##cdr _%$%rest175820175828%_)))
                                            (let* ((_%hd175890%_
                                                    _%$%hd175825175885%_)
                                                   (_%rest175892%_
                                                    _%$%tl175826175887%_))
                                              (_%$%K175824175882%_
                                               _%rest175892%_
                                               _%hd175890%_)))
                                          (_%$%else175822175836%_)))))))
                        (let ((_%$e175813%_ (_%from-irritants175810%_)))
                          (if _%$e175813%_
                              _%$e175813%_
                              (_%from-context175811%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e175672%_ (_%location175669%_)))
                 (if _%$e175672%_
                     (##display-locat _%$e175672%_ '#t _%port175655%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self175658%_ '2 '#f '#f))
               (let ((_%$e175678%_
                      (##unchecked-structure-ref _%self175658%_ '4 '#f '#f)))
                 (if _%$e175678%_
                     (let ()
                       (displayln '"--- Context: ")
                       (let _%lp175683%_ ((_%rest175685%_ _%$e175678%_))
                         (let* ((_%$%rest175686175694%_ _%rest175685%_)
                                (_%$%else175688175702%_ (lambda () '#!void))
                                (_%$%K175690175752%_
                                 (lambda (_%rest175705%_ _%hd175706%_)
                                   (let* ((_%$%hd175707175717%_ _%hd175706%_)
                                          (_%$%else175709175725%_
                                           (lambda ()
                                             (displayln '" at " _%hd175706%_)
                                             (_%lp175683%_ _%rest175705%_)))
                                          (_%$%K175711175737%_
                                           (lambda (_%ctx175728%_)
                                             (let ((_%$e175730%_
                                                    (__AST-source
                                                     _%ctx175728%_)))
                                               (if _%$e175730%_
                                                   (let ()
                                                     (display '" at ")
                                                     (##display-locat
                                                      _%$e175730%_
                                                      '#t
                                                      _%port175655%_)
                                                     (newline)
                                                     (_%lp175683%_
                                                      _%rest175705%_))
                                                   (if (##structure-instance-of?
                                                        _%ctx175728%_
                                                        'gerbil#AST::t)
                                                       (let ()
                                                         (display '" at ")
                                                         (__pp-syntax
                                                          _%ctx175728%_)
                                                         (_%lp175683%_
                                                          _%rest175705%_))
                                                       (_%lp175683%_
                                                        _%rest175705%_)))))))
                                     (if (pair? _%$%hd175707175717%_)
                                         (let ((_%$%hd175712175740%_
                                                (##car _%$%hd175707175717%_))
                                               (_%$%tl175713175742%_
                                                (##cdr _%$%hd175707175717%_)))
                                           (if (##eq? _%$%hd175712175740%_ '@)
                                               (if (pair? _%$%tl175713175742%_)
                                                   (let ((_%$%hd175714175745%_
                                                          (##car _%$%tl175713175742%_))
                                                         (_%$%tl175715175747%_
                                                          (##cdr _%$%tl175713175742%_)))
                                                     (let ((_%ctx175750%_
                                                            _%$%hd175714175745%_))
                                                       (if (null? _%$%tl175715175747%_)
                                                           (_%$%K175711175737%_
                                                            _%ctx175750%_)
                                                           (_%$%else175709175725%_))))
                                                   (_%$%else175709175725%_))
                                               (_%$%else175709175725%_)))
                                         (_%$%else175709175725%_))))))
                           (if (pair? _%$%rest175686175694%_)
                               (let ((_%$%hd175691175755%_
                                      (##car _%$%rest175686175694%_))
                                     (_%$%tl175692175757%_
                                      (##cdr _%$%rest175686175694%_)))
                                 (let* ((_%hd175760%_ _%$%hd175691175755%_)
                                        (_%rest175762%_ _%$%tl175692175757%_))
                                   (_%$%K175690175752%_
                                    _%rest175762%_
                                    _%hd175760%_)))
                               '#!void))))
                     '#!void))
               (let* ((_%$%self.irritants175763175771%_
                       (##unchecked-structure-ref _%self175658%_ '3 '#f '#f))
                      (_%$%else175765175779%_ (lambda () '#!void))
                      (_%$%K175767175792%_
                       (lambda (_%rest175782%_ _%stx175783%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx175783%_)
                         (for-each
                          (lambda (_%detail175785%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail175785%_))
                            (let ((_%$e175787%_
                                   (__AST-source _%detail175785%_)))
                              (if _%$e175787%_
                                  (let ()
                                    (display '" at ")
                                    (##display-locat
                                     _%$e175787%_
                                     '#t
                                     _%port175655%_))
                                  '#!void))
                            (newline))
                          _%rest175782%_))))
                 (if (pair? _%$%self.irritants175763175771%_)
                     (let ((_%$%hd175768175795%_
                            (##car _%$%self.irritants175763175771%_))
                           (_%$%tl175769175797%_
                            (##cdr _%$%self.irritants175763175771%_)))
                       (let* ((_%stx175800%_ _%$%hd175768175795%_)
                              (_%rest175802%_ _%$%tl175769175797%_))
                         (_%$%K175767175792%_ _%rest175802%_ _%stx175800%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%$%cont175803175805%_
                          (##unchecked-structure-ref
                           _%self175658%_
                           '1
                           '#f
                           '#f)))
                     (if _%$%cont175803175805%_
                         (let ((_%cont175807%_ _%$%cont175803175805%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont175807%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port175655%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass175517%_ SyntaxError::t) (_%klass175522%_ _%klass175517%_))
      (__seal-class! _%klass175522%_))
    (define make-syntax-error
      (lambda (_%message175510%_
               _%irritants175511%_
               _%where175512%_
               _%context175513%_
               _%marks175514%_
               _%phi175515%_)
        (let ((__obj176032
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj176032 _%message175510%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj176032
           _%irritants175511%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj176032 _%where175512%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj176032 _%context175513%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj176032 _%marks175514%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj176032 _%phi175515%_ '6 '#f '#f)
          __obj176032)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where175505%_
               _%message175506%_
               _%stx175507%_
               .
               _%details175508%_)
        (raise (make-syntax-error
                _%message175506%_
                (cons _%stx175507%_ _%details175508%_)
                _%where175505%_
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
      (lambda _%$args175502%_ (apply make-instance AST::t _%$args175502%_)))
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
      (lambda (_%stx175500%_)
        (if (##structure-instance-of? _%stx175500%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx175500%_ '1 '#f '#f)
            _%stx175500%_)))
    (define __AST-source
      (lambda (_%stx175491%_)
        (let _%lp175493%_ ((_%src175495%_ _%stx175491%_))
          (if (##structure-instance-of? _%src175495%_ 'gerbil#AST::t)
              (_%lp175493%_
               (##unchecked-structure-ref _%src175495%_ '2 '#f '#f))
              (if (##locat? _%src175495%_) _%src175495%_ '#f)))))
    (define __AST
      (lambda (_%e175483%_ _%src-stx175484%_)
        (let ((_%src175486%_ (__AST-source _%src-stx175484%_)))
          (if (or (##structure-instance-of? _%e175483%_ 'gerbil#AST::t)
                  (not _%src175486%_))
              _%e175483%_
              (##structure AST::t _%e175483%_ _%src175486%_)))))
    (define __AST-eq?
      (lambda (_%stx175480%_ _%obj175481%_)
        (eq? (__AST-e _%stx175480%_) _%obj175481%_)))
    (define __AST-pair?
      (lambda (_%stx175478%_) (pair? (__AST-e _%stx175478%_))))
    (define __AST-null?
      (lambda (_%stx175476%_) (null? (__AST-e _%stx175476%_))))
    (define __AST-datum?
      (lambda (_%stx175457%_)
        (let* ((_%e175459%_ (__AST-e _%stx175457%_))
               (_%$e175461%_ (number? _%e175459%_)))
          (if _%$e175461%_
              _%$e175461%_
              (let ((_%$e175464%_ (string? _%e175459%_)))
                (if _%$e175464%_
                    _%$e175464%_
                    (let ((_%$e175467%_ (char? _%e175459%_)))
                      (if _%$e175467%_
                          _%$e175467%_
                          (let ((_%$e175470%_ (keyword? _%e175459%_)))
                            (if _%$e175470%_
                                _%$e175470%_
                                (let ((_%$e175473%_ (boolean? _%e175459%_)))
                                  (if _%$e175473%_
                                      _%$e175473%_
                                      (eq? _%e175459%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx175455%_) (symbol? (__AST-e _%stx175455%_))))
    (define __AST-id-list?__%
      (lambda (_%stx175406%_ _%tail?175407%_)
        (let _%lp175409%_ ((_%rest175411%_ _%stx175406%_))
          (let* ((_%$e175413%_ _%rest175411%_)
                 (_%$%$E175415175428%_
                  (lambda ()
                    (let* ((_%$%$E175416175423%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e175413%_)))
                           (_%rest175426%_ _%$e175413%_))
                      (_%tail?175407%_ _%rest175426%_)))))
            (if (__AST-pair? _%$e175413%_)
                (let* ((_%$%$tgt175417175431%_ (__AST-e _%$e175413%_))
                       (_%$%$hd175418175434%_ (##car _%$%$tgt175417175431%_))
                       (_%$%$tl175419175437%_ (##cdr _%$%$tgt175417175431%_))
                       (_%hd175441%_ _%$%$hd175418175434%_)
                       (_%rest175443%_ _%$%$tl175419175437%_))
                  (if (__AST-id? _%hd175441%_)
                      (_%lp175409%_ _%rest175443%_)
                      '#f))
                (_%$%$E175415175428%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx175448%_)
        (let ((_%tail?175450%_ __AST-null?))
          (__AST-id-list?__% _%stx175448%_ _%tail?175450%_))))
    (define __AST-id-list?
      (lambda _g176034_
        (let ((_g176035_ (##length _g176034_)))
          (cond ((##fx= _g176035_ 1) (apply __AST-id-list?__0 _g176034_))
                ((##fx= _g176035_ 2) (apply __AST-id-list?__% _g176034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g176034_))))))
    (define __AST-bind-list?
      (lambda (_%stx175398%_)
        (__AST-id-list?__%
         _%stx175398%_
         (lambda (_%e175400%_)
           (let ((_%$e175402%_ (__AST-null? _%e175400%_)))
             (if _%$e175402%_ _%$e175402%_ (__AST-id? _%e175400%_)))))))
    (define __AST-list?__%
      (lambda (_%stx175351%_ _%tail?175352%_)
        (let _%lp175354%_ ((_%rest175356%_ _%stx175351%_))
          (let* ((_%$e175358%_ _%rest175356%_)
                 (_%$%$E175360175373%_
                  (lambda ()
                    (let* ((_%$%$E175361175368%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e175358%_)))
                           (_%rest175371%_ _%$e175358%_))
                      (_%tail?175352%_ _%rest175371%_)))))
            (if (__AST-pair? _%$e175358%_)
                (let* ((_%$%$tgt175362175376%_ (__AST-e _%$e175358%_))
                       (_%$%$hd175363175379%_ (##car _%$%$tgt175362175376%_))
                       (_%$%$tl175364175382%_ (##cdr _%$%$tgt175362175376%_))
                       (_%rest175386%_ _%$%$tl175364175382%_))
                  (_%lp175354%_ _%rest175386%_))
                (_%$%$E175360175373%_))))))
    (define __AST-list?__0
      (lambda (_%stx175391%_)
        (let ((_%tail?175393%_ __AST-null?))
          (__AST-list?__% _%stx175391%_ _%tail?175393%_))))
    (define __AST-list?
      (lambda _g176036_
        (let ((_g176037_ (##length _g176036_)))
          (cond ((##fx= _g176037_ 1) (apply __AST-list?__0 _g176036_))
                ((##fx= _g176037_ 2) (apply __AST-list?__% _g176036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g176036_))))))
    (define __AST->list
      (lambda (_%stx175316%_)
        (let* ((_%$e175318%_ _%stx175316%_)
               (_%$%$E175320175333%_
                (lambda ()
                  (let* ((_%$%$E175321175328%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e175318%_)))
                         (_%rest175331%_ _%$e175318%_))
                    (__AST-e _%rest175331%_)))))
          (if (__AST-pair? _%$e175318%_)
              (let* ((_%$%$tgt175322175336%_ (__AST-e _%$e175318%_))
                     (_%$%$hd175323175339%_ (##car _%$%$tgt175322175336%_))
                     (_%$%$tl175324175342%_ (##cdr _%$%$tgt175322175336%_))
                     (_%hd175346%_ _%$%$hd175323175339%_)
                     (_%rest175348%_ _%$%$tl175324175342%_))
                (cons _%hd175346%_ (__AST->list _%rest175348%_)))
              (_%$%$E175320175333%_)))))
    (define __AST->datum
      (lambda (_%stx175309%_)
        (if (##structure-instance-of? _%stx175309%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx175309%_))
            (if (pair? _%stx175309%_)
                (cons (__AST->datum (##car _%stx175309%_))
                      (__AST->datum (##cdr _%stx175309%_)))
                (if (vector? _%stx175309%_)
                    (vector-map __AST->datum _%stx175309%_)
                    (if (box? _%stx175309%_)
                        (box (__AST->datum (unbox _%stx175309%_)))
                        _%stx175309%_))))))
    (define get-readenv
      (lambda (_%port175307%_)
        (##make-readenv
         _%port175307%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in175295%_)
        (let ((_%e175297%_ (##read-datum-or-eof (get-readenv _%in175295%_))))
          (if (eof-object? (__AST-e _%e175297%_))
              (__AST-e _%e175297%_)
              _%e175297%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in175303%_ (current-input-port)))
          (read-syntax__% _%in175303%_))))
    (define read-syntax
      (lambda _g176038_
        (let ((_g176039_ (##length _g176038_)))
          (cond ((##fx= _g176039_ 0) (apply read-syntax__0 _g176038_))
                ((##fx= _g176039_ 1) (apply read-syntax__% _g176038_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g176038_))))))
    (define read-syntax-from-file
      (lambda (_%path175290%_)
        (let ((_%r175292%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path175290%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r175292%_)
              (cdr (__AST-e (vector-ref _%r175292%_ '1)))
              (error (err-code->string _%r175292%_) _%path175290%_)))))
    (define __wrap-syntax
      (lambda (_%re175287%_ _%e175288%_)
        (if (eof-object? _%e175288%_)
            _%e175288%_
            (##structure AST::t _%e175288%_ (##readenv->locat _%re175287%_)))))
    (define __unwrap-syntax
      (lambda (_%re175284%_ _%e175285%_) (__AST-e _%e175285%_)))
    (define __pp-syntax
      (lambda (_%stx175282%_) (pp (__AST->datum _%stx175282%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt175280%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt175280%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt175280%_ '@list)
          (macro-readtable-brace-handler-set! _%rt175280%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt175280%_
           '#\!
           __read-sharp-bang)
          _%rt175280%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt175276%_ _%kw175277%_)
        (macro-readtable-bracket-handler-set! _%rt175276%_ _%kw175277%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt175273%_ _%kw175274%_)
        (macro-readtable-brace-handler-set! _%rt175273%_ _%kw175274%_)))
    (define __read-sharp-bang
      (lambda (_%re175264%_ _%next175265%_ _%start-pos175266%_)
        (if (eq? _%start-pos175266%_ '0)
            (let* ((_%line175268%_
                    (##read-line
                     (macro-readenv-port _%re175264%_)
                     '#\newline
                     '#f
                     (##greatest-fixnum)))
                   (_%script-line175270%_
                    (substring
                     _%line175268%_
                     '1
                     (string-length _%line175268%_))))
              (macro-readenv-script-line-set!
               _%re175264%_
               _%script-line175270%_)
              (##script-marker))
            (##read-sharp-bang
             _%re175264%_
             _%next175265%_
             _%start-pos175266%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj175262%_)
        (if (source-location? _%obj175262%_)
            (string? (##locat-container _%obj175262%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj175260%_)
        (if (##locat? _%obj175260%_)
            (##container->path (##locat-container _%obj175260%_))
            '#f)))))
