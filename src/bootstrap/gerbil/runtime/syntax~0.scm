(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1789839225)
  (begin
    (declare (not safe))
    (define SyntaxError::t
      (make-class-type
       'SyntaxError::t
       'SyntaxError
       (list Exception::t StackTrace::t)
       '(message irritants where context phi marks)
       (cons (cons 'final: '#t) '())
       '#f))
    (define SyntaxError? (__make-class-predicate SyntaxError::t))
    (define make-SyntaxError
      (lambda _%$args178127%_
        (apply make-instance SyntaxError::t _%$args178127%_)))
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
      (lambda (_%self177846%_ _%port177847%_)
        (let ((_%self177850%_ _%self177846%_))
          (letrec ((_%location177861%_
                    (lambda ()
                      (letrec ((_%from-irritants178002%_
                                (lambda ()
                                  (let _%lp178087%_ ((_%rest178089%_
                                                      (##unchecked-structure-ref
                                                       _%self177850%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest178090178098%_
                                            _%rest178089%_)
                                           (_%$%else178092178106%_
                                            (lambda () '#f))
                                           (_%$%K178094178115%_
                                            (lambda (_%rest178109%_
                                                     _%hd178110%_)
                                              (let ((_%$e178112%_
                                                     (__AST-source
                                                      _%hd178110%_)))
                                                (if _%$e178112%_
                                                    _%$e178112%_
                                                    (_%lp178087%_
                                                     _%rest178109%_))))))
                                      (if (pair? _%$%rest178090178098%_)
                                          (let ((_%$%hd178095178118%_
                                                 (##car _%$%rest178090178098%_))
                                                (_%$%tl178096178120%_
                                                 (##cdr _%$%rest178090178098%_)))
                                            (let* ((_%hd178123%_
                                                    _%$%hd178095178118%_)
                                                   (_%rest178125%_
                                                    _%$%tl178096178120%_))
                                              (_%$%K178094178115%_
                                               _%rest178125%_
                                               _%hd178123%_)))
                                          (_%$%else178092178106%_))))))
                               (_%from-context178003%_
                                (lambda ()
                                  (let _%lp178009%_ ((_%rest178011%_
                                                      (##unchecked-structure-ref
                                                       _%self177850%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest178012178020%_
                                            _%rest178011%_)
                                           (_%$%else178014178028%_
                                            (lambda () '#f))
                                           (_%$%K178016178074%_
                                            (lambda (_%rest178031%_
                                                     _%hd178032%_)
                                              (let* ((_%$%hd178033178043%_
                                                      _%hd178032%_)
                                                     (_%$%else178035178051%_
                                                      (lambda ()
                                                        (_%lp178009%_
                                                         _%rest178031%_)))
                                                     (_%$%K178037178059%_
                                                      (lambda (_%loc178054%_)
                                                        (let ((_%$e178056%_
                                                               (__AST-source
                                                                _%loc178054%_)))
                                                          (if _%$e178056%_
                                                              _%$e178056%_
                                                              (_%lp178009%_
                                                               _%rest178031%_))))))
                                                (if (pair? _%$%hd178033178043%_)
                                                    (let ((_%$%hd178038178062%_
                                                           (##car _%$%hd178033178043%_))
                                                          (_%$%tl178039178064%_
                                                           (##cdr _%$%hd178033178043%_)))
                                                      (if (##eq? _%$%hd178038178062%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%$%tl178039178064%_)
                      (let ((_%$%hd178040178067%_ (##car _%$%tl178039178064%_))
                            (_%$%tl178041178069%_
                             (##cdr _%$%tl178039178064%_)))
                        (let ((_%loc178072%_ _%$%hd178040178067%_))
                          (if (null? _%$%tl178041178069%_)
                              (_%$%K178037178059%_ _%loc178072%_)
                              (_%$%else178035178051%_))))
                      (_%$%else178035178051%_))
                  (_%$%else178035178051%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else178035178051%_))))))
                                      (if (pair? _%$%rest178012178020%_)
                                          (let ((_%$%hd178017178077%_
                                                 (##car _%$%rest178012178020%_))
                                                (_%$%tl178018178079%_
                                                 (##cdr _%$%rest178012178020%_)))
                                            (let* ((_%hd178082%_
                                                    _%$%hd178017178077%_)
                                                   (_%rest178084%_
                                                    _%$%tl178018178079%_))
                                              (_%$%K178016178074%_
                                               _%rest178084%_
                                               _%hd178082%_)))
                                          (_%$%else178014178028%_)))))))
                        (let ((_%$e178005%_ (_%from-irritants178002%_)))
                          (if _%$e178005%_
                              _%$e178005%_
                              (_%from-context178003%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e177864%_ (_%location177861%_)))
                 (if _%$e177864%_
                     (##display-locat _%$e177864%_ '#t _%port177847%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self177850%_ '2 '#f '#f))
               (let ((_%$e177870%_
                      (##unchecked-structure-ref _%self177850%_ '4 '#f '#f)))
                 (if _%$e177870%_
                     (let ()
                       (displayln '"--- Context: ")
                       (let _%lp177875%_ ((_%rest177877%_ _%$e177870%_))
                         (let* ((_%$%rest177878177886%_ _%rest177877%_)
                                (_%$%else177880177894%_ (lambda () '#!void))
                                (_%$%K177882177944%_
                                 (lambda (_%rest177897%_ _%hd177898%_)
                                   (let* ((_%$%hd177899177909%_ _%hd177898%_)
                                          (_%$%else177901177917%_
                                           (lambda ()
                                             (displayln '" at " _%hd177898%_)
                                             (_%lp177875%_ _%rest177897%_)))
                                          (_%$%K177903177929%_
                                           (lambda (_%ctx177920%_)
                                             (let ((_%$e177922%_
                                                    (__AST-source
                                                     _%ctx177920%_)))
                                               (if _%$e177922%_
                                                   (let ()
                                                     (display '" at ")
                                                     (##display-locat
                                                      _%$e177922%_
                                                      '#t
                                                      _%port177847%_)
                                                     (newline)
                                                     (_%lp177875%_
                                                      _%rest177897%_))
                                                   (if (##structure-instance-of?
                                                        _%ctx177920%_
                                                        'gerbil#AST::t)
                                                       (let ()
                                                         (display '" at ")
                                                         (__pp-syntax
                                                          _%ctx177920%_)
                                                         (_%lp177875%_
                                                          _%rest177897%_))
                                                       (_%lp177875%_
                                                        _%rest177897%_)))))))
                                     (if (pair? _%$%hd177899177909%_)
                                         (let ((_%$%hd177904177932%_
                                                (##car _%$%hd177899177909%_))
                                               (_%$%tl177905177934%_
                                                (##cdr _%$%hd177899177909%_)))
                                           (if (##eq? _%$%hd177904177932%_ '@)
                                               (if (pair? _%$%tl177905177934%_)
                                                   (let ((_%$%hd177906177937%_
                                                          (##car _%$%tl177905177934%_))
                                                         (_%$%tl177907177939%_
                                                          (##cdr _%$%tl177905177934%_)))
                                                     (let ((_%ctx177942%_
                                                            _%$%hd177906177937%_))
                                                       (if (null? _%$%tl177907177939%_)
                                                           (_%$%K177903177929%_
                                                            _%ctx177942%_)
                                                           (_%$%else177901177917%_))))
                                                   (_%$%else177901177917%_))
                                               (_%$%else177901177917%_)))
                                         (_%$%else177901177917%_))))))
                           (if (pair? _%$%rest177878177886%_)
                               (let ((_%$%hd177883177947%_
                                      (##car _%$%rest177878177886%_))
                                     (_%$%tl177884177949%_
                                      (##cdr _%$%rest177878177886%_)))
                                 (let* ((_%hd177952%_ _%$%hd177883177947%_)
                                        (_%rest177954%_ _%$%tl177884177949%_))
                                   (_%$%K177882177944%_
                                    _%rest177954%_
                                    _%hd177952%_)))
                               '#!void))))
                     '#!void))
               (let* ((_%$%self.irritants177955177963%_
                       (##unchecked-structure-ref _%self177850%_ '3 '#f '#f))
                      (_%$%else177957177971%_ (lambda () '#!void))
                      (_%$%K177959177984%_
                       (lambda (_%rest177974%_ _%stx177975%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx177975%_)
                         (for-each
                          (lambda (_%detail177977%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail177977%_))
                            (let ((_%$e177979%_
                                   (__AST-source _%detail177977%_)))
                              (if _%$e177979%_
                                  (let ()
                                    (display '" at ")
                                    (##display-locat
                                     _%$e177979%_
                                     '#t
                                     _%port177847%_))
                                  '#!void))
                            (newline))
                          _%rest177974%_))))
                 (if (pair? _%$%self.irritants177955177963%_)
                     (let ((_%$%hd177960177987%_
                            (##car _%$%self.irritants177955177963%_))
                           (_%$%tl177961177989%_
                            (##cdr _%$%self.irritants177955177963%_)))
                       (let* ((_%stx177992%_ _%$%hd177960177987%_)
                              (_%rest177994%_ _%$%tl177961177989%_))
                         (_%$%K177959177984%_ _%rest177994%_ _%stx177992%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%$%cont177995177997%_
                          (##unchecked-structure-ref
                           _%self177850%_
                           '1
                           '#f
                           '#f)))
                     (if _%$%cont177995177997%_
                         (let ((_%cont177999%_ _%$%cont177995177997%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont177999%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port177847%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass177709%_ SyntaxError::t) (_%klass177714%_ _%klass177709%_))
      (__seal-class! _%klass177714%_))
    (define make-syntax-error
      (lambda (_%message177702%_
               _%irritants177703%_
               _%where177704%_
               _%context177705%_
               _%marks177706%_
               _%phi177707%_)
        (let ((__obj178224
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj178224 _%message177702%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj178224
           _%irritants177703%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj178224 _%where177704%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj178224 _%context177705%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj178224 _%marks177706%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj178224 _%phi177707%_ '6 '#f '#f)
          __obj178224)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where177697%_
               _%message177698%_
               _%stx177699%_
               .
               _%details177700%_)
        (raise (make-syntax-error
                _%message177698%_
                (cons _%stx177699%_ _%details177700%_)
                _%where177697%_
                '#f
                '#f
                '#f))))
    (define AST::t
      (make-class-type
       'gerbil#AST::t
       'syntax
       (list)
       '(e source)
       (cons (cons 'struct: '#t) '((print: e)))
       '#f))
    (define AST? (__make-class-predicate AST::t))
    (define make-AST
      (lambda _%$args177694%_ (apply make-instance AST::t _%$args177694%_)))
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
      (lambda (_%stx177692%_)
        (if (##structure-instance-of? _%stx177692%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx177692%_ '1 '#f '#f)
            _%stx177692%_)))
    (define __AST-source
      (lambda (_%stx177683%_)
        (let _%lp177685%_ ((_%src177687%_ _%stx177683%_))
          (if (##structure-instance-of? _%src177687%_ 'gerbil#AST::t)
              (_%lp177685%_
               (##unchecked-structure-ref _%src177687%_ '2 '#f '#f))
              (if (##locat? _%src177687%_) _%src177687%_ '#f)))))
    (define __AST
      (lambda (_%e177675%_ _%src-stx177676%_)
        (let ((_%src177678%_ (__AST-source _%src-stx177676%_)))
          (if (or (##structure-instance-of? _%e177675%_ 'gerbil#AST::t)
                  (not _%src177678%_))
              _%e177675%_
              (##structure AST::t _%e177675%_ _%src177678%_)))))
    (define __AST-eq?
      (lambda (_%stx177672%_ _%obj177673%_)
        (eq? (__AST-e _%stx177672%_) _%obj177673%_)))
    (define __AST-pair?
      (lambda (_%stx177670%_) (pair? (__AST-e _%stx177670%_))))
    (define __AST-null?
      (lambda (_%stx177668%_) (null? (__AST-e _%stx177668%_))))
    (define __AST-datum?
      (lambda (_%stx177649%_)
        (let* ((_%e177651%_ (__AST-e _%stx177649%_))
               (_%$e177653%_ (number? _%e177651%_)))
          (if _%$e177653%_
              _%$e177653%_
              (let ((_%$e177656%_ (string? _%e177651%_)))
                (if _%$e177656%_
                    _%$e177656%_
                    (let ((_%$e177659%_ (char? _%e177651%_)))
                      (if _%$e177659%_
                          _%$e177659%_
                          (let ((_%$e177662%_ (keyword? _%e177651%_)))
                            (if _%$e177662%_
                                _%$e177662%_
                                (let ((_%$e177665%_ (boolean? _%e177651%_)))
                                  (if _%$e177665%_
                                      _%$e177665%_
                                      (eq? _%e177651%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx177647%_) (symbol? (__AST-e _%stx177647%_))))
    (define __AST-id-list?__%
      (lambda (_%stx177598%_ _%tail?177599%_)
        (let _%lp177601%_ ((_%rest177603%_ _%stx177598%_))
          (let* ((_%$e177605%_ _%rest177603%_)
                 (_%$%$E177607177620%_
                  (lambda ()
                    (let* ((_%$%$E177608177615%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e177605%_)))
                           (_%rest177618%_ _%$e177605%_))
                      (_%tail?177599%_ _%rest177618%_)))))
            (if (__AST-pair? _%$e177605%_)
                (let* ((_%$%$tgt177609177623%_ (__AST-e _%$e177605%_))
                       (_%$%$hd177610177626%_ (##car _%$%$tgt177609177623%_))
                       (_%$%$tl177611177629%_ (##cdr _%$%$tgt177609177623%_))
                       (_%hd177633%_ _%$%$hd177610177626%_)
                       (_%rest177635%_ _%$%$tl177611177629%_))
                  (if (__AST-id? _%hd177633%_)
                      (_%lp177601%_ _%rest177635%_)
                      '#f))
                (_%$%$E177607177620%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx177640%_)
        (let ((_%tail?177642%_ __AST-null?))
          (__AST-id-list?__% _%stx177640%_ _%tail?177642%_))))
    (define __AST-id-list?
      (lambda _g178226_
        (let ((_g178227_ (##length _g178226_)))
          (cond ((##fx= _g178227_ 1) (apply __AST-id-list?__0 _g178226_))
                ((##fx= _g178227_ 2) (apply __AST-id-list?__% _g178226_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g178226_))))))
    (define __AST-bind-list?
      (lambda (_%stx177590%_)
        (__AST-id-list?__%
         _%stx177590%_
         (lambda (_%e177592%_)
           (let ((_%$e177594%_ (__AST-null? _%e177592%_)))
             (if _%$e177594%_ _%$e177594%_ (__AST-id? _%e177592%_)))))))
    (define __AST-list?__%
      (lambda (_%stx177543%_ _%tail?177544%_)
        (let _%lp177546%_ ((_%rest177548%_ _%stx177543%_))
          (let* ((_%$e177550%_ _%rest177548%_)
                 (_%$%$E177552177565%_
                  (lambda ()
                    (let* ((_%$%$E177553177560%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e177550%_)))
                           (_%rest177563%_ _%$e177550%_))
                      (_%tail?177544%_ _%rest177563%_)))))
            (if (__AST-pair? _%$e177550%_)
                (let* ((_%$%$tgt177554177568%_ (__AST-e _%$e177550%_))
                       (_%$%$hd177555177571%_ (##car _%$%$tgt177554177568%_))
                       (_%$%$tl177556177574%_ (##cdr _%$%$tgt177554177568%_))
                       (_%rest177578%_ _%$%$tl177556177574%_))
                  (_%lp177546%_ _%rest177578%_))
                (_%$%$E177552177565%_))))))
    (define __AST-list?__0
      (lambda (_%stx177583%_)
        (let ((_%tail?177585%_ __AST-null?))
          (__AST-list?__% _%stx177583%_ _%tail?177585%_))))
    (define __AST-list?
      (lambda _g178228_
        (let ((_g178229_ (##length _g178228_)))
          (cond ((##fx= _g178229_ 1) (apply __AST-list?__0 _g178228_))
                ((##fx= _g178229_ 2) (apply __AST-list?__% _g178228_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g178228_))))))
    (define __AST->list
      (lambda (_%stx177508%_)
        (let* ((_%$e177510%_ _%stx177508%_)
               (_%$%$E177512177525%_
                (lambda ()
                  (let* ((_%$%$E177513177520%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e177510%_)))
                         (_%rest177523%_ _%$e177510%_))
                    (__AST-e _%rest177523%_)))))
          (if (__AST-pair? _%$e177510%_)
              (let* ((_%$%$tgt177514177528%_ (__AST-e _%$e177510%_))
                     (_%$%$hd177515177531%_ (##car _%$%$tgt177514177528%_))
                     (_%$%$tl177516177534%_ (##cdr _%$%$tgt177514177528%_))
                     (_%hd177538%_ _%$%$hd177515177531%_)
                     (_%rest177540%_ _%$%$tl177516177534%_))
                (cons _%hd177538%_ (__AST->list _%rest177540%_)))
              (_%$%$E177512177525%_)))))
    (define __AST->datum
      (lambda (_%stx177501%_)
        (if (##structure-instance-of? _%stx177501%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx177501%_))
            (if (pair? _%stx177501%_)
                (cons (__AST->datum (##car _%stx177501%_))
                      (__AST->datum (##cdr _%stx177501%_)))
                (if (vector? _%stx177501%_)
                    (vector-map __AST->datum _%stx177501%_)
                    (if (box? _%stx177501%_)
                        (box (__AST->datum (unbox _%stx177501%_)))
                        _%stx177501%_))))))
    (define get-readenv
      (lambda (_%port177499%_)
        (##make-readenv
         _%port177499%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in177487%_)
        (let ((_%e177489%_ (##read-datum-or-eof (get-readenv _%in177487%_))))
          (if (eof-object? (__AST-e _%e177489%_))
              (__AST-e _%e177489%_)
              _%e177489%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in177495%_ (current-input-port)))
          (read-syntax__% _%in177495%_))))
    (define read-syntax
      (lambda _g178230_
        (let ((_g178231_ (##length _g178230_)))
          (cond ((##fx= _g178231_ 0) (apply read-syntax__0 _g178230_))
                ((##fx= _g178231_ 1) (apply read-syntax__% _g178230_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g178230_))))))
    (define read-syntax-from-file
      (lambda (_%path177482%_)
        (let ((_%r177484%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path177482%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r177484%_)
              (cdr (__AST-e (vector-ref _%r177484%_ '1)))
              (error (err-code->string _%r177484%_) _%path177482%_)))))
    (define __wrap-syntax
      (lambda (_%re177479%_ _%e177480%_)
        (if (eof-object? _%e177480%_)
            _%e177480%_
            (##structure AST::t _%e177480%_ (##readenv->locat _%re177479%_)))))
    (define __unwrap-syntax
      (lambda (_%re177476%_ _%e177477%_) (__AST-e _%e177477%_)))
    (define __pp-syntax
      (lambda (_%stx177474%_) (pp (__AST->datum _%stx177474%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt177472%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt177472%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt177472%_ '@list)
          (macro-readtable-brace-handler-set! _%rt177472%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt177472%_
           '#\!
           __read-sharp-bang)
          _%rt177472%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt177468%_ _%kw177469%_)
        (macro-readtable-bracket-handler-set! _%rt177468%_ _%kw177469%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt177465%_ _%kw177466%_)
        (macro-readtable-brace-handler-set! _%rt177465%_ _%kw177466%_)))
    (define __read-sharp-bang
      (lambda (_%re177456%_ _%next177457%_ _%start-pos177458%_)
        (if (eq? _%start-pos177458%_ '0)
            (let* ((_%line177460%_
                    (##read-line
                     (macro-readenv-port _%re177456%_)
                     '#\newline
                     '#f
                     (##greatest-fixnum)))
                   (_%script-line177462%_
                    (substring
                     _%line177460%_
                     '1
                     (string-length _%line177460%_))))
              (macro-readenv-script-line-set!
               _%re177456%_
               _%script-line177462%_)
              (##script-marker))
            (##read-sharp-bang
             _%re177456%_
             _%next177457%_
             _%start-pos177458%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj177454%_)
        (if (source-location? _%obj177454%_)
            (string? (##locat-container _%obj177454%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj177452%_)
        (if (##locat? _%obj177452%_)
            (##container->path (##locat-container _%obj177452%_))
            '#f)))))
