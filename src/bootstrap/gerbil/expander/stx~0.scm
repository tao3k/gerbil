(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1789552478)
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
      (lambda _%$args185176%_
        (apply make-instance gx#identifier-wrap::t _%$args185176%_)))
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
      (lambda _%$args185173%_
        (apply make-instance gx#syntax-wrap::t _%$args185173%_)))
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
      (lambda _%$args185170%_
        (apply make-instance gx#syntax-quote::t _%$args185170%_)))
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
      (lambda (_%stx185168%_) (symbol? (gx#stx-e _%stx185168%_))))
    (define gx#identifier-quote?
      (lambda (_%stx185166%_)
        (if (##structure-direct-instance-of? _%stx185166%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx185166%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx185161%_)
        (if (##structure-direct-instance-of? _%stx185161%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx185161%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx185161%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx185156%_)
        (if (##structure-direct-instance-of? _%stx185156%_ 'gx#syntax-quote::t)
            _%stx185156%_
            (if (##structure-direct-instance-of?
                 _%stx185156%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx185156%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx185130%_)
        (if (##structure-direct-instance-of? _%stx185130%_ 'gx#syntax-wrap::t)
            (let _%lp185133%_ ((_%e185135%_
                                (##unchecked-structure-ref
                                 _%stx185130%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks185136%_
                                (cons (##unchecked-structure-ref
                                       _%stx185130%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e185135%_)
                  (let ((_%$e185139%_
                         (##type-id (##structure-type _%e185135%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e185139%_)
                        (_%lp185133%_
                         (##unchecked-structure-ref _%e185135%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e185135%_ '3 '#f '#f)
                          _%marks185136%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e185139%_)
                                (eq? 'gx#identifier-wrap::t _%$e185139%_))
                            (##unchecked-structure-ref _%e185135%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e185139%_)
                                (_%lp185133%_
                                 (##unchecked-structure-ref
                                  _%e185135%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks185136%_)
                                _%e185135%_))))
                  (if (null? _%marks185136%_)
                      _%e185135%_
                      (if (pair? _%e185135%_)
                          (cons (gx#stx-wrap
                                 (##car _%e185135%_)
                                 _%marks185136%_)
                                (gx#stx-wrap
                                 (##cdr _%e185135%_)
                                 _%marks185136%_))
                          (if (vector? _%e185135%_)
                              (vector-map
                               (lambda (_%$%g185147185149%_)
                                 (gx#stx-wrap
                                  _%$%g185147185149%_
                                  _%marks185136%_))
                               _%e185135%_)
                              (if (box? _%e185135%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e185135%_)
                                        _%marks185136%_))
                                  _%e185135%_))))))
            (if (##structure-instance-of? _%stx185130%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx185130%_ '1 '#f '#f)
                _%stx185130%_))))
    (define gx#syntax->datum
      (lambda (_%stx185123%_)
        (if (##structure-instance-of? _%stx185123%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx185123%_ '1 '#f '#f))
            (if (pair? _%stx185123%_)
                (cons (gx#syntax->datum (##car _%stx185123%_))
                      (gx#syntax->datum (##cdr _%stx185123%_)))
                (if (vector? _%stx185123%_)
                    (vector-map gx#syntax->datum _%stx185123%_)
                    (if (box? _%stx185123%_)
                        (box (gx#syntax->datum (unbox _%stx185123%_)))
                        _%stx185123%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx185057%_ _%datum185058%_ _%src185059%_ _%quote?185060%_)
        (letrec ((_%wrap-datum185062%_
                  (lambda (_%e185095%_ _%marks185096%_)
                    (_%wrap-inner185064%_
                     _%e185095%_
                     (lambda (_%$%g185097185099%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%$%g185097185099%_
                        _%src185059%_
                        _%marks185096%_)))))
                 (_%wrap-quote185063%_
                  (lambda (_%e185087%_ _%ctx185088%_ _%marks185089%_)
                    (_%wrap-inner185064%_
                     _%e185087%_
                     (lambda (_%$%g185090185092%_)
                       (##structure
                        gx#syntax-quote::t
                        _%$%g185090185092%_
                        _%src185059%_
                        _%ctx185088%_
                        _%marks185089%_)))))
                 (_%wrap-inner185064%_
                  (lambda (_%e185075%_ _%wrap-e185076%_)
                    (let _%recur185078%_ ((_%e185080%_ _%e185075%_))
                      (if (symbol? _%e185080%_)
                          (_%wrap-e185076%_ _%e185080%_)
                          (if (pair? _%e185080%_)
                              (cons (_%recur185078%_ (##car _%e185080%_))
                                    (_%recur185078%_ (##cdr _%e185080%_)))
                              (if (vector? _%e185080%_)
                                  (vector-map _%recur185078%_ _%e185080%_)
                                  (if (box? _%e185080%_)
                                      (box (_%recur185078%_
                                            (unbox _%e185080%_)))
                                      _%e185080%_)))))))
                 (_%wrap-outer185065%_
                  (lambda (_%e185073%_)
                    (if (##structure-instance-of? _%e185073%_ 'gerbil#AST::t)
                        _%e185073%_
                        (##structure gx#AST::t _%e185073%_ _%src185059%_)))))
          (if (##structure-instance-of? _%datum185058%_ 'gerbil#AST::t)
              _%datum185058%_
              (if _%stx185057%_
                  (if (gx#identifier? _%stx185057%_)
                      (let ((_%stx185070%_ (gx#stx-unwrap__0 _%stx185057%_)))
                        (_%wrap-outer185065%_
                         (if (##structure-direct-instance-of?
                              _%stx185070%_
                              'gx#syntax-quote::t)
                             (if _%quote?185060%_
                                 (_%wrap-quote185063%_
                                  _%datum185058%_
                                  (##unchecked-structure-ref
                                   _%stx185070%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx185070%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum185062%_
                                  _%datum185058%_
                                  (##unchecked-structure-ref
                                   _%stx185070%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum185062%_
                              _%datum185058%_
                              (##unchecked-structure-ref
                               _%stx185070%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx185057%_))
                  (##structure gx#AST::t _%datum185058%_ _%src185059%_))))))
    (define gx#datum->syntax__0
      (lambda (_%stx185105%_ _%datum185106%_)
        (let* ((_%src185108%_ '#f) (_%quote?185110%_ '#t))
          (gx#datum->syntax__%
           _%stx185105%_
           _%datum185106%_
           _%src185108%_
           _%quote?185110%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx185112%_ _%datum185113%_ _%src185114%_)
        (let ((_%quote?185116%_ '#t))
          (gx#datum->syntax__%
           _%stx185112%_
           _%datum185113%_
           _%src185114%_
           _%quote?185116%_))))
    (define gx#datum->syntax
      (lambda _g185256_
        (let ((_g185257_ (##length _g185256_)))
          (cond ((##fx= _g185257_ 2) (apply gx#datum->syntax__0 _g185256_))
                ((##fx= _g185257_ 3) (apply gx#datum->syntax__1 _g185256_))
                ((##fx= _g185257_ 4) (apply gx#datum->syntax__% _g185256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g185256_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx185023%_ _%marks185024%_)
        (let _%lp185026%_ ((_%e185028%_ _%stx185023%_)
                           (_%marks185029%_ _%marks185024%_)
                           (_%src185030%_ (gx#stx-source _%stx185023%_)))
          (if (##structure-direct-instance-of? _%e185028%_ 'gx#syntax-wrap::t)
              (_%lp185026%_
               (##unchecked-structure-ref _%e185028%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e185028%_ '3 '#f '#f)
                _%marks185029%_)
               (##unchecked-structure-ref _%e185028%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e185028%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks185029%_)
                      _%e185028%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e185028%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e185028%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e185028%_ '3 '#f '#f)
                        _%marks185029%_)))
                  (if (##structure-direct-instance-of?
                       _%e185028%_
                       'gx#syntax-quote::t)
                      _%e185028%_
                      (if (##structure-instance-of? _%e185028%_ 'gerbil#AST::t)
                          (_%lp185026%_
                           (##unchecked-structure-ref _%e185028%_ '1 '#f '#f)
                           _%marks185029%_
                           (##unchecked-structure-ref _%e185028%_ '2 '#f '#f))
                          (if (symbol? _%e185028%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e185028%_
                               _%src185030%_
                               (reverse _%marks185029%_))
                              (if (null? _%marks185029%_)
                                  _%e185028%_
                                  (if (pair? _%e185028%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e185028%_)
                                             _%marks185029%_)
                                            (gx#stx-wrap
                                             (##cdr _%e185028%_)
                                             _%marks185029%_))
                                      (if (vector? _%e185028%_)
                                          (vector-map
                                           (lambda (_%$%g185039185041%_)
                                             (gx#stx-wrap
                                              _%$%g185039185041%_
                                              _%marks185029%_))
                                           _%e185028%_)
                                          (if (box? _%e185028%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e185028%_)
                                                    _%marks185029%_))
                                              _%e185028%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx185049%_)
        (let ((_%marks185051%_ '()))
          (gx#stx-unwrap__% _%stx185049%_ _%marks185051%_))))
    (define gx#stx-unwrap
      (lambda _g185258_
        (let ((_g185259_ (##length _g185258_)))
          (cond ((##fx= _g185259_ 1) (apply gx#stx-unwrap__0 _g185258_))
                ((##fx= _g185259_ 2) (apply gx#stx-unwrap__% _g185258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g185258_))))))
    (define gx#stx-wrap
      (lambda (_%stx185016%_ _%marks185017%_)
        (foldl__0
         (lambda (_%mark185019%_ _%stx185020%_)
           (gx#stx-apply-mark _%stx185020%_ _%mark185019%_))
         _%stx185016%_
         _%marks185017%_)))
    (define gx#stx-rewrap
      (lambda (_%stx185010%_ _%marks185011%_)
        (foldr__0
         (lambda (_%mark185013%_ _%stx185014%_)
           (gx#stx-apply-mark _%stx185014%_ _%mark185013%_))
         _%stx185010%_
         _%marks185011%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx185004%_ _%mark185005%_)
        (if (##structure-direct-instance-of? _%stx185004%_ 'gx#syntax-quote::t)
            _%stx185004%_
            (if (and (##structure-direct-instance-of?
                      _%stx185004%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark185005%_
                          (##unchecked-structure-ref
                           _%stx185004%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx185004%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx185004%_
                 (gx#stx-source _%stx185004%_)
                 _%mark185005%_)))))
    (define gx#apply-mark
      (lambda (_%mark184968%_ _%marks184969%_)
        (let* ((_%$%marks184970184978%_ _%marks184969%_)
               (_%$%else184972184986%_
                (lambda () (cons _%mark184968%_ _%marks184969%_)))
               (_%$%K184974184992%_
                (lambda (_%rest184989%_ _%hd184990%_)
                  (if (eq? _%mark184968%_ _%hd184990%_)
                      _%rest184989%_
                      (cons _%mark184968%_ _%marks184969%_)))))
          (if (pair? _%$%marks184970184978%_)
              (let ((_%$%hd184975184995%_ (##car _%$%marks184970184978%_))
                    (_%$%tl184976184997%_ (##cdr _%$%marks184970184978%_)))
                (let* ((_%hd185000%_ _%$%hd184975184995%_)
                       (_%rest185002%_ _%$%tl184976184997%_))
                  (_%$%K184974184992%_ _%rest185002%_ _%hd185000%_)))
              (_%$%else184972184986%_)))))
    (define gx#stx-e
      (lambda (_%stx184963%_)
        (if (##structure-direct-instance-of? _%stx184963%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx184963%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx184963%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx184963%_ '1 '#f '#f)
                _%stx184963%_))))
    (define gx#stx-source
      (lambda (_%stx184961%_)
        (if (##structure-instance-of? _%stx184961%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx184961%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx184955%_ _%src184956%_)
        (if (or (##structure-instance-of? _%stx184955%_ 'gerbil#AST::t)
                (not _%src184956%_))
            _%stx184955%_
            (##structure gx#AST::t _%stx184955%_ _%src184956%_))))
    (define gx#stx-datum?
      (lambda (_%stx184953%_) (gx#self-quoting? (gx#stx-e _%stx184953%_))))
    (define gx#self-quoting?
      (lambda (_%x184936%_)
        (let ((_%$e184938%_ (immediate? _%x184936%_)))
          (if _%$e184938%_
              _%$e184938%_
              (let ((_%$e184941%_ (number? _%x184936%_)))
                (if _%$e184941%_
                    _%$e184941%_
                    (let ((_%$e184944%_ (keyword? _%x184936%_)))
                      (if _%$e184944%_
                          _%$e184944%_
                          (let ((_%$e184947%_ (string? _%x184936%_)))
                            (if _%$e184947%_
                                _%$e184947%_
                                (let ((_%$e184950%_ (vector? _%x184936%_)))
                                  (if _%$e184950%_
                                      _%$e184950%_
                                      (u8vector? _%x184936%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e184934%_) (boolean? (gx#stx-e _%e184934%_))))
    (define gx#stx-keyword?
      (lambda (_%e184932%_) (keyword? (gx#stx-e _%e184932%_))))
    (define gx#stx-char? (lambda (_%e184930%_) (char? (gx#stx-e _%e184930%_))))
    (define gx#stx-number?
      (lambda (_%e184928%_) (number? (gx#stx-e _%e184928%_))))
    (define gx#stx-fixnum?
      (lambda (_%e184926%_) (fixnum? (gx#stx-e _%e184926%_))))
    (define gx#stx-string?
      (lambda (_%e184924%_) (string? (gx#stx-e _%e184924%_))))
    (define gx#stx-null? (lambda (_%e184922%_) (null? (gx#stx-e _%e184922%_))))
    (define gx#stx-pair? (lambda (_%e184920%_) (pair? (gx#stx-e _%e184920%_))))
    (define gx#stx-list?
      (lambda (_%e184882%_)
        (let* ((_%$%g184883184892%_ (gx#stx-e _%e184882%_))
               (_%$%E184886184896%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g184883184892%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%$%K184888184912%_
                 (lambda (_%rest184910%_) (gx#stx-list? _%rest184910%_)))
                (_%$%K184887184902%_
                 (lambda (_%tail184900%_) (null? _%tail184900%_))))
            (if (pair? _%$%g184883184892%_)
                (let* ((_%$%tl184890184915%_ (##cdr _%$%g184883184892%_))
                       (_%rest184918%_ _%$%tl184890184915%_))
                  (gx#stx-list? _%rest184918%_))
                (let ((_%tail184905%_ _%$%g184883184892%_))
                  (null? _%tail184905%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e184875%_)
        (let* ((_%e184877%_ (gx#stx-e _%e184875%_))
               (_%$e184879%_ (pair? _%e184877%_)))
          (if _%$e184879%_ _%$e184879%_ (null? _%e184877%_)))))
    (define gx#stx-vector?
      (lambda (_%e184873%_) (vector? (gx#stx-e _%e184873%_))))
    (define gx#stx-box? (lambda (_%e184871%_) (box? (gx#stx-e _%e184871%_))))
    (define gx#stx-eq?
      (lambda (_%x184868%_ _%y184869%_)
        (eq? (gx#stx-e _%x184868%_) (gx#stx-e _%y184869%_))))
    (define gx#stx-eqv?
      (lambda (_%x184865%_ _%y184866%_)
        (eqv? (gx#stx-e _%x184865%_) (gx#stx-e _%y184866%_))))
    (define gx#stx-equal?
      (lambda (_%x184862%_ _%y184863%_)
        (equal? (gx#stx-e _%x184862%_) (gx#stx-e _%y184863%_))))
    (define gx#stx-false? (lambda (_%x184860%_) (not (gx#stx-e _%x184860%_))))
    (define gx#stx-identifier
      (lambda (_%template184857%_ . _%args184858%_)
        (gx#datum->syntax__1
         _%template184857%_
         (apply make-symbol (gx#syntax->datum _%args184858%_))
         (gx#stx-source _%template184857%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx184855%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx184855%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx184850%_)
        (if (##structure-direct-instance-of?
             _%stx184850%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx184850%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx184850%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx184850%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx184850%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx184846%_)
        (let ((_%stx184848%_ (gx#stx-unwrap__0 _%stx184846%_)))
          (if (gx#identifier-quote? _%stx184848%_)
              (##unchecked-structure-ref _%stx184848%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx184801%_)
        (let* ((_%$%g184802184812%_ (gx#stx-e _%stx184801%_))
               (_%$%else184805184820%_ (lambda () '#f)))
          (let ((_%$%K184808184834%_
                 (lambda (_%rest184831%_ _%hd184832%_)
                   (if (gx#identifier? _%hd184832%_)
                       (gx#identifier-list? _%rest184831%_)
                       '#f)))
                (_%$%K184807184825%_ (lambda () '#t)))
            (let ((_%$%try-match184804184828%_
                   (lambda ()
                     (if (null? _%$%g184802184812%_)
                         (_%$%K184807184825%_)
                         (_%$%else184805184820%_)))))
              (if (pair? _%$%g184802184812%_)
                  (let ((_%$%tl184810184839%_ (##cdr _%$%g184802184812%_))
                        (_%$%hd184809184837%_ (##car _%$%g184802184812%_)))
                    (let ((_%hd184842%_ _%$%hd184809184837%_)
                          (_%rest184844%_ _%$%tl184810184839%_))
                      (_%$%K184808184834%_ _%rest184844%_ _%hd184842%_)))
                  (_%$%try-match184804184828%_)))))))
    (define gx#genident__%
      (lambda (_%e184781%_ _%src184782%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src184782%_) _%src184782%_ '#f)
         (make-symbol__1
          '"$%"
          (##gensym
           (let ((_%e184784%_ (gx#stx-e _%e184781%_)))
             (if (symbol? _%e184784%_) _%e184784%_ 'g))))
         _%src184782%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e184790%_ 'g) (_%src184792%_ '#f))
          (gx#genident__% _%e184790%_ _%src184792%_))))
    (define gx#genident__1
      (lambda (_%e184794%_)
        (let ((_%src184796%_ '#f))
          (gx#genident__% _%e184794%_ _%src184796%_))))
    (define gx#genident
      (lambda _g185260_
        (let ((_g185261_ (##length _g185260_)))
          (cond ((##fx= _g185261_ 0) (apply gx#genident__0 _g185260_))
                ((##fx= _g185261_ 1) (apply gx#genident__1 _g185260_))
                ((##fx= _g185261_ 2) (apply gx#genident__% _g185260_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g185260_))))))
    (define gx#gentemps
      (lambda (_%stx-lst184776%_)
        (gx#stx-map1
         (lambda (_%x184778%_) (gx#genident__% _%x184778%_ _%x184778%_))
         _%stx-lst184776%_)))
    (define gx#syntax->list
      (lambda (_%stx184774%_) (gx#stx-map1 values _%stx184774%_)))
    (define gx#stx-car
      (lambda (_%stx184771%_)
        (declare (safe))
        (car (gx#syntax-e _%stx184771%_))))
    (define gx#stx-cdr
      (lambda (_%stx184768%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx184768%_))))
    (define gx#stx-length
      (lambda (_%stx184733%_)
        (let _%lp184735%_ ((_%rest184737%_ _%stx184733%_) (_%n184738%_ '0))
          (let* ((_%$%g184739184747%_ (gx#stx-e _%rest184737%_))
                 (_%$%else184741184755%_ (lambda () _%n184738%_))
                 (_%$%K184743184760%_
                  (lambda (_%rest184758%_)
                    (_%lp184735%_ _%rest184758%_ (##fx+ _%n184738%_ '1)))))
            (if (pair? _%$%g184739184747%_)
                (let* ((_%$%tl184745184763%_ (##cdr _%$%g184739184747%_))
                       (_%rest184766%_ _%$%tl184745184763%_))
                  (_%$%K184743184760%_ _%rest184766%_))
                (_%$%else184741184755%_))))))
    (define gx#stx-for-each
      (lambda _g185262_
        (let ((_g185263_ (##length _g185262_)))
          (cond ((##fx= _g185263_ 2) (apply gx#stx-for-each1 _g185262_))
                ((##fx= _g185263_ 3) (apply gx#stx-for-each2 _g185262_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g185262_))))))
    (define gx#stx-for-each1
      (lambda (_%f184676%_ _%stx184677%_)
        (if (procedure? _%f184676%_)
            '#!void
            (error '"expected procedure" _%f184676%_))
        (let _%lp184679%_ ((_%rest184681%_ _%stx184677%_))
          (let* ((_%$%g184682184692%_ (gx#syntax-e _%rest184681%_))
                 (_%$%else184685184700%_
                  (lambda () (_%f184676%_ _%rest184681%_))))
            (let ((_%$%K184688184714%_
                   (lambda (_%rest184711%_ _%hd184712%_)
                     (_%f184676%_ _%hd184712%_)
                     (_%lp184679%_ _%rest184711%_)))
                  (_%$%K184687184705%_ (lambda () '#!void)))
              (let ((_%$%try-match184684184708%_
                     (lambda ()
                       (if (null? _%$%g184682184692%_)
                           (_%$%K184687184705%_)
                           (_%$%else184685184700%_)))))
                (if (pair? _%$%g184682184692%_)
                    (let ((_%$%tl184690184719%_ (##cdr _%$%g184682184692%_))
                          (_%$%hd184689184717%_ (##car _%$%g184682184692%_)))
                      (let ((_%hd184722%_ _%$%hd184689184717%_)
                            (_%rest184724%_ _%$%tl184690184719%_))
                        (_%$%K184688184714%_ _%rest184724%_ _%hd184722%_)))
                    (_%$%try-match184684184708%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f184581%_ _%xstx184582%_ _%ystx184583%_)
        (if (procedure? _%f184581%_)
            '#!void
            (error '"expected procedure" _%f184581%_))
        (let _%lp184585%_ ((_%xrest184587%_ _%xstx184582%_)
                           (_%yrest184588%_ _%ystx184583%_))
          (let* ((_%$%g184589184599%_ (gx#syntax-e _%xrest184587%_))
                 (_%$%else184592184607%_ (lambda () '#!void)))
            (let ((_%$%K184595184664%_
                   (lambda (_%xrest184633%_ _%xhd184634%_)
                     (let* ((_%$%g184635184642%_ (gx#syntax-e _%yrest184588%_))
                            (_%$%E184637184646%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g184635184642%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K184638184652%_
                             (lambda (_%yrest184649%_ _%yhd184650%_)
                               (_%f184581%_ _%xhd184634%_ _%yhd184650%_)
                               (_%lp184585%_
                                _%xrest184633%_
                                _%yrest184649%_))))
                       (if (pair? _%$%g184635184642%_)
                           (let ((_%$%hd184639184655%_
                                  (##car _%$%g184635184642%_))
                                 (_%$%tl184640184657%_
                                  (##cdr _%$%g184635184642%_)))
                             (let* ((_%yhd184660%_ _%$%hd184639184655%_)
                                    (_%yrest184662%_ _%$%tl184640184657%_))
                               (_%$%K184638184652%_
                                _%yrest184662%_
                                _%yhd184660%_)))
                           (_%$%E184637184646%_)))))
                  (_%$%K184594184627%_
                   (lambda ()
                     (let* ((_%$%yrest184611184616%_ _%yrest184588%_)
                            (_%$%E184613184620%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest184611184616%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K184614184624%_
                             (lambda ()
                               (_%f184581%_ _%xrest184587%_ _%yrest184588%_))))
                       (if (gx#stx-null? _%$%yrest184611184616%_)
                           (_%$%E184613184620%_)
                           (_%$%K184614184624%_))))))
              (let ((_%$%try-match184591184630%_
                     (lambda ()
                       (if (null? _%$%g184589184599%_)
                           (_%$%else184592184607%_)
                           (_%$%K184594184627%_)))))
                (if (pair? _%$%g184589184599%_)
                    (let ((_%$%tl184597184669%_ (##cdr _%$%g184589184599%_))
                          (_%$%hd184596184667%_ (##car _%$%g184589184599%_)))
                      (let ((_%xhd184672%_ _%$%hd184596184667%_)
                            (_%xrest184674%_ _%$%tl184597184669%_))
                        (_%$%K184595184664%_ _%xrest184674%_ _%xhd184672%_)))
                    (_%$%try-match184591184630%_))))))))
    (define gx#stx-map
      (lambda _g185264_
        (let ((_g185265_ (##length _g185264_)))
          (cond ((##fx= _g185265_ 2) (apply gx#stx-map1 _g185264_))
                ((##fx= _g185265_ 3) (apply gx#stx-map2 _g185264_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g185264_))))))
    (define gx#stx-map1
      (lambda (_%f184524%_ _%stx184525%_)
        (if (procedure? _%f184524%_)
            '#!void
            (error '"expected procedure" _%f184524%_))
        (let _%recur184527%_ ((_%rest184529%_ _%stx184525%_))
          (let* ((_%$%g184530184540%_ (gx#syntax-e _%rest184529%_))
                 (_%$%else184533184548%_
                  (lambda () (_%f184524%_ _%rest184529%_))))
            (let ((_%$%K184536184562%_
                   (lambda (_%rest184559%_ _%hd184560%_)
                     (cons (_%f184524%_ _%hd184560%_)
                           (_%recur184527%_ _%rest184559%_))))
                  (_%$%K184535184553%_ (lambda () '())))
              (let ((_%$%try-match184532184556%_
                     (lambda ()
                       (if (null? _%$%g184530184540%_)
                           (_%$%K184535184553%_)
                           (_%$%else184533184548%_)))))
                (if (pair? _%$%g184530184540%_)
                    (let ((_%$%tl184538184567%_ (##cdr _%$%g184530184540%_))
                          (_%$%hd184537184565%_ (##car _%$%g184530184540%_)))
                      (let ((_%hd184570%_ _%$%hd184537184565%_)
                            (_%rest184572%_ _%$%tl184538184567%_))
                        (_%$%K184536184562%_ _%rest184572%_ _%hd184570%_)))
                    (_%$%try-match184532184556%_))))))))
    (define gx#stx-map2
      (lambda (_%f184429%_ _%xstx184430%_ _%ystx184431%_)
        (if (procedure? _%f184429%_)
            '#!void
            (error '"expected procedure" _%f184429%_))
        (let _%recur184433%_ ((_%xrest184435%_ _%xstx184430%_)
                              (_%yrest184436%_ _%ystx184431%_))
          (let* ((_%$%g184437184447%_ (gx#syntax-e _%xrest184435%_))
                 (_%$%else184440184455%_ (lambda () '())))
            (let ((_%$%K184443184512%_
                   (lambda (_%xrest184481%_ _%xhd184482%_)
                     (let* ((_%$%g184483184490%_ (gx#syntax-e _%yrest184436%_))
                            (_%$%E184485184494%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g184483184490%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K184486184500%_
                             (lambda (_%yrest184497%_ _%yhd184498%_)
                               (cons (_%f184429%_ _%xhd184482%_ _%yhd184498%_)
                                     (_%recur184433%_
                                      _%xrest184481%_
                                      _%yrest184497%_)))))
                       (if (pair? _%$%g184483184490%_)
                           (let ((_%$%hd184487184503%_
                                  (##car _%$%g184483184490%_))
                                 (_%$%tl184488184505%_
                                  (##cdr _%$%g184483184490%_)))
                             (let* ((_%yhd184508%_ _%$%hd184487184503%_)
                                    (_%yrest184510%_ _%$%tl184488184505%_))
                               (_%$%K184486184500%_
                                _%yrest184510%_
                                _%yhd184508%_)))
                           (_%$%E184485184494%_)))))
                  (_%$%K184442184475%_
                   (lambda ()
                     (let* ((_%$%yrest184459184464%_ _%yrest184436%_)
                            (_%$%E184461184468%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest184459184464%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K184462184472%_
                             (lambda ()
                               (_%f184429%_ _%xrest184435%_ _%yrest184436%_))))
                       (if (gx#stx-null? _%$%yrest184459184464%_)
                           (_%$%E184461184468%_)
                           (_%$%K184462184472%_))))))
              (let ((_%$%try-match184439184478%_
                     (lambda ()
                       (if (null? _%$%g184437184447%_)
                           (_%$%else184440184455%_)
                           (_%$%K184442184475%_)))))
                (if (pair? _%$%g184437184447%_)
                    (let ((_%$%tl184445184517%_ (##cdr _%$%g184437184447%_))
                          (_%$%hd184444184515%_ (##car _%$%g184437184447%_)))
                      (let ((_%xhd184520%_ _%$%hd184444184515%_)
                            (_%xrest184522%_ _%$%tl184445184517%_))
                        (_%$%K184443184512%_ _%xrest184522%_ _%xhd184520%_)))
                    (_%$%try-match184439184478%_))))))))
    (define gx#stx-andmap
      (lambda (_%f184379%_ _%stx184380%_)
        (if (procedure? _%f184379%_)
            '#!void
            (error '"expected procedure" _%f184379%_))
        (let _%lp184382%_ ((_%rest184384%_ _%stx184380%_))
          (let* ((_%$%g184385184395%_ (gx#syntax-e _%rest184384%_))
                 (_%$%else184388184403%_
                  (lambda () (_%f184379%_ _%rest184384%_))))
            (let ((_%$%K184391184417%_
                   (lambda (_%rest184414%_ _%hd184415%_)
                     (if (_%f184379%_ _%hd184415%_)
                         (_%lp184382%_ _%rest184414%_)
                         '#f)))
                  (_%$%K184390184408%_ (lambda () '#t)))
              (let ((_%$%try-match184387184411%_
                     (lambda ()
                       (if (null? _%$%g184385184395%_)
                           (_%$%K184390184408%_)
                           (_%$%else184388184403%_)))))
                (if (pair? _%$%g184385184395%_)
                    (let ((_%$%tl184393184422%_ (##cdr _%$%g184385184395%_))
                          (_%$%hd184392184420%_ (##car _%$%g184385184395%_)))
                      (let ((_%hd184425%_ _%$%hd184392184420%_)
                            (_%rest184427%_ _%$%tl184393184422%_))
                        (_%$%K184391184417%_ _%rest184427%_ _%hd184425%_)))
                    (_%$%try-match184387184411%_))))))))
    (define gx#stx-ormap
      (lambda (_%f184326%_ _%stx184327%_)
        (if (procedure? _%f184326%_)
            '#!void
            (error '"expected procedure" _%f184326%_))
        (let _%lp184329%_ ((_%rest184331%_ _%stx184327%_))
          (let* ((_%$%g184332184342%_ (gx#syntax-e _%rest184331%_))
                 (_%$%else184335184350%_
                  (lambda () (_%f184326%_ _%rest184331%_))))
            (let ((_%$%K184338184367%_
                   (lambda (_%rest184361%_ _%hd184362%_)
                     (let ((_%$e184364%_ (_%f184326%_ _%hd184362%_)))
                       (if _%$e184364%_
                           _%$e184364%_
                           (_%lp184329%_ _%rest184361%_)))))
                  (_%$%K184337184355%_ (lambda () '#f)))
              (let ((_%$%try-match184334184358%_
                     (lambda ()
                       (if (null? _%$%g184332184342%_)
                           (_%$%K184337184355%_)
                           (_%$%else184335184350%_)))))
                (if (pair? _%$%g184332184342%_)
                    (let ((_%$%tl184340184372%_ (##cdr _%$%g184332184342%_))
                          (_%$%hd184339184370%_ (##car _%$%g184332184342%_)))
                      (let ((_%hd184375%_ _%$%hd184339184370%_)
                            (_%rest184377%_ _%$%tl184340184372%_))
                        (_%$%K184338184367%_ _%rest184377%_ _%hd184375%_)))
                    (_%$%try-match184334184358%_))))))))
    (define gx#stx-foldl
      (lambda (_%f184274%_ _%iv184275%_ _%stx184276%_)
        (if (procedure? _%f184274%_)
            '#!void
            (error '"expected procedure" _%f184274%_))
        (let _%lp184278%_ ((_%r184280%_ _%iv184275%_)
                           (_%rest184281%_ _%stx184276%_))
          (let* ((_%$%g184282184292%_ (gx#syntax-e _%rest184281%_))
                 (_%$%else184285184300%_
                  (lambda () (_%f184274%_ _%rest184281%_ _%r184280%_))))
            (let ((_%$%K184288184314%_
                   (lambda (_%rest184311%_ _%hd184312%_)
                     (_%lp184278%_
                      (_%f184274%_ _%hd184312%_ _%r184280%_)
                      _%rest184311%_)))
                  (_%$%K184287184305%_ (lambda () _%r184280%_)))
              (let ((_%$%try-match184284184308%_
                     (lambda ()
                       (if (null? _%$%g184282184292%_)
                           (_%$%K184287184305%_)
                           (_%$%else184285184300%_)))))
                (if (pair? _%$%g184282184292%_)
                    (let ((_%$%tl184290184319%_ (##cdr _%$%g184282184292%_))
                          (_%$%hd184289184317%_ (##car _%$%g184282184292%_)))
                      (let ((_%hd184322%_ _%$%hd184289184317%_)
                            (_%rest184324%_ _%$%tl184290184319%_))
                        (_%$%K184288184314%_ _%rest184324%_ _%hd184322%_)))
                    (_%$%try-match184284184308%_))))))))
    (define gx#stx-foldr
      (lambda (_%f184223%_ _%iv184224%_ _%stx184225%_)
        (if (procedure? _%f184223%_)
            '#!void
            (error '"expected procedure" _%f184223%_))
        (let _%recur184227%_ ((_%rest184229%_ _%stx184225%_))
          (let* ((_%$%g184230184240%_ (gx#syntax-e _%rest184229%_))
                 (_%$%else184233184248%_
                  (lambda () (_%f184223%_ _%rest184229%_ _%iv184224%_))))
            (let ((_%$%K184236184262%_
                   (lambda (_%rest184259%_ _%hd184260%_)
                     (_%f184223%_
                      _%hd184260%_
                      (_%recur184227%_ _%rest184259%_))))
                  (_%$%K184235184253%_ (lambda () _%iv184224%_)))
              (let ((_%$%try-match184232184256%_
                     (lambda ()
                       (if (null? _%$%g184230184240%_)
                           (_%$%K184235184253%_)
                           (_%$%else184233184248%_)))))
                (if (pair? _%$%g184230184240%_)
                    (let ((_%$%tl184238184267%_ (##cdr _%$%g184230184240%_))
                          (_%$%hd184237184265%_ (##car _%$%g184230184240%_)))
                      (let ((_%hd184270%_ _%$%hd184237184265%_)
                            (_%rest184272%_ _%$%tl184238184267%_))
                        (_%$%K184236184262%_ _%rest184272%_ _%hd184270%_)))
                    (_%$%try-match184232184256%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx184221%_) (gx#stx-foldl cons '() _%stx184221%_)))
    (define gx#stx-last
      (lambda (_%stx184182%_)
        (let _%lp184184%_ ((_%rest184186%_ _%stx184182%_))
          (let* ((_%$%g184187184195%_ (gx#syntax-e _%rest184186%_))
                 (_%$%else184189184203%_ (lambda () _%rest184186%_))
                 (_%$%K184191184209%_
                  (lambda (_%rest184206%_ _%hd184207%_)
                    (if (gx#stx-null? _%rest184206%_)
                        _%hd184207%_
                        (_%lp184184%_ _%rest184206%_)))))
            (if (pair? _%$%g184187184195%_)
                (let ((_%$%hd184192184212%_ (##car _%$%g184187184195%_))
                      (_%$%tl184193184214%_ (##cdr _%$%g184187184195%_)))
                  (let* ((_%hd184217%_ _%$%hd184192184212%_)
                         (_%rest184219%_ _%$%tl184193184214%_))
                    (_%$%K184191184209%_ _%rest184219%_ _%hd184217%_)))
                (_%$%else184189184203%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx184153%_)
        (let _%lp184155%_ ((_%hd184157%_ _%stx184153%_))
          (let* ((_%$%g184158184165%_ (gx#syntax-e _%hd184157%_))
                 (_%$%E184160184169%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g184158184165%_
                           '([_ . rest]))
                    '#!void))
                 (_%$%K184161184174%_
                  (lambda (_%rest184172%_)
                    (if (gx#stx-pair? _%rest184172%_)
                        (_%lp184155%_ _%rest184172%_)
                        _%hd184157%_))))
            (if (pair? _%$%g184158184165%_)
                (let* ((_%$%tl184163184177%_ (##cdr _%$%g184158184165%_))
                       (_%rest184180%_ _%$%tl184163184177%_))
                  (_%$%K184161184174%_ _%rest184180%_))
                (_%$%E184160184169%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx184122%_ _%k184123%_)
        (let _%lp184125%_ ((_%rest184127%_ _%stx184122%_)
                           (_%k184128%_ _%k184123%_))
          (if (fxpositive? _%k184128%_)
              (let* ((_%$%g184129184136%_ (gx#syntax-e _%rest184127%_))
                     (_%$%E184131184140%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%g184129184136%_
                               '([_ . rest]))
                        '#!void))
                     (_%$%K184132184145%_
                      (lambda (_%rest184143%_)
                        (_%lp184125%_ _%rest184143%_ (##fx- _%k184128%_ '1)))))
                (if (pair? _%$%g184129184136%_)
                    (let* ((_%$%tl184134184148%_ (##cdr _%$%g184129184136%_))
                           (_%rest184151%_ _%$%tl184134184148%_))
                      (_%$%K184132184145%_ _%rest184151%_))
                    (_%$%E184131184140%_)))
              _%rest184127%_))))
    (define gx#stx-list-ref
      (lambda (_%stx184119%_ _%k184120%_)
        (gx#stx-car (gx#stx-list-tail _%stx184119%_ _%k184120%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx184031%_ _%key?184032%_)
        (if (procedure? _%key?184032%_)
            '#!void
            (error '"expected procedure" _%key?184032%_))
        (let _%lp184034%_ ((_%rest184036%_ _%stx184031%_))
          (let* ((_%$%g184037184047%_ (gx#stx-e _%rest184036%_))
                 (_%$%else184040184055%_ (lambda () '#f)))
            (let ((_%$%K184043184097%_
                   (lambda (_%rest184066%_ _%hd184067%_)
                     (if (_%key?184032%_ _%hd184067%_)
                         (let* ((_%$%g184068184076%_ (gx#stx-e _%rest184066%_))
                                (_%$%else184070184084%_ (lambda () '#f))
                                (_%$%K184072184089%_
                                 (lambda (_%rest184087%_)
                                   (_%lp184034%_ _%rest184087%_))))
                           (if (pair? _%$%g184068184076%_)
                               (let* ((_%$%tl184074184092%_
                                       (##cdr _%$%g184068184076%_))
                                      (_%rest184095%_ _%$%tl184074184092%_))
                                 (_%lp184034%_ _%rest184095%_))
                               (_%$%else184070184084%_)))
                         '#f)))
                  (_%$%K184042184060%_ (lambda () '#t)))
              (let ((_%$%try-match184039184063%_
                     (lambda ()
                       (if (null? _%$%g184037184047%_)
                           (_%$%K184042184060%_)
                           (_%$%else184040184055%_)))))
                (if (pair? _%$%g184037184047%_)
                    (let ((_%$%tl184045184102%_ (##cdr _%$%g184037184047%_))
                          (_%$%hd184044184100%_ (##car _%$%g184037184047%_)))
                      (let ((_%hd184105%_ _%$%hd184044184100%_)
                            (_%rest184107%_ _%$%tl184045184102%_))
                        (_%$%K184043184097%_ _%rest184107%_ _%hd184105%_)))
                    (_%$%try-match184039184063%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx184112%_)
        (let ((_%key?184114%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx184112%_ _%key?184114%_))))
    (define gx#stx-plist?
      (lambda _g185266_
        (let ((_g185267_ (##length _g185266_)))
          (cond ((##fx= _g185267_ 1) (apply gx#stx-plist?__0 _g185266_))
                ((##fx= _g185267_ 2) (apply gx#stx-plist?__% _g185266_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g185266_))))))
    (define gx#stx-getq__%
      (lambda (_%key183949%_ _%stx183950%_ _%key=?183951%_)
        (if (procedure? _%key=?183951%_)
            '#!void
            (error '"expected procedure" _%key=?183951%_))
        (let _%lp183953%_ ((_%rest183955%_ _%stx183950%_))
          (let* ((_%$%g183956183964%_ (gx#syntax-e _%rest183955%_))
                 (_%$%else183958183972%_ (lambda () '#f))
                 (_%$%K183960184006%_
                  (lambda (_%rest183975%_ _%hd183976%_)
                    (let* ((_%$%g183977183984%_ (gx#syntax-e _%rest183975%_))
                           (_%$%E183979183988%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g183977183984%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K183980183994%_
                            (lambda (_%rest183991%_ _%val183992%_)
                              (if (_%key=?183951%_ _%hd183976%_ _%key183949%_)
                                  _%val183992%_
                                  (_%lp183953%_ _%rest183991%_)))))
                      (if (pair? _%$%g183977183984%_)
                          (let ((_%$%hd183981183997%_
                                 (##car _%$%g183977183984%_))
                                (_%$%tl183982183999%_
                                 (##cdr _%$%g183977183984%_)))
                            (let* ((_%val184002%_ _%$%hd183981183997%_)
                                   (_%rest184004%_ _%$%tl183982183999%_))
                              (_%$%K183980183994%_
                               _%rest184004%_
                               _%val184002%_)))
                          (_%$%E183979183988%_))))))
            (if (pair? _%$%g183956183964%_)
                (let ((_%$%hd183961184009%_ (##car _%$%g183956183964%_))
                      (_%$%tl183962184011%_ (##cdr _%$%g183956183964%_)))
                  (let* ((_%hd184014%_ _%$%hd183961184009%_)
                         (_%rest184016%_ _%$%tl183962184011%_))
                    (_%$%K183960184006%_ _%rest184016%_ _%hd184014%_)))
                (_%$%else183958183972%_))))))
    (define gx#stx-getq__0
      (lambda (_%key184021%_ _%stx184022%_)
        (let ((_%key=?184024%_ gx#stx-eq?))
          (gx#stx-getq__% _%key184021%_ _%stx184022%_ _%key=?184024%_))))
    (define gx#stx-getq
      (lambda _g185268_
        (let ((_g185269_ (##length _g185268_)))
          (cond ((##fx= _g185269_ 2) (apply gx#stx-getq__0 _g185268_))
                ((##fx= _g185269_ 3) (apply gx#stx-getq__% _g185268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g185268_))))))
    (define gx#stx-plist-assq__%
      (lambda (_%key183867%_ _%stx183868%_ _%key=?183869%_)
        (if (procedure? _%key=?183869%_)
            '#!void
            (error '"expected procedure" _%key=?183869%_))
        (let _%lp183871%_ ((_%rest183873%_ _%stx183868%_))
          (let* ((_%$%g183874183882%_ (gx#syntax-e _%rest183873%_))
                 (_%$%else183876183890%_ (lambda () '#f))
                 (_%$%K183878183924%_
                  (lambda (_%rest183893%_ _%hd183894%_)
                    (let* ((_%$%g183895183902%_ (gx#syntax-e _%rest183893%_))
                           (_%$%E183897183906%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g183895183902%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K183898183912%_
                            (lambda (_%rest183909%_ _%val183910%_)
                              (if (_%key=?183869%_ _%hd183894%_ _%key183867%_)
                                  (cons _%hd183894%_ _%val183910%_)
                                  (_%lp183871%_ _%rest183909%_)))))
                      (if (pair? _%$%g183895183902%_)
                          (let ((_%$%hd183899183915%_
                                 (##car _%$%g183895183902%_))
                                (_%$%tl183900183917%_
                                 (##cdr _%$%g183895183902%_)))
                            (let* ((_%val183920%_ _%$%hd183899183915%_)
                                   (_%rest183922%_ _%$%tl183900183917%_))
                              (_%$%K183898183912%_
                               _%rest183922%_
                               _%val183920%_)))
                          (_%$%E183897183906%_))))))
            (if (pair? _%$%g183874183882%_)
                (let ((_%$%hd183879183927%_ (##car _%$%g183874183882%_))
                      (_%$%tl183880183929%_ (##cdr _%$%g183874183882%_)))
                  (let* ((_%hd183932%_ _%$%hd183879183927%_)
                         (_%rest183934%_ _%$%tl183880183929%_))
                    (_%$%K183878183924%_ _%rest183934%_ _%hd183932%_)))
                (_%$%else183876183890%_))))))
    (define gx#stx-plist-assq__0
      (lambda (_%key183939%_ _%stx183940%_)
        (let ((_%key=?183942%_ gx#stx-eq?))
          (gx#stx-plist-assq__% _%key183939%_ _%stx183940%_ _%key=?183942%_))))
    (define gx#stx-plist-assq
      (lambda _g185270_
        (let ((_g185271_ (##length _g185270_)))
          (cond ((##fx= _g185271_ 2) (apply gx#stx-plist-assq__0 _g185270_))
                ((##fx= _g185271_ 3) (apply gx#stx-plist-assq__% _g185270_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist-assq
                  _g185270_))))))))
