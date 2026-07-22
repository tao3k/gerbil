(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1784758124)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (__make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#identifier-wrap? (__make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _%$args183163%_
        (apply make-instance gx#identifier-wrap::t _%$args183163%_)))
    (define gx#identifier-wrap-marks
      (__make-class-slot-accessor gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e
      (__make-class-slot-accessor gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source
      (__make-class-slot-accessor gx#identifier-wrap::t 'source))
    (define gx#identifier-wrap-marks-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'marks))
    (define gx#identifier-wrap-e-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'e))
    (define gx#identifier-wrap-source-set!
      (__make-class-slot-mutator gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source
      (__make-class-slot-unchecked-accessor gx#identifier-wrap::t 'source))
    (define gx#&identifier-wrap-marks-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'marks))
    (define gx#&identifier-wrap-e-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'e))
    (define gx#&identifier-wrap-source-set!
      (__make-class-slot-unchecked-mutator gx#identifier-wrap::t 'source))
    (define gx#syntax-wrap::t
      (__make-class-type
       'gx#syntax-wrap::t
       'syntax
       (list gx#AST::t)
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-wrap? (__make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _%$args183160%_
        (apply make-instance gx#syntax-wrap::t _%$args183160%_)))
    (define gx#syntax-wrap-mark
      (__make-class-slot-accessor gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e (__make-class-slot-accessor gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source
      (__make-class-slot-accessor gx#syntax-wrap::t 'source))
    (define gx#syntax-wrap-mark-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'mark))
    (define gx#syntax-wrap-e-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'e))
    (define gx#syntax-wrap-source-set!
      (__make-class-slot-mutator gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source
      (__make-class-slot-unchecked-accessor gx#syntax-wrap::t 'source))
    (define gx#&syntax-wrap-mark-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'mark))
    (define gx#&syntax-wrap-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'e))
    (define gx#&syntax-wrap-source-set!
      (__make-class-slot-unchecked-mutator gx#syntax-wrap::t 'source))
    (define gx#syntax-quote::t
      (__make-class-type
       'gx#syntax-quote::t
       'syntax
       (list gx#AST::t)
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-quote? (__make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _%$args183157%_
        (apply make-instance gx#syntax-quote::t _%$args183157%_)))
    (define gx#syntax-quote-context
      (__make-class-slot-accessor gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks
      (__make-class-slot-accessor gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e
      (__make-class-slot-accessor gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source
      (__make-class-slot-accessor gx#syntax-quote::t 'source))
    (define gx#syntax-quote-context-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'context))
    (define gx#syntax-quote-marks-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'marks))
    (define gx#syntax-quote-e-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'e))
    (define gx#syntax-quote-source-set!
      (__make-class-slot-mutator gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source
      (__make-class-slot-unchecked-accessor gx#syntax-quote::t 'source))
    (define gx#&syntax-quote-context-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'context))
    (define gx#&syntax-quote-marks-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'marks))
    (define gx#&syntax-quote-e-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'e))
    (define gx#&syntax-quote-source-set!
      (__make-class-slot-unchecked-mutator gx#syntax-quote::t 'source))
    (define gx#identifier?
      (lambda (_%stx183155%_) (symbol? (gx#stx-e _%stx183155%_))))
    (define gx#identifier-quote?
      (lambda (_%stx183153%_)
        (if (##structure-direct-instance-of? _%stx183153%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx183153%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx183148%_)
        (if (##structure-direct-instance-of? _%stx183148%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx183148%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx183148%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx183143%_)
        (if (##structure-direct-instance-of? _%stx183143%_ 'gx#syntax-quote::t)
            _%stx183143%_
            (if (##structure-direct-instance-of?
                 _%stx183143%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx183143%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx183117%_)
        (if (##structure-direct-instance-of? _%stx183117%_ 'gx#syntax-wrap::t)
            (let _%lp183120%_ ((_%e183122%_
                                (##unchecked-structure-ref
                                 _%stx183117%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks183123%_
                                (cons (##unchecked-structure-ref
                                       _%stx183117%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e183122%_)
                  (let ((_%$e183126%_
                         (##type-id (##structure-type _%e183122%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e183126%_)
                        (_%lp183120%_
                         (##unchecked-structure-ref _%e183122%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e183122%_ '3 '#f '#f)
                          _%marks183123%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e183126%_)
                                (eq? 'gx#identifier-wrap::t _%$e183126%_))
                            (##unchecked-structure-ref _%e183122%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e183126%_)
                                (_%lp183120%_
                                 (##unchecked-structure-ref
                                  _%e183122%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks183123%_)
                                _%e183122%_))))
                  (if (null? _%marks183123%_)
                      _%e183122%_
                      (if (pair? _%e183122%_)
                          (cons (gx#stx-wrap
                                 (##car _%e183122%_)
                                 _%marks183123%_)
                                (gx#stx-wrap
                                 (##cdr _%e183122%_)
                                 _%marks183123%_))
                          (if (vector? _%e183122%_)
                              (vector-map
                               (lambda (_%$%g183134183136%_)
                                 (gx#stx-wrap
                                  _%$%g183134183136%_
                                  _%marks183123%_))
                               _%e183122%_)
                              (if (box? _%e183122%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e183122%_)
                                        _%marks183123%_))
                                  _%e183122%_))))))
            (if (##structure-instance-of? _%stx183117%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx183117%_ '1 '#f '#f)
                _%stx183117%_))))
    (define gx#syntax->datum
      (lambda (_%stx183110%_)
        (if (##structure-instance-of? _%stx183110%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx183110%_ '1 '#f '#f))
            (if (pair? _%stx183110%_)
                (cons (gx#syntax->datum (##car _%stx183110%_))
                      (gx#syntax->datum (##cdr _%stx183110%_)))
                (if (vector? _%stx183110%_)
                    (vector-map gx#syntax->datum _%stx183110%_)
                    (if (box? _%stx183110%_)
                        (box (gx#syntax->datum (unbox _%stx183110%_)))
                        _%stx183110%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx183044%_ _%datum183045%_ _%src183046%_ _%quote?183047%_)
        (letrec ((_%wrap-datum183049%_
                  (lambda (_%e183082%_ _%marks183083%_)
                    (_%wrap-inner183051%_
                     _%e183082%_
                     (lambda (_%$%g183084183086%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%$%g183084183086%_
                        _%src183046%_
                        _%marks183083%_)))))
                 (_%wrap-quote183050%_
                  (lambda (_%e183074%_ _%ctx183075%_ _%marks183076%_)
                    (_%wrap-inner183051%_
                     _%e183074%_
                     (lambda (_%$%g183077183079%_)
                       (##structure
                        gx#syntax-quote::t
                        _%$%g183077183079%_
                        _%src183046%_
                        _%ctx183075%_
                        _%marks183076%_)))))
                 (_%wrap-inner183051%_
                  (lambda (_%e183062%_ _%wrap-e183063%_)
                    (let _%recur183065%_ ((_%e183067%_ _%e183062%_))
                      (if (symbol? _%e183067%_)
                          (_%wrap-e183063%_ _%e183067%_)
                          (if (pair? _%e183067%_)
                              (cons (_%recur183065%_ (##car _%e183067%_))
                                    (_%recur183065%_ (##cdr _%e183067%_)))
                              (if (vector? _%e183067%_)
                                  (vector-map _%recur183065%_ _%e183067%_)
                                  (if (box? _%e183067%_)
                                      (box (_%recur183065%_
                                            (unbox _%e183067%_)))
                                      _%e183067%_)))))))
                 (_%wrap-outer183052%_
                  (lambda (_%e183060%_)
                    (if (##structure-instance-of? _%e183060%_ 'gerbil#AST::t)
                        _%e183060%_
                        (##structure gx#AST::t _%e183060%_ _%src183046%_)))))
          (if (##structure-instance-of? _%datum183045%_ 'gerbil#AST::t)
              _%datum183045%_
              (if (not _%stx183044%_)
                  (##structure gx#AST::t _%datum183045%_ _%src183046%_)
                  (if (gx#identifier? _%stx183044%_)
                      (let ((_%stx183057%_ (gx#stx-unwrap__0 _%stx183044%_)))
                        (_%wrap-outer183052%_
                         (if (##structure-direct-instance-of?
                              _%stx183057%_
                              'gx#syntax-quote::t)
                             (if _%quote?183047%_
                                 (_%wrap-quote183050%_
                                  _%datum183045%_
                                  (##unchecked-structure-ref
                                   _%stx183057%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx183057%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum183049%_
                                  _%datum183045%_
                                  (##unchecked-structure-ref
                                   _%stx183057%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum183049%_
                              _%datum183045%_
                              (##unchecked-structure-ref
                               _%stx183057%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx183044%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx183092%_ _%datum183093%_)
        (let* ((_%src183095%_ '#f) (_%quote?183097%_ '#t))
          (gx#datum->syntax__%
           _%stx183092%_
           _%datum183093%_
           _%src183095%_
           _%quote?183097%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx183099%_ _%datum183100%_ _%src183101%_)
        (let ((_%quote?183103%_ '#t))
          (gx#datum->syntax__%
           _%stx183099%_
           _%datum183100%_
           _%src183101%_
           _%quote?183103%_))))
    (define gx#datum->syntax
      (lambda _g183243_
        (let ((_g183244_ (##length _g183243_)))
          (cond ((##fx= _g183244_ 2) (apply gx#datum->syntax__0 _g183243_))
                ((##fx= _g183244_ 3) (apply gx#datum->syntax__1 _g183243_))
                ((##fx= _g183244_ 4) (apply gx#datum->syntax__% _g183243_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g183243_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx183010%_ _%marks183011%_)
        (let _%lp183013%_ ((_%e183015%_ _%stx183010%_)
                           (_%marks183016%_ _%marks183011%_)
                           (_%src183017%_ (gx#stx-source _%stx183010%_)))
          (if (##structure-direct-instance-of? _%e183015%_ 'gx#syntax-wrap::t)
              (_%lp183013%_
               (##unchecked-structure-ref _%e183015%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e183015%_ '3 '#f '#f)
                _%marks183016%_)
               (##unchecked-structure-ref _%e183015%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e183015%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks183016%_)
                      _%e183015%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e183015%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e183015%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e183015%_ '3 '#f '#f)
                        _%marks183016%_)))
                  (if (##structure-direct-instance-of?
                       _%e183015%_
                       'gx#syntax-quote::t)
                      _%e183015%_
                      (if (##structure-instance-of? _%e183015%_ 'gerbil#AST::t)
                          (_%lp183013%_
                           (##unchecked-structure-ref _%e183015%_ '1 '#f '#f)
                           _%marks183016%_
                           (##unchecked-structure-ref _%e183015%_ '2 '#f '#f))
                          (if (symbol? _%e183015%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e183015%_
                               _%src183017%_
                               (reverse _%marks183016%_))
                              (if (null? _%marks183016%_)
                                  _%e183015%_
                                  (if (pair? _%e183015%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e183015%_)
                                             _%marks183016%_)
                                            (gx#stx-wrap
                                             (##cdr _%e183015%_)
                                             _%marks183016%_))
                                      (if (vector? _%e183015%_)
                                          (vector-map
                                           (lambda (_%$%g183026183028%_)
                                             (gx#stx-wrap
                                              _%$%g183026183028%_
                                              _%marks183016%_))
                                           _%e183015%_)
                                          (if (box? _%e183015%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e183015%_)
                                                    _%marks183016%_))
                                              _%e183015%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx183036%_)
        (let ((_%marks183038%_ '()))
          (gx#stx-unwrap__% _%stx183036%_ _%marks183038%_))))
    (define gx#stx-unwrap
      (lambda _g183245_
        (let ((_g183246_ (##length _g183245_)))
          (cond ((##fx= _g183246_ 1) (apply gx#stx-unwrap__0 _g183245_))
                ((##fx= _g183246_ 2) (apply gx#stx-unwrap__% _g183245_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g183245_))))))
    (define gx#stx-wrap
      (lambda (_%stx183003%_ _%marks183004%_)
        (foldl__0
         (lambda (_%mark183006%_ _%stx183007%_)
           (gx#stx-apply-mark _%stx183007%_ _%mark183006%_))
         _%stx183003%_
         _%marks183004%_)))
    (define gx#stx-rewrap
      (lambda (_%stx182997%_ _%marks182998%_)
        (foldr__0
         (lambda (_%mark183000%_ _%stx183001%_)
           (gx#stx-apply-mark _%stx183001%_ _%mark183000%_))
         _%stx182997%_
         _%marks182998%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx182991%_ _%mark182992%_)
        (if (##structure-direct-instance-of? _%stx182991%_ 'gx#syntax-quote::t)
            _%stx182991%_
            (if (and (##structure-direct-instance-of?
                      _%stx182991%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark182992%_
                          (##unchecked-structure-ref
                           _%stx182991%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx182991%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx182991%_
                 (gx#stx-source _%stx182991%_)
                 _%mark182992%_)))))
    (define gx#apply-mark
      (lambda (_%mark182955%_ _%marks182956%_)
        (let* ((_%$%marks182957182965%_ _%marks182956%_)
               (_%$%else182959182973%_
                (lambda () (cons _%mark182955%_ _%marks182956%_)))
               (_%$%K182961182979%_
                (lambda (_%rest182976%_ _%hd182977%_)
                  (if (eq? _%mark182955%_ _%hd182977%_)
                      _%rest182976%_
                      (cons _%mark182955%_ _%marks182956%_)))))
          (if (pair? _%$%marks182957182965%_)
              (let ((_%$%hd182962182982%_ (##car _%$%marks182957182965%_))
                    (_%$%tl182963182984%_ (##cdr _%$%marks182957182965%_)))
                (let* ((_%hd182987%_ _%$%hd182962182982%_)
                       (_%rest182989%_ _%$%tl182963182984%_))
                  (_%$%K182961182979%_ _%rest182989%_ _%hd182987%_)))
              (_%$%else182959182973%_)))))
    (define gx#stx-e
      (lambda (_%stx182950%_)
        (if (##structure-direct-instance-of? _%stx182950%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx182950%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx182950%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx182950%_ '1 '#f '#f)
                _%stx182950%_))))
    (define gx#stx-source
      (lambda (_%stx182948%_)
        (if (##structure-instance-of? _%stx182948%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx182948%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx182942%_ _%src182943%_)
        (if (or (##structure-instance-of? _%stx182942%_ 'gerbil#AST::t)
                (not _%src182943%_))
            _%stx182942%_
            (##structure gx#AST::t _%stx182942%_ _%src182943%_))))
    (define gx#stx-datum?
      (lambda (_%stx182940%_) (gx#self-quoting? (gx#stx-e _%stx182940%_))))
    (define gx#self-quoting?
      (lambda (_%x182923%_)
        (let ((_%$e182925%_ (immediate? _%x182923%_)))
          (if _%$e182925%_
              _%$e182925%_
              (let ((_%$e182928%_ (number? _%x182923%_)))
                (if _%$e182928%_
                    _%$e182928%_
                    (let ((_%$e182931%_ (keyword? _%x182923%_)))
                      (if _%$e182931%_
                          _%$e182931%_
                          (let ((_%$e182934%_ (string? _%x182923%_)))
                            (if _%$e182934%_
                                _%$e182934%_
                                (let ((_%$e182937%_ (vector? _%x182923%_)))
                                  (if _%$e182937%_
                                      _%$e182937%_
                                      (u8vector? _%x182923%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e182921%_) (boolean? (gx#stx-e _%e182921%_))))
    (define gx#stx-keyword?
      (lambda (_%e182919%_) (keyword? (gx#stx-e _%e182919%_))))
    (define gx#stx-char? (lambda (_%e182917%_) (char? (gx#stx-e _%e182917%_))))
    (define gx#stx-number?
      (lambda (_%e182915%_) (number? (gx#stx-e _%e182915%_))))
    (define gx#stx-fixnum?
      (lambda (_%e182913%_) (fixnum? (gx#stx-e _%e182913%_))))
    (define gx#stx-string?
      (lambda (_%e182911%_) (string? (gx#stx-e _%e182911%_))))
    (define gx#stx-null? (lambda (_%e182909%_) (null? (gx#stx-e _%e182909%_))))
    (define gx#stx-pair? (lambda (_%e182907%_) (pair? (gx#stx-e _%e182907%_))))
    (define gx#stx-list?
      (lambda (_%e182869%_)
        (let* ((_%$%g182870182879%_ (gx#stx-e _%e182869%_))
               (_%$%E182873182883%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g182870182879%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%$%K182875182899%_
                 (lambda (_%rest182897%_) (gx#stx-list? _%rest182897%_)))
                (_%$%K182874182889%_
                 (lambda (_%tail182887%_) (null? _%tail182887%_))))
            (if (pair? _%$%g182870182879%_)
                (let* ((_%$%tl182877182902%_ (##cdr _%$%g182870182879%_))
                       (_%rest182905%_ _%$%tl182877182902%_))
                  (gx#stx-list? _%rest182905%_))
                (let ((_%tail182892%_ _%$%g182870182879%_))
                  (null? _%tail182892%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e182862%_)
        (let* ((_%e182864%_ (gx#stx-e _%e182862%_))
               (_%$e182866%_ (pair? _%e182864%_)))
          (if _%$e182866%_ _%$e182866%_ (null? _%e182864%_)))))
    (define gx#stx-vector?
      (lambda (_%e182860%_) (vector? (gx#stx-e _%e182860%_))))
    (define gx#stx-box? (lambda (_%e182858%_) (box? (gx#stx-e _%e182858%_))))
    (define gx#stx-eq?
      (lambda (_%x182855%_ _%y182856%_)
        (eq? (gx#stx-e _%x182855%_) (gx#stx-e _%y182856%_))))
    (define gx#stx-eqv?
      (lambda (_%x182852%_ _%y182853%_)
        (eqv? (gx#stx-e _%x182852%_) (gx#stx-e _%y182853%_))))
    (define gx#stx-equal?
      (lambda (_%x182849%_ _%y182850%_)
        (equal? (gx#stx-e _%x182849%_) (gx#stx-e _%y182850%_))))
    (define gx#stx-false? (lambda (_%x182847%_) (not (gx#stx-e _%x182847%_))))
    (define gx#stx-identifier
      (lambda (_%template182844%_ . _%args182845%_)
        (gx#datum->syntax__1
         _%template182844%_
         (apply make-symbol (gx#syntax->datum _%args182845%_))
         (gx#stx-source _%template182844%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx182842%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx182842%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx182837%_)
        (if (##structure-direct-instance-of?
             _%stx182837%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx182837%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx182837%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx182837%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx182837%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx182833%_)
        (let ((_%stx182835%_ (gx#stx-unwrap__0 _%stx182833%_)))
          (if (gx#identifier-quote? _%stx182835%_)
              (##unchecked-structure-ref _%stx182835%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx182788%_)
        (let* ((_%$%g182789182799%_ (gx#stx-e _%stx182788%_))
               (_%$%else182792182807%_ (lambda () '#f)))
          (let ((_%$%K182795182821%_
                 (lambda (_%rest182818%_ _%hd182819%_)
                   (if (gx#identifier? _%hd182819%_)
                       (gx#identifier-list? _%rest182818%_)
                       '#f)))
                (_%$%K182794182812%_ (lambda () '#t)))
            (let ((_%$%try-match182791182815%_
                   (lambda ()
                     (if (null? _%$%g182789182799%_)
                         (_%$%K182794182812%_)
                         (_%$%else182792182807%_)))))
              (if (pair? _%$%g182789182799%_)
                  (let ((_%$%tl182797182826%_ (##cdr _%$%g182789182799%_))
                        (_%$%hd182796182824%_ (##car _%$%g182789182799%_)))
                    (let ((_%hd182829%_ _%$%hd182796182824%_)
                          (_%rest182831%_ _%$%tl182797182826%_))
                      (_%$%K182795182821%_ _%rest182831%_ _%hd182829%_)))
                  (_%$%try-match182791182815%_)))))))
    (define gx#genident__%
      (lambda (_%e182768%_ _%src182769%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src182769%_) _%src182769%_ '#f)
         (make-symbol__1
          '"$%"
          (##gensym
           (let ((_%e182771%_ (gx#stx-e _%e182768%_)))
             (if (symbol? _%e182771%_) _%e182771%_ 'g))))
         _%src182769%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e182777%_ 'g) (_%src182779%_ '#f))
          (gx#genident__% _%e182777%_ _%src182779%_))))
    (define gx#genident__1
      (lambda (_%e182781%_)
        (let ((_%src182783%_ '#f))
          (gx#genident__% _%e182781%_ _%src182783%_))))
    (define gx#genident
      (lambda _g183247_
        (let ((_g183248_ (##length _g183247_)))
          (cond ((##fx= _g183248_ 0) (apply gx#genident__0 _g183247_))
                ((##fx= _g183248_ 1) (apply gx#genident__1 _g183247_))
                ((##fx= _g183248_ 2) (apply gx#genident__% _g183247_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g183247_))))))
    (define gx#gentemps
      (lambda (_%stx-lst182763%_)
        (gx#stx-map1
         (lambda (_%x182765%_) (gx#genident__% _%x182765%_ _%x182765%_))
         _%stx-lst182763%_)))
    (define gx#syntax->list
      (lambda (_%stx182761%_) (gx#stx-map1 values _%stx182761%_)))
    (define gx#stx-car
      (lambda (_%stx182758%_)
        (declare (safe))
        (car (gx#syntax-e _%stx182758%_))))
    (define gx#stx-cdr
      (lambda (_%stx182755%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx182755%_))))
    (define gx#stx-length
      (lambda (_%stx182720%_)
        (let _%lp182722%_ ((_%rest182724%_ _%stx182720%_) (_%n182725%_ '0))
          (let* ((_%$%g182726182734%_ (gx#stx-e _%rest182724%_))
                 (_%$%else182728182742%_ (lambda () _%n182725%_))
                 (_%$%K182730182747%_
                  (lambda (_%rest182745%_)
                    (_%lp182722%_ _%rest182745%_ (##fx+ _%n182725%_ '1)))))
            (if (pair? _%$%g182726182734%_)
                (let* ((_%$%tl182732182750%_ (##cdr _%$%g182726182734%_))
                       (_%rest182753%_ _%$%tl182732182750%_))
                  (_%$%K182730182747%_ _%rest182753%_))
                (_%$%else182728182742%_))))))
    (define gx#stx-for-each
      (lambda _g183249_
        (let ((_g183250_ (##length _g183249_)))
          (cond ((##fx= _g183250_ 2) (apply gx#stx-for-each1 _g183249_))
                ((##fx= _g183250_ 3) (apply gx#stx-for-each2 _g183249_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g183249_))))))
    (define gx#stx-for-each1
      (lambda (_%f182663%_ _%stx182664%_)
        (if (procedure? _%f182663%_)
            '#!void
            (error '"expected procedure" _%f182663%_))
        (let _%lp182666%_ ((_%rest182668%_ _%stx182664%_))
          (let* ((_%$%g182669182679%_ (gx#syntax-e _%rest182668%_))
                 (_%$%else182672182687%_
                  (lambda () (_%f182663%_ _%rest182668%_))))
            (let ((_%$%K182675182701%_
                   (lambda (_%rest182698%_ _%hd182699%_)
                     (_%f182663%_ _%hd182699%_)
                     (_%lp182666%_ _%rest182698%_)))
                  (_%$%K182674182692%_ (lambda () '#!void)))
              (let ((_%$%try-match182671182695%_
                     (lambda ()
                       (if (null? _%$%g182669182679%_)
                           (_%$%K182674182692%_)
                           (_%$%else182672182687%_)))))
                (if (pair? _%$%g182669182679%_)
                    (let ((_%$%tl182677182706%_ (##cdr _%$%g182669182679%_))
                          (_%$%hd182676182704%_ (##car _%$%g182669182679%_)))
                      (let ((_%hd182709%_ _%$%hd182676182704%_)
                            (_%rest182711%_ _%$%tl182677182706%_))
                        (_%$%K182675182701%_ _%rest182711%_ _%hd182709%_)))
                    (_%$%try-match182671182695%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f182568%_ _%xstx182569%_ _%ystx182570%_)
        (if (procedure? _%f182568%_)
            '#!void
            (error '"expected procedure" _%f182568%_))
        (let _%lp182572%_ ((_%xrest182574%_ _%xstx182569%_)
                           (_%yrest182575%_ _%ystx182570%_))
          (let* ((_%$%g182576182586%_ (gx#syntax-e _%xrest182574%_))
                 (_%$%else182579182594%_ (lambda () '#!void)))
            (let ((_%$%K182582182651%_
                   (lambda (_%xrest182620%_ _%xhd182621%_)
                     (let* ((_%$%g182622182629%_ (gx#syntax-e _%yrest182575%_))
                            (_%$%E182624182633%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g182622182629%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K182625182639%_
                             (lambda (_%yrest182636%_ _%yhd182637%_)
                               (_%f182568%_ _%xhd182621%_ _%yhd182637%_)
                               (_%lp182572%_
                                _%xrest182620%_
                                _%yrest182636%_))))
                       (if (pair? _%$%g182622182629%_)
                           (let ((_%$%hd182626182642%_
                                  (##car _%$%g182622182629%_))
                                 (_%$%tl182627182644%_
                                  (##cdr _%$%g182622182629%_)))
                             (let* ((_%yhd182647%_ _%$%hd182626182642%_)
                                    (_%yrest182649%_ _%$%tl182627182644%_))
                               (_%$%K182625182639%_
                                _%yrest182649%_
                                _%yhd182647%_)))
                           (_%$%E182624182633%_)))))
                  (_%$%K182581182614%_
                   (lambda ()
                     (let* ((_%$%yrest182598182603%_ _%yrest182575%_)
                            (_%$%E182600182607%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest182598182603%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K182601182611%_
                             (lambda ()
                               (_%f182568%_ _%xrest182574%_ _%yrest182575%_))))
                       (if (gx#stx-null? _%$%yrest182598182603%_)
                           (_%$%E182600182607%_)
                           (_%$%K182601182611%_))))))
              (let ((_%$%try-match182578182617%_
                     (lambda ()
                       (if (null? _%$%g182576182586%_)
                           (_%$%else182579182594%_)
                           (_%$%K182581182614%_)))))
                (if (pair? _%$%g182576182586%_)
                    (let ((_%$%tl182584182656%_ (##cdr _%$%g182576182586%_))
                          (_%$%hd182583182654%_ (##car _%$%g182576182586%_)))
                      (let ((_%xhd182659%_ _%$%hd182583182654%_)
                            (_%xrest182661%_ _%$%tl182584182656%_))
                        (_%$%K182582182651%_ _%xrest182661%_ _%xhd182659%_)))
                    (_%$%try-match182578182617%_))))))))
    (define gx#stx-map
      (lambda _g183251_
        (let ((_g183252_ (##length _g183251_)))
          (cond ((##fx= _g183252_ 2) (apply gx#stx-map1 _g183251_))
                ((##fx= _g183252_ 3) (apply gx#stx-map2 _g183251_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g183251_))))))
    (define gx#stx-map1
      (lambda (_%f182511%_ _%stx182512%_)
        (if (procedure? _%f182511%_)
            '#!void
            (error '"expected procedure" _%f182511%_))
        (let _%recur182514%_ ((_%rest182516%_ _%stx182512%_))
          (let* ((_%$%g182517182527%_ (gx#syntax-e _%rest182516%_))
                 (_%$%else182520182535%_
                  (lambda () (_%f182511%_ _%rest182516%_))))
            (let ((_%$%K182523182549%_
                   (lambda (_%rest182546%_ _%hd182547%_)
                     (cons (_%f182511%_ _%hd182547%_)
                           (_%recur182514%_ _%rest182546%_))))
                  (_%$%K182522182540%_ (lambda () '())))
              (let ((_%$%try-match182519182543%_
                     (lambda ()
                       (if (null? _%$%g182517182527%_)
                           (_%$%K182522182540%_)
                           (_%$%else182520182535%_)))))
                (if (pair? _%$%g182517182527%_)
                    (let ((_%$%tl182525182554%_ (##cdr _%$%g182517182527%_))
                          (_%$%hd182524182552%_ (##car _%$%g182517182527%_)))
                      (let ((_%hd182557%_ _%$%hd182524182552%_)
                            (_%rest182559%_ _%$%tl182525182554%_))
                        (_%$%K182523182549%_ _%rest182559%_ _%hd182557%_)))
                    (_%$%try-match182519182543%_))))))))
    (define gx#stx-map2
      (lambda (_%f182416%_ _%xstx182417%_ _%ystx182418%_)
        (if (procedure? _%f182416%_)
            '#!void
            (error '"expected procedure" _%f182416%_))
        (let _%recur182420%_ ((_%xrest182422%_ _%xstx182417%_)
                              (_%yrest182423%_ _%ystx182418%_))
          (let* ((_%$%g182424182434%_ (gx#syntax-e _%xrest182422%_))
                 (_%$%else182427182442%_ (lambda () '())))
            (let ((_%$%K182430182499%_
                   (lambda (_%xrest182468%_ _%xhd182469%_)
                     (let* ((_%$%g182470182477%_ (gx#syntax-e _%yrest182423%_))
                            (_%$%E182472182481%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g182470182477%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K182473182487%_
                             (lambda (_%yrest182484%_ _%yhd182485%_)
                               (cons (_%f182416%_ _%xhd182469%_ _%yhd182485%_)
                                     (_%recur182420%_
                                      _%xrest182468%_
                                      _%yrest182484%_)))))
                       (if (pair? _%$%g182470182477%_)
                           (let ((_%$%hd182474182490%_
                                  (##car _%$%g182470182477%_))
                                 (_%$%tl182475182492%_
                                  (##cdr _%$%g182470182477%_)))
                             (let* ((_%yhd182495%_ _%$%hd182474182490%_)
                                    (_%yrest182497%_ _%$%tl182475182492%_))
                               (_%$%K182473182487%_
                                _%yrest182497%_
                                _%yhd182495%_)))
                           (_%$%E182472182481%_)))))
                  (_%$%K182429182462%_
                   (lambda ()
                     (let* ((_%$%yrest182446182451%_ _%yrest182423%_)
                            (_%$%E182448182455%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest182446182451%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K182449182459%_
                             (lambda ()
                               (_%f182416%_ _%xrest182422%_ _%yrest182423%_))))
                       (if (gx#stx-null? _%$%yrest182446182451%_)
                           (_%$%E182448182455%_)
                           (_%$%K182449182459%_))))))
              (let ((_%$%try-match182426182465%_
                     (lambda ()
                       (if (null? _%$%g182424182434%_)
                           (_%$%else182427182442%_)
                           (_%$%K182429182462%_)))))
                (if (pair? _%$%g182424182434%_)
                    (let ((_%$%tl182432182504%_ (##cdr _%$%g182424182434%_))
                          (_%$%hd182431182502%_ (##car _%$%g182424182434%_)))
                      (let ((_%xhd182507%_ _%$%hd182431182502%_)
                            (_%xrest182509%_ _%$%tl182432182504%_))
                        (_%$%K182430182499%_ _%xrest182509%_ _%xhd182507%_)))
                    (_%$%try-match182426182465%_))))))))
    (define gx#stx-andmap
      (lambda (_%f182366%_ _%stx182367%_)
        (if (procedure? _%f182366%_)
            '#!void
            (error '"expected procedure" _%f182366%_))
        (let _%lp182369%_ ((_%rest182371%_ _%stx182367%_))
          (let* ((_%$%g182372182382%_ (gx#syntax-e _%rest182371%_))
                 (_%$%else182375182390%_
                  (lambda () (_%f182366%_ _%rest182371%_))))
            (let ((_%$%K182378182404%_
                   (lambda (_%rest182401%_ _%hd182402%_)
                     (if (_%f182366%_ _%hd182402%_)
                         (_%lp182369%_ _%rest182401%_)
                         '#f)))
                  (_%$%K182377182395%_ (lambda () '#t)))
              (let ((_%$%try-match182374182398%_
                     (lambda ()
                       (if (null? _%$%g182372182382%_)
                           (_%$%K182377182395%_)
                           (_%$%else182375182390%_)))))
                (if (pair? _%$%g182372182382%_)
                    (let ((_%$%tl182380182409%_ (##cdr _%$%g182372182382%_))
                          (_%$%hd182379182407%_ (##car _%$%g182372182382%_)))
                      (let ((_%hd182412%_ _%$%hd182379182407%_)
                            (_%rest182414%_ _%$%tl182380182409%_))
                        (_%$%K182378182404%_ _%rest182414%_ _%hd182412%_)))
                    (_%$%try-match182374182398%_))))))))
    (define gx#stx-ormap
      (lambda (_%f182313%_ _%stx182314%_)
        (if (procedure? _%f182313%_)
            '#!void
            (error '"expected procedure" _%f182313%_))
        (let _%lp182316%_ ((_%rest182318%_ _%stx182314%_))
          (let* ((_%$%g182319182329%_ (gx#syntax-e _%rest182318%_))
                 (_%$%else182322182337%_
                  (lambda () (_%f182313%_ _%rest182318%_))))
            (let ((_%$%K182325182354%_
                   (lambda (_%rest182348%_ _%hd182349%_)
                     (let ((_%$e182351%_ (_%f182313%_ _%hd182349%_)))
                       (if _%$e182351%_
                           _%$e182351%_
                           (_%lp182316%_ _%rest182348%_)))))
                  (_%$%K182324182342%_ (lambda () '#f)))
              (let ((_%$%try-match182321182345%_
                     (lambda ()
                       (if (null? _%$%g182319182329%_)
                           (_%$%K182324182342%_)
                           (_%$%else182322182337%_)))))
                (if (pair? _%$%g182319182329%_)
                    (let ((_%$%tl182327182359%_ (##cdr _%$%g182319182329%_))
                          (_%$%hd182326182357%_ (##car _%$%g182319182329%_)))
                      (let ((_%hd182362%_ _%$%hd182326182357%_)
                            (_%rest182364%_ _%$%tl182327182359%_))
                        (_%$%K182325182354%_ _%rest182364%_ _%hd182362%_)))
                    (_%$%try-match182321182345%_))))))))
    (define gx#stx-foldl
      (lambda (_%f182261%_ _%iv182262%_ _%stx182263%_)
        (if (procedure? _%f182261%_)
            '#!void
            (error '"expected procedure" _%f182261%_))
        (let _%lp182265%_ ((_%r182267%_ _%iv182262%_)
                           (_%rest182268%_ _%stx182263%_))
          (let* ((_%$%g182269182279%_ (gx#syntax-e _%rest182268%_))
                 (_%$%else182272182287%_
                  (lambda () (_%f182261%_ _%rest182268%_ _%r182267%_))))
            (let ((_%$%K182275182301%_
                   (lambda (_%rest182298%_ _%hd182299%_)
                     (_%lp182265%_
                      (_%f182261%_ _%hd182299%_ _%r182267%_)
                      _%rest182298%_)))
                  (_%$%K182274182292%_ (lambda () _%r182267%_)))
              (let ((_%$%try-match182271182295%_
                     (lambda ()
                       (if (null? _%$%g182269182279%_)
                           (_%$%K182274182292%_)
                           (_%$%else182272182287%_)))))
                (if (pair? _%$%g182269182279%_)
                    (let ((_%$%tl182277182306%_ (##cdr _%$%g182269182279%_))
                          (_%$%hd182276182304%_ (##car _%$%g182269182279%_)))
                      (let ((_%hd182309%_ _%$%hd182276182304%_)
                            (_%rest182311%_ _%$%tl182277182306%_))
                        (_%$%K182275182301%_ _%rest182311%_ _%hd182309%_)))
                    (_%$%try-match182271182295%_))))))))
    (define gx#stx-foldr
      (lambda (_%f182210%_ _%iv182211%_ _%stx182212%_)
        (if (procedure? _%f182210%_)
            '#!void
            (error '"expected procedure" _%f182210%_))
        (let _%recur182214%_ ((_%rest182216%_ _%stx182212%_))
          (let* ((_%$%g182217182227%_ (gx#syntax-e _%rest182216%_))
                 (_%$%else182220182235%_
                  (lambda () (_%f182210%_ _%rest182216%_ _%iv182211%_))))
            (let ((_%$%K182223182249%_
                   (lambda (_%rest182246%_ _%hd182247%_)
                     (_%f182210%_
                      _%hd182247%_
                      (_%recur182214%_ _%rest182246%_))))
                  (_%$%K182222182240%_ (lambda () _%iv182211%_)))
              (let ((_%$%try-match182219182243%_
                     (lambda ()
                       (if (null? _%$%g182217182227%_)
                           (_%$%K182222182240%_)
                           (_%$%else182220182235%_)))))
                (if (pair? _%$%g182217182227%_)
                    (let ((_%$%tl182225182254%_ (##cdr _%$%g182217182227%_))
                          (_%$%hd182224182252%_ (##car _%$%g182217182227%_)))
                      (let ((_%hd182257%_ _%$%hd182224182252%_)
                            (_%rest182259%_ _%$%tl182225182254%_))
                        (_%$%K182223182249%_ _%rest182259%_ _%hd182257%_)))
                    (_%$%try-match182219182243%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx182208%_) (gx#stx-foldl cons '() _%stx182208%_)))
    (define gx#stx-last
      (lambda (_%stx182169%_)
        (let _%lp182171%_ ((_%rest182173%_ _%stx182169%_))
          (let* ((_%$%g182174182182%_ (gx#syntax-e _%rest182173%_))
                 (_%$%else182176182190%_ (lambda () _%rest182173%_))
                 (_%$%K182178182196%_
                  (lambda (_%rest182193%_ _%hd182194%_)
                    (if (gx#stx-null? _%rest182193%_)
                        _%hd182194%_
                        (_%lp182171%_ _%rest182193%_)))))
            (if (pair? _%$%g182174182182%_)
                (let ((_%$%hd182179182199%_ (##car _%$%g182174182182%_))
                      (_%$%tl182180182201%_ (##cdr _%$%g182174182182%_)))
                  (let* ((_%hd182204%_ _%$%hd182179182199%_)
                         (_%rest182206%_ _%$%tl182180182201%_))
                    (_%$%K182178182196%_ _%rest182206%_ _%hd182204%_)))
                (_%$%else182176182190%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx182140%_)
        (let _%lp182142%_ ((_%hd182144%_ _%stx182140%_))
          (let* ((_%$%g182145182152%_ (gx#syntax-e _%hd182144%_))
                 (_%$%E182147182156%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g182145182152%_
                           '([_ . rest]))
                    '#!void))
                 (_%$%K182148182161%_
                  (lambda (_%rest182159%_)
                    (if (gx#stx-pair? _%rest182159%_)
                        (_%lp182142%_ _%rest182159%_)
                        _%hd182144%_))))
            (if (pair? _%$%g182145182152%_)
                (let* ((_%$%tl182150182164%_ (##cdr _%$%g182145182152%_))
                       (_%rest182167%_ _%$%tl182150182164%_))
                  (_%$%K182148182161%_ _%rest182167%_))
                (_%$%E182147182156%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx182109%_ _%k182110%_)
        (let _%lp182112%_ ((_%rest182114%_ _%stx182109%_)
                           (_%k182115%_ _%k182110%_))
          (if (fxpositive? _%k182115%_)
              (let* ((_%$%g182116182123%_ (gx#syntax-e _%rest182114%_))
                     (_%$%E182118182127%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%g182116182123%_
                               '([_ . rest]))
                        '#!void))
                     (_%$%K182119182132%_
                      (lambda (_%rest182130%_)
                        (_%lp182112%_ _%rest182130%_ (##fx- _%k182115%_ '1)))))
                (if (pair? _%$%g182116182123%_)
                    (let* ((_%$%tl182121182135%_ (##cdr _%$%g182116182123%_))
                           (_%rest182138%_ _%$%tl182121182135%_))
                      (_%$%K182119182132%_ _%rest182138%_))
                    (_%$%E182118182127%_)))
              _%rest182114%_))))
    (define gx#stx-list-ref
      (lambda (_%stx182106%_ _%k182107%_)
        (gx#stx-car (gx#stx-list-tail _%stx182106%_ _%k182107%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx182018%_ _%key?182019%_)
        (if (procedure? _%key?182019%_)
            '#!void
            (error '"expected procedure" _%key?182019%_))
        (let _%lp182021%_ ((_%rest182023%_ _%stx182018%_))
          (let* ((_%$%g182024182034%_ (gx#stx-e _%rest182023%_))
                 (_%$%else182027182042%_ (lambda () '#f)))
            (let ((_%$%K182030182084%_
                   (lambda (_%rest182053%_ _%hd182054%_)
                     (if (_%key?182019%_ _%hd182054%_)
                         (let* ((_%$%g182055182063%_ (gx#stx-e _%rest182053%_))
                                (_%$%else182057182071%_ (lambda () '#f))
                                (_%$%K182059182076%_
                                 (lambda (_%rest182074%_)
                                   (_%lp182021%_ _%rest182074%_))))
                           (if (pair? _%$%g182055182063%_)
                               (let* ((_%$%tl182061182079%_
                                       (##cdr _%$%g182055182063%_))
                                      (_%rest182082%_ _%$%tl182061182079%_))
                                 (_%lp182021%_ _%rest182082%_))
                               (_%$%else182057182071%_)))
                         '#f)))
                  (_%$%K182029182047%_ (lambda () '#t)))
              (let ((_%$%try-match182026182050%_
                     (lambda ()
                       (if (null? _%$%g182024182034%_)
                           (_%$%K182029182047%_)
                           (_%$%else182027182042%_)))))
                (if (pair? _%$%g182024182034%_)
                    (let ((_%$%tl182032182089%_ (##cdr _%$%g182024182034%_))
                          (_%$%hd182031182087%_ (##car _%$%g182024182034%_)))
                      (let ((_%hd182092%_ _%$%hd182031182087%_)
                            (_%rest182094%_ _%$%tl182032182089%_))
                        (_%$%K182030182084%_ _%rest182094%_ _%hd182092%_)))
                    (_%$%try-match182026182050%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx182099%_)
        (let ((_%key?182101%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx182099%_ _%key?182101%_))))
    (define gx#stx-plist?
      (lambda _g183253_
        (let ((_g183254_ (##length _g183253_)))
          (cond ((##fx= _g183254_ 1) (apply gx#stx-plist?__0 _g183253_))
                ((##fx= _g183254_ 2) (apply gx#stx-plist?__% _g183253_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g183253_))))))
    (define gx#stx-getq__%
      (lambda (_%key181936%_ _%stx181937%_ _%key=?181938%_)
        (if (procedure? _%key=?181938%_)
            '#!void
            (error '"expected procedure" _%key=?181938%_))
        (let _%lp181940%_ ((_%rest181942%_ _%stx181937%_))
          (let* ((_%$%g181943181951%_ (gx#syntax-e _%rest181942%_))
                 (_%$%else181945181959%_ (lambda () '#f))
                 (_%$%K181947181993%_
                  (lambda (_%rest181962%_ _%hd181963%_)
                    (let* ((_%$%g181964181971%_ (gx#syntax-e _%rest181962%_))
                           (_%$%E181966181975%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g181964181971%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K181967181981%_
                            (lambda (_%rest181978%_ _%val181979%_)
                              (if (_%key=?181938%_ _%hd181963%_ _%key181936%_)
                                  _%val181979%_
                                  (_%lp181940%_ _%rest181978%_)))))
                      (if (pair? _%$%g181964181971%_)
                          (let ((_%$%hd181968181984%_
                                 (##car _%$%g181964181971%_))
                                (_%$%tl181969181986%_
                                 (##cdr _%$%g181964181971%_)))
                            (let* ((_%val181989%_ _%$%hd181968181984%_)
                                   (_%rest181991%_ _%$%tl181969181986%_))
                              (_%$%K181967181981%_
                               _%rest181991%_
                               _%val181989%_)))
                          (_%$%E181966181975%_))))))
            (if (pair? _%$%g181943181951%_)
                (let ((_%$%hd181948181996%_ (##car _%$%g181943181951%_))
                      (_%$%tl181949181998%_ (##cdr _%$%g181943181951%_)))
                  (let* ((_%hd182001%_ _%$%hd181948181996%_)
                         (_%rest182003%_ _%$%tl181949181998%_))
                    (_%$%K181947181993%_ _%rest182003%_ _%hd182001%_)))
                (_%$%else181945181959%_))))))
    (define gx#stx-getq__0
      (lambda (_%key182008%_ _%stx182009%_)
        (let ((_%key=?182011%_ gx#stx-eq?))
          (gx#stx-getq__% _%key182008%_ _%stx182009%_ _%key=?182011%_))))
    (define gx#stx-getq
      (lambda _g183255_
        (let ((_g183256_ (##length _g183255_)))
          (cond ((##fx= _g183256_ 2) (apply gx#stx-getq__0 _g183255_))
                ((##fx= _g183256_ 3) (apply gx#stx-getq__% _g183255_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g183255_))))))
    (define gx#stx-plist-assq__%
      (lambda (_%key181854%_ _%stx181855%_ _%key=?181856%_)
        (if (procedure? _%key=?181856%_)
            '#!void
            (error '"expected procedure" _%key=?181856%_))
        (let _%lp181858%_ ((_%rest181860%_ _%stx181855%_))
          (let* ((_%$%g181861181869%_ (gx#syntax-e _%rest181860%_))
                 (_%$%else181863181877%_ (lambda () '#f))
                 (_%$%K181865181911%_
                  (lambda (_%rest181880%_ _%hd181881%_)
                    (let* ((_%$%g181882181889%_ (gx#syntax-e _%rest181880%_))
                           (_%$%E181884181893%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g181882181889%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K181885181899%_
                            (lambda (_%rest181896%_ _%val181897%_)
                              (if (_%key=?181856%_ _%hd181881%_ _%key181854%_)
                                  (cons _%hd181881%_ _%val181897%_)
                                  (_%lp181858%_ _%rest181896%_)))))
                      (if (pair? _%$%g181882181889%_)
                          (let ((_%$%hd181886181902%_
                                 (##car _%$%g181882181889%_))
                                (_%$%tl181887181904%_
                                 (##cdr _%$%g181882181889%_)))
                            (let* ((_%val181907%_ _%$%hd181886181902%_)
                                   (_%rest181909%_ _%$%tl181887181904%_))
                              (_%$%K181885181899%_
                               _%rest181909%_
                               _%val181907%_)))
                          (_%$%E181884181893%_))))))
            (if (pair? _%$%g181861181869%_)
                (let ((_%$%hd181866181914%_ (##car _%$%g181861181869%_))
                      (_%$%tl181867181916%_ (##cdr _%$%g181861181869%_)))
                  (let* ((_%hd181919%_ _%$%hd181866181914%_)
                         (_%rest181921%_ _%$%tl181867181916%_))
                    (_%$%K181865181911%_ _%rest181921%_ _%hd181919%_)))
                (_%$%else181863181877%_))))))
    (define gx#stx-plist-assq__0
      (lambda (_%key181926%_ _%stx181927%_)
        (let ((_%key=?181929%_ gx#stx-eq?))
          (gx#stx-plist-assq__% _%key181926%_ _%stx181927%_ _%key=?181929%_))))
    (define gx#stx-plist-assq
      (lambda _g183257_
        (let ((_g183258_ (##length _g183257_)))
          (cond ((##fx= _g183258_ 2) (apply gx#stx-plist-assq__0 _g183257_))
                ((##fx= _g183258_ 3) (apply gx#stx-plist-assq__% _g183257_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist-assq
                  _g183257_))))))))
