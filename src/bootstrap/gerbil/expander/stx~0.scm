(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1789839225)
  (begin
    (declare (not safe))
    (define gx#identifier-wrap::t
      (make-class-type
       'gx#identifier-wrap::t
       'syntax
       (list gx#AST::t)
       '(marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#identifier-wrap? (__make-class-predicate gx#identifier-wrap::t))
    (define gx#make-identifier-wrap
      (lambda _%$args185338%_
        (apply make-instance gx#identifier-wrap::t _%$args185338%_)))
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
      (make-class-type
       'gx#syntax-wrap::t
       'syntax
       (list gx#AST::t)
       '(mark)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-wrap? (__make-class-predicate gx#syntax-wrap::t))
    (define gx#make-syntax-wrap
      (lambda _%$args185335%_
        (apply make-instance gx#syntax-wrap::t _%$args185335%_)))
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
      (make-class-type
       'gx#syntax-quote::t
       'syntax
       (list gx#AST::t)
       '(context marks)
       (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '((print:))))
       '#f))
    (define gx#syntax-quote? (__make-class-predicate gx#syntax-quote::t))
    (define gx#make-syntax-quote
      (lambda _%$args185332%_
        (apply make-instance gx#syntax-quote::t _%$args185332%_)))
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
      (lambda (_%stx185330%_) (symbol? (gx#stx-e _%stx185330%_))))
    (define gx#identifier-quote?
      (lambda (_%stx185328%_)
        (if (##structure-direct-instance-of? _%stx185328%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx185328%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx185323%_)
        (if (##structure-direct-instance-of? _%stx185323%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx185323%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx185323%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx185318%_)
        (if (##structure-direct-instance-of? _%stx185318%_ 'gx#syntax-quote::t)
            _%stx185318%_
            (if (##structure-direct-instance-of?
                 _%stx185318%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx185318%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx185292%_)
        (if (##structure-direct-instance-of? _%stx185292%_ 'gx#syntax-wrap::t)
            (let _%lp185295%_ ((_%e185297%_
                                (##unchecked-structure-ref
                                 _%stx185292%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks185298%_
                                (cons (##unchecked-structure-ref
                                       _%stx185292%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e185297%_)
                  (let ((_%$e185301%_
                         (##type-id (##structure-type _%e185297%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e185301%_)
                        (_%lp185295%_
                         (##unchecked-structure-ref _%e185297%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e185297%_ '3 '#f '#f)
                          _%marks185298%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e185301%_)
                                (eq? 'gx#identifier-wrap::t _%$e185301%_))
                            (##unchecked-structure-ref _%e185297%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e185301%_)
                                (_%lp185295%_
                                 (##unchecked-structure-ref
                                  _%e185297%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks185298%_)
                                _%e185297%_))))
                  (if (null? _%marks185298%_)
                      _%e185297%_
                      (if (pair? _%e185297%_)
                          (cons (gx#stx-wrap
                                 (##car _%e185297%_)
                                 _%marks185298%_)
                                (gx#stx-wrap
                                 (##cdr _%e185297%_)
                                 _%marks185298%_))
                          (if (vector? _%e185297%_)
                              (vector-map
                               (lambda (_%$%g185309185311%_)
                                 (gx#stx-wrap
                                  _%$%g185309185311%_
                                  _%marks185298%_))
                               _%e185297%_)
                              (if (box? _%e185297%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e185297%_)
                                        _%marks185298%_))
                                  _%e185297%_))))))
            (if (##structure-instance-of? _%stx185292%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx185292%_ '1 '#f '#f)
                _%stx185292%_))))
    (define gx#syntax->datum
      (lambda (_%stx185285%_)
        (if (##structure-instance-of? _%stx185285%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx185285%_ '1 '#f '#f))
            (if (pair? _%stx185285%_)
                (cons (gx#syntax->datum (##car _%stx185285%_))
                      (gx#syntax->datum (##cdr _%stx185285%_)))
                (if (vector? _%stx185285%_)
                    (vector-map gx#syntax->datum _%stx185285%_)
                    (if (box? _%stx185285%_)
                        (box (gx#syntax->datum (unbox _%stx185285%_)))
                        _%stx185285%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx185219%_ _%datum185220%_ _%src185221%_ _%quote?185222%_)
        (letrec ((_%wrap-datum185224%_
                  (lambda (_%e185257%_ _%marks185258%_)
                    (_%wrap-inner185226%_
                     _%e185257%_
                     (lambda (_%$%g185259185261%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%$%g185259185261%_
                        _%src185221%_
                        _%marks185258%_)))))
                 (_%wrap-quote185225%_
                  (lambda (_%e185249%_ _%ctx185250%_ _%marks185251%_)
                    (_%wrap-inner185226%_
                     _%e185249%_
                     (lambda (_%$%g185252185254%_)
                       (##structure
                        gx#syntax-quote::t
                        _%$%g185252185254%_
                        _%src185221%_
                        _%ctx185250%_
                        _%marks185251%_)))))
                 (_%wrap-inner185226%_
                  (lambda (_%e185237%_ _%wrap-e185238%_)
                    (let _%recur185240%_ ((_%e185242%_ _%e185237%_))
                      (if (symbol? _%e185242%_)
                          (_%wrap-e185238%_ _%e185242%_)
                          (if (pair? _%e185242%_)
                              (cons (_%recur185240%_ (##car _%e185242%_))
                                    (_%recur185240%_ (##cdr _%e185242%_)))
                              (if (vector? _%e185242%_)
                                  (vector-map _%recur185240%_ _%e185242%_)
                                  (if (box? _%e185242%_)
                                      (box (_%recur185240%_
                                            (unbox _%e185242%_)))
                                      _%e185242%_)))))))
                 (_%wrap-outer185227%_
                  (lambda (_%e185235%_)
                    (if (##structure-instance-of? _%e185235%_ 'gerbil#AST::t)
                        _%e185235%_
                        (##structure gx#AST::t _%e185235%_ _%src185221%_)))))
          (if (##structure-instance-of? _%datum185220%_ 'gerbil#AST::t)
              _%datum185220%_
              (if _%stx185219%_
                  (if (gx#identifier? _%stx185219%_)
                      (let ((_%stx185232%_ (gx#stx-unwrap__0 _%stx185219%_)))
                        (_%wrap-outer185227%_
                         (if (##structure-direct-instance-of?
                              _%stx185232%_
                              'gx#syntax-quote::t)
                             (if _%quote?185222%_
                                 (_%wrap-quote185225%_
                                  _%datum185220%_
                                  (##unchecked-structure-ref
                                   _%stx185232%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx185232%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum185224%_
                                  _%datum185220%_
                                  (##unchecked-structure-ref
                                   _%stx185232%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum185224%_
                              _%datum185220%_
                              (##unchecked-structure-ref
                               _%stx185232%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx185219%_))
                  (##structure gx#AST::t _%datum185220%_ _%src185221%_))))))
    (define gx#datum->syntax__0
      (lambda (_%stx185267%_ _%datum185268%_)
        (let* ((_%src185270%_ '#f) (_%quote?185272%_ '#t))
          (gx#datum->syntax__%
           _%stx185267%_
           _%datum185268%_
           _%src185270%_
           _%quote?185272%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx185274%_ _%datum185275%_ _%src185276%_)
        (let ((_%quote?185278%_ '#t))
          (gx#datum->syntax__%
           _%stx185274%_
           _%datum185275%_
           _%src185276%_
           _%quote?185278%_))))
    (define gx#datum->syntax
      (lambda _g185418_
        (let ((_g185419_ (##length _g185418_)))
          (cond ((##fx= _g185419_ 2) (apply gx#datum->syntax__0 _g185418_))
                ((##fx= _g185419_ 3) (apply gx#datum->syntax__1 _g185418_))
                ((##fx= _g185419_ 4) (apply gx#datum->syntax__% _g185418_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g185418_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx185185%_ _%marks185186%_)
        (let _%lp185188%_ ((_%e185190%_ _%stx185185%_)
                           (_%marks185191%_ _%marks185186%_)
                           (_%src185192%_ (gx#stx-source _%stx185185%_)))
          (if (##structure-direct-instance-of? _%e185190%_ 'gx#syntax-wrap::t)
              (_%lp185188%_
               (##unchecked-structure-ref _%e185190%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e185190%_ '3 '#f '#f)
                _%marks185191%_)
               (##unchecked-structure-ref _%e185190%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e185190%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks185191%_)
                      _%e185190%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e185190%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e185190%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e185190%_ '3 '#f '#f)
                        _%marks185191%_)))
                  (if (##structure-direct-instance-of?
                       _%e185190%_
                       'gx#syntax-quote::t)
                      _%e185190%_
                      (if (##structure-instance-of? _%e185190%_ 'gerbil#AST::t)
                          (_%lp185188%_
                           (##unchecked-structure-ref _%e185190%_ '1 '#f '#f)
                           _%marks185191%_
                           (##unchecked-structure-ref _%e185190%_ '2 '#f '#f))
                          (if (symbol? _%e185190%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e185190%_
                               _%src185192%_
                               (reverse _%marks185191%_))
                              (if (null? _%marks185191%_)
                                  _%e185190%_
                                  (if (pair? _%e185190%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e185190%_)
                                             _%marks185191%_)
                                            (gx#stx-wrap
                                             (##cdr _%e185190%_)
                                             _%marks185191%_))
                                      (if (vector? _%e185190%_)
                                          (vector-map
                                           (lambda (_%$%g185201185203%_)
                                             (gx#stx-wrap
                                              _%$%g185201185203%_
                                              _%marks185191%_))
                                           _%e185190%_)
                                          (if (box? _%e185190%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e185190%_)
                                                    _%marks185191%_))
                                              _%e185190%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx185211%_)
        (let ((_%marks185213%_ '()))
          (gx#stx-unwrap__% _%stx185211%_ _%marks185213%_))))
    (define gx#stx-unwrap
      (lambda _g185420_
        (let ((_g185421_ (##length _g185420_)))
          (cond ((##fx= _g185421_ 1) (apply gx#stx-unwrap__0 _g185420_))
                ((##fx= _g185421_ 2) (apply gx#stx-unwrap__% _g185420_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g185420_))))))
    (define gx#stx-wrap
      (lambda (_%stx185178%_ _%marks185179%_)
        (foldl__0
         (lambda (_%mark185181%_ _%stx185182%_)
           (gx#stx-apply-mark _%stx185182%_ _%mark185181%_))
         _%stx185178%_
         _%marks185179%_)))
    (define gx#stx-rewrap
      (lambda (_%stx185172%_ _%marks185173%_)
        (foldr__0
         (lambda (_%mark185175%_ _%stx185176%_)
           (gx#stx-apply-mark _%stx185176%_ _%mark185175%_))
         _%stx185172%_
         _%marks185173%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx185166%_ _%mark185167%_)
        (if (##structure-direct-instance-of? _%stx185166%_ 'gx#syntax-quote::t)
            _%stx185166%_
            (if (and (##structure-direct-instance-of?
                      _%stx185166%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark185167%_
                          (##unchecked-structure-ref
                           _%stx185166%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx185166%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx185166%_
                 (gx#stx-source _%stx185166%_)
                 _%mark185167%_)))))
    (define gx#apply-mark
      (lambda (_%mark185130%_ _%marks185131%_)
        (let* ((_%$%marks185132185140%_ _%marks185131%_)
               (_%$%else185134185148%_
                (lambda () (cons _%mark185130%_ _%marks185131%_)))
               (_%$%K185136185154%_
                (lambda (_%rest185151%_ _%hd185152%_)
                  (if (eq? _%mark185130%_ _%hd185152%_)
                      _%rest185151%_
                      (cons _%mark185130%_ _%marks185131%_)))))
          (if (pair? _%$%marks185132185140%_)
              (let ((_%$%hd185137185157%_ (##car _%$%marks185132185140%_))
                    (_%$%tl185138185159%_ (##cdr _%$%marks185132185140%_)))
                (let* ((_%hd185162%_ _%$%hd185137185157%_)
                       (_%rest185164%_ _%$%tl185138185159%_))
                  (_%$%K185136185154%_ _%rest185164%_ _%hd185162%_)))
              (_%$%else185134185148%_)))))
    (define gx#stx-e
      (lambda (_%stx185125%_)
        (if (##structure-direct-instance-of? _%stx185125%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx185125%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx185125%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx185125%_ '1 '#f '#f)
                _%stx185125%_))))
    (define gx#stx-source
      (lambda (_%stx185123%_)
        (if (##structure-instance-of? _%stx185123%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx185123%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx185117%_ _%src185118%_)
        (if (or (##structure-instance-of? _%stx185117%_ 'gerbil#AST::t)
                (not _%src185118%_))
            _%stx185117%_
            (##structure gx#AST::t _%stx185117%_ _%src185118%_))))
    (define gx#stx-datum?
      (lambda (_%stx185115%_) (gx#self-quoting? (gx#stx-e _%stx185115%_))))
    (define gx#self-quoting?
      (lambda (_%x185098%_)
        (let ((_%$e185100%_ (immediate? _%x185098%_)))
          (if _%$e185100%_
              _%$e185100%_
              (let ((_%$e185103%_ (number? _%x185098%_)))
                (if _%$e185103%_
                    _%$e185103%_
                    (let ((_%$e185106%_ (keyword? _%x185098%_)))
                      (if _%$e185106%_
                          _%$e185106%_
                          (let ((_%$e185109%_ (string? _%x185098%_)))
                            (if _%$e185109%_
                                _%$e185109%_
                                (let ((_%$e185112%_ (vector? _%x185098%_)))
                                  (if _%$e185112%_
                                      _%$e185112%_
                                      (u8vector? _%x185098%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e185096%_) (boolean? (gx#stx-e _%e185096%_))))
    (define gx#stx-keyword?
      (lambda (_%e185094%_) (keyword? (gx#stx-e _%e185094%_))))
    (define gx#stx-char? (lambda (_%e185092%_) (char? (gx#stx-e _%e185092%_))))
    (define gx#stx-number?
      (lambda (_%e185090%_) (number? (gx#stx-e _%e185090%_))))
    (define gx#stx-fixnum?
      (lambda (_%e185088%_) (fixnum? (gx#stx-e _%e185088%_))))
    (define gx#stx-string?
      (lambda (_%e185086%_) (string? (gx#stx-e _%e185086%_))))
    (define gx#stx-null? (lambda (_%e185084%_) (null? (gx#stx-e _%e185084%_))))
    (define gx#stx-pair? (lambda (_%e185082%_) (pair? (gx#stx-e _%e185082%_))))
    (define gx#stx-list?
      (lambda (_%e185044%_)
        (let* ((_%$%g185045185054%_ (gx#stx-e _%e185044%_))
               (_%$%E185048185058%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g185045185054%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%$%K185050185074%_
                 (lambda (_%rest185072%_) (gx#stx-list? _%rest185072%_)))
                (_%$%K185049185064%_
                 (lambda (_%tail185062%_) (null? _%tail185062%_))))
            (if (pair? _%$%g185045185054%_)
                (let* ((_%$%tl185052185077%_ (##cdr _%$%g185045185054%_))
                       (_%rest185080%_ _%$%tl185052185077%_))
                  (gx#stx-list? _%rest185080%_))
                (let ((_%tail185067%_ _%$%g185045185054%_))
                  (null? _%tail185067%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e185037%_)
        (let* ((_%e185039%_ (gx#stx-e _%e185037%_))
               (_%$e185041%_ (pair? _%e185039%_)))
          (if _%$e185041%_ _%$e185041%_ (null? _%e185039%_)))))
    (define gx#stx-vector?
      (lambda (_%e185035%_) (vector? (gx#stx-e _%e185035%_))))
    (define gx#stx-box? (lambda (_%e185033%_) (box? (gx#stx-e _%e185033%_))))
    (define gx#stx-eq?
      (lambda (_%x185030%_ _%y185031%_)
        (eq? (gx#stx-e _%x185030%_) (gx#stx-e _%y185031%_))))
    (define gx#stx-eqv?
      (lambda (_%x185027%_ _%y185028%_)
        (eqv? (gx#stx-e _%x185027%_) (gx#stx-e _%y185028%_))))
    (define gx#stx-equal?
      (lambda (_%x185024%_ _%y185025%_)
        (equal? (gx#stx-e _%x185024%_) (gx#stx-e _%y185025%_))))
    (define gx#stx-false? (lambda (_%x185022%_) (not (gx#stx-e _%x185022%_))))
    (define gx#stx-identifier
      (lambda (_%template185019%_ . _%args185020%_)
        (gx#datum->syntax__1
         _%template185019%_
         (apply make-symbol (gx#syntax->datum _%args185020%_))
         (gx#stx-source _%template185019%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx185017%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx185017%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx185012%_)
        (if (##structure-direct-instance-of?
             _%stx185012%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx185012%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx185012%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx185012%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx185012%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx185008%_)
        (let ((_%stx185010%_ (gx#stx-unwrap__0 _%stx185008%_)))
          (if (gx#identifier-quote? _%stx185010%_)
              (##unchecked-structure-ref _%stx185010%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx184963%_)
        (let* ((_%$%g184964184974%_ (gx#stx-e _%stx184963%_))
               (_%$%else184967184982%_ (lambda () '#f)))
          (let ((_%$%K184970184996%_
                 (lambda (_%rest184993%_ _%hd184994%_)
                   (if (gx#identifier? _%hd184994%_)
                       (gx#identifier-list? _%rest184993%_)
                       '#f)))
                (_%$%K184969184987%_ (lambda () '#t)))
            (let ((_%$%try-match184966184990%_
                   (lambda ()
                     (if (null? _%$%g184964184974%_)
                         (_%$%K184969184987%_)
                         (_%$%else184967184982%_)))))
              (if (pair? _%$%g184964184974%_)
                  (let ((_%$%tl184972185001%_ (##cdr _%$%g184964184974%_))
                        (_%$%hd184971184999%_ (##car _%$%g184964184974%_)))
                    (let ((_%hd185004%_ _%$%hd184971184999%_)
                          (_%rest185006%_ _%$%tl184972185001%_))
                      (_%$%K184970184996%_ _%rest185006%_ _%hd185004%_)))
                  (_%$%try-match184966184990%_)))))))
    (define gx#genident__%
      (lambda (_%e184943%_ _%src184944%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src184944%_) _%src184944%_ '#f)
         (make-symbol__1
          '"$%"
          (##gensym
           (let ((_%e184946%_ (gx#stx-e _%e184943%_)))
             (if (symbol? _%e184946%_) _%e184946%_ 'g))))
         _%src184944%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e184952%_ 'g) (_%src184954%_ '#f))
          (gx#genident__% _%e184952%_ _%src184954%_))))
    (define gx#genident__1
      (lambda (_%e184956%_)
        (let ((_%src184958%_ '#f))
          (gx#genident__% _%e184956%_ _%src184958%_))))
    (define gx#genident
      (lambda _g185422_
        (let ((_g185423_ (##length _g185422_)))
          (cond ((##fx= _g185423_ 0) (apply gx#genident__0 _g185422_))
                ((##fx= _g185423_ 1) (apply gx#genident__1 _g185422_))
                ((##fx= _g185423_ 2) (apply gx#genident__% _g185422_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g185422_))))))
    (define gx#gentemps
      (lambda (_%stx-lst184938%_)
        (gx#stx-map1
         (lambda (_%x184940%_) (gx#genident__% _%x184940%_ _%x184940%_))
         _%stx-lst184938%_)))
    (define gx#syntax->list
      (lambda (_%stx184936%_) (gx#stx-map1 values _%stx184936%_)))
    (define gx#stx-car
      (lambda (_%stx184933%_)
        (declare (safe))
        (car (gx#syntax-e _%stx184933%_))))
    (define gx#stx-cdr
      (lambda (_%stx184930%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx184930%_))))
    (define gx#stx-length
      (lambda (_%stx184895%_)
        (let _%lp184897%_ ((_%rest184899%_ _%stx184895%_) (_%n184900%_ '0))
          (let* ((_%$%g184901184909%_ (gx#stx-e _%rest184899%_))
                 (_%$%else184903184917%_ (lambda () _%n184900%_))
                 (_%$%K184905184922%_
                  (lambda (_%rest184920%_)
                    (_%lp184897%_ _%rest184920%_ (##fx+ _%n184900%_ '1)))))
            (if (pair? _%$%g184901184909%_)
                (let* ((_%$%tl184907184925%_ (##cdr _%$%g184901184909%_))
                       (_%rest184928%_ _%$%tl184907184925%_))
                  (_%$%K184905184922%_ _%rest184928%_))
                (_%$%else184903184917%_))))))
    (define gx#stx-for-each
      (lambda _g185424_
        (let ((_g185425_ (##length _g185424_)))
          (cond ((##fx= _g185425_ 2) (apply gx#stx-for-each1 _g185424_))
                ((##fx= _g185425_ 3) (apply gx#stx-for-each2 _g185424_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g185424_))))))
    (define gx#stx-for-each1
      (lambda (_%f184838%_ _%stx184839%_)
        (if (procedure? _%f184838%_)
            '#!void
            (error '"expected procedure" _%f184838%_))
        (let _%lp184841%_ ((_%rest184843%_ _%stx184839%_))
          (let* ((_%$%g184844184854%_ (gx#syntax-e _%rest184843%_))
                 (_%$%else184847184862%_
                  (lambda () (_%f184838%_ _%rest184843%_))))
            (let ((_%$%K184850184876%_
                   (lambda (_%rest184873%_ _%hd184874%_)
                     (_%f184838%_ _%hd184874%_)
                     (_%lp184841%_ _%rest184873%_)))
                  (_%$%K184849184867%_ (lambda () '#!void)))
              (let ((_%$%try-match184846184870%_
                     (lambda ()
                       (if (null? _%$%g184844184854%_)
                           (_%$%K184849184867%_)
                           (_%$%else184847184862%_)))))
                (if (pair? _%$%g184844184854%_)
                    (let ((_%$%tl184852184881%_ (##cdr _%$%g184844184854%_))
                          (_%$%hd184851184879%_ (##car _%$%g184844184854%_)))
                      (let ((_%hd184884%_ _%$%hd184851184879%_)
                            (_%rest184886%_ _%$%tl184852184881%_))
                        (_%$%K184850184876%_ _%rest184886%_ _%hd184884%_)))
                    (_%$%try-match184846184870%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f184743%_ _%xstx184744%_ _%ystx184745%_)
        (if (procedure? _%f184743%_)
            '#!void
            (error '"expected procedure" _%f184743%_))
        (let _%lp184747%_ ((_%xrest184749%_ _%xstx184744%_)
                           (_%yrest184750%_ _%ystx184745%_))
          (let* ((_%$%g184751184761%_ (gx#syntax-e _%xrest184749%_))
                 (_%$%else184754184769%_ (lambda () '#!void)))
            (let ((_%$%K184757184826%_
                   (lambda (_%xrest184795%_ _%xhd184796%_)
                     (let* ((_%$%g184797184804%_ (gx#syntax-e _%yrest184750%_))
                            (_%$%E184799184808%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g184797184804%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K184800184814%_
                             (lambda (_%yrest184811%_ _%yhd184812%_)
                               (_%f184743%_ _%xhd184796%_ _%yhd184812%_)
                               (_%lp184747%_
                                _%xrest184795%_
                                _%yrest184811%_))))
                       (if (pair? _%$%g184797184804%_)
                           (let ((_%$%hd184801184817%_
                                  (##car _%$%g184797184804%_))
                                 (_%$%tl184802184819%_
                                  (##cdr _%$%g184797184804%_)))
                             (let* ((_%yhd184822%_ _%$%hd184801184817%_)
                                    (_%yrest184824%_ _%$%tl184802184819%_))
                               (_%$%K184800184814%_
                                _%yrest184824%_
                                _%yhd184822%_)))
                           (_%$%E184799184808%_)))))
                  (_%$%K184756184789%_
                   (lambda ()
                     (let* ((_%$%yrest184773184778%_ _%yrest184750%_)
                            (_%$%E184775184782%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest184773184778%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K184776184786%_
                             (lambda ()
                               (_%f184743%_ _%xrest184749%_ _%yrest184750%_))))
                       (if (gx#stx-null? _%$%yrest184773184778%_)
                           (_%$%E184775184782%_)
                           (_%$%K184776184786%_))))))
              (let ((_%$%try-match184753184792%_
                     (lambda ()
                       (if (null? _%$%g184751184761%_)
                           (_%$%else184754184769%_)
                           (_%$%K184756184789%_)))))
                (if (pair? _%$%g184751184761%_)
                    (let ((_%$%tl184759184831%_ (##cdr _%$%g184751184761%_))
                          (_%$%hd184758184829%_ (##car _%$%g184751184761%_)))
                      (let ((_%xhd184834%_ _%$%hd184758184829%_)
                            (_%xrest184836%_ _%$%tl184759184831%_))
                        (_%$%K184757184826%_ _%xrest184836%_ _%xhd184834%_)))
                    (_%$%try-match184753184792%_))))))))
    (define gx#stx-map
      (lambda _g185426_
        (let ((_g185427_ (##length _g185426_)))
          (cond ((##fx= _g185427_ 2) (apply gx#stx-map1 _g185426_))
                ((##fx= _g185427_ 3) (apply gx#stx-map2 _g185426_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g185426_))))))
    (define gx#stx-map1
      (lambda (_%f184686%_ _%stx184687%_)
        (if (procedure? _%f184686%_)
            '#!void
            (error '"expected procedure" _%f184686%_))
        (let _%recur184689%_ ((_%rest184691%_ _%stx184687%_))
          (let* ((_%$%g184692184702%_ (gx#syntax-e _%rest184691%_))
                 (_%$%else184695184710%_
                  (lambda () (_%f184686%_ _%rest184691%_))))
            (let ((_%$%K184698184724%_
                   (lambda (_%rest184721%_ _%hd184722%_)
                     (cons (_%f184686%_ _%hd184722%_)
                           (_%recur184689%_ _%rest184721%_))))
                  (_%$%K184697184715%_ (lambda () '())))
              (let ((_%$%try-match184694184718%_
                     (lambda ()
                       (if (null? _%$%g184692184702%_)
                           (_%$%K184697184715%_)
                           (_%$%else184695184710%_)))))
                (if (pair? _%$%g184692184702%_)
                    (let ((_%$%tl184700184729%_ (##cdr _%$%g184692184702%_))
                          (_%$%hd184699184727%_ (##car _%$%g184692184702%_)))
                      (let ((_%hd184732%_ _%$%hd184699184727%_)
                            (_%rest184734%_ _%$%tl184700184729%_))
                        (_%$%K184698184724%_ _%rest184734%_ _%hd184732%_)))
                    (_%$%try-match184694184718%_))))))))
    (define gx#stx-map2
      (lambda (_%f184591%_ _%xstx184592%_ _%ystx184593%_)
        (if (procedure? _%f184591%_)
            '#!void
            (error '"expected procedure" _%f184591%_))
        (let _%recur184595%_ ((_%xrest184597%_ _%xstx184592%_)
                              (_%yrest184598%_ _%ystx184593%_))
          (let* ((_%$%g184599184609%_ (gx#syntax-e _%xrest184597%_))
                 (_%$%else184602184617%_ (lambda () '())))
            (let ((_%$%K184605184674%_
                   (lambda (_%xrest184643%_ _%xhd184644%_)
                     (let* ((_%$%g184645184652%_ (gx#syntax-e _%yrest184598%_))
                            (_%$%E184647184656%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g184645184652%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K184648184662%_
                             (lambda (_%yrest184659%_ _%yhd184660%_)
                               (cons (_%f184591%_ _%xhd184644%_ _%yhd184660%_)
                                     (_%recur184595%_
                                      _%xrest184643%_
                                      _%yrest184659%_)))))
                       (if (pair? _%$%g184645184652%_)
                           (let ((_%$%hd184649184665%_
                                  (##car _%$%g184645184652%_))
                                 (_%$%tl184650184667%_
                                  (##cdr _%$%g184645184652%_)))
                             (let* ((_%yhd184670%_ _%$%hd184649184665%_)
                                    (_%yrest184672%_ _%$%tl184650184667%_))
                               (_%$%K184648184662%_
                                _%yrest184672%_
                                _%yhd184670%_)))
                           (_%$%E184647184656%_)))))
                  (_%$%K184604184637%_
                   (lambda ()
                     (let* ((_%$%yrest184621184626%_ _%yrest184598%_)
                            (_%$%E184623184630%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest184621184626%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K184624184634%_
                             (lambda ()
                               (_%f184591%_ _%xrest184597%_ _%yrest184598%_))))
                       (if (gx#stx-null? _%$%yrest184621184626%_)
                           (_%$%E184623184630%_)
                           (_%$%K184624184634%_))))))
              (let ((_%$%try-match184601184640%_
                     (lambda ()
                       (if (null? _%$%g184599184609%_)
                           (_%$%else184602184617%_)
                           (_%$%K184604184637%_)))))
                (if (pair? _%$%g184599184609%_)
                    (let ((_%$%tl184607184679%_ (##cdr _%$%g184599184609%_))
                          (_%$%hd184606184677%_ (##car _%$%g184599184609%_)))
                      (let ((_%xhd184682%_ _%$%hd184606184677%_)
                            (_%xrest184684%_ _%$%tl184607184679%_))
                        (_%$%K184605184674%_ _%xrest184684%_ _%xhd184682%_)))
                    (_%$%try-match184601184640%_))))))))
    (define gx#stx-andmap
      (lambda (_%f184541%_ _%stx184542%_)
        (if (procedure? _%f184541%_)
            '#!void
            (error '"expected procedure" _%f184541%_))
        (let _%lp184544%_ ((_%rest184546%_ _%stx184542%_))
          (let* ((_%$%g184547184557%_ (gx#syntax-e _%rest184546%_))
                 (_%$%else184550184565%_
                  (lambda () (_%f184541%_ _%rest184546%_))))
            (let ((_%$%K184553184579%_
                   (lambda (_%rest184576%_ _%hd184577%_)
                     (if (_%f184541%_ _%hd184577%_)
                         (_%lp184544%_ _%rest184576%_)
                         '#f)))
                  (_%$%K184552184570%_ (lambda () '#t)))
              (let ((_%$%try-match184549184573%_
                     (lambda ()
                       (if (null? _%$%g184547184557%_)
                           (_%$%K184552184570%_)
                           (_%$%else184550184565%_)))))
                (if (pair? _%$%g184547184557%_)
                    (let ((_%$%tl184555184584%_ (##cdr _%$%g184547184557%_))
                          (_%$%hd184554184582%_ (##car _%$%g184547184557%_)))
                      (let ((_%hd184587%_ _%$%hd184554184582%_)
                            (_%rest184589%_ _%$%tl184555184584%_))
                        (_%$%K184553184579%_ _%rest184589%_ _%hd184587%_)))
                    (_%$%try-match184549184573%_))))))))
    (define gx#stx-ormap
      (lambda (_%f184488%_ _%stx184489%_)
        (if (procedure? _%f184488%_)
            '#!void
            (error '"expected procedure" _%f184488%_))
        (let _%lp184491%_ ((_%rest184493%_ _%stx184489%_))
          (let* ((_%$%g184494184504%_ (gx#syntax-e _%rest184493%_))
                 (_%$%else184497184512%_
                  (lambda () (_%f184488%_ _%rest184493%_))))
            (let ((_%$%K184500184529%_
                   (lambda (_%rest184523%_ _%hd184524%_)
                     (let ((_%$e184526%_ (_%f184488%_ _%hd184524%_)))
                       (if _%$e184526%_
                           _%$e184526%_
                           (_%lp184491%_ _%rest184523%_)))))
                  (_%$%K184499184517%_ (lambda () '#f)))
              (let ((_%$%try-match184496184520%_
                     (lambda ()
                       (if (null? _%$%g184494184504%_)
                           (_%$%K184499184517%_)
                           (_%$%else184497184512%_)))))
                (if (pair? _%$%g184494184504%_)
                    (let ((_%$%tl184502184534%_ (##cdr _%$%g184494184504%_))
                          (_%$%hd184501184532%_ (##car _%$%g184494184504%_)))
                      (let ((_%hd184537%_ _%$%hd184501184532%_)
                            (_%rest184539%_ _%$%tl184502184534%_))
                        (_%$%K184500184529%_ _%rest184539%_ _%hd184537%_)))
                    (_%$%try-match184496184520%_))))))))
    (define gx#stx-foldl
      (lambda (_%f184436%_ _%iv184437%_ _%stx184438%_)
        (if (procedure? _%f184436%_)
            '#!void
            (error '"expected procedure" _%f184436%_))
        (let _%lp184440%_ ((_%r184442%_ _%iv184437%_)
                           (_%rest184443%_ _%stx184438%_))
          (let* ((_%$%g184444184454%_ (gx#syntax-e _%rest184443%_))
                 (_%$%else184447184462%_
                  (lambda () (_%f184436%_ _%rest184443%_ _%r184442%_))))
            (let ((_%$%K184450184476%_
                   (lambda (_%rest184473%_ _%hd184474%_)
                     (_%lp184440%_
                      (_%f184436%_ _%hd184474%_ _%r184442%_)
                      _%rest184473%_)))
                  (_%$%K184449184467%_ (lambda () _%r184442%_)))
              (let ((_%$%try-match184446184470%_
                     (lambda ()
                       (if (null? _%$%g184444184454%_)
                           (_%$%K184449184467%_)
                           (_%$%else184447184462%_)))))
                (if (pair? _%$%g184444184454%_)
                    (let ((_%$%tl184452184481%_ (##cdr _%$%g184444184454%_))
                          (_%$%hd184451184479%_ (##car _%$%g184444184454%_)))
                      (let ((_%hd184484%_ _%$%hd184451184479%_)
                            (_%rest184486%_ _%$%tl184452184481%_))
                        (_%$%K184450184476%_ _%rest184486%_ _%hd184484%_)))
                    (_%$%try-match184446184470%_))))))))
    (define gx#stx-foldr
      (lambda (_%f184385%_ _%iv184386%_ _%stx184387%_)
        (if (procedure? _%f184385%_)
            '#!void
            (error '"expected procedure" _%f184385%_))
        (let _%recur184389%_ ((_%rest184391%_ _%stx184387%_))
          (let* ((_%$%g184392184402%_ (gx#syntax-e _%rest184391%_))
                 (_%$%else184395184410%_
                  (lambda () (_%f184385%_ _%rest184391%_ _%iv184386%_))))
            (let ((_%$%K184398184424%_
                   (lambda (_%rest184421%_ _%hd184422%_)
                     (_%f184385%_
                      _%hd184422%_
                      (_%recur184389%_ _%rest184421%_))))
                  (_%$%K184397184415%_ (lambda () _%iv184386%_)))
              (let ((_%$%try-match184394184418%_
                     (lambda ()
                       (if (null? _%$%g184392184402%_)
                           (_%$%K184397184415%_)
                           (_%$%else184395184410%_)))))
                (if (pair? _%$%g184392184402%_)
                    (let ((_%$%tl184400184429%_ (##cdr _%$%g184392184402%_))
                          (_%$%hd184399184427%_ (##car _%$%g184392184402%_)))
                      (let ((_%hd184432%_ _%$%hd184399184427%_)
                            (_%rest184434%_ _%$%tl184400184429%_))
                        (_%$%K184398184424%_ _%rest184434%_ _%hd184432%_)))
                    (_%$%try-match184394184418%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx184383%_) (gx#stx-foldl cons '() _%stx184383%_)))
    (define gx#stx-last
      (lambda (_%stx184344%_)
        (let _%lp184346%_ ((_%rest184348%_ _%stx184344%_))
          (let* ((_%$%g184349184357%_ (gx#syntax-e _%rest184348%_))
                 (_%$%else184351184365%_ (lambda () _%rest184348%_))
                 (_%$%K184353184371%_
                  (lambda (_%rest184368%_ _%hd184369%_)
                    (if (gx#stx-null? _%rest184368%_)
                        _%hd184369%_
                        (_%lp184346%_ _%rest184368%_)))))
            (if (pair? _%$%g184349184357%_)
                (let ((_%$%hd184354184374%_ (##car _%$%g184349184357%_))
                      (_%$%tl184355184376%_ (##cdr _%$%g184349184357%_)))
                  (let* ((_%hd184379%_ _%$%hd184354184374%_)
                         (_%rest184381%_ _%$%tl184355184376%_))
                    (_%$%K184353184371%_ _%rest184381%_ _%hd184379%_)))
                (_%$%else184351184365%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx184315%_)
        (let _%lp184317%_ ((_%hd184319%_ _%stx184315%_))
          (let* ((_%$%g184320184327%_ (gx#syntax-e _%hd184319%_))
                 (_%$%E184322184331%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g184320184327%_
                           '([_ . rest]))
                    '#!void))
                 (_%$%K184323184336%_
                  (lambda (_%rest184334%_)
                    (if (gx#stx-pair? _%rest184334%_)
                        (_%lp184317%_ _%rest184334%_)
                        _%hd184319%_))))
            (if (pair? _%$%g184320184327%_)
                (let* ((_%$%tl184325184339%_ (##cdr _%$%g184320184327%_))
                       (_%rest184342%_ _%$%tl184325184339%_))
                  (_%$%K184323184336%_ _%rest184342%_))
                (_%$%E184322184331%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx184284%_ _%k184285%_)
        (let _%lp184287%_ ((_%rest184289%_ _%stx184284%_)
                           (_%k184290%_ _%k184285%_))
          (if (fxpositive? _%k184290%_)
              (let* ((_%$%g184291184298%_ (gx#syntax-e _%rest184289%_))
                     (_%$%E184293184302%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%g184291184298%_
                               '([_ . rest]))
                        '#!void))
                     (_%$%K184294184307%_
                      (lambda (_%rest184305%_)
                        (_%lp184287%_ _%rest184305%_ (##fx- _%k184290%_ '1)))))
                (if (pair? _%$%g184291184298%_)
                    (let* ((_%$%tl184296184310%_ (##cdr _%$%g184291184298%_))
                           (_%rest184313%_ _%$%tl184296184310%_))
                      (_%$%K184294184307%_ _%rest184313%_))
                    (_%$%E184293184302%_)))
              _%rest184289%_))))
    (define gx#stx-list-ref
      (lambda (_%stx184281%_ _%k184282%_)
        (gx#stx-car (gx#stx-list-tail _%stx184281%_ _%k184282%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx184193%_ _%key?184194%_)
        (if (procedure? _%key?184194%_)
            '#!void
            (error '"expected procedure" _%key?184194%_))
        (let _%lp184196%_ ((_%rest184198%_ _%stx184193%_))
          (let* ((_%$%g184199184209%_ (gx#stx-e _%rest184198%_))
                 (_%$%else184202184217%_ (lambda () '#f)))
            (let ((_%$%K184205184259%_
                   (lambda (_%rest184228%_ _%hd184229%_)
                     (if (_%key?184194%_ _%hd184229%_)
                         (let* ((_%$%g184230184238%_ (gx#stx-e _%rest184228%_))
                                (_%$%else184232184246%_ (lambda () '#f))
                                (_%$%K184234184251%_
                                 (lambda (_%rest184249%_)
                                   (_%lp184196%_ _%rest184249%_))))
                           (if (pair? _%$%g184230184238%_)
                               (let* ((_%$%tl184236184254%_
                                       (##cdr _%$%g184230184238%_))
                                      (_%rest184257%_ _%$%tl184236184254%_))
                                 (_%lp184196%_ _%rest184257%_))
                               (_%$%else184232184246%_)))
                         '#f)))
                  (_%$%K184204184222%_ (lambda () '#t)))
              (let ((_%$%try-match184201184225%_
                     (lambda ()
                       (if (null? _%$%g184199184209%_)
                           (_%$%K184204184222%_)
                           (_%$%else184202184217%_)))))
                (if (pair? _%$%g184199184209%_)
                    (let ((_%$%tl184207184264%_ (##cdr _%$%g184199184209%_))
                          (_%$%hd184206184262%_ (##car _%$%g184199184209%_)))
                      (let ((_%hd184267%_ _%$%hd184206184262%_)
                            (_%rest184269%_ _%$%tl184207184264%_))
                        (_%$%K184205184259%_ _%rest184269%_ _%hd184267%_)))
                    (_%$%try-match184201184225%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx184274%_)
        (let ((_%key?184276%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx184274%_ _%key?184276%_))))
    (define gx#stx-plist?
      (lambda _g185428_
        (let ((_g185429_ (##length _g185428_)))
          (cond ((##fx= _g185429_ 1) (apply gx#stx-plist?__0 _g185428_))
                ((##fx= _g185429_ 2) (apply gx#stx-plist?__% _g185428_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g185428_))))))
    (define gx#stx-getq__%
      (lambda (_%key184111%_ _%stx184112%_ _%key=?184113%_)
        (if (procedure? _%key=?184113%_)
            '#!void
            (error '"expected procedure" _%key=?184113%_))
        (let _%lp184115%_ ((_%rest184117%_ _%stx184112%_))
          (let* ((_%$%g184118184126%_ (gx#syntax-e _%rest184117%_))
                 (_%$%else184120184134%_ (lambda () '#f))
                 (_%$%K184122184168%_
                  (lambda (_%rest184137%_ _%hd184138%_)
                    (let* ((_%$%g184139184146%_ (gx#syntax-e _%rest184137%_))
                           (_%$%E184141184150%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g184139184146%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K184142184156%_
                            (lambda (_%rest184153%_ _%val184154%_)
                              (if (_%key=?184113%_ _%hd184138%_ _%key184111%_)
                                  _%val184154%_
                                  (_%lp184115%_ _%rest184153%_)))))
                      (if (pair? _%$%g184139184146%_)
                          (let ((_%$%hd184143184159%_
                                 (##car _%$%g184139184146%_))
                                (_%$%tl184144184161%_
                                 (##cdr _%$%g184139184146%_)))
                            (let* ((_%val184164%_ _%$%hd184143184159%_)
                                   (_%rest184166%_ _%$%tl184144184161%_))
                              (_%$%K184142184156%_
                               _%rest184166%_
                               _%val184164%_)))
                          (_%$%E184141184150%_))))))
            (if (pair? _%$%g184118184126%_)
                (let ((_%$%hd184123184171%_ (##car _%$%g184118184126%_))
                      (_%$%tl184124184173%_ (##cdr _%$%g184118184126%_)))
                  (let* ((_%hd184176%_ _%$%hd184123184171%_)
                         (_%rest184178%_ _%$%tl184124184173%_))
                    (_%$%K184122184168%_ _%rest184178%_ _%hd184176%_)))
                (_%$%else184120184134%_))))))
    (define gx#stx-getq__0
      (lambda (_%key184183%_ _%stx184184%_)
        (let ((_%key=?184186%_ gx#stx-eq?))
          (gx#stx-getq__% _%key184183%_ _%stx184184%_ _%key=?184186%_))))
    (define gx#stx-getq
      (lambda _g185430_
        (let ((_g185431_ (##length _g185430_)))
          (cond ((##fx= _g185431_ 2) (apply gx#stx-getq__0 _g185430_))
                ((##fx= _g185431_ 3) (apply gx#stx-getq__% _g185430_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g185430_))))))
    (define gx#stx-plist-assq__%
      (lambda (_%key184029%_ _%stx184030%_ _%key=?184031%_)
        (if (procedure? _%key=?184031%_)
            '#!void
            (error '"expected procedure" _%key=?184031%_))
        (let _%lp184033%_ ((_%rest184035%_ _%stx184030%_))
          (let* ((_%$%g184036184044%_ (gx#syntax-e _%rest184035%_))
                 (_%$%else184038184052%_ (lambda () '#f))
                 (_%$%K184040184086%_
                  (lambda (_%rest184055%_ _%hd184056%_)
                    (let* ((_%$%g184057184064%_ (gx#syntax-e _%rest184055%_))
                           (_%$%E184059184068%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g184057184064%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K184060184074%_
                            (lambda (_%rest184071%_ _%val184072%_)
                              (if (_%key=?184031%_ _%hd184056%_ _%key184029%_)
                                  (cons _%hd184056%_ _%val184072%_)
                                  (_%lp184033%_ _%rest184071%_)))))
                      (if (pair? _%$%g184057184064%_)
                          (let ((_%$%hd184061184077%_
                                 (##car _%$%g184057184064%_))
                                (_%$%tl184062184079%_
                                 (##cdr _%$%g184057184064%_)))
                            (let* ((_%val184082%_ _%$%hd184061184077%_)
                                   (_%rest184084%_ _%$%tl184062184079%_))
                              (_%$%K184060184074%_
                               _%rest184084%_
                               _%val184082%_)))
                          (_%$%E184059184068%_))))))
            (if (pair? _%$%g184036184044%_)
                (let ((_%$%hd184041184089%_ (##car _%$%g184036184044%_))
                      (_%$%tl184042184091%_ (##cdr _%$%g184036184044%_)))
                  (let* ((_%hd184094%_ _%$%hd184041184089%_)
                         (_%rest184096%_ _%$%tl184042184091%_))
                    (_%$%K184040184086%_ _%rest184096%_ _%hd184094%_)))
                (_%$%else184038184052%_))))))
    (define gx#stx-plist-assq__0
      (lambda (_%key184101%_ _%stx184102%_)
        (let ((_%key=?184104%_ gx#stx-eq?))
          (gx#stx-plist-assq__% _%key184101%_ _%stx184102%_ _%key=?184104%_))))
    (define gx#stx-plist-assq
      (lambda _g185432_
        (let ((_g185433_ (##length _g185432_)))
          (cond ((##fx= _g185433_ 2) (apply gx#stx-plist-assq__0 _g185432_))
                ((##fx= _g185433_ 3) (apply gx#stx-plist-assq__% _g185432_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist-assq
                  _g185432_))))))))
