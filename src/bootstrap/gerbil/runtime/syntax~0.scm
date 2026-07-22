(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1784758124)
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
      (lambda _%$args175952%_
        (apply make-instance SyntaxError::t _%$args175952%_)))
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
      (lambda (_%self175671%_ _%port175672%_)
        (let ((_%self175675%_ _%self175671%_))
          (letrec ((_%location175686%_
                    (lambda ()
                      (letrec ((_%from-irritants175827%_
                                (lambda ()
                                  (let _%lp175912%_ ((_%rest175914%_
                                                      (##unchecked-structure-ref
                                                       _%self175675%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest175915175923%_
                                            _%rest175914%_)
                                           (_%$%else175917175931%_
                                            (lambda () '#f))
                                           (_%$%K175919175940%_
                                            (lambda (_%rest175934%_
                                                     _%hd175935%_)
                                              (let ((_%$e175937%_
                                                     (__AST-source
                                                      _%hd175935%_)))
                                                (if _%$e175937%_
                                                    _%$e175937%_
                                                    (_%lp175912%_
                                                     _%rest175934%_))))))
                                      (if (pair? _%$%rest175915175923%_)
                                          (let ((_%$%hd175920175943%_
                                                 (##car _%$%rest175915175923%_))
                                                (_%$%tl175921175945%_
                                                 (##cdr _%$%rest175915175923%_)))
                                            (let* ((_%hd175948%_
                                                    _%$%hd175920175943%_)
                                                   (_%rest175950%_
                                                    _%$%tl175921175945%_))
                                              (_%$%K175919175940%_
                                               _%rest175950%_
                                               _%hd175948%_)))
                                          (_%$%else175917175931%_))))))
                               (_%from-context175828%_
                                (lambda ()
                                  (let _%lp175834%_ ((_%rest175836%_
                                                      (##unchecked-structure-ref
                                                       _%self175675%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest175837175845%_
                                            _%rest175836%_)
                                           (_%$%else175839175853%_
                                            (lambda () '#f))
                                           (_%$%K175841175899%_
                                            (lambda (_%rest175856%_
                                                     _%hd175857%_)
                                              (let* ((_%$%hd175858175868%_
                                                      _%hd175857%_)
                                                     (_%$%else175860175876%_
                                                      (lambda ()
                                                        (_%lp175834%_
                                                         _%rest175856%_)))
                                                     (_%$%K175862175884%_
                                                      (lambda (_%loc175879%_)
                                                        (let ((_%$e175881%_
                                                               (__AST-source
                                                                _%loc175879%_)))
                                                          (if _%$e175881%_
                                                              _%$e175881%_
                                                              (_%lp175834%_
                                                               _%rest175856%_))))))
                                                (if (pair? _%$%hd175858175868%_)
                                                    (let ((_%$%hd175863175887%_
                                                           (##car _%$%hd175858175868%_))
                                                          (_%$%tl175864175889%_
                                                           (##cdr _%$%hd175858175868%_)))
                                                      (if (##eq? _%$%hd175863175887%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%$%tl175864175889%_)
                      (let ((_%$%hd175865175892%_ (##car _%$%tl175864175889%_))
                            (_%$%tl175866175894%_
                             (##cdr _%$%tl175864175889%_)))
                        (let ((_%loc175897%_ _%$%hd175865175892%_))
                          (if (null? _%$%tl175866175894%_)
                              (_%$%K175862175884%_ _%loc175897%_)
                              (_%$%else175860175876%_))))
                      (_%$%else175860175876%_))
                  (_%$%else175860175876%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else175860175876%_))))))
                                      (if (pair? _%$%rest175837175845%_)
                                          (let ((_%$%hd175842175902%_
                                                 (##car _%$%rest175837175845%_))
                                                (_%$%tl175843175904%_
                                                 (##cdr _%$%rest175837175845%_)))
                                            (let* ((_%hd175907%_
                                                    _%$%hd175842175902%_)
                                                   (_%rest175909%_
                                                    _%$%tl175843175904%_))
                                              (_%$%K175841175899%_
                                               _%rest175909%_
                                               _%hd175907%_)))
                                          (_%$%else175839175853%_)))))))
                        (let ((_%$e175830%_ (_%from-irritants175827%_)))
                          (if _%$e175830%_
                              _%$e175830%_
                              (_%from-context175828%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e175689%_ (_%location175686%_)))
                 (if _%$e175689%_
                     (##display-locat _%$e175689%_ '#t _%port175672%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self175675%_ '2 '#f '#f))
               (let ((_%$e175695%_
                      (##unchecked-structure-ref _%self175675%_ '4 '#f '#f)))
                 (if _%$e175695%_
                     (let ()
                       (displayln '"--- Context: ")
                       (let _%lp175700%_ ((_%rest175702%_ _%$e175695%_))
                         (let* ((_%$%rest175703175711%_ _%rest175702%_)
                                (_%$%else175705175719%_ (lambda () '#!void))
                                (_%$%K175707175769%_
                                 (lambda (_%rest175722%_ _%hd175723%_)
                                   (let* ((_%$%hd175724175734%_ _%hd175723%_)
                                          (_%$%else175726175742%_
                                           (lambda ()
                                             (displayln '" at " _%hd175723%_)
                                             (_%lp175700%_ _%rest175722%_)))
                                          (_%$%K175728175754%_
                                           (lambda (_%ctx175745%_)
                                             (let ((_%$e175747%_
                                                    (__AST-source
                                                     _%ctx175745%_)))
                                               (if _%$e175747%_
                                                   (let ()
                                                     (display '" at ")
                                                     (##display-locat
                                                      _%$e175747%_
                                                      '#t
                                                      _%port175672%_)
                                                     (newline)
                                                     (_%lp175700%_
                                                      _%rest175722%_))
                                                   (if (##structure-instance-of?
                                                        _%ctx175745%_
                                                        'gerbil#AST::t)
                                                       (let ()
                                                         (display '" at ")
                                                         (__pp-syntax
                                                          _%ctx175745%_)
                                                         (_%lp175700%_
                                                          _%rest175722%_))
                                                       (_%lp175700%_
                                                        _%rest175722%_)))))))
                                     (if (pair? _%$%hd175724175734%_)
                                         (let ((_%$%hd175729175757%_
                                                (##car _%$%hd175724175734%_))
                                               (_%$%tl175730175759%_
                                                (##cdr _%$%hd175724175734%_)))
                                           (if (##eq? _%$%hd175729175757%_ '@)
                                               (if (pair? _%$%tl175730175759%_)
                                                   (let ((_%$%hd175731175762%_
                                                          (##car _%$%tl175730175759%_))
                                                         (_%$%tl175732175764%_
                                                          (##cdr _%$%tl175730175759%_)))
                                                     (let ((_%ctx175767%_
                                                            _%$%hd175731175762%_))
                                                       (if (null? _%$%tl175732175764%_)
                                                           (_%$%K175728175754%_
                                                            _%ctx175767%_)
                                                           (_%$%else175726175742%_))))
                                                   (_%$%else175726175742%_))
                                               (_%$%else175726175742%_)))
                                         (_%$%else175726175742%_))))))
                           (if (pair? _%$%rest175703175711%_)
                               (let ((_%$%hd175708175772%_
                                      (##car _%$%rest175703175711%_))
                                     (_%$%tl175709175774%_
                                      (##cdr _%$%rest175703175711%_)))
                                 (let* ((_%hd175777%_ _%$%hd175708175772%_)
                                        (_%rest175779%_ _%$%tl175709175774%_))
                                   (_%$%K175707175769%_
                                    _%rest175779%_
                                    _%hd175777%_)))
                               '#!void))))
                     '#!void))
               (let* ((_%$%self.irritants175780175788%_
                       (##unchecked-structure-ref _%self175675%_ '3 '#f '#f))
                      (_%$%else175782175796%_ (lambda () '#!void))
                      (_%$%K175784175809%_
                       (lambda (_%rest175799%_ _%stx175800%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx175800%_)
                         (for-each
                          (lambda (_%detail175802%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail175802%_))
                            (let ((_%$e175804%_
                                   (__AST-source _%detail175802%_)))
                              (if _%$e175804%_
                                  (let ()
                                    (display '" at ")
                                    (##display-locat
                                     _%$e175804%_
                                     '#t
                                     _%port175672%_))
                                  '#!void))
                            (newline))
                          _%rest175799%_))))
                 (if (pair? _%$%self.irritants175780175788%_)
                     (let ((_%$%hd175785175812%_
                            (##car _%$%self.irritants175780175788%_))
                           (_%$%tl175786175814%_
                            (##cdr _%$%self.irritants175780175788%_)))
                       (let* ((_%stx175817%_ _%$%hd175785175812%_)
                              (_%rest175819%_ _%$%tl175786175814%_))
                         (_%$%K175784175809%_ _%rest175819%_ _%stx175817%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%$%cont175820175822%_
                          (##unchecked-structure-ref
                           _%self175675%_
                           '1
                           '#f
                           '#f)))
                     (if _%$%cont175820175822%_
                         (let ((_%cont175824%_ _%$%cont175820175822%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont175824%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port175672%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass175534%_ SyntaxError::t) (_%klass175539%_ _%klass175534%_))
      (__seal-class! _%klass175539%_))
    (define make-syntax-error
      (lambda (_%message175527%_
               _%irritants175528%_
               _%where175529%_
               _%context175530%_
               _%marks175531%_
               _%phi175532%_)
        (let ((__obj176049
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj176049 _%message175527%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj176049
           _%irritants175528%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj176049 _%where175529%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj176049 _%context175530%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj176049 _%marks175531%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj176049 _%phi175532%_ '6 '#f '#f)
          __obj176049)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where175522%_
               _%message175523%_
               _%stx175524%_
               .
               _%details175525%_)
        (raise (make-syntax-error
                _%message175523%_
                (cons _%stx175524%_ _%details175525%_)
                _%where175522%_
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
      (lambda _%$args175519%_ (apply make-instance AST::t _%$args175519%_)))
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
      (lambda (_%stx175517%_)
        (if (##structure-instance-of? _%stx175517%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx175517%_ '1 '#f '#f)
            _%stx175517%_)))
    (define __AST-source
      (lambda (_%stx175508%_)
        (let _%lp175510%_ ((_%src175512%_ _%stx175508%_))
          (if (##structure-instance-of? _%src175512%_ 'gerbil#AST::t)
              (_%lp175510%_
               (##unchecked-structure-ref _%src175512%_ '2 '#f '#f))
              (if (##locat? _%src175512%_) _%src175512%_ '#f)))))
    (define __AST
      (lambda (_%e175500%_ _%src-stx175501%_)
        (let ((_%src175503%_ (__AST-source _%src-stx175501%_)))
          (if (or (##structure-instance-of? _%e175500%_ 'gerbil#AST::t)
                  (not _%src175503%_))
              _%e175500%_
              (##structure AST::t _%e175500%_ _%src175503%_)))))
    (define __AST-eq?
      (lambda (_%stx175497%_ _%obj175498%_)
        (eq? (__AST-e _%stx175497%_) _%obj175498%_)))
    (define __AST-pair?
      (lambda (_%stx175495%_) (pair? (__AST-e _%stx175495%_))))
    (define __AST-null?
      (lambda (_%stx175493%_) (null? (__AST-e _%stx175493%_))))
    (define __AST-datum?
      (lambda (_%stx175474%_)
        (let* ((_%e175476%_ (__AST-e _%stx175474%_))
               (_%$e175478%_ (number? _%e175476%_)))
          (if _%$e175478%_
              _%$e175478%_
              (let ((_%$e175481%_ (string? _%e175476%_)))
                (if _%$e175481%_
                    _%$e175481%_
                    (let ((_%$e175484%_ (char? _%e175476%_)))
                      (if _%$e175484%_
                          _%$e175484%_
                          (let ((_%$e175487%_ (keyword? _%e175476%_)))
                            (if _%$e175487%_
                                _%$e175487%_
                                (let ((_%$e175490%_ (boolean? _%e175476%_)))
                                  (if _%$e175490%_
                                      _%$e175490%_
                                      (eq? _%e175476%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx175472%_) (symbol? (__AST-e _%stx175472%_))))
    (define __AST-id-list?__%
      (lambda (_%stx175423%_ _%tail?175424%_)
        (let _%lp175426%_ ((_%rest175428%_ _%stx175423%_))
          (let* ((_%$e175430%_ _%rest175428%_)
                 (_%$%$E175432175445%_
                  (lambda ()
                    (let* ((_%$%$E175433175440%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e175430%_)))
                           (_%rest175443%_ _%$e175430%_))
                      (_%tail?175424%_ _%rest175443%_)))))
            (if (__AST-pair? _%$e175430%_)
                (let* ((_%$%$tgt175434175448%_ (__AST-e _%$e175430%_))
                       (_%$%$hd175435175451%_ (##car _%$%$tgt175434175448%_))
                       (_%$%$tl175436175454%_ (##cdr _%$%$tgt175434175448%_))
                       (_%hd175458%_ _%$%$hd175435175451%_)
                       (_%rest175460%_ _%$%$tl175436175454%_))
                  (if (__AST-id? _%hd175458%_)
                      (_%lp175426%_ _%rest175460%_)
                      '#f))
                (_%$%$E175432175445%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx175465%_)
        (let ((_%tail?175467%_ __AST-null?))
          (__AST-id-list?__% _%stx175465%_ _%tail?175467%_))))
    (define __AST-id-list?
      (lambda _g176051_
        (let ((_g176052_ (##length _g176051_)))
          (cond ((##fx= _g176052_ 1) (apply __AST-id-list?__0 _g176051_))
                ((##fx= _g176052_ 2) (apply __AST-id-list?__% _g176051_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g176051_))))))
    (define __AST-bind-list?
      (lambda (_%stx175415%_)
        (__AST-id-list?__%
         _%stx175415%_
         (lambda (_%e175417%_)
           (let ((_%$e175419%_ (__AST-null? _%e175417%_)))
             (if _%$e175419%_ _%$e175419%_ (__AST-id? _%e175417%_)))))))
    (define __AST-list?__%
      (lambda (_%stx175368%_ _%tail?175369%_)
        (let _%lp175371%_ ((_%rest175373%_ _%stx175368%_))
          (let* ((_%$e175375%_ _%rest175373%_)
                 (_%$%$E175377175390%_
                  (lambda ()
                    (let* ((_%$%$E175378175385%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e175375%_)))
                           (_%rest175388%_ _%$e175375%_))
                      (_%tail?175369%_ _%rest175388%_)))))
            (if (__AST-pair? _%$e175375%_)
                (let* ((_%$%$tgt175379175393%_ (__AST-e _%$e175375%_))
                       (_%$%$hd175380175396%_ (##car _%$%$tgt175379175393%_))
                       (_%$%$tl175381175399%_ (##cdr _%$%$tgt175379175393%_))
                       (_%rest175403%_ _%$%$tl175381175399%_))
                  (_%lp175371%_ _%rest175403%_))
                (_%$%$E175377175390%_))))))
    (define __AST-list?__0
      (lambda (_%stx175408%_)
        (let ((_%tail?175410%_ __AST-null?))
          (__AST-list?__% _%stx175408%_ _%tail?175410%_))))
    (define __AST-list?
      (lambda _g176053_
        (let ((_g176054_ (##length _g176053_)))
          (cond ((##fx= _g176054_ 1) (apply __AST-list?__0 _g176053_))
                ((##fx= _g176054_ 2) (apply __AST-list?__% _g176053_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g176053_))))))
    (define __AST->list
      (lambda (_%stx175333%_)
        (let* ((_%$e175335%_ _%stx175333%_)
               (_%$%$E175337175350%_
                (lambda ()
                  (let* ((_%$%$E175338175345%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e175335%_)))
                         (_%rest175348%_ _%$e175335%_))
                    (__AST-e _%rest175348%_)))))
          (if (__AST-pair? _%$e175335%_)
              (let* ((_%$%$tgt175339175353%_ (__AST-e _%$e175335%_))
                     (_%$%$hd175340175356%_ (##car _%$%$tgt175339175353%_))
                     (_%$%$tl175341175359%_ (##cdr _%$%$tgt175339175353%_))
                     (_%hd175363%_ _%$%$hd175340175356%_)
                     (_%rest175365%_ _%$%$tl175341175359%_))
                (cons _%hd175363%_ (__AST->list _%rest175365%_)))
              (_%$%$E175337175350%_)))))
    (define __AST->datum
      (lambda (_%stx175326%_)
        (if (##structure-instance-of? _%stx175326%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx175326%_))
            (if (pair? _%stx175326%_)
                (cons (__AST->datum (##car _%stx175326%_))
                      (__AST->datum (##cdr _%stx175326%_)))
                (if (vector? _%stx175326%_)
                    (vector-map __AST->datum _%stx175326%_)
                    (if (box? _%stx175326%_)
                        (box (__AST->datum (unbox _%stx175326%_)))
                        _%stx175326%_))))))
    (define get-readenv
      (lambda (_%port175324%_)
        (##make-readenv
         _%port175324%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in175312%_)
        (let ((_%e175314%_ (##read-datum-or-eof (get-readenv _%in175312%_))))
          (if (eof-object? (__AST-e _%e175314%_))
              (__AST-e _%e175314%_)
              _%e175314%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in175320%_ (current-input-port)))
          (read-syntax__% _%in175320%_))))
    (define read-syntax
      (lambda _g176055_
        (let ((_g176056_ (##length _g176055_)))
          (cond ((##fx= _g176056_ 0) (apply read-syntax__0 _g176055_))
                ((##fx= _g176056_ 1) (apply read-syntax__% _g176055_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g176055_))))))
    (define read-syntax-from-file
      (lambda (_%path175307%_)
        (let ((_%r175309%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path175307%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r175309%_)
              (cdr (__AST-e (vector-ref _%r175309%_ '1)))
              (error (err-code->string _%r175309%_) _%path175307%_)))))
    (define __wrap-syntax
      (lambda (_%re175304%_ _%e175305%_)
        (if (eof-object? _%e175305%_)
            _%e175305%_
            (##structure AST::t _%e175305%_ (##readenv->locat _%re175304%_)))))
    (define __unwrap-syntax
      (lambda (_%re175301%_ _%e175302%_) (__AST-e _%e175302%_)))
    (define __pp-syntax
      (lambda (_%stx175299%_) (pp (__AST->datum _%stx175299%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt175297%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt175297%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt175297%_ '@list)
          (macro-readtable-brace-handler-set! _%rt175297%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt175297%_
           '#\!
           __read-sharp-bang)
          _%rt175297%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt175293%_ _%kw175294%_)
        (macro-readtable-bracket-handler-set! _%rt175293%_ _%kw175294%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt175290%_ _%kw175291%_)
        (macro-readtable-brace-handler-set! _%rt175290%_ _%kw175291%_)))
    (define __read-sharp-bang
      (lambda (_%re175281%_ _%next175282%_ _%start-pos175283%_)
        (if (eq? _%start-pos175283%_ '0)
            (let* ((_%line175285%_
                    (##read-line
                     (macro-readenv-port _%re175281%_)
                     '#\newline
                     '#f
                     ##max-fixnum))
                   (_%script-line175287%_
                    (substring
                     _%line175285%_
                     '1
                     (string-length _%line175285%_))))
              (macro-readenv-script-line-set!
               _%re175281%_
               _%script-line175287%_)
              (##script-marker))
            (##read-sharp-bang
             _%re175281%_
             _%next175282%_
             _%start-pos175283%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj175279%_)
        (if (source-location? _%obj175279%_)
            (string? (##locat-container _%obj175279%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj175277%_)
        (if (##locat? _%obj175277%_)
            (##container->path (##locat-container _%obj175277%_))
            '#f)))))
