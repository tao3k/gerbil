(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/expander/stx::timestamp 1789188907)
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
      (lambda _%$args183146%_
        (apply make-instance gx#identifier-wrap::t _%$args183146%_)))
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
      (lambda _%$args183143%_
        (apply make-instance gx#syntax-wrap::t _%$args183143%_)))
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
      (lambda _%$args183140%_
        (apply make-instance gx#syntax-quote::t _%$args183140%_)))
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
      (lambda (_%stx183138%_) (symbol? (gx#stx-e _%stx183138%_))))
    (define gx#identifier-quote?
      (lambda (_%stx183136%_)
        (if (##structure-direct-instance-of? _%stx183136%_ 'gx#syntax-quote::t)
            (symbol? (##unchecked-structure-ref _%stx183136%_ '1 '#f '#f))
            '#f)))
    (define gx#sealed-syntax?
      (lambda (_%stx183131%_)
        (if (##structure-direct-instance-of? _%stx183131%_ 'gx#syntax-quote::t)
            '#t
            (if (##structure-direct-instance-of?
                 _%stx183131%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax?
                 (##unchecked-structure-ref _%stx183131%_ '1 '#f '#f))
                '#f))))
    (define gx#sealed-syntax-unwrap
      (lambda (_%stx183126%_)
        (if (##structure-direct-instance-of? _%stx183126%_ 'gx#syntax-quote::t)
            _%stx183126%_
            (if (##structure-direct-instance-of?
                 _%stx183126%_
                 'gx#syntax-wrap::t)
                (gx#sealed-syntax-unwrap
                 (##unchecked-structure-ref _%stx183126%_ '1 '#f '#f))
                '#f))))
    (define gx#syntax-e
      (lambda (_%stx183100%_)
        (if (##structure-direct-instance-of? _%stx183100%_ 'gx#syntax-wrap::t)
            (let _%lp183103%_ ((_%e183105%_
                                (##unchecked-structure-ref
                                 _%stx183100%_
                                 '1
                                 '#f
                                 '#f))
                               (_%marks183106%_
                                (cons (##unchecked-structure-ref
                                       _%stx183100%_
                                       '3
                                       '#f
                                       '#f)
                                      '())))
              (if (##structure? _%e183105%_)
                  (let ((_%$e183109%_
                         (##type-id (##structure-type _%e183105%_))))
                    (if (eq? 'gx#syntax-wrap::t _%$e183109%_)
                        (_%lp183103%_
                         (##unchecked-structure-ref _%e183105%_ '1 '#f '#f)
                         (gx#apply-mark
                          (##unchecked-structure-ref _%e183105%_ '3 '#f '#f)
                          _%marks183106%_))
                        (if (or (eq? 'gx#syntax-quote::t _%$e183109%_)
                                (eq? 'gx#identifier-wrap::t _%$e183109%_))
                            (##unchecked-structure-ref _%e183105%_ '1 '#f '#f)
                            (if (eq? 'gerbil#AST::t _%$e183109%_)
                                (_%lp183103%_
                                 (##unchecked-structure-ref
                                  _%e183105%_
                                  '1
                                  '#f
                                  '#f)
                                 _%marks183106%_)
                                _%e183105%_))))
                  (if (null? _%marks183106%_)
                      _%e183105%_
                      (if (pair? _%e183105%_)
                          (cons (gx#stx-wrap
                                 (##car _%e183105%_)
                                 _%marks183106%_)
                                (gx#stx-wrap
                                 (##cdr _%e183105%_)
                                 _%marks183106%_))
                          (if (vector? _%e183105%_)
                              (vector-map
                               (lambda (_%$%g183117183119%_)
                                 (gx#stx-wrap
                                  _%$%g183117183119%_
                                  _%marks183106%_))
                               _%e183105%_)
                              (if (box? _%e183105%_)
                                  (box (gx#stx-wrap
                                        (unbox _%e183105%_)
                                        _%marks183106%_))
                                  _%e183105%_))))))
            (if (##structure-instance-of? _%stx183100%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx183100%_ '1 '#f '#f)
                _%stx183100%_))))
    (define gx#syntax->datum
      (lambda (_%stx183093%_)
        (if (##structure-instance-of? _%stx183093%_ 'gerbil#AST::t)
            (gx#syntax->datum
             (##unchecked-structure-ref _%stx183093%_ '1 '#f '#f))
            (if (pair? _%stx183093%_)
                (cons (gx#syntax->datum (##car _%stx183093%_))
                      (gx#syntax->datum (##cdr _%stx183093%_)))
                (if (vector? _%stx183093%_)
                    (vector-map gx#syntax->datum _%stx183093%_)
                    (if (box? _%stx183093%_)
                        (box (gx#syntax->datum (unbox _%stx183093%_)))
                        _%stx183093%_))))))
    (define gx#datum->syntax__%
      (lambda (_%stx183027%_ _%datum183028%_ _%src183029%_ _%quote?183030%_)
        (letrec ((_%wrap-datum183032%_
                  (lambda (_%e183065%_ _%marks183066%_)
                    (_%wrap-inner183034%_
                     _%e183065%_
                     (lambda (_%$%g183067183069%_)
                       (##structure
                        gx#identifier-wrap::t
                        _%$%g183067183069%_
                        _%src183029%_
                        _%marks183066%_)))))
                 (_%wrap-quote183033%_
                  (lambda (_%e183057%_ _%ctx183058%_ _%marks183059%_)
                    (_%wrap-inner183034%_
                     _%e183057%_
                     (lambda (_%$%g183060183062%_)
                       (##structure
                        gx#syntax-quote::t
                        _%$%g183060183062%_
                        _%src183029%_
                        _%ctx183058%_
                        _%marks183059%_)))))
                 (_%wrap-inner183034%_
                  (lambda (_%e183045%_ _%wrap-e183046%_)
                    (let _%recur183048%_ ((_%e183050%_ _%e183045%_))
                      (if (symbol? _%e183050%_)
                          (_%wrap-e183046%_ _%e183050%_)
                          (if (pair? _%e183050%_)
                              (cons (_%recur183048%_ (##car _%e183050%_))
                                    (_%recur183048%_ (##cdr _%e183050%_)))
                              (if (vector? _%e183050%_)
                                  (vector-map _%recur183048%_ _%e183050%_)
                                  (if (box? _%e183050%_)
                                      (box (_%recur183048%_
                                            (unbox _%e183050%_)))
                                      _%e183050%_)))))))
                 (_%wrap-outer183035%_
                  (lambda (_%e183043%_)
                    (if (##structure-instance-of? _%e183043%_ 'gerbil#AST::t)
                        _%e183043%_
                        (##structure gx#AST::t _%e183043%_ _%src183029%_)))))
          (if (##structure-instance-of? _%datum183028%_ 'gerbil#AST::t)
              _%datum183028%_
              (if (not _%stx183027%_)
                  (##structure gx#AST::t _%datum183028%_ _%src183029%_)
                  (if (gx#identifier? _%stx183027%_)
                      (let ((_%stx183040%_ (gx#stx-unwrap__0 _%stx183027%_)))
                        (_%wrap-outer183035%_
                         (if (##structure-direct-instance-of?
                              _%stx183040%_
                              'gx#syntax-quote::t)
                             (if _%quote?183030%_
                                 (_%wrap-quote183033%_
                                  _%datum183028%_
                                  (##unchecked-structure-ref
                                   _%stx183040%_
                                   '3
                                   '#f
                                   '#f)
                                  (##unchecked-structure-ref
                                   _%stx183040%_
                                   '4
                                   '#f
                                   '#f))
                                 (_%wrap-datum183032%_
                                  _%datum183028%_
                                  (##unchecked-structure-ref
                                   _%stx183040%_
                                   '4
                                   '#f
                                   '#f)))
                             (_%wrap-datum183032%_
                              _%datum183028%_
                              (##unchecked-structure-ref
                               _%stx183040%_
                               '3
                               '#f
                               '#f)))))
                      (error '"Bad template syntax; expected identifier"
                             _%stx183027%_)))))))
    (define gx#datum->syntax__0
      (lambda (_%stx183075%_ _%datum183076%_)
        (let* ((_%src183078%_ '#f) (_%quote?183080%_ '#t))
          (gx#datum->syntax__%
           _%stx183075%_
           _%datum183076%_
           _%src183078%_
           _%quote?183080%_))))
    (define gx#datum->syntax__1
      (lambda (_%stx183082%_ _%datum183083%_ _%src183084%_)
        (let ((_%quote?183086%_ '#t))
          (gx#datum->syntax__%
           _%stx183082%_
           _%datum183083%_
           _%src183084%_
           _%quote?183086%_))))
    (define gx#datum->syntax
      (lambda _g183226_
        (let ((_g183227_ (##length _g183226_)))
          (cond ((##fx= _g183227_ 2) (apply gx#datum->syntax__0 _g183226_))
                ((##fx= _g183227_ 3) (apply gx#datum->syntax__1 _g183226_))
                ((##fx= _g183227_ 4) (apply gx#datum->syntax__% _g183226_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#datum->syntax
                  _g183226_))))))
    (define gx#stx-unwrap__%
      (lambda (_%stx182993%_ _%marks182994%_)
        (let _%lp182996%_ ((_%e182998%_ _%stx182993%_)
                           (_%marks182999%_ _%marks182994%_)
                           (_%src183000%_ (gx#stx-source _%stx182993%_)))
          (if (##structure-direct-instance-of? _%e182998%_ 'gx#syntax-wrap::t)
              (_%lp182996%_
               (##unchecked-structure-ref _%e182998%_ '1 '#f '#f)
               (gx#apply-mark
                (##unchecked-structure-ref _%e182998%_ '3 '#f '#f)
                _%marks182999%_)
               (##unchecked-structure-ref _%e182998%_ '2 '#f '#f))
              (if (##structure-direct-instance-of?
                   _%e182998%_
                   'gx#identifier-wrap::t)
                  (if (null? _%marks182999%_)
                      _%e182998%_
                      (##structure
                       gx#identifier-wrap::t
                       (##unchecked-structure-ref _%e182998%_ '1 '#f '#f)
                       (##unchecked-structure-ref _%e182998%_ '2 '#f '#f)
                       (foldl__0
                        gx#apply-mark
                        (##unchecked-structure-ref _%e182998%_ '3 '#f '#f)
                        _%marks182999%_)))
                  (if (##structure-direct-instance-of?
                       _%e182998%_
                       'gx#syntax-quote::t)
                      _%e182998%_
                      (if (##structure-instance-of? _%e182998%_ 'gerbil#AST::t)
                          (_%lp182996%_
                           (##unchecked-structure-ref _%e182998%_ '1 '#f '#f)
                           _%marks182999%_
                           (##unchecked-structure-ref _%e182998%_ '2 '#f '#f))
                          (if (symbol? _%e182998%_)
                              (##structure
                               gx#identifier-wrap::t
                               _%e182998%_
                               _%src183000%_
                               (reverse _%marks182999%_))
                              (if (null? _%marks182999%_)
                                  _%e182998%_
                                  (if (pair? _%e182998%_)
                                      (cons (gx#stx-wrap
                                             (##car _%e182998%_)
                                             _%marks182999%_)
                                            (gx#stx-wrap
                                             (##cdr _%e182998%_)
                                             _%marks182999%_))
                                      (if (vector? _%e182998%_)
                                          (vector-map
                                           (lambda (_%$%g183009183011%_)
                                             (gx#stx-wrap
                                              _%$%g183009183011%_
                                              _%marks182999%_))
                                           _%e182998%_)
                                          (if (box? _%e182998%_)
                                              (box (gx#stx-wrap
                                                    (unbox _%e182998%_)
                                                    _%marks182999%_))
                                              _%e182998%_))))))))))))
    (define gx#stx-unwrap__0
      (lambda (_%stx183019%_)
        (let ((_%marks183021%_ '()))
          (gx#stx-unwrap__% _%stx183019%_ _%marks183021%_))))
    (define gx#stx-unwrap
      (lambda _g183228_
        (let ((_g183229_ (##length _g183228_)))
          (cond ((##fx= _g183229_ 1) (apply gx#stx-unwrap__0 _g183228_))
                ((##fx= _g183229_ 2) (apply gx#stx-unwrap__% _g183228_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-unwrap
                  _g183228_))))))
    (define gx#stx-wrap
      (lambda (_%stx182986%_ _%marks182987%_)
        (foldl__0
         (lambda (_%mark182989%_ _%stx182990%_)
           (gx#stx-apply-mark _%stx182990%_ _%mark182989%_))
         _%stx182986%_
         _%marks182987%_)))
    (define gx#stx-rewrap
      (lambda (_%stx182980%_ _%marks182981%_)
        (foldr__0
         (lambda (_%mark182983%_ _%stx182984%_)
           (gx#stx-apply-mark _%stx182984%_ _%mark182983%_))
         _%stx182980%_
         _%marks182981%_)))
    (define gx#stx-apply-mark
      (lambda (_%stx182974%_ _%mark182975%_)
        (if (##structure-direct-instance-of? _%stx182974%_ 'gx#syntax-quote::t)
            _%stx182974%_
            (if (and (##structure-direct-instance-of?
                      _%stx182974%_
                      'gx#syntax-wrap::t)
                     (eq? _%mark182975%_
                          (##unchecked-structure-ref
                           _%stx182974%_
                           '3
                           '#f
                           '#f)))
                (##unchecked-structure-ref _%stx182974%_ '1 '#f '#f)
                (##structure
                 gx#syntax-wrap::t
                 _%stx182974%_
                 (gx#stx-source _%stx182974%_)
                 _%mark182975%_)))))
    (define gx#apply-mark
      (lambda (_%mark182938%_ _%marks182939%_)
        (let* ((_%$%marks182940182948%_ _%marks182939%_)
               (_%$%else182942182956%_
                (lambda () (cons _%mark182938%_ _%marks182939%_)))
               (_%$%K182944182962%_
                (lambda (_%rest182959%_ _%hd182960%_)
                  (if (eq? _%mark182938%_ _%hd182960%_)
                      _%rest182959%_
                      (cons _%mark182938%_ _%marks182939%_)))))
          (if (pair? _%$%marks182940182948%_)
              (let ((_%$%hd182945182965%_ (##car _%$%marks182940182948%_))
                    (_%$%tl182946182967%_ (##cdr _%$%marks182940182948%_)))
                (let* ((_%hd182970%_ _%$%hd182945182965%_)
                       (_%rest182972%_ _%$%tl182946182967%_))
                  (_%$%K182944182962%_ _%rest182972%_ _%hd182970%_)))
              (_%$%else182942182956%_)))))
    (define gx#stx-e
      (lambda (_%stx182933%_)
        (if (##structure-direct-instance-of? _%stx182933%_ 'gx#syntax-wrap::t)
            (gx#stx-e (##unchecked-structure-ref _%stx182933%_ '1 '#f '#f))
            (if (##structure-instance-of? _%stx182933%_ 'gerbil#AST::t)
                (##unchecked-structure-ref _%stx182933%_ '1 '#f '#f)
                _%stx182933%_))))
    (define gx#stx-source
      (lambda (_%stx182931%_)
        (if (##structure-instance-of? _%stx182931%_ 'gerbil#AST::t)
            (##unchecked-structure-ref _%stx182931%_ '2 '#f '#f)
            '#f)))
    (define gx#stx-wrap-source
      (lambda (_%stx182925%_ _%src182926%_)
        (if (or (##structure-instance-of? _%stx182925%_ 'gerbil#AST::t)
                (not _%src182926%_))
            _%stx182925%_
            (##structure gx#AST::t _%stx182925%_ _%src182926%_))))
    (define gx#stx-datum?
      (lambda (_%stx182923%_) (gx#self-quoting? (gx#stx-e _%stx182923%_))))
    (define gx#self-quoting?
      (lambda (_%x182906%_)
        (let ((_%$e182908%_ (immediate? _%x182906%_)))
          (if _%$e182908%_
              _%$e182908%_
              (let ((_%$e182911%_ (number? _%x182906%_)))
                (if _%$e182911%_
                    _%$e182911%_
                    (let ((_%$e182914%_ (keyword? _%x182906%_)))
                      (if _%$e182914%_
                          _%$e182914%_
                          (let ((_%$e182917%_ (string? _%x182906%_)))
                            (if _%$e182917%_
                                _%$e182917%_
                                (let ((_%$e182920%_ (vector? _%x182906%_)))
                                  (if _%$e182920%_
                                      _%$e182920%_
                                      (u8vector? _%x182906%_)))))))))))))
    (define gx#stx-boolean?
      (lambda (_%e182904%_) (boolean? (gx#stx-e _%e182904%_))))
    (define gx#stx-keyword?
      (lambda (_%e182902%_) (keyword? (gx#stx-e _%e182902%_))))
    (define gx#stx-char? (lambda (_%e182900%_) (char? (gx#stx-e _%e182900%_))))
    (define gx#stx-number?
      (lambda (_%e182898%_) (number? (gx#stx-e _%e182898%_))))
    (define gx#stx-fixnum?
      (lambda (_%e182896%_) (fixnum? (gx#stx-e _%e182896%_))))
    (define gx#stx-string?
      (lambda (_%e182894%_) (string? (gx#stx-e _%e182894%_))))
    (define gx#stx-null? (lambda (_%e182892%_) (null? (gx#stx-e _%e182892%_))))
    (define gx#stx-pair? (lambda (_%e182890%_) (pair? (gx#stx-e _%e182890%_))))
    (define gx#stx-list?
      (lambda (_%e182852%_)
        (let* ((_%$%g182853182862%_ (gx#stx-e _%e182852%_))
               (_%$%E182856182866%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%g182853182862%_
                         '([_ . rest])
                         '(tail))
                  '#!void)))
          (let ((_%$%K182858182882%_
                 (lambda (_%rest182880%_) (gx#stx-list? _%rest182880%_)))
                (_%$%K182857182872%_
                 (lambda (_%tail182870%_) (null? _%tail182870%_))))
            (if (pair? _%$%g182853182862%_)
                (let* ((_%$%tl182860182885%_ (##cdr _%$%g182853182862%_))
                       (_%rest182888%_ _%$%tl182860182885%_))
                  (gx#stx-list? _%rest182888%_))
                (let ((_%tail182875%_ _%$%g182853182862%_))
                  (null? _%tail182875%_)))))))
    (define gx#stx-pair/null?
      (lambda (_%e182845%_)
        (let* ((_%e182847%_ (gx#stx-e _%e182845%_))
               (_%$e182849%_ (pair? _%e182847%_)))
          (if _%$e182849%_ _%$e182849%_ (null? _%e182847%_)))))
    (define gx#stx-vector?
      (lambda (_%e182843%_) (vector? (gx#stx-e _%e182843%_))))
    (define gx#stx-box? (lambda (_%e182841%_) (box? (gx#stx-e _%e182841%_))))
    (define gx#stx-eq?
      (lambda (_%x182838%_ _%y182839%_)
        (eq? (gx#stx-e _%x182838%_) (gx#stx-e _%y182839%_))))
    (define gx#stx-eqv?
      (lambda (_%x182835%_ _%y182836%_)
        (eqv? (gx#stx-e _%x182835%_) (gx#stx-e _%y182836%_))))
    (define gx#stx-equal?
      (lambda (_%x182832%_ _%y182833%_)
        (equal? (gx#stx-e _%x182832%_) (gx#stx-e _%y182833%_))))
    (define gx#stx-false? (lambda (_%x182830%_) (not (gx#stx-e _%x182830%_))))
    (define gx#stx-identifier
      (lambda (_%template182827%_ . _%args182828%_)
        (gx#datum->syntax__1
         _%template182827%_
         (apply make-symbol (gx#syntax->datum _%args182828%_))
         (gx#stx-source _%template182827%_))))
    (define gx#stx-identifier-marks
      (lambda (_%stx182825%_)
        (gx#stx-identifier-marks* (gx#stx-unwrap__0 _%stx182825%_))))
    (define gx#stx-identifier-marks*
      (lambda (_%stx182820%_)
        (if (##structure-direct-instance-of?
             _%stx182820%_
             'gx#identifier-wrap::t)
            (##unchecked-structure-ref _%stx182820%_ '3 '#f '#f)
            (if (##structure-direct-instance-of?
                 _%stx182820%_
                 'gx#syntax-quote::t)
                (##unchecked-structure-ref _%stx182820%_ '4 '#f '#f)
                (error '"Bad wrap; expected unwrapped identifier"
                       _%stx182820%_)))))
    (define gx#stx-identifier-context
      (lambda (_%stx182816%_)
        (let ((_%stx182818%_ (gx#stx-unwrap__0 _%stx182816%_)))
          (if (gx#identifier-quote? _%stx182818%_)
              (##unchecked-structure-ref _%stx182818%_ '3 '#f '#f)
              '#f))))
    (define gx#identifier-list?
      (lambda (_%stx182771%_)
        (let* ((_%$%g182772182782%_ (gx#stx-e _%stx182771%_))
               (_%$%else182775182790%_ (lambda () '#f)))
          (let ((_%$%K182778182804%_
                 (lambda (_%rest182801%_ _%hd182802%_)
                   (if (gx#identifier? _%hd182802%_)
                       (gx#identifier-list? _%rest182801%_)
                       '#f)))
                (_%$%K182777182795%_ (lambda () '#t)))
            (let ((_%$%try-match182774182798%_
                   (lambda ()
                     (if (null? _%$%g182772182782%_)
                         (_%$%K182777182795%_)
                         (_%$%else182775182790%_)))))
              (if (pair? _%$%g182772182782%_)
                  (let ((_%$%tl182780182809%_ (##cdr _%$%g182772182782%_))
                        (_%$%hd182779182807%_ (##car _%$%g182772182782%_)))
                    (let ((_%hd182812%_ _%$%hd182779182807%_)
                          (_%rest182814%_ _%$%tl182780182809%_))
                      (_%$%K182778182804%_ _%rest182814%_ _%hd182812%_)))
                  (_%$%try-match182774182798%_)))))))
    (define gx#genident__%
      (lambda (_%e182751%_ _%src182752%_)
        (gx#datum->syntax__1
         (if (gx#identifier? _%src182752%_) _%src182752%_ '#f)
         (make-symbol__1
          '"$%"
          (##gensym
           (let ((_%e182754%_ (gx#stx-e _%e182751%_)))
             (if (symbol? _%e182754%_) _%e182754%_ 'g))))
         _%src182752%_)))
    (define gx#genident__0
      (lambda ()
        (let* ((_%e182760%_ 'g) (_%src182762%_ '#f))
          (gx#genident__% _%e182760%_ _%src182762%_))))
    (define gx#genident__1
      (lambda (_%e182764%_)
        (let ((_%src182766%_ '#f))
          (gx#genident__% _%e182764%_ _%src182766%_))))
    (define gx#genident
      (lambda _g183230_
        (let ((_g183231_ (##length _g183230_)))
          (cond ((##fx= _g183231_ 0) (apply gx#genident__0 _g183230_))
                ((##fx= _g183231_ 1) (apply gx#genident__1 _g183230_))
                ((##fx= _g183231_ 2) (apply gx#genident__% _g183230_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#genident
                  _g183230_))))))
    (define gx#gentemps
      (lambda (_%stx-lst182746%_)
        (gx#stx-map1
         (lambda (_%x182748%_) (gx#genident__% _%x182748%_ _%x182748%_))
         _%stx-lst182746%_)))
    (define gx#syntax->list
      (lambda (_%stx182744%_) (gx#stx-map1 values _%stx182744%_)))
    (define gx#stx-car
      (lambda (_%stx182741%_)
        (declare (safe))
        (car (gx#syntax-e _%stx182741%_))))
    (define gx#stx-cdr
      (lambda (_%stx182738%_)
        (declare (safe))
        (cdr (gx#syntax-e _%stx182738%_))))
    (define gx#stx-length
      (lambda (_%stx182703%_)
        (let _%lp182705%_ ((_%rest182707%_ _%stx182703%_) (_%n182708%_ '0))
          (let* ((_%$%g182709182717%_ (gx#stx-e _%rest182707%_))
                 (_%$%else182711182725%_ (lambda () _%n182708%_))
                 (_%$%K182713182730%_
                  (lambda (_%rest182728%_)
                    (_%lp182705%_ _%rest182728%_ (##fx+ _%n182708%_ '1)))))
            (if (pair? _%$%g182709182717%_)
                (let* ((_%$%tl182715182733%_ (##cdr _%$%g182709182717%_))
                       (_%rest182736%_ _%$%tl182715182733%_))
                  (_%$%K182713182730%_ _%rest182736%_))
                (_%$%else182711182725%_))))))
    (define gx#stx-for-each
      (lambda _g183232_
        (let ((_g183233_ (##length _g183232_)))
          (cond ((##fx= _g183233_ 2) (apply gx#stx-for-each1 _g183232_))
                ((##fx= _g183233_ 3) (apply gx#stx-for-each2 _g183232_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-for-each
                  _g183232_))))))
    (define gx#stx-for-each1
      (lambda (_%f182646%_ _%stx182647%_)
        (if (procedure? _%f182646%_)
            '#!void
            (error '"expected procedure" _%f182646%_))
        (let _%lp182649%_ ((_%rest182651%_ _%stx182647%_))
          (let* ((_%$%g182652182662%_ (gx#syntax-e _%rest182651%_))
                 (_%$%else182655182670%_
                  (lambda () (_%f182646%_ _%rest182651%_))))
            (let ((_%$%K182658182684%_
                   (lambda (_%rest182681%_ _%hd182682%_)
                     (_%f182646%_ _%hd182682%_)
                     (_%lp182649%_ _%rest182681%_)))
                  (_%$%K182657182675%_ (lambda () '#!void)))
              (let ((_%$%try-match182654182678%_
                     (lambda ()
                       (if (null? _%$%g182652182662%_)
                           (_%$%K182657182675%_)
                           (_%$%else182655182670%_)))))
                (if (pair? _%$%g182652182662%_)
                    (let ((_%$%tl182660182689%_ (##cdr _%$%g182652182662%_))
                          (_%$%hd182659182687%_ (##car _%$%g182652182662%_)))
                      (let ((_%hd182692%_ _%$%hd182659182687%_)
                            (_%rest182694%_ _%$%tl182660182689%_))
                        (_%$%K182658182684%_ _%rest182694%_ _%hd182692%_)))
                    (_%$%try-match182654182678%_))))))))
    (define gx#stx-for-each2
      (lambda (_%f182551%_ _%xstx182552%_ _%ystx182553%_)
        (if (procedure? _%f182551%_)
            '#!void
            (error '"expected procedure" _%f182551%_))
        (let _%lp182555%_ ((_%xrest182557%_ _%xstx182552%_)
                           (_%yrest182558%_ _%ystx182553%_))
          (let* ((_%$%g182559182569%_ (gx#syntax-e _%xrest182557%_))
                 (_%$%else182562182577%_ (lambda () '#!void)))
            (let ((_%$%K182565182634%_
                   (lambda (_%xrest182603%_ _%xhd182604%_)
                     (let* ((_%$%g182605182612%_ (gx#syntax-e _%yrest182558%_))
                            (_%$%E182607182616%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g182605182612%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K182608182622%_
                             (lambda (_%yrest182619%_ _%yhd182620%_)
                               (_%f182551%_ _%xhd182604%_ _%yhd182620%_)
                               (_%lp182555%_
                                _%xrest182603%_
                                _%yrest182619%_))))
                       (if (pair? _%$%g182605182612%_)
                           (let ((_%$%hd182609182625%_
                                  (##car _%$%g182605182612%_))
                                 (_%$%tl182610182627%_
                                  (##cdr _%$%g182605182612%_)))
                             (let* ((_%yhd182630%_ _%$%hd182609182625%_)
                                    (_%yrest182632%_ _%$%tl182610182627%_))
                               (_%$%K182608182622%_
                                _%yrest182632%_
                                _%yhd182630%_)))
                           (_%$%E182607182616%_)))))
                  (_%$%K182564182597%_
                   (lambda ()
                     (let* ((_%$%yrest182581182586%_ _%yrest182558%_)
                            (_%$%E182583182590%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest182581182586%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K182584182594%_
                             (lambda ()
                               (_%f182551%_ _%xrest182557%_ _%yrest182558%_))))
                       (if (gx#stx-null? _%$%yrest182581182586%_)
                           (_%$%E182583182590%_)
                           (_%$%K182584182594%_))))))
              (let ((_%$%try-match182561182600%_
                     (lambda ()
                       (if (null? _%$%g182559182569%_)
                           (_%$%else182562182577%_)
                           (_%$%K182564182597%_)))))
                (if (pair? _%$%g182559182569%_)
                    (let ((_%$%tl182567182639%_ (##cdr _%$%g182559182569%_))
                          (_%$%hd182566182637%_ (##car _%$%g182559182569%_)))
                      (let ((_%xhd182642%_ _%$%hd182566182637%_)
                            (_%xrest182644%_ _%$%tl182567182639%_))
                        (_%$%K182565182634%_ _%xrest182644%_ _%xhd182642%_)))
                    (_%$%try-match182561182600%_))))))))
    (define gx#stx-map
      (lambda _g183234_
        (let ((_g183235_ (##length _g183234_)))
          (cond ((##fx= _g183235_ 2) (apply gx#stx-map1 _g183234_))
                ((##fx= _g183235_ 3) (apply gx#stx-map2 _g183234_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-map
                  _g183234_))))))
    (define gx#stx-map1
      (lambda (_%f182494%_ _%stx182495%_)
        (if (procedure? _%f182494%_)
            '#!void
            (error '"expected procedure" _%f182494%_))
        (let _%recur182497%_ ((_%rest182499%_ _%stx182495%_))
          (let* ((_%$%g182500182510%_ (gx#syntax-e _%rest182499%_))
                 (_%$%else182503182518%_
                  (lambda () (_%f182494%_ _%rest182499%_))))
            (let ((_%$%K182506182532%_
                   (lambda (_%rest182529%_ _%hd182530%_)
                     (cons (_%f182494%_ _%hd182530%_)
                           (_%recur182497%_ _%rest182529%_))))
                  (_%$%K182505182523%_ (lambda () '())))
              (let ((_%$%try-match182502182526%_
                     (lambda ()
                       (if (null? _%$%g182500182510%_)
                           (_%$%K182505182523%_)
                           (_%$%else182503182518%_)))))
                (if (pair? _%$%g182500182510%_)
                    (let ((_%$%tl182508182537%_ (##cdr _%$%g182500182510%_))
                          (_%$%hd182507182535%_ (##car _%$%g182500182510%_)))
                      (let ((_%hd182540%_ _%$%hd182507182535%_)
                            (_%rest182542%_ _%$%tl182508182537%_))
                        (_%$%K182506182532%_ _%rest182542%_ _%hd182540%_)))
                    (_%$%try-match182502182526%_))))))))
    (define gx#stx-map2
      (lambda (_%f182399%_ _%xstx182400%_ _%ystx182401%_)
        (if (procedure? _%f182399%_)
            '#!void
            (error '"expected procedure" _%f182399%_))
        (let _%recur182403%_ ((_%xrest182405%_ _%xstx182400%_)
                              (_%yrest182406%_ _%ystx182401%_))
          (let* ((_%$%g182407182417%_ (gx#syntax-e _%xrest182405%_))
                 (_%$%else182410182425%_ (lambda () '())))
            (let ((_%$%K182413182482%_
                   (lambda (_%xrest182451%_ _%xhd182452%_)
                     (let* ((_%$%g182453182460%_ (gx#syntax-e _%yrest182406%_))
                            (_%$%E182455182464%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%g182453182460%_
                                      '([yhd . yrest]))
                               '#!void))
                            (_%$%K182456182470%_
                             (lambda (_%yrest182467%_ _%yhd182468%_)
                               (cons (_%f182399%_ _%xhd182452%_ _%yhd182468%_)
                                     (_%recur182403%_
                                      _%xrest182451%_
                                      _%yrest182467%_)))))
                       (if (pair? _%$%g182453182460%_)
                           (let ((_%$%hd182457182473%_
                                  (##car _%$%g182453182460%_))
                                 (_%$%tl182458182475%_
                                  (##cdr _%$%g182453182460%_)))
                             (let* ((_%yhd182478%_ _%$%hd182457182473%_)
                                    (_%yrest182480%_ _%$%tl182458182475%_))
                               (_%$%K182456182470%_
                                _%yrest182480%_
                                _%yhd182478%_)))
                           (_%$%E182455182464%_)))))
                  (_%$%K182412182445%_
                   (lambda ()
                     (let* ((_%$%yrest182429182434%_ _%yrest182406%_)
                            (_%$%E182431182438%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%yrest182429182434%_
                                      '((? (not stx-null?))))
                               '#!void))
                            (_%$%K182432182442%_
                             (lambda ()
                               (_%f182399%_ _%xrest182405%_ _%yrest182406%_))))
                       (if (gx#stx-null? _%$%yrest182429182434%_)
                           (_%$%E182431182438%_)
                           (_%$%K182432182442%_))))))
              (let ((_%$%try-match182409182448%_
                     (lambda ()
                       (if (null? _%$%g182407182417%_)
                           (_%$%else182410182425%_)
                           (_%$%K182412182445%_)))))
                (if (pair? _%$%g182407182417%_)
                    (let ((_%$%tl182415182487%_ (##cdr _%$%g182407182417%_))
                          (_%$%hd182414182485%_ (##car _%$%g182407182417%_)))
                      (let ((_%xhd182490%_ _%$%hd182414182485%_)
                            (_%xrest182492%_ _%$%tl182415182487%_))
                        (_%$%K182413182482%_ _%xrest182492%_ _%xhd182490%_)))
                    (_%$%try-match182409182448%_))))))))
    (define gx#stx-andmap
      (lambda (_%f182349%_ _%stx182350%_)
        (if (procedure? _%f182349%_)
            '#!void
            (error '"expected procedure" _%f182349%_))
        (let _%lp182352%_ ((_%rest182354%_ _%stx182350%_))
          (let* ((_%$%g182355182365%_ (gx#syntax-e _%rest182354%_))
                 (_%$%else182358182373%_
                  (lambda () (_%f182349%_ _%rest182354%_))))
            (let ((_%$%K182361182387%_
                   (lambda (_%rest182384%_ _%hd182385%_)
                     (if (_%f182349%_ _%hd182385%_)
                         (_%lp182352%_ _%rest182384%_)
                         '#f)))
                  (_%$%K182360182378%_ (lambda () '#t)))
              (let ((_%$%try-match182357182381%_
                     (lambda ()
                       (if (null? _%$%g182355182365%_)
                           (_%$%K182360182378%_)
                           (_%$%else182358182373%_)))))
                (if (pair? _%$%g182355182365%_)
                    (let ((_%$%tl182363182392%_ (##cdr _%$%g182355182365%_))
                          (_%$%hd182362182390%_ (##car _%$%g182355182365%_)))
                      (let ((_%hd182395%_ _%$%hd182362182390%_)
                            (_%rest182397%_ _%$%tl182363182392%_))
                        (_%$%K182361182387%_ _%rest182397%_ _%hd182395%_)))
                    (_%$%try-match182357182381%_))))))))
    (define gx#stx-ormap
      (lambda (_%f182296%_ _%stx182297%_)
        (if (procedure? _%f182296%_)
            '#!void
            (error '"expected procedure" _%f182296%_))
        (let _%lp182299%_ ((_%rest182301%_ _%stx182297%_))
          (let* ((_%$%g182302182312%_ (gx#syntax-e _%rest182301%_))
                 (_%$%else182305182320%_
                  (lambda () (_%f182296%_ _%rest182301%_))))
            (let ((_%$%K182308182337%_
                   (lambda (_%rest182331%_ _%hd182332%_)
                     (let ((_%$e182334%_ (_%f182296%_ _%hd182332%_)))
                       (if _%$e182334%_
                           _%$e182334%_
                           (_%lp182299%_ _%rest182331%_)))))
                  (_%$%K182307182325%_ (lambda () '#f)))
              (let ((_%$%try-match182304182328%_
                     (lambda ()
                       (if (null? _%$%g182302182312%_)
                           (_%$%K182307182325%_)
                           (_%$%else182305182320%_)))))
                (if (pair? _%$%g182302182312%_)
                    (let ((_%$%tl182310182342%_ (##cdr _%$%g182302182312%_))
                          (_%$%hd182309182340%_ (##car _%$%g182302182312%_)))
                      (let ((_%hd182345%_ _%$%hd182309182340%_)
                            (_%rest182347%_ _%$%tl182310182342%_))
                        (_%$%K182308182337%_ _%rest182347%_ _%hd182345%_)))
                    (_%$%try-match182304182328%_))))))))
    (define gx#stx-foldl
      (lambda (_%f182244%_ _%iv182245%_ _%stx182246%_)
        (if (procedure? _%f182244%_)
            '#!void
            (error '"expected procedure" _%f182244%_))
        (let _%lp182248%_ ((_%r182250%_ _%iv182245%_)
                           (_%rest182251%_ _%stx182246%_))
          (let* ((_%$%g182252182262%_ (gx#syntax-e _%rest182251%_))
                 (_%$%else182255182270%_
                  (lambda () (_%f182244%_ _%rest182251%_ _%r182250%_))))
            (let ((_%$%K182258182284%_
                   (lambda (_%rest182281%_ _%hd182282%_)
                     (_%lp182248%_
                      (_%f182244%_ _%hd182282%_ _%r182250%_)
                      _%rest182281%_)))
                  (_%$%K182257182275%_ (lambda () _%r182250%_)))
              (let ((_%$%try-match182254182278%_
                     (lambda ()
                       (if (null? _%$%g182252182262%_)
                           (_%$%K182257182275%_)
                           (_%$%else182255182270%_)))))
                (if (pair? _%$%g182252182262%_)
                    (let ((_%$%tl182260182289%_ (##cdr _%$%g182252182262%_))
                          (_%$%hd182259182287%_ (##car _%$%g182252182262%_)))
                      (let ((_%hd182292%_ _%$%hd182259182287%_)
                            (_%rest182294%_ _%$%tl182260182289%_))
                        (_%$%K182258182284%_ _%rest182294%_ _%hd182292%_)))
                    (_%$%try-match182254182278%_))))))))
    (define gx#stx-foldr
      (lambda (_%f182193%_ _%iv182194%_ _%stx182195%_)
        (if (procedure? _%f182193%_)
            '#!void
            (error '"expected procedure" _%f182193%_))
        (let _%recur182197%_ ((_%rest182199%_ _%stx182195%_))
          (let* ((_%$%g182200182210%_ (gx#syntax-e _%rest182199%_))
                 (_%$%else182203182218%_
                  (lambda () (_%f182193%_ _%rest182199%_ _%iv182194%_))))
            (let ((_%$%K182206182232%_
                   (lambda (_%rest182229%_ _%hd182230%_)
                     (_%f182193%_
                      _%hd182230%_
                      (_%recur182197%_ _%rest182229%_))))
                  (_%$%K182205182223%_ (lambda () _%iv182194%_)))
              (let ((_%$%try-match182202182226%_
                     (lambda ()
                       (if (null? _%$%g182200182210%_)
                           (_%$%K182205182223%_)
                           (_%$%else182203182218%_)))))
                (if (pair? _%$%g182200182210%_)
                    (let ((_%$%tl182208182237%_ (##cdr _%$%g182200182210%_))
                          (_%$%hd182207182235%_ (##car _%$%g182200182210%_)))
                      (let ((_%hd182240%_ _%$%hd182207182235%_)
                            (_%rest182242%_ _%$%tl182208182237%_))
                        (_%$%K182206182232%_ _%rest182242%_ _%hd182240%_)))
                    (_%$%try-match182202182226%_))))))))
    (define gx#stx-reverse
      (lambda (_%stx182191%_) (gx#stx-foldl cons '() _%stx182191%_)))
    (define gx#stx-last
      (lambda (_%stx182152%_)
        (let _%lp182154%_ ((_%rest182156%_ _%stx182152%_))
          (let* ((_%$%g182157182165%_ (gx#syntax-e _%rest182156%_))
                 (_%$%else182159182173%_ (lambda () _%rest182156%_))
                 (_%$%K182161182179%_
                  (lambda (_%rest182176%_ _%hd182177%_)
                    (if (gx#stx-null? _%rest182176%_)
                        _%hd182177%_
                        (_%lp182154%_ _%rest182176%_)))))
            (if (pair? _%$%g182157182165%_)
                (let ((_%$%hd182162182182%_ (##car _%$%g182157182165%_))
                      (_%$%tl182163182184%_ (##cdr _%$%g182157182165%_)))
                  (let* ((_%hd182187%_ _%$%hd182162182182%_)
                         (_%rest182189%_ _%$%tl182163182184%_))
                    (_%$%K182161182179%_ _%rest182189%_ _%hd182187%_)))
                (_%$%else182159182173%_))))))
    (define gx#stx-last-pair
      (lambda (_%stx182123%_)
        (let _%lp182125%_ ((_%hd182127%_ _%stx182123%_))
          (let* ((_%$%g182128182135%_ (gx#syntax-e _%hd182127%_))
                 (_%$%E182130182139%_
                  (lambda ()
                    (error '"No clause matching"
                           _%$%g182128182135%_
                           '([_ . rest]))
                    '#!void))
                 (_%$%K182131182144%_
                  (lambda (_%rest182142%_)
                    (if (gx#stx-pair? _%rest182142%_)
                        (_%lp182125%_ _%rest182142%_)
                        _%hd182127%_))))
            (if (pair? _%$%g182128182135%_)
                (let* ((_%$%tl182133182147%_ (##cdr _%$%g182128182135%_))
                       (_%rest182150%_ _%$%tl182133182147%_))
                  (_%$%K182131182144%_ _%rest182150%_))
                (_%$%E182130182139%_))))))
    (define gx#stx-list-tail
      (lambda (_%stx182092%_ _%k182093%_)
        (let _%lp182095%_ ((_%rest182097%_ _%stx182092%_)
                           (_%k182098%_ _%k182093%_))
          (if (fxpositive? _%k182098%_)
              (let* ((_%$%g182099182106%_ (gx#syntax-e _%rest182097%_))
                     (_%$%E182101182110%_
                      (lambda ()
                        (error '"No clause matching"
                               _%$%g182099182106%_
                               '([_ . rest]))
                        '#!void))
                     (_%$%K182102182115%_
                      (lambda (_%rest182113%_)
                        (_%lp182095%_ _%rest182113%_ (##fx- _%k182098%_ '1)))))
                (if (pair? _%$%g182099182106%_)
                    (let* ((_%$%tl182104182118%_ (##cdr _%$%g182099182106%_))
                           (_%rest182121%_ _%$%tl182104182118%_))
                      (_%$%K182102182115%_ _%rest182121%_))
                    (_%$%E182101182110%_)))
              _%rest182097%_))))
    (define gx#stx-list-ref
      (lambda (_%stx182089%_ _%k182090%_)
        (gx#stx-car (gx#stx-list-tail _%stx182089%_ _%k182090%_))))
    (define gx#stx-plist?__%
      (lambda (_%stx182001%_ _%key?182002%_)
        (if (procedure? _%key?182002%_)
            '#!void
            (error '"expected procedure" _%key?182002%_))
        (let _%lp182004%_ ((_%rest182006%_ _%stx182001%_))
          (let* ((_%$%g182007182017%_ (gx#stx-e _%rest182006%_))
                 (_%$%else182010182025%_ (lambda () '#f)))
            (let ((_%$%K182013182067%_
                   (lambda (_%rest182036%_ _%hd182037%_)
                     (if (_%key?182002%_ _%hd182037%_)
                         (let* ((_%$%g182038182046%_ (gx#stx-e _%rest182036%_))
                                (_%$%else182040182054%_ (lambda () '#f))
                                (_%$%K182042182059%_
                                 (lambda (_%rest182057%_)
                                   (_%lp182004%_ _%rest182057%_))))
                           (if (pair? _%$%g182038182046%_)
                               (let* ((_%$%tl182044182062%_
                                       (##cdr _%$%g182038182046%_))
                                      (_%rest182065%_ _%$%tl182044182062%_))
                                 (_%lp182004%_ _%rest182065%_))
                               (_%$%else182040182054%_)))
                         '#f)))
                  (_%$%K182012182030%_ (lambda () '#t)))
              (let ((_%$%try-match182009182033%_
                     (lambda ()
                       (if (null? _%$%g182007182017%_)
                           (_%$%K182012182030%_)
                           (_%$%else182010182025%_)))))
                (if (pair? _%$%g182007182017%_)
                    (let ((_%$%tl182015182072%_ (##cdr _%$%g182007182017%_))
                          (_%$%hd182014182070%_ (##car _%$%g182007182017%_)))
                      (let ((_%hd182075%_ _%$%hd182014182070%_)
                            (_%rest182077%_ _%$%tl182015182072%_))
                        (_%$%K182013182067%_ _%rest182077%_ _%hd182075%_)))
                    (_%$%try-match182009182033%_))))))))
    (define gx#stx-plist?__0
      (lambda (_%stx182082%_)
        (let ((_%key?182084%_ gx#stx-keyword?))
          (gx#stx-plist?__% _%stx182082%_ _%key?182084%_))))
    (define gx#stx-plist?
      (lambda _g183236_
        (let ((_g183237_ (##length _g183236_)))
          (cond ((##fx= _g183237_ 1) (apply gx#stx-plist?__0 _g183236_))
                ((##fx= _g183237_ 2) (apply gx#stx-plist?__% _g183236_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist?
                  _g183236_))))))
    (define gx#stx-getq__%
      (lambda (_%key181919%_ _%stx181920%_ _%key=?181921%_)
        (if (procedure? _%key=?181921%_)
            '#!void
            (error '"expected procedure" _%key=?181921%_))
        (let _%lp181923%_ ((_%rest181925%_ _%stx181920%_))
          (let* ((_%$%g181926181934%_ (gx#syntax-e _%rest181925%_))
                 (_%$%else181928181942%_ (lambda () '#f))
                 (_%$%K181930181976%_
                  (lambda (_%rest181945%_ _%hd181946%_)
                    (let* ((_%$%g181947181954%_ (gx#syntax-e _%rest181945%_))
                           (_%$%E181949181958%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g181947181954%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K181950181964%_
                            (lambda (_%rest181961%_ _%val181962%_)
                              (if (_%key=?181921%_ _%hd181946%_ _%key181919%_)
                                  _%val181962%_
                                  (_%lp181923%_ _%rest181961%_)))))
                      (if (pair? _%$%g181947181954%_)
                          (let ((_%$%hd181951181967%_
                                 (##car _%$%g181947181954%_))
                                (_%$%tl181952181969%_
                                 (##cdr _%$%g181947181954%_)))
                            (let* ((_%val181972%_ _%$%hd181951181967%_)
                                   (_%rest181974%_ _%$%tl181952181969%_))
                              (_%$%K181950181964%_
                               _%rest181974%_
                               _%val181972%_)))
                          (_%$%E181949181958%_))))))
            (if (pair? _%$%g181926181934%_)
                (let ((_%$%hd181931181979%_ (##car _%$%g181926181934%_))
                      (_%$%tl181932181981%_ (##cdr _%$%g181926181934%_)))
                  (let* ((_%hd181984%_ _%$%hd181931181979%_)
                         (_%rest181986%_ _%$%tl181932181981%_))
                    (_%$%K181930181976%_ _%rest181986%_ _%hd181984%_)))
                (_%$%else181928181942%_))))))
    (define gx#stx-getq__0
      (lambda (_%key181991%_ _%stx181992%_)
        (let ((_%key=?181994%_ gx#stx-eq?))
          (gx#stx-getq__% _%key181991%_ _%stx181992%_ _%key=?181994%_))))
    (define gx#stx-getq
      (lambda _g183238_
        (let ((_g183239_ (##length _g183238_)))
          (cond ((##fx= _g183239_ 2) (apply gx#stx-getq__0 _g183238_))
                ((##fx= _g183239_ 3) (apply gx#stx-getq__% _g183238_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-getq
                  _g183238_))))))
    (define gx#stx-plist-assq__%
      (lambda (_%key181837%_ _%stx181838%_ _%key=?181839%_)
        (if (procedure? _%key=?181839%_)
            '#!void
            (error '"expected procedure" _%key=?181839%_))
        (let _%lp181841%_ ((_%rest181843%_ _%stx181838%_))
          (let* ((_%$%g181844181852%_ (gx#syntax-e _%rest181843%_))
                 (_%$%else181846181860%_ (lambda () '#f))
                 (_%$%K181848181894%_
                  (lambda (_%rest181863%_ _%hd181864%_)
                    (let* ((_%$%g181865181872%_ (gx#syntax-e _%rest181863%_))
                           (_%$%E181867181876%_
                            (lambda ()
                              (error '"No clause matching"
                                     _%$%g181865181872%_
                                     '([val . rest]))
                              '#!void))
                           (_%$%K181868181882%_
                            (lambda (_%rest181879%_ _%val181880%_)
                              (if (_%key=?181839%_ _%hd181864%_ _%key181837%_)
                                  (cons _%hd181864%_ _%val181880%_)
                                  (_%lp181841%_ _%rest181879%_)))))
                      (if (pair? _%$%g181865181872%_)
                          (let ((_%$%hd181869181885%_
                                 (##car _%$%g181865181872%_))
                                (_%$%tl181870181887%_
                                 (##cdr _%$%g181865181872%_)))
                            (let* ((_%val181890%_ _%$%hd181869181885%_)
                                   (_%rest181892%_ _%$%tl181870181887%_))
                              (_%$%K181868181882%_
                               _%rest181892%_
                               _%val181890%_)))
                          (_%$%E181867181876%_))))))
            (if (pair? _%$%g181844181852%_)
                (let ((_%$%hd181849181897%_ (##car _%$%g181844181852%_))
                      (_%$%tl181850181899%_ (##cdr _%$%g181844181852%_)))
                  (let* ((_%hd181902%_ _%$%hd181849181897%_)
                         (_%rest181904%_ _%$%tl181850181899%_))
                    (_%$%K181848181894%_ _%rest181904%_ _%hd181902%_)))
                (_%$%else181846181860%_))))))
    (define gx#stx-plist-assq__0
      (lambda (_%key181909%_ _%stx181910%_)
        (let ((_%key=?181912%_ gx#stx-eq?))
          (gx#stx-plist-assq__% _%key181909%_ _%stx181910%_ _%key=?181912%_))))
    (define gx#stx-plist-assq
      (lambda _g183240_
        (let ((_g183241_ (##length _g183240_)))
          (cond ((##fx= _g183241_ 2) (apply gx#stx-plist-assq__0 _g183240_))
                ((##fx= _g183241_ 3) (apply gx#stx-plist-assq__% _g183240_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gx#stx-plist-assq
                  _g183240_))))))))
