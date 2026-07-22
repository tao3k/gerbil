(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1784461443)
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
      (lambda _%$args182942%_
        (apply make-instance gx#identifier-wrap::t _%$args182942%_)))
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
      (lambda _%$args182939%_
        (apply make-instance gx#syntax-wrap::t _%$args182939%_)))
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
      (lambda _%$args182936%_
        (apply make-instance gx#syntax-quote::t _%$args182936%_)))
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
      (lambda (_%stx182934%_) (symbol? (gx#stx-e _%stx182934%_))))
    (define gx#identifier-quote?
      (lambda (_%stx182932%_)
        (if (##structure-direct-instance-of? _%stx182932%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx182932%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx182927%_)
        (if (##structure-direct-instance-of? _%stx182927%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx182927%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx182927%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx182922%_)
        (if (##structure-direct-instance-of? _%stx182922%_ 'gx#syntax-quote::t)
            _%stx182922%_
            (if (##structure-direct-instance-of?
                 _%stx182922%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx182922%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx182896%_)
        (if (##structure-direct-instance-of? _%stx182896%_ 'gx#syntax-wrap::t)
            (let _%lp182899%_ ((_%e182901%_
                                (##unchecked-structure-ref
                                 _%stx182896%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks182902%_
                                (cons (##unchecked-structure-ref
                                       _%stx182896%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e182901%_)
                  (let ((_%$e182905%_
                         (##type-id (##structure-type _%e182901%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e182905%_)
                        (_%lp182899%_
                         (##unchecked-structure-ref _%e182901%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e182901%_ '3 '#f '#f)
                          _%marks182902%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e182905%_)
                                (eq? 'gx#identifier-wrap::t _%$e182905%_))
                            (##unchecked-structure-ref _%e182901%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e182905%_)
                                (_%lp182899%_
                                 (##unchecked-structure-ref
                                  _%e182901%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks182902%_)
                                _%e182901%_))))
                  (if (null? _%marks182902%_)
                      _%e182901%_
                      (if (pair? _%e182901%_)
                          (cons (gx#stx-wrap
                                 (##car _%e182901%_)
                                 _%marks182902%_)
                                (gx#stx-wrap
                                 (##cdr _%e182901%_)
                                 _%marks182902%_))
                          (if (vector? _%e182901%_)
                              (vector-map
                               (lambda (_%$%g182913182915%_)
                                 (gx#stx-wrap
                                  _%$%g182913182915%_
                                  _%marks182902%_))
                               _%e182901%_)
                              (if (box? _%e182901%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e182901%_)
                                        _%marks182902%_))
                                  _%e182901%_))))))
            (if (##structure-instance-of? _%stx182896%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx182896%_ '1 '#f '#f)
                _%stx182896%_))))
    (define gx#syntax->datum
      (lambda (_%stx182889%_)
        (if (##structure-instance-of? _%stx182889%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx182889%_ '1 '#f '#f))
            (if (pair? _%stx182889%_)
                (cons (gx#syntax->datum (##car _%stx182889%_))
                      (gx#syntax->datum (##cdr _%stx182889%_)))
                (if (vector? _%stx182889%_)
                    (vector-map gx#syntax->datum _%stx182889%_)
                    (if (box? _%stx182889%_)
                        (box (gx#syntax->datum (unbox _%stx182889%_)))
                        _%stx182889%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx182823%_ _%datum182824%_ _%src182825%_ _%quote?182826%_)
        (letrec ((_%wrap-datum182828%_
                  (lambda (_%e182861%_ _%marks182862%_)
                    (_%wrap-inner182830%_
                     _%e182861%_
                     (lambda (_%$%g182863182865%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%$%g182863182865%_
                        _%src182825%_
                        _%marks182862%_)))))
                 (_%wrap-quote182829%_
                  (lambda (_%e182853%_ _%ctx182854%_ _%marks182855%_)
                    (_%wrap-inner182830%_
                     _%e182853%_
                     (lambda (_%$%g182856182858%_)
                       (##structure
                        gx#syntax-quote::t
                        _%$%g182856182858%_
                        _%src182825%_
                        _%ctx182854%_
                        _%marks182855%_)))))
                 (_%wrap-inner182830%_
                  (lambda (_%e182841%_ _%wrap-e182842%_)
                    (let _%recur182844%_ ((_%e182846%_ _%e182841%_))
                      (if (symbol? _%e182846%_)
                          (_%wrap-e182842%_ _%e182846%_)
                          (if (pair? _%e182846%_)
                              (cons (_%recur182844%_ (##car _%e182846%_))
                                    (_%recur182844%_ (##cdr _%e182846%_)))
                              (if (vector? _%e182846%_)
                                  (vector-map _%recur182844%_ _%e182846%_)
                                  (if (box? _%e182846%_)
                                      (box (_%recur182844%_
                                            (unbox _%e182846%_)))
                                      _%e182846%_)))))))
                 (_%wrap-outer182831%_
                  (lambda (_%e182839%_)
                    (if (##structure-instance-of? _%e182839%_ 'gerbil#AST::t)
                        _%e182839%_
                        (##structure gx#AST::t _%e182839%_ _%src182825%_)))))
          (if (##structure-instance-of? _%datum182824%_ 'gerbil#AST::t)
              _%datum182824%_
              (if (not _%stx182823%_)
                  (##structure gx#AST::t _%datum182824%_ _%src182825%_)
                  (if (gx#identifier? _%stx182823%_)
                      (let ((_%stx182836%_ (gx#stx-unwrap__0 _%stx182823%_)))
                        (_%wrap-outer182831%_
                         (if (##structure-direct-instance-of?
                              _%stx182836%_
                              'gx#syntax-quote::t)
                             (if _%quote?182826%_
                                 (_%wrap-quote182829%_
                                  _%datum182824%_
                                  (##unchecked-structure-ref
                                   _%stx182836%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx182836%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum182828%_
                                  _%datum182824%_
                                  (##unchecked-structure-ref
                                   _%stx182836%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum182828%_
                              _%datum182824%_
                              (##unchecked-structure-ref
                               _%stx182836%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx182823%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx182871%_ _%datum182872%_)
        (let* ((_%src182874%_ '#f) (_%quote?182876%_ '#t))
          (gx#datum->syntax__%
           _%stx182871%_
           _%datum182872%_
           _%src182874%_
           _%quote?182876%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx182878%_ _%datum182879%_ _%src182880%_)
        (let ((_%quote?182882%_ '#t))
          (gx#datum->syntax__%
           _%stx182878%_
           _%datum182879%_
           _%src182880%_
           _%quote?182882%_))))
    (define gx#datum->syntax
      (lambda _g183022_
        (let ((_g183023_ (##length _g183022_)))
          (cond ((##fx= _g183023_ 2) (apply gx#datum->syntax__0 _g183022_))
                ((##fx= _g183023_ 3) (apply gx#datum->syntax__1 _g183022_))
                ((##fx= _g183023_ 4) (apply gx#datum->syntax__% _g183022_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g183022_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx182789%_ _%marks182790%_)
        (let _%lp182792%_ ((_%e182794%_ _%stx182789%_)
                           (_%marks182795%_ _%marks182790%_)
                           (_%src182796%_ (gx#stx-source _%stx182789%_)))
          (if (##structure-direct-instance-of? _%e182794%_ 'gx#syntax-wrap::t)
              (_%lp182792%_
               (##unchecked-structure-ref _%e182794%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e182794%_ '3 '#f '#f)
                _%marks182795%_)
               (##unchecked-structure-ref _%e182794%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e182794%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks182795%_)
                      _%e182794%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e182794%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e182794%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e182794%_ '3 '#f '#f)
                        _%marks182795%_)))
                  (if (##structure-direct-instance-of?
                       _%e182794%_
                       'gx#syntax-quote::t)
                      _%e182794%_
                      (if (##structure-instance-of? _%e182794%_ 'gerbil#AST::t)
                          (_%lp182792%_
                           (##unchecked-structure-ref _%e182794%_ '1 '#f '#f)
                           _%marks182795%_
                           (##unchecked-structure-ref _%e182794%_ '2 '#f '#f))
                          (if (symbol? _%e182794%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e182794%_
                               _%src182796%_
                               (reverse _%marks182795%_))
                              (if (null? _%marks182795%_)
                                  _%e182794%_
                                  (if (pair? _%e182794%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e182794%_)
                                             _%marks182795%_)
                                            (gx#stx-wrap
                                             (##cdr _%e182794%_)
                                             _%marks182795%_))
                                      (if (vector? _%e182794%_)
                                          (vector-map
                                           (lambda (_%$%g182805182807%_)
                                             (gx#stx-wrap
                                              _%$%g182805182807%_
                                              _%marks182795%_))
                                           _%e182794%_)
                                          (if (box? _%e182794%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e182794%_)
                                                    _%marks182795%_))
                                              _%e182794%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx182815%_)
        (let ((_%marks182817%_ '()))
          (gx#stx-unwrap__% _%stx182815%_ _%marks182817%_))))
    (define gx#stx-unwrap
      (lambda _g183024_
        (let ((_g183025_ (##length _g183024_)))
          (cond ((##fx= _g183025_ 1) (apply gx#stx-unwrap__0 _g183024_))
                ((##fx= _g183025_ 2) (apply gx#stx-unwrap__% _g183024_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g183024_))))))
    (define gx#stx-wrap
      (lambda (_%stx182782%_ _%marks182783%_)
        (foldl__0
         (lambda (_%mark182785%_ _%stx182786%_)
           (gx#stx-apply-mark _%stx182786%_ _%mark182785%_))
         _%stx182782%_
         _%marks182783%_)))
    (define gx#stx-rewrap
      (lambda (_%stx182776%_ _%marks182777%_)
        (foldr__0
         (lambda (_%mark182779%_ _%stx182780%_)
           (gx#stx-apply-mark _%stx182780%_ _%mark182779%_))
         _%stx182776%_
         _%marks182777%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx182770%_ _%mark182771%_)
        (if (##structure-direct-instance-of? _%stx182770%_ 'gx#syntax-quote::t)
            _%stx182770%_
            (if (and (##structure-direct-instance-of?
                      _%stx182770%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark182771%_
                          (##unchecked-structure-ref
                           _%stx182770%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx182770%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx182770%_
                 (gx#stx-source _%stx182770%_)
                 _%mark182771%_)))))
    (define gx#apply-mark
      (lambda (_%mark182734%_ _%marks182735%_)
        (let* ((_%$%marks182736182744%_ _%marks182735%_)
               (_%$%else182738182752%_
                (lambda () (cons _%mark182734%_ _%marks182735%_)))
               (_%$%K182740182758%_
                (lambda (_%rest182755%_ _%hd182756%_)
                  (if (eq? _%mark182734%_ _%hd182756%_)
                      _%rest182755%_
                      (cons _%mark182734%_ _%marks182735%_)))))
          (if (pair? _%$%marks182736182744%_)
              (let ((_%$%hd182741182761%_ (##car _%$%marks182736182744%_))
                    (_%$%tl182742182763%_ (##cdr _%$%marks182736182744%_)))
                (let* ((_%hd182766%_ _%$%hd182741182761%_)
                       (_%rest182768%_ _%$%tl182742182763%_))
                  (_%$%K182740182758%_ _%rest182768%_ _%hd182766%_)))
              (_%$%else182738182752%_)))))
    (define gx#stx-e
      (lambda (_%stx182729%_)
        (if (##structure-direct-instance-of? _%stx182729%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx182729%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx182729%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx182729%_ '1 '#f '#f)
                _%stx182729%_))))
    (define gx#stx-source
      (lambda (_%stx182727%_)
        (if (##structure-instance-of? _%stx182727%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx182727%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx182721%_ _%src182722%_)
        (if (or (##structure-instance-of? _%stx182721%_ 'gerbil#AST::t)
                (not _%src182722%_))
            _%stx182721%_
            (##structure gx#AST::t _%stx182721%_ _%src182722%_))))
    (define gx#stx-datum?
      (lambda (_%stx182719%_) (gx#self-quoting? (gx#stx-e _%stx182719%_))))
    (define gx#self-quoting?
      (lambda (_%x182702%_)
        (let ((_%$e182704%_ (immediate? _%x182702%_)))
          (if _%$e182704%_
              _%$e182704%_
              (let ((_%$e182707%_ (number? _%x182702%_)))
                (if _%$e182707%_
                    _%$e182707%_
                    (let ((_%$e182710%_ (keyword? _%x182702%_)))
                      (if _%$e182710%_
                          _%$e182710%_
                          (let ((_%$e182713%_ (string? _%x182702%_)))
                            (if _%$e182713%_
                                _%$e182713%_
                                (let ((_%$e182716%_ (vector? _%x182702%_)))
                                  (if _%$e182716%_
                                      _%$e182716%_
                                      (u8vector? _%x182702%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e182700%_) (boolean? (gx#stx-e _%e182700%_))))
    (define gx#stx-keyword?
      (lambda (_%e182698%_) (keyword? (gx#stx-e _%e182698%_))))
    (define gx#stx-char? (lambda (_%e182696%_) (char? (gx#stx-e _%e182696%_))))
    (define gx#stx-number?
      (lambda (_%e182694%_) (number? (gx#stx-e _%e182694%_))))
    (define gx#stx-fixnum?
      (lambda (_%e182692%_) (fixnum? (gx#stx-e _%e182692%_))))
    (define gx#stx-string?
      (lambda (_%e182690%_) (string? (gx#stx-e _%e182690%_))))
    (define gx#stx-null? (lambda (_%e182688%_) (null? (gx#stx-e _%e182688%_))))
    (define gx#stx-pair? (lambda (_%e182686%_) (pair? (gx#stx-e _%e182686%_))))
    (define gx#stx-list?
      (lambda (_%e182648%_)
        (let* ((_%$%g182649182658%_ (gx#stx-e _%e182648%_))
               (_%$%E182652182662%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g182649182658%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%$%K182654182678%_
                 (lambda (_%rest182676%_) (gx#stx-list? _%rest182676%_)))
                (_%$%K182653182668%_
                 (lambda (_%tail182666%_) (null? _%tail182666%_))))
            (if (pair? _%$%g182649182658%_)
                (let* ((_%$%tl182656182681%_ (##cdr _%$%g182649182658%_))
                       (_%rest182684%_ _%$%tl182656182681%_))
                  (gx#stx-list? _%rest182684%_))
                (let ((_%tail182671%_ _%$%g182649182658%_))
                  (null? _%tail182671%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e182641%_)
        (let* ((_%e182643%_ (gx#stx-e _%e182641%_))
               (_%$e182645%_ (pair? _%e182643%_)))
          (if _%$e182645%_ _%$e182645%_ (null? _%e182643%_)))))
    (define gx#stx-vector?
      (lambda (_%e182639%_) (vector? (gx#stx-e _%e182639%_))))
    (define gx#stx-box? (lambda (_%e182637%_) (box? (gx#stx-e _%e182637%_))))
    (define gx#stx-eq?
      (lambda (_%x182634%_ _%y182635%_)
        (eq? (gx#stx-e _%x182634%_) (gx#stx-e _%y182635%_))))
    (define gx#stx-eqv?
      (lambda (_%x182631%_ _%y182632%_)
        (eqv? (gx#stx-e _%x182631%_) (gx#stx-e _%y182632%_))))
    (define gx#stx-equal?
      (lambda (_%x182628%_ _%y182629%_)
        (equal? (gx#stx-e _%x182628%_) (gx#stx-e _%y182629%_))))
    (define gx#stx-false? (lambda (_%x182626%_) (not (gx#stx-e _%x182626%_))))
    (define gx#stx-identifier
      (lambda (_%template182623%_ . _%args182624%_)
        (gx#datum->syntax__1
         _%template182623%_
         (apply make-symbol (gx#syntax->datum _%args182624%_))
         (gx#stx-source _%template182623%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx182621%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx182621%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx182616%_)
        (if (##structure-direct-instance-of?
             _%stx182616%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx182616%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx182616%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx182616%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx182616%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx182612%_)
        (let ((_%stx182614%_ (gx#stx-unwrap__0 _%stx182612%_)))
          (if (gx#identifier-quote? _%stx182614%_)
              (##unchecked-structure-ref _%stx182614%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx182567%_)
        (let* ((_%$%g182568182578%_ (gx#stx-e _%stx182567%_))
               (_%$%else182571182586%_ (lambda () '#f)))
          (let ((_%$%K182574182600%_
                 (lambda (_%rest182597%_ _%hd182598%_)
                   (if (gx#identifier? _%hd182598%_)
                       (gx#identifier-list? _%rest182597%_)
                       '#f)))
                (_%$%K182573182591%_ (lambda () '#t)))
            (let ((_%$%try-match182570182594%_
                   (lambda ()
                     (if (null? _%$%g182568182578%_)
                         (_%$%K182573182591%_)
                         (_%$%else182571182586%_)))))
              (if (pair? _%$%g182568182578%_)
                  (let ((_%$%tl182576182605%_ (##cdr _%$%g182568182578%_))
                        (_%$%hd182575182603%_ (##car _%$%g182568182578%_)))
                    (let ((_%hd182608%_ _%$%hd182575182603%_)
                          (_%rest182610%_ _%$%tl182576182605%_))
                      (_%$%K182574182600%_ _%rest182610%_ _%hd182608%_)))
                  (_%$%try-match182570182594%_)))))))
    (define gx#genident__%
      (lambda (_%e182547%_ _%src182548%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src182548%_) _%src182548%_ '#f)
         (make-symbol__1
          '"$%"
          (##gensym
           (let ((_%e182550%_ (gx#stx-e _%e182547%_)))
             (if (symbol? _%e182550%_) _%e182550%_ 'g))))
         _%src182548%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e182556%_ 'g) (_%src182558%_ '#f))
          (gx#genident__% _%e182556%_ _%src182558%_))))
    (define gx#genident__1
      (lambda (_%e182560%_)
        (let ((_%src182562%_ '#f))
          (gx#genident__% _%e182560%_ _%src182562%_))))
    (define gx#genident
      (lambda _g183026_
        (let ((_g183027_ (##length _g183026_)))
          (cond ((##fx= _g183027_ 0) (apply gx#genident__0 _g183026_))
                ((##fx= _g183027_ 1) (apply gx#genident__1 _g183026_))
                ((##fx= _g183027_ 2) (apply gx#genident__% _g183026_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g183026_))))))
    (define gx#gentemps
      (lambda (_%stx-lst182542%_)
        (gx#stx-map1
         (lambda (_%x182544%_) (gx#genident__% _%x182544%_ _%x182544%_))
         _%stx-lst182542%_)))
    (define gx#syntax->list
      (lambda (_%stx182540%_) (gx#stx-map1 values _%stx182540%_)))
    (define gx#stx-car
      (lambda (_%stx182537%_)
        (declare (safe))
        (car (gx#syntax-e _%stx182537%_))))
    (define gx#stx-cdr
      (lambda (_%stx182534%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx182534%_))))
    (define gx#stx-length
      (lambda (_%stx182499%_)
        (let _%lp182501%_ ((_%rest182503%_ _%stx182499%_) (_%n182504%_ '0))
          (let* ((_%$%g182505182513%_ (gx#stx-e _%rest182503%_))
                 (_%$%else182507182521%_ (lambda () _%n182504%_))
                 (_%$%K182509182526%_
                  (lambda (_%rest182524%_)
                    (_%lp182501%_ _%rest182524%_ (##fx+ _%n182504%_ '1)))))
            (if (pair? _%$%g182505182513%_)
                (let* ((_%$%tl182511182529%_ (##cdr _%$%g182505182513%_))
                       (_%rest182532%_ _%$%tl182511182529%_))
                  (_%$%K182509182526%_ _%rest182532%_))
                (_%$%else182507182521%_))))))
    (define gx#stx-for-each
      (lambda _g183028_
        (let ((_g183029_ (##length _g183028_)))
          (cond ((##fx= _g183029_ 2) (apply gx#stx-for-each1 _g183028_))
                ((##fx= _g183029_ 3) (apply gx#stx-for-each2 _g183028_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g183028_))))))
    (define gx#stx-for-each1
      (lambda (_%f182442%_ _%stx182443%_)
        (if (procedure? _%f182442%_)
            '#!void
            (error '"expected procedure" _%f182442%_))
        (let _%lp182445%_ ((_%rest182447%_ _%stx182443%_))
          (let* ((_%$%g182448182458%_ (gx#syntax-e _%rest182447%_))
                 (_%$%else182451182466%_
                  (lambda () (_%f182442%_ _%rest182447%_))))
            (let ((_%$%K182454182480%_
                   (lambda (_%rest182477%_ _%hd182478%_)
                     (_%f182442%_ _%hd182478%_)
                     (_%lp182445%_ _%rest182477%_)))
                  (_%$%K182453182471%_ (lambda () '#!void)))
              (let ((_%$%try-match182450182474%_
                     (lambda ()
                       (if (null? _%$%g182448182458%_)
                           (_%$%K182453182471%_)
                           (_%$%else182451182466%_)))))
                (if (pair? _%$%g182448182458%_)
                    (let ((_%$%tl182456182485%_ (##cdr _%$%g182448182458%_))
                          (_%$%hd182455182483%_ (##car _%$%g182448182458%_)))
                      (let ((_%hd182488%_ _%$%hd182455182483%_)
                            (_%rest182490%_ _%$%tl182456182485%_))
                        (_%$%K182454182480%_ _%rest182490%_ _%hd182488%_)))
                    (_%$%try-match182450182474%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f182347%_ _%xstx182348%_ _%ystx182349%_)
        (if (procedure? _%f182347%_)
            '#!void
            (error '"expected procedure" _%f182347%_))
        (let _%lp182351%_ ((_%xrest182353%_ _%xstx182348%_)
                           (_%yrest182354%_ _%ystx182349%_))
          (let* ((_%$%g182355182365%_ (gx#syntax-e _%xrest182353%_))
                 (_%$%else182358182373%_ (lambda () '#!void)))
            (let ((_%$%K182361182430%_
                   (lambda (_%xrest182399%_ _%xhd182400%_)
                     (let* ((_%$%g182401182408%_ (gx#syntax-e _%yrest182354%_))
                            (_%$%E182403182412%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g182401182408%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K182404182418%_
                             (lambda (_%yrest182415%_ _%yhd182416%_)
                               (_%f182347%_ _%xhd182400%_ _%yhd182416%_)
                               (_%lp182351%_
                                _%xrest182399%_
                                _%yrest182415%_))))
                       (if (pair? _%$%g182401182408%_)
                           (let ((_%$%hd182405182421%_
                                  (##car _%$%g182401182408%_))
                                 (_%$%tl182406182423%_
                                  (##cdr _%$%g182401182408%_)))
                             (let* ((_%yhd182426%_ _%$%hd182405182421%_)
                                    (_%yrest182428%_ _%$%tl182406182423%_))
                               (_%$%K182404182418%_
                                _%yrest182428%_
                                _%yhd182426%_)))
                           (_%$%E182403182412%_)))))
                  (_%$%K182360182393%_
                   (lambda ()
                     (let* ((_%$%yrest182377182382%_ _%yrest182354%_)
                            (_%$%E182379182386%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest182377182382%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K182380182390%_
                             (lambda ()
                               (_%f182347%_ _%xrest182353%_ _%yrest182354%_))))
                       (if (gx#stx-null? _%$%yrest182377182382%_)
                           (_%$%E182379182386%_)
                           (_%$%K182380182390%_))))))
              (let ((_%$%try-match182357182396%_
                     (lambda ()
                       (if (null? _%$%g182355182365%_)
                           (_%$%else182358182373%_)
                           (_%$%K182360182393%_)))))
                (if (pair? _%$%g182355182365%_)
                    (let ((_%$%tl182363182435%_ (##cdr _%$%g182355182365%_))
                          (_%$%hd182362182433%_ (##car _%$%g182355182365%_)))
                      (let ((_%xhd182438%_ _%$%hd182362182433%_)
                            (_%xrest182440%_ _%$%tl182363182435%_))
                        (_%$%K182361182430%_ _%xrest182440%_ _%xhd182438%_)))
                    (_%$%try-match182357182396%_))))))))
    (define gx#stx-map
      (lambda _g183030_
        (let ((_g183031_ (##length _g183030_)))
          (cond ((##fx= _g183031_ 2) (apply gx#stx-map1 _g183030_))
                ((##fx= _g183031_ 3) (apply gx#stx-map2 _g183030_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g183030_))))))
    (define gx#stx-map1
      (lambda (_%f182290%_ _%stx182291%_)
        (if (procedure? _%f182290%_)
            '#!void
            (error '"expected procedure" _%f182290%_))
        (let _%recur182293%_ ((_%rest182295%_ _%stx182291%_))
          (let* ((_%$%g182296182306%_ (gx#syntax-e _%rest182295%_))
                 (_%$%else182299182314%_
                  (lambda () (_%f182290%_ _%rest182295%_))))
            (let ((_%$%K182302182328%_
                   (lambda (_%rest182325%_ _%hd182326%_)
                     (cons (_%f182290%_ _%hd182326%_)
                           (_%recur182293%_ _%rest182325%_))))
                  (_%$%K182301182319%_ (lambda () '())))
              (let ((_%$%try-match182298182322%_
                     (lambda ()
                       (if (null? _%$%g182296182306%_)
                           (_%$%K182301182319%_)
                           (_%$%else182299182314%_)))))
                (if (pair? _%$%g182296182306%_)
                    (let ((_%$%tl182304182333%_ (##cdr _%$%g182296182306%_))
                          (_%$%hd182303182331%_ (##car _%$%g182296182306%_)))
                      (let ((_%hd182336%_ _%$%hd182303182331%_)
                            (_%rest182338%_ _%$%tl182304182333%_))
                        (_%$%K182302182328%_ _%rest182338%_ _%hd182336%_)))
                    (_%$%try-match182298182322%_))))))))
    (define gx#stx-map2
      (lambda (_%f182195%_ _%xstx182196%_ _%ystx182197%_)
        (if (procedure? _%f182195%_)
            '#!void
            (error '"expected procedure" _%f182195%_))
        (let _%recur182199%_ ((_%xrest182201%_ _%xstx182196%_)
                              (_%yrest182202%_ _%ystx182197%_))
          (let* ((_%$%g182203182213%_ (gx#syntax-e _%xrest182201%_))
                 (_%$%else182206182221%_ (lambda () '())))
            (let ((_%$%K182209182278%_
                   (lambda (_%xrest182247%_ _%xhd182248%_)
                     (let* ((_%$%g182249182256%_ (gx#syntax-e _%yrest182202%_))
                            (_%$%E182251182260%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g182249182256%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K182252182266%_
                             (lambda (_%yrest182263%_ _%yhd182264%_)
                               (cons (_%f182195%_ _%xhd182248%_ _%yhd182264%_)
                                     (_%recur182199%_
                                      _%xrest182247%_
                                      _%yrest182263%_)))))
                       (if (pair? _%$%g182249182256%_)
                           (let ((_%$%hd182253182269%_
                                  (##car _%$%g182249182256%_))
                                 (_%$%tl182254182271%_
                                  (##cdr _%$%g182249182256%_)))
                             (let* ((_%yhd182274%_ _%$%hd182253182269%_)
                                    (_%yrest182276%_ _%$%tl182254182271%_))
                               (_%$%K182252182266%_
                                _%yrest182276%_
                                _%yhd182274%_)))
                           (_%$%E182251182260%_)))))
                  (_%$%K182208182241%_
                   (lambda ()
                     (let* ((_%$%yrest182225182230%_ _%yrest182202%_)
                            (_%$%E182227182234%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest182225182230%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K182228182238%_
                             (lambda ()
                               (_%f182195%_ _%xrest182201%_ _%yrest182202%_))))
                       (if (gx#stx-null? _%$%yrest182225182230%_)
                           (_%$%E182227182234%_)
                           (_%$%K182228182238%_))))))
              (let ((_%$%try-match182205182244%_
                     (lambda ()
                       (if (null? _%$%g182203182213%_)
                           (_%$%else182206182221%_)
                           (_%$%K182208182241%_)))))
                (if (pair? _%$%g182203182213%_)
                    (let ((_%$%tl182211182283%_ (##cdr _%$%g182203182213%_))
                          (_%$%hd182210182281%_ (##car _%$%g182203182213%_)))
                      (let ((_%xhd182286%_ _%$%hd182210182281%_)
                            (_%xrest182288%_ _%$%tl182211182283%_))
                        (_%$%K182209182278%_ _%xrest182288%_ _%xhd182286%_)))
                    (_%$%try-match182205182244%_))))))))
    (define gx#stx-andmap
      (lambda (_%f182145%_ _%stx182146%_)
        (if (procedure? _%f182145%_)
            '#!void
            (error '"expected procedure" _%f182145%_))
        (let _%lp182148%_ ((_%rest182150%_ _%stx182146%_))
          (let* ((_%$%g182151182161%_ (gx#syntax-e _%rest182150%_))
                 (_%$%else182154182169%_
                  (lambda () (_%f182145%_ _%rest182150%_))))
            (let ((_%$%K182157182183%_
                   (lambda (_%rest182180%_ _%hd182181%_)
                     (if (_%f182145%_ _%hd182181%_)
                         (_%lp182148%_ _%rest182180%_)
                         '#f)))
                  (_%$%K182156182174%_ (lambda () '#t)))
              (let ((_%$%try-match182153182177%_
                     (lambda ()
                       (if (null? _%$%g182151182161%_)
                           (_%$%K182156182174%_)
                           (_%$%else182154182169%_)))))
                (if (pair? _%$%g182151182161%_)
                    (let ((_%$%tl182159182188%_ (##cdr _%$%g182151182161%_))
                          (_%$%hd182158182186%_ (##car _%$%g182151182161%_)))
                      (let ((_%hd182191%_ _%$%hd182158182186%_)
                            (_%rest182193%_ _%$%tl182159182188%_))
                        (_%$%K182157182183%_ _%rest182193%_ _%hd182191%_)))
                    (_%$%try-match182153182177%_))))))))
    (define gx#stx-ormap
      (lambda (_%f182092%_ _%stx182093%_)
        (if (procedure? _%f182092%_)
            '#!void
            (error '"expected procedure" _%f182092%_))
        (let _%lp182095%_ ((_%rest182097%_ _%stx182093%_))
          (let* ((_%$%g182098182108%_ (gx#syntax-e _%rest182097%_))
                 (_%$%else182101182116%_
                  (lambda () (_%f182092%_ _%rest182097%_))))
            (let ((_%$%K182104182133%_
                   (lambda (_%rest182127%_ _%hd182128%_)
                     (let ((_%$e182130%_ (_%f182092%_ _%hd182128%_)))
                       (if _%$e182130%_
                           _%$e182130%_
                           (_%lp182095%_ _%rest182127%_)))))
                  (_%$%K182103182121%_ (lambda () '#f)))
              (let ((_%$%try-match182100182124%_
                     (lambda ()
                       (if (null? _%$%g182098182108%_)
                           (_%$%K182103182121%_)
                           (_%$%else182101182116%_)))))
                (if (pair? _%$%g182098182108%_)
                    (let ((_%$%tl182106182138%_ (##cdr _%$%g182098182108%_))
                          (_%$%hd182105182136%_ (##car _%$%g182098182108%_)))
                      (let ((_%hd182141%_ _%$%hd182105182136%_)
                            (_%rest182143%_ _%$%tl182106182138%_))
                        (_%$%K182104182133%_ _%rest182143%_ _%hd182141%_)))
                    (_%$%try-match182100182124%_))))))))
    (define gx#stx-foldl
      (lambda (_%f182040%_ _%iv182041%_ _%stx182042%_)
        (if (procedure? _%f182040%_)
            '#!void
            (error '"expected procedure" _%f182040%_))
        (let _%lp182044%_ ((_%r182046%_ _%iv182041%_)
                           (_%rest182047%_ _%stx182042%_))
          (let* ((_%$%g182048182058%_ (gx#syntax-e _%rest182047%_))
                 (_%$%else182051182066%_
                  (lambda () (_%f182040%_ _%rest182047%_ _%r182046%_))))
            (let ((_%$%K182054182080%_
                   (lambda (_%rest182077%_ _%hd182078%_)
                     (_%lp182044%_
                      (_%f182040%_ _%hd182078%_ _%r182046%_)
                      _%rest182077%_)))
                  (_%$%K182053182071%_ (lambda () _%r182046%_)))
              (let ((_%$%try-match182050182074%_
                     (lambda ()
                       (if (null? _%$%g182048182058%_)
                           (_%$%K182053182071%_)
                           (_%$%else182051182066%_)))))
                (if (pair? _%$%g182048182058%_)
                    (let ((_%$%tl182056182085%_ (##cdr _%$%g182048182058%_))
                          (_%$%hd182055182083%_ (##car _%$%g182048182058%_)))
                      (let ((_%hd182088%_ _%$%hd182055182083%_)
                            (_%rest182090%_ _%$%tl182056182085%_))
                        (_%$%K182054182080%_ _%rest182090%_ _%hd182088%_)))
                    (_%$%try-match182050182074%_))))))))
    (define gx#stx-foldr
      (lambda (_%f181989%_ _%iv181990%_ _%stx181991%_)
        (if (procedure? _%f181989%_)
            '#!void
            (error '"expected procedure" _%f181989%_))
        (let _%recur181993%_ ((_%rest181995%_ _%stx181991%_))
          (let* ((_%$%g181996182006%_ (gx#syntax-e _%rest181995%_))
                 (_%$%else181999182014%_
                  (lambda () (_%f181989%_ _%rest181995%_ _%iv181990%_))))
            (let ((_%$%K182002182028%_
                   (lambda (_%rest182025%_ _%hd182026%_)
                     (_%f181989%_
                      _%hd182026%_
                      (_%recur181993%_ _%rest182025%_))))
                  (_%$%K182001182019%_ (lambda () _%iv181990%_)))
              (let ((_%$%try-match181998182022%_
                     (lambda ()
                       (if (null? _%$%g181996182006%_)
                           (_%$%K182001182019%_)
                           (_%$%else181999182014%_)))))
                (if (pair? _%$%g181996182006%_)
                    (let ((_%$%tl182004182033%_ (##cdr _%$%g181996182006%_))
                          (_%$%hd182003182031%_ (##car _%$%g181996182006%_)))
                      (let ((_%hd182036%_ _%$%hd182003182031%_)
                            (_%rest182038%_ _%$%tl182004182033%_))
                        (_%$%K182002182028%_ _%rest182038%_ _%hd182036%_)))
                    (_%$%try-match181998182022%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx181987%_) (gx#stx-foldl cons '() _%stx181987%_)))
    (define gx#stx-last
      (lambda (_%stx181948%_)
        (let _%lp181950%_ ((_%rest181952%_ _%stx181948%_))
          (let* ((_%$%g181953181961%_ (gx#syntax-e _%rest181952%_))
                 (_%$%else181955181969%_ (lambda () _%rest181952%_))
                 (_%$%K181957181975%_
                  (lambda (_%rest181972%_ _%hd181973%_)
                    (if (gx#stx-null? _%rest181972%_)
                        _%hd181973%_
                        (_%lp181950%_ _%rest181972%_)))))
            (if (pair? _%$%g181953181961%_)
                (let ((_%$%hd181958181978%_ (##car _%$%g181953181961%_))
                      (_%$%tl181959181980%_ (##cdr _%$%g181953181961%_)))
                  (let* ((_%hd181983%_ _%$%hd181958181978%_)
                         (_%rest181985%_ _%$%tl181959181980%_))
                    (_%$%K181957181975%_ _%rest181985%_ _%hd181983%_)))
                (_%$%else181955181969%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx181919%_)
        (let _%lp181921%_ ((_%hd181923%_ _%stx181919%_))
          (let* ((_%$%g181924181931%_ (gx#syntax-e _%hd181923%_))
                 (_%$%E181926181935%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g181924181931%_
                           '([_ . rest]))
                    '#!void))
                 (_%$%K181927181940%_
                  (lambda (_%rest181938%_)
                    (if (gx#stx-pair? _%rest181938%_)
                        (_%lp181921%_ _%rest181938%_)
                        _%hd181923%_))))
            (if (pair? _%$%g181924181931%_)
                (let* ((_%$%tl181929181943%_ (##cdr _%$%g181924181931%_))
                       (_%rest181946%_ _%$%tl181929181943%_))
                  (_%$%K181927181940%_ _%rest181946%_))
                (_%$%E181926181935%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx181888%_ _%k181889%_)
        (let _%lp181891%_ ((_%rest181893%_ _%stx181888%_)
                           (_%k181894%_ _%k181889%_))
          (if (fxpositive? _%k181894%_)
              (let* ((_%$%g181895181902%_ (gx#syntax-e _%rest181893%_))
                     (_%$%E181897181906%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%g181895181902%_
                               '([_ . rest]))
                        '#!void))
                     (_%$%K181898181911%_
                      (lambda (_%rest181909%_)
                        (_%lp181891%_ _%rest181909%_ (##fx- _%k181894%_ '1)))))
                (if (pair? _%$%g181895181902%_)
                    (let* ((_%$%tl181900181914%_ (##cdr _%$%g181895181902%_))
                           (_%rest181917%_ _%$%tl181900181914%_))
                      (_%$%K181898181911%_ _%rest181917%_))
                    (_%$%E181897181906%_)))
              _%rest181893%_))))
    (define gx#stx-list-ref
      (lambda (_%stx181885%_ _%k181886%_)
        (gx#stx-car (gx#stx-list-tail _%stx181885%_ _%k181886%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx181797%_ _%key?181798%_)
        (if (procedure? _%key?181798%_)
            '#!void
            (error '"expected procedure" _%key?181798%_))
        (let _%lp181800%_ ((_%rest181802%_ _%stx181797%_))
          (let* ((_%$%g181803181813%_ (gx#stx-e _%rest181802%_))
                 (_%$%else181806181821%_ (lambda () '#f)))
            (let ((_%$%K181809181863%_
                   (lambda (_%rest181832%_ _%hd181833%_)
                     (if (_%key?181798%_ _%hd181833%_)
                         (let* ((_%$%g181834181842%_ (gx#stx-e _%rest181832%_))
                                (_%$%else181836181850%_ (lambda () '#f))
                                (_%$%K181838181855%_
                                 (lambda (_%rest181853%_)
                                   (_%lp181800%_ _%rest181853%_))))
                           (if (pair? _%$%g181834181842%_)
                               (let* ((_%$%tl181840181858%_
                                       (##cdr _%$%g181834181842%_))
                                      (_%rest181861%_ _%$%tl181840181858%_))
                                 (_%lp181800%_ _%rest181861%_))
                               (_%$%else181836181850%_)))
                         '#f)))
                  (_%$%K181808181826%_ (lambda () '#t)))
              (let ((_%$%try-match181805181829%_
                     (lambda ()
                       (if (null? _%$%g181803181813%_)
                           (_%$%K181808181826%_)
                           (_%$%else181806181821%_)))))
                (if (pair? _%$%g181803181813%_)
                    (let ((_%$%tl181811181868%_ (##cdr _%$%g181803181813%_))
                          (_%$%hd181810181866%_ (##car _%$%g181803181813%_)))
                      (let ((_%hd181871%_ _%$%hd181810181866%_)
                            (_%rest181873%_ _%$%tl181811181868%_))
                        (_%$%K181809181863%_ _%rest181873%_ _%hd181871%_)))
                    (_%$%try-match181805181829%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx181878%_)
        (let ((_%key?181880%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx181878%_ _%key?181880%_))))
    (define gx#stx-plist?
      (lambda _g183032_
        (let ((_g183033_ (##length _g183032_)))
          (cond ((##fx= _g183033_ 1) (apply gx#stx-plist?__0 _g183032_))
                ((##fx= _g183033_ 2) (apply gx#stx-plist?__% _g183032_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g183032_))))))
    (define gx#stx-getq__%
      (lambda (_%key181715%_ _%stx181716%_ _%key=?181717%_)
        (if (procedure? _%key=?181717%_)
            '#!void
            (error '"expected procedure" _%key=?181717%_))
        (let _%lp181719%_ ((_%rest181721%_ _%stx181716%_))
          (let* ((_%$%g181722181730%_ (gx#syntax-e _%rest181721%_))
                 (_%$%else181724181738%_ (lambda () '#f))
                 (_%$%K181726181772%_
                  (lambda (_%rest181741%_ _%hd181742%_)
                    (let* ((_%$%g181743181750%_ (gx#syntax-e _%rest181741%_))
                           (_%$%E181745181754%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g181743181750%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K181746181760%_
                            (lambda (_%rest181757%_ _%val181758%_)
                              (if (_%key=?181717%_ _%hd181742%_ _%key181715%_)
                                  _%val181758%_
                                  (_%lp181719%_ _%rest181757%_)))))
                      (if (pair? _%$%g181743181750%_)
                          (let ((_%$%hd181747181763%_
                                 (##car _%$%g181743181750%_))
                                (_%$%tl181748181765%_
                                 (##cdr _%$%g181743181750%_)))
                            (let* ((_%val181768%_ _%$%hd181747181763%_)
                                   (_%rest181770%_ _%$%tl181748181765%_))
                              (_%$%K181746181760%_
                               _%rest181770%_
                               _%val181768%_)))
                          (_%$%E181745181754%_))))))
            (if (pair? _%$%g181722181730%_)
                (let ((_%$%hd181727181775%_ (##car _%$%g181722181730%_))
                      (_%$%tl181728181777%_ (##cdr _%$%g181722181730%_)))
                  (let* ((_%hd181780%_ _%$%hd181727181775%_)
                         (_%rest181782%_ _%$%tl181728181777%_))
                    (_%$%K181726181772%_ _%rest181782%_ _%hd181780%_)))
                (_%$%else181724181738%_))))))
    (define gx#stx-getq__0
      (lambda (_%key181787%_ _%stx181788%_)
        (let ((_%key=?181790%_ gx#stx-eq?))
          (gx#stx-getq__% _%key181787%_ _%stx181788%_ _%key=?181790%_))))
    (define gx#stx-getq
      (lambda _g183034_
        (let ((_g183035_ (##length _g183034_)))
          (cond ((##fx= _g183035_ 2) (apply gx#stx-getq__0 _g183034_))
                ((##fx= _g183035_ 3) (apply gx#stx-getq__% _g183034_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g183034_))))))
    (define gx#stx-plist-assq__%
      (lambda (_%key181633%_ _%stx181634%_ _%key=?181635%_)
        (if (procedure? _%key=?181635%_)
            '#!void
            (error '"expected procedure" _%key=?181635%_))
        (let _%lp181637%_ ((_%rest181639%_ _%stx181634%_))
          (let* ((_%$%g181640181648%_ (gx#syntax-e _%rest181639%_))
                 (_%$%else181642181656%_ (lambda () '#f))
                 (_%$%K181644181690%_
                  (lambda (_%rest181659%_ _%hd181660%_)
                    (let* ((_%$%g181661181668%_ (gx#syntax-e _%rest181659%_))
                           (_%$%E181663181672%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g181661181668%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K181664181678%_
                            (lambda (_%rest181675%_ _%val181676%_)
                              (if (_%key=?181635%_ _%hd181660%_ _%key181633%_)
                                  (cons _%hd181660%_ _%val181676%_)
                                  (_%lp181637%_ _%rest181675%_)))))
                      (if (pair? _%$%g181661181668%_)
                          (let ((_%$%hd181665181681%_
                                 (##car _%$%g181661181668%_))
                                (_%$%tl181666181683%_
                                 (##cdr _%$%g181661181668%_)))
                            (let* ((_%val181686%_ _%$%hd181665181681%_)
                                   (_%rest181688%_ _%$%tl181666181683%_))
                              (_%$%K181664181678%_
                               _%rest181688%_
                               _%val181686%_)))
                          (_%$%E181663181672%_))))))
            (if (pair? _%$%g181640181648%_)
                (let ((_%$%hd181645181693%_ (##car _%$%g181640181648%_))
                      (_%$%tl181646181695%_ (##cdr _%$%g181640181648%_)))
                  (let* ((_%hd181698%_ _%$%hd181645181693%_)
                         (_%rest181700%_ _%$%tl181646181695%_))
                    (_%$%K181644181690%_ _%rest181700%_ _%hd181698%_)))
                (_%$%else181642181656%_))))))
    (define gx#stx-plist-assq__0
      (lambda (_%key181705%_ _%stx181706%_)
        (let ((_%key=?181708%_ gx#stx-eq?))
          (gx#stx-plist-assq__% _%key181705%_ _%stx181706%_ _%key=?181708%_))))
    (define gx#stx-plist-assq
      (lambda _g183036_
        (let ((_g183037_ (##length _g183036_)))
          (cond ((##fx= _g183037_ 2) (apply gx#stx-plist-assq__0 _g183036_))
                ((##fx= _g183037_ 3) (apply gx#stx-plist-assq__% _g183036_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist-assq
                  _g183036_))))))))
