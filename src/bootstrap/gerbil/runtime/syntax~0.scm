(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/syntax::timestamp 1789552477)
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
      (lambda _%$args177965%_
        (apply make-instance SyntaxError::t _%$args177965%_)))
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
      (lambda (_%self177684%_ _%port177685%_)
        (let ((_%self177688%_ _%self177684%_))
          (letrec ((_%location177699%_
                    (lambda ()
                      (letrec ((_%from-irritants177840%_
                                (lambda ()
                                  (let _%lp177925%_ ((_%rest177927%_
                                                      (##unchecked-structure-ref
                                                       _%self177688%_
                                                       '3
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest177928177936%_
                                            _%rest177927%_)
                                           (_%$%else177930177944%_
                                            (lambda () '#f))
                                           (_%$%K177932177953%_
                                            (lambda (_%rest177947%_
                                                     _%hd177948%_)
                                              (let ((_%$e177950%_
                                                     (__AST-source
                                                      _%hd177948%_)))
                                                (if _%$e177950%_
                                                    _%$e177950%_
                                                    (_%lp177925%_
                                                     _%rest177947%_))))))
                                      (if (pair? _%$%rest177928177936%_)
                                          (let ((_%$%hd177933177956%_
                                                 (##car _%$%rest177928177936%_))
                                                (_%$%tl177934177958%_
                                                 (##cdr _%$%rest177928177936%_)))
                                            (let* ((_%hd177961%_
                                                    _%$%hd177933177956%_)
                                                   (_%rest177963%_
                                                    _%$%tl177934177958%_))
                                              (_%$%K177932177953%_
                                               _%rest177963%_
                                               _%hd177961%_)))
                                          (_%$%else177930177944%_))))))
                               (_%from-context177841%_
                                (lambda ()
                                  (let _%lp177847%_ ((_%rest177849%_
                                                      (##unchecked-structure-ref
                                                       _%self177688%_
                                                       '4
                                                       '#f
                                                       '#f)))
                                    (let* ((_%$%rest177850177858%_
                                            _%rest177849%_)
                                           (_%$%else177852177866%_
                                            (lambda () '#f))
                                           (_%$%K177854177912%_
                                            (lambda (_%rest177869%_
                                                     _%hd177870%_)
                                              (let* ((_%$%hd177871177881%_
                                                      _%hd177870%_)
                                                     (_%$%else177873177889%_
                                                      (lambda ()
                                                        (_%lp177847%_
                                                         _%rest177869%_)))
                                                     (_%$%K177875177897%_
                                                      (lambda (_%loc177892%_)
                                                        (let ((_%$e177894%_
                                                               (__AST-source
                                                                _%loc177892%_)))
                                                          (if _%$e177894%_
                                                              _%$e177894%_
                                                              (_%lp177847%_
                                                               _%rest177869%_))))))
                                                (if (pair? _%$%hd177871177881%_)
                                                    (let ((_%$%hd177876177900%_
                                                           (##car _%$%hd177871177881%_))
                                                          (_%$%tl177877177902%_
                                                           (##cdr _%$%hd177871177881%_)))
                                                      (if (##eq? _%$%hd177876177900%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '@)
                  (if (pair? _%$%tl177877177902%_)
                      (let ((_%$%hd177878177905%_ (##car _%$%tl177877177902%_))
                            (_%$%tl177879177907%_
                             (##cdr _%$%tl177877177902%_)))
                        (let ((_%loc177910%_ _%$%hd177878177905%_))
                          (if (null? _%$%tl177879177907%_)
                              (_%$%K177875177897%_ _%loc177910%_)
                              (_%$%else177873177889%_))))
                      (_%$%else177873177889%_))
                  (_%$%else177873177889%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$%else177873177889%_))))))
                                      (if (pair? _%$%rest177850177858%_)
                                          (let ((_%$%hd177855177915%_
                                                 (##car _%$%rest177850177858%_))
                                                (_%$%tl177856177917%_
                                                 (##cdr _%$%rest177850177858%_)))
                                            (let* ((_%hd177920%_
                                                    _%$%hd177855177915%_)
                                                   (_%rest177922%_
                                                    _%$%tl177856177917%_))
                                              (_%$%K177854177912%_
                                               _%rest177922%_
                                               _%hd177920%_)))
                                          (_%$%else177852177866%_)))))))
                        (let ((_%$e177843%_ (_%from-irritants177840%_)))
                          (if _%$e177843%_
                              _%$e177843%_
                              (_%from-context177841%_)))))))
            (call-with-parameters__1
             (lambda ()
               (newline)
               (display '"*** ERROR IN ")
               (let ((_%$e177702%_ (_%location177699%_)))
                 (if _%$e177702%_
                     (##display-locat _%$e177702%_ '#t _%port177685%_)
                     (display '"?")))
               (newline)
               (displayln
                '"--- Syntax Error: "
                (##unchecked-structure-ref _%self177688%_ '2 '#f '#f))
               (let ((_%$e177708%_
                      (##unchecked-structure-ref _%self177688%_ '4 '#f '#f)))
                 (if _%$e177708%_
                     (let ()
                       (displayln '"--- Context: ")
                       (let _%lp177713%_ ((_%rest177715%_ _%$e177708%_))
                         (let* ((_%$%rest177716177724%_ _%rest177715%_)
                                (_%$%else177718177732%_ (lambda () '#!void))
                                (_%$%K177720177782%_
                                 (lambda (_%rest177735%_ _%hd177736%_)
                                   (let* ((_%$%hd177737177747%_ _%hd177736%_)
                                          (_%$%else177739177755%_
                                           (lambda ()
                                             (displayln '" at " _%hd177736%_)
                                             (_%lp177713%_ _%rest177735%_)))
                                          (_%$%K177741177767%_
                                           (lambda (_%ctx177758%_)
                                             (let ((_%$e177760%_
                                                    (__AST-source
                                                     _%ctx177758%_)))
                                               (if _%$e177760%_
                                                   (let ()
                                                     (display '" at ")
                                                     (##display-locat
                                                      _%$e177760%_
                                                      '#t
                                                      _%port177685%_)
                                                     (newline)
                                                     (_%lp177713%_
                                                      _%rest177735%_))
                                                   (if (##structure-instance-of?
                                                        _%ctx177758%_
                                                        'gerbil#AST::t)
                                                       (let ()
                                                         (display '" at ")
                                                         (__pp-syntax
                                                          _%ctx177758%_)
                                                         (_%lp177713%_
                                                          _%rest177735%_))
                                                       (_%lp177713%_
                                                        _%rest177735%_)))))))
                                     (if (pair? _%$%hd177737177747%_)
                                         (let ((_%$%hd177742177770%_
                                                (##car _%$%hd177737177747%_))
                                               (_%$%tl177743177772%_
                                                (##cdr _%$%hd177737177747%_)))
                                           (if (##eq? _%$%hd177742177770%_ '@)
                                               (if (pair? _%$%tl177743177772%_)
                                                   (let ((_%$%hd177744177775%_
                                                          (##car _%$%tl177743177772%_))
                                                         (_%$%tl177745177777%_
                                                          (##cdr _%$%tl177743177772%_)))
                                                     (let ((_%ctx177780%_
                                                            _%$%hd177744177775%_))
                                                       (if (null? _%$%tl177745177777%_)
                                                           (_%$%K177741177767%_
                                                            _%ctx177780%_)
                                                           (_%$%else177739177755%_))))
                                                   (_%$%else177739177755%_))
                                               (_%$%else177739177755%_)))
                                         (_%$%else177739177755%_))))))
                           (if (pair? _%$%rest177716177724%_)
                               (let ((_%$%hd177721177785%_
                                      (##car _%$%rest177716177724%_))
                                     (_%$%tl177722177787%_
                                      (##cdr _%$%rest177716177724%_)))
                                 (let* ((_%hd177790%_ _%$%hd177721177785%_)
                                        (_%rest177792%_ _%$%tl177722177787%_))
                                   (_%$%K177720177782%_
                                    _%rest177792%_
                                    _%hd177790%_)))
                               '#!void))))
                     '#!void))
               (let* ((_%$%self.irritants177793177801%_
                       (##unchecked-structure-ref _%self177688%_ '3 '#f '#f))
                      (_%$%else177795177809%_ (lambda () '#!void))
                      (_%$%K177797177822%_
                       (lambda (_%rest177812%_ _%stx177813%_)
                         (display '"... form:   ")
                         (__pp-syntax _%stx177813%_)
                         (for-each
                          (lambda (_%detail177815%_)
                            (display '"... detail: ")
                            (##write (__AST->datum _%detail177815%_))
                            (let ((_%$e177817%_
                                   (__AST-source _%detail177815%_)))
                              (if _%$e177817%_
                                  (let ()
                                    (display '" at ")
                                    (##display-locat
                                     _%$e177817%_
                                     '#t
                                     _%port177685%_))
                                  '#!void))
                            (newline))
                          _%rest177812%_))))
                 (if (pair? _%$%self.irritants177793177801%_)
                     (let ((_%$%hd177798177825%_
                            (##car _%$%self.irritants177793177801%_))
                           (_%$%tl177799177827%_
                            (##cdr _%$%self.irritants177793177801%_)))
                       (let* ((_%stx177830%_ _%$%hd177798177825%_)
                              (_%rest177832%_ _%$%tl177799177827%_))
                         (_%$%K177797177822%_ _%rest177832%_ _%stx177830%_)))
                     '#!void))
               (if __DEBUG
                   (let ((_%$%cont177833177835%_
                          (##unchecked-structure-ref
                           _%self177688%_
                           '1
                           '#f
                           '#f)))
                     (if _%$%cont177833177835%_
                         (let ((_%cont177837%_ _%$%cont177833177835%_))
                           (display '"--- continuation backtrace:")
                           (newline)
                           (display-continuation-backtrace _%cont177837%_))
                         '#f))
                   '#!void))
             current-output-port
             _%port177685%_)))))
    (__bind-method!__%
     SyntaxError::t
     'display-exception
     SyntaxError::display-exception
     '#f)
    (let* ((_%klass177547%_ SyntaxError::t) (_%klass177552%_ _%klass177547%_))
      (__seal-class! _%klass177552%_))
    (define make-syntax-error
      (lambda (_%message177540%_
               _%irritants177541%_
               _%where177542%_
               _%context177543%_
               _%marks177544%_
               _%phi177545%_)
        (let ((__obj178062
               (##structure SyntaxError::t '#f '#f '#f '#f '#f '#f '#f)))
          (##unchecked-structure-set! __obj178062 _%message177540%_ '2 '#f '#f)
          (##unchecked-structure-set!
           __obj178062
           _%irritants177541%_
           '3
           '#f
           '#f)
          (##unchecked-structure-set! __obj178062 _%where177542%_ '4 '#f '#f)
          (##unchecked-structure-set! __obj178062 _%context177543%_ '5 '#f '#f)
          (##unchecked-structure-set! __obj178062 _%marks177544%_ '7 '#f '#f)
          (##unchecked-structure-set! __obj178062 _%phi177545%_ '6 '#f '#f)
          __obj178062)))
    (define syntax-error? SyntaxError?)
    (define __raise-syntax-error
      (lambda (_%where177535%_
               _%message177536%_
               _%stx177537%_
               .
               _%details177538%_)
        (raise (make-syntax-error
                _%message177536%_
                (cons _%stx177537%_ _%details177538%_)
                _%where177535%_
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
      (lambda _%$args177532%_ (apply make-instance AST::t _%$args177532%_)))
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
      (lambda (_%stx177530%_)
        (if (##structure-instance-of? _%stx177530%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx177530%_ '1 '#f '#f)
            _%stx177530%_)))
    (define __AST-source
      (lambda (_%stx177521%_)
        (let _%lp177523%_ ((_%src177525%_ _%stx177521%_))
          (if (##structure-instance-of? _%src177525%_ 'gerbil#AST::t)
              (_%lp177523%_
               (##unchecked-structure-ref _%src177525%_ '2 '#f '#f))
              (if (##locat? _%src177525%_) _%src177525%_ '#f)))))
    (define __AST
      (lambda (_%e177513%_ _%src-stx177514%_)
        (let ((_%src177516%_ (__AST-source _%src-stx177514%_)))
          (if (or (##structure-instance-of? _%e177513%_ 'gerbil#AST::t)
                  (not _%src177516%_))
              _%e177513%_
              (##structure AST::t _%e177513%_ _%src177516%_)))))
    (define __AST-eq?
      (lambda (_%stx177510%_ _%obj177511%_)
        (eq? (__AST-e _%stx177510%_) _%obj177511%_)))
    (define __AST-pair?
      (lambda (_%stx177508%_) (pair? (__AST-e _%stx177508%_))))
    (define __AST-null?
      (lambda (_%stx177506%_) (null? (__AST-e _%stx177506%_))))
    (define __AST-datum?
      (lambda (_%stx177487%_)
        (let* ((_%e177489%_ (__AST-e _%stx177487%_))
               (_%$e177491%_ (number? _%e177489%_)))
          (if _%$e177491%_
              _%$e177491%_
              (let ((_%$e177494%_ (string? _%e177489%_)))
                (if _%$e177494%_
                    _%$e177494%_
                    (let ((_%$e177497%_ (char? _%e177489%_)))
                      (if _%$e177497%_
                          _%$e177497%_
                          (let ((_%$e177500%_ (keyword? _%e177489%_)))
                            (if _%$e177500%_
                                _%$e177500%_
                                (let ((_%$e177503%_ (boolean? _%e177489%_)))
                                  (if _%$e177503%_
                                      _%$e177503%_
                                      (eq? _%e177489%_ '#!void)))))))))))))
    (define __AST-id?
      (lambda (_%stx177485%_) (symbol? (__AST-e _%stx177485%_))))
    (define __AST-id-list?__%
      (lambda (_%stx177436%_ _%tail?177437%_)
        (let _%lp177439%_ ((_%rest177441%_ _%stx177436%_))
          (let* ((_%$e177443%_ _%rest177441%_)
                 (_%$%$E177445177458%_
                  (lambda ()
                    (let* ((_%$%$E177446177453%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e177443%_)))
                           (_%rest177456%_ _%$e177443%_))
                      (_%tail?177437%_ _%rest177456%_)))))
            (if (__AST-pair? _%$e177443%_)
                (let* ((_%$%$tgt177447177461%_ (__AST-e _%$e177443%_))
                       (_%$%$hd177448177464%_ (##car _%$%$tgt177447177461%_))
                       (_%$%$tl177449177467%_ (##cdr _%$%$tgt177447177461%_))
                       (_%hd177471%_ _%$%$hd177448177464%_)
                       (_%rest177473%_ _%$%$tl177449177467%_))
                  (if (__AST-id? _%hd177471%_)
                      (_%lp177439%_ _%rest177473%_)
                      '#f))
                (_%$%$E177445177458%_))))))
    (define __AST-id-list?__0
      (lambda (_%stx177478%_)
        (let ((_%tail?177480%_ __AST-null?))
          (__AST-id-list?__% _%stx177478%_ _%tail?177480%_))))
    (define __AST-id-list?
      (lambda _g178064_
        (let ((_g178065_ (##length _g178064_)))
          (cond ((##fx= _g178065_ 1) (apply __AST-id-list?__0 _g178064_))
                ((##fx= _g178065_ 2) (apply __AST-id-list?__% _g178064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-id-list?
                  _g178064_))))))
    (define __AST-bind-list?
      (lambda (_%stx177428%_)
        (__AST-id-list?__%
         _%stx177428%_
         (lambda (_%e177430%_)
           (let ((_%$e177432%_ (__AST-null? _%e177430%_)))
             (if _%$e177432%_ _%$e177432%_ (__AST-id? _%e177430%_)))))))
    (define __AST-list?__%
      (lambda (_%stx177381%_ _%tail?177382%_)
        (let _%lp177384%_ ((_%rest177386%_ _%stx177381%_))
          (let* ((_%$e177388%_ _%rest177386%_)
                 (_%$%$E177390177403%_
                  (lambda ()
                    (let* ((_%$%$E177391177398%_
                            (lambda ()
                              (__raise-syntax-error
                               '#f
                               '"Bad syntax; malformed ast clause"
                               _%$e177388%_)))
                           (_%rest177401%_ _%$e177388%_))
                      (_%tail?177382%_ _%rest177401%_)))))
            (if (__AST-pair? _%$e177388%_)
                (let* ((_%$%$tgt177392177406%_ (__AST-e _%$e177388%_))
                       (_%$%$hd177393177409%_ (##car _%$%$tgt177392177406%_))
                       (_%$%$tl177394177412%_ (##cdr _%$%$tgt177392177406%_))
                       (_%rest177416%_ _%$%$tl177394177412%_))
                  (_%lp177384%_ _%rest177416%_))
                (_%$%$E177390177403%_))))))
    (define __AST-list?__0
      (lambda (_%stx177421%_)
        (let ((_%tail?177423%_ __AST-null?))
          (__AST-list?__% _%stx177421%_ _%tail?177423%_))))
    (define __AST-list?
      (lambda _g178066_
        (let ((_g178067_ (##length _g178066_)))
          (cond ((##fx= _g178067_ 1) (apply __AST-list?__0 _g178066_))
                ((##fx= _g178067_ 2) (apply __AST-list?__% _g178066_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __AST-list?
                  _g178066_))))))
    (define __AST->list
      (lambda (_%stx177346%_)
        (let* ((_%$e177348%_ _%stx177346%_)
               (_%$%$E177350177363%_
                (lambda ()
                  (let* ((_%$%$E177351177358%_
                          (lambda ()
                            (__raise-syntax-error
                             '#f
                             '"Bad syntax; malformed ast clause"
                             _%$e177348%_)))
                         (_%rest177361%_ _%$e177348%_))
                    (__AST-e _%rest177361%_)))))
          (if (__AST-pair? _%$e177348%_)
              (let* ((_%$%$tgt177352177366%_ (__AST-e _%$e177348%_))
                     (_%$%$hd177353177369%_ (##car _%$%$tgt177352177366%_))
                     (_%$%$tl177354177372%_ (##cdr _%$%$tgt177352177366%_))
                     (_%hd177376%_ _%$%$hd177353177369%_)
                     (_%rest177378%_ _%$%$tl177354177372%_))
                (cons _%hd177376%_ (__AST->list _%rest177378%_)))
              (_%$%$E177350177363%_)))))
    (define __AST->datum
      (lambda (_%stx177339%_)
        (if (##structure-instance-of? _%stx177339%_ 'gerbil#AST::t)
            (__AST->datum (__AST-e _%stx177339%_))
            (if (pair? _%stx177339%_)
                (cons (__AST->datum (##car _%stx177339%_))
                      (__AST->datum (##cdr _%stx177339%_)))
                (if (vector? _%stx177339%_)
                    (vector-map __AST->datum _%stx177339%_)
                    (if (box? _%stx177339%_)
                        (box (__AST->datum (unbox _%stx177339%_)))
                        _%stx177339%_))))))
    (define get-readenv
      (lambda (_%port177337%_)
        (##make-readenv
         _%port177337%_
         (current-readtable)
         __wrap-syntax
         __unwrap-syntax
         '#f
         '()
         '#f)))
    (define read-syntax__%
      (lambda (_%in177325%_)
        (let ((_%e177327%_ (##read-datum-or-eof (get-readenv _%in177325%_))))
          (if (eof-object? (__AST-e _%e177327%_))
              (__AST-e _%e177327%_)
              _%e177327%_))))
    (define read-syntax__0
      (lambda ()
        (let ((_%in177333%_ (current-input-port)))
          (read-syntax__% _%in177333%_))))
    (define read-syntax
      (lambda _g178068_
        (let ((_g178069_ (##length _g178068_)))
          (cond ((##fx= _g178069_ 0) (apply read-syntax__0 _g178068_))
                ((##fx= _g178069_ 1) (apply read-syntax__% _g178068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  read-syntax
                  _g178068_))))))
    (define read-syntax-from-file
      (lambda (_%path177320%_)
        (let ((_%r177322%_
               (##read-all-as-a-begin-expr-from-path
                (path-normalize _%path177320%_)
                (current-readtable)
                __wrap-syntax
                __unwrap-syntax)))
          (if (vector? _%r177322%_)
              (cdr (__AST-e (vector-ref _%r177322%_ '1)))
              (error (err-code->string _%r177322%_) _%path177320%_)))))
    (define __wrap-syntax
      (lambda (_%re177317%_ _%e177318%_)
        (if (eof-object? _%e177318%_)
            _%e177318%_
            (##structure AST::t _%e177318%_ (##readenv->locat _%re177317%_)))))
    (define __unwrap-syntax
      (lambda (_%re177314%_ _%e177315%_) (__AST-e _%e177315%_)))
    (define __pp-syntax
      (lambda (_%stx177312%_) (pp (__AST->datum _%stx177312%_))))
    (define __make-readtable
      (lambda ()
        (let ((_%rt177310%_ (##make-standard-readtable)))
          (macro-readtable-write-extended-read-macros?-set! _%rt177310%_ '#t)
          (macro-readtable-bracket-handler-set! _%rt177310%_ '@list)
          (macro-readtable-brace-handler-set! _%rt177310%_ '@method)
          (##readtable-char-sharp-handler-set!
           _%rt177310%_
           '#\!
           __read-sharp-bang)
          _%rt177310%_)))
    (define __readtable-bracket-keyword-set!
      (lambda (_%rt177306%_ _%kw177307%_)
        (macro-readtable-bracket-handler-set! _%rt177306%_ _%kw177307%_)))
    (define __readtable-brace-keyword-set!
      (lambda (_%rt177303%_ _%kw177304%_)
        (macro-readtable-brace-handler-set! _%rt177303%_ _%kw177304%_)))
    (define __read-sharp-bang
      (lambda (_%re177294%_ _%next177295%_ _%start-pos177296%_)
        (if (eq? _%start-pos177296%_ '0)
            (let* ((_%line177298%_
                    (##read-line
                     (macro-readenv-port _%re177294%_)
                     '#\newline
                     '#f
                     (##greatest-fixnum)))
                   (_%script-line177300%_
                    (substring
                     _%line177298%_
                     '1
                     (string-length _%line177298%_))))
              (macro-readenv-script-line-set!
               _%re177294%_
               _%script-line177300%_)
              (##script-marker))
            (##read-sharp-bang
             _%re177294%_
             _%next177295%_
             _%start-pos177296%_))))
    (set! ##readtable-setup-for-language! void)
    (define __*readtable* (__make-readtable))
    (define source-location? ##locat?)
    (define source-location-path?
      (lambda (_%obj177292%_)
        (if (source-location? _%obj177292%_)
            (string? (##locat-container _%obj177292%_))
            '#f)))
    (define source-location-path
      (lambda (_%obj177290%_)
        (if (##locat? _%obj177290%_)
            (##container->path (##locat-container _%obj177290%_))
            '#f)))))
