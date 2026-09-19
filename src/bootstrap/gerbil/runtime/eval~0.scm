(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1789839225)
  (begin
    (define __syntax::t
      (let ((__tmp180834 (list)) (__tmp180833 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         '__syntax::t
         '__syntax
         __tmp180834
         '(e id)
         __tmp180833
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args180638%_
        (apply make-instance __syntax::t _%$args180638%_)))
    (define __syntax-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __syntax::t 'e)))
    (define __syntax-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __syntax::t 'id)))
    (define __syntax-e-set!
      (let () (declare (not safe)) (__make-class-slot-mutator __syntax::t 'e)))
    (define __syntax-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __syntax::t 'id)))
    (define &__syntax-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __syntax::t 'e)))
    (define &__syntax-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __syntax::t 'id)))
    (define &__syntax-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __syntax::t 'e)))
    (define &__syntax-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __syntax::t 'id)))
    (define __core-form::t
      (let ((__tmp180836 (list __syntax::t))
            (__tmp180835 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         '__core-form::t
         '__core-form
         __tmp180836
         '()
         __tmp180835
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args180635%_
        (apply make-instance __core-form::t _%$args180635%_)))
    (define __core-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-form::t 'e)))
    (define __core-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-form::t 'id)))
    (define __core-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-form::t 'e)))
    (define __core-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-form::t 'id)))
    (define &__core-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-form::t 'e)))
    (define &__core-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-form::t 'id)))
    (define &__core-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-form::t 'e)))
    (define &__core-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-form::t 'id)))
    (define __core-expression::t
      (let ((__tmp180838 (list __core-form::t))
            (__tmp180837 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         '__core-expression::t
         '__core-expression
         __tmp180838
         '()
         __tmp180837
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args180632%_
        (apply make-instance __core-expression::t _%$args180632%_)))
    (define __core-expression-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-expression::t 'e)))
    (define __core-expression-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-expression::t 'id)))
    (define __core-expression-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-expression::t 'e)))
    (define __core-expression-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-expression::t 'id)))
    (define &__core-expression-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-expression::t 'e)))
    (define &__core-expression-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-expression::t 'id)))
    (define &__core-expression-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-expression::t 'e)))
    (define &__core-expression-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-expression::t 'id)))
    (define __core-special-form::t
      (let ((__tmp180840 (list __core-form::t))
            (__tmp180839 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         '__core-special-form::t
         '__core-special-form
         __tmp180840
         '()
         __tmp180839
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args180629%_
        (apply make-instance __core-special-form::t _%$args180629%_)))
    (define __core-special-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-special-form::t 'e)))
    (define __core-special-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor __core-special-form::t 'id)))
    (define __core-special-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-special-form::t 'e)))
    (define __core-special-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator __core-special-form::t 'id)))
    (define &__core-special-form-e
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-special-form::t 'e)))
    (define &__core-special-form-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor __core-special-form::t 'id)))
    (define &__core-special-form-e-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-special-form::t 'e)))
    (define &__core-special-form-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator __core-special-form::t 'id)))
    (define __core (let () (declare (not safe)) (make-hash-table-eq)))
    (define __current-expander (make-parameter '#f))
    (define __current-compiler (make-parameter '#f))
    (define __current-path (make-parameter '()))
    (define __core-resolve
      (lambda (_%id180606%_)
        (let* ((_%h180608%_ __core)
               (_%key180611%_
                (let () (declare (not safe)) (__AST-e _%id180606%_)))
               (_%h180615%_ _%h180608%_)
               (_%h180617%_ _%h180615%_))
          (declare (not safe))
          (__hash-get _%h180617%_ _%key180611%_))))
    (define __core-bound-id?__%
      (lambda (_%id180589%_ _%is?180590%_)
        (let ((_%$e180592%_ (__core-resolve _%id180589%_)))
          (if _%$e180592%_ (_%is?180590%_ _%$e180592%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id180599%_)
        (let ((_%is?180601%_ true))
          (__core-bound-id?__% _%id180599%_ _%is?180601%_))))
    (define __core-bound-id?
      (lambda _g180841_
        (let ((_g180842_ (let () (declare (not safe)) (##length _g180841_))))
          (cond ((let () (declare (not safe)) (##fx= _g180842_ 1))
                 (apply __core-bound-id?__0 _g180841_))
                ((let () (declare (not safe)) (##fx= _g180842_ 2))
                 (apply __core-bound-id?__% _g180841_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g180841_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id180547%_ _%e180548%_ _%make180549%_)
        (let* ((_%h180551%_ __core)
               (_%key180554%_ _%id180547%_)
               (_%value180557%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%e180548%_ '__syntax::t))
                    _%e180548%_
                    (_%make180549%_ _%e180548%_ _%id180547%_)))
               (_%h180561%_ _%h180551%_)
               (_%h180563%_ _%h180561%_))
          (declare (not safe))
          (__hash-put! _%h180563%_ _%key180554%_ _%value180557%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id180579%_ _%e180580%_)
        (let ((_%make180582%_ make-__syntax))
          (__core-bind-syntax!__% _%id180579%_ _%e180580%_ _%make180582%_))))
    (define __core-bind-syntax!
      (lambda _g180843_
        (let ((_g180844_ (let () (declare (not safe)) (##length _g180843_))))
          (cond ((let () (declare (not safe)) (##fx= _g180844_ 2))
                 (apply __core-bind-syntax!__0 _g180843_))
                ((let () (declare (not safe)) (##fx= _g180844_ 3))
                 (apply __core-bind-syntax!__% _g180843_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g180843_))))))
    (define __SRC__%
      (lambda (_%e180527%_ _%src-stx180528%_)
        (if (or (pair? _%e180527%_) (symbol? _%e180527%_))
            (let ((__tmp180845
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx180528%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx180528%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e180527%_ __tmp180845))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e180527%_ 'gerbil#AST::t))
                (let ((__tmp180847
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e180527%_ '1 '#f '#f)))
                      (__tmp180846
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e180527%_)))))
                  (declare (not safe))
                  (##make-source __tmp180847 __tmp180846))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e180527%_))))))
    (define __SRC__0
      (lambda (_%e180539%_)
        (let ((_%src-stx180541%_ '#f))
          (__SRC__% _%e180539%_ _%src-stx180541%_))))
    (define __SRC
      (lambda _g180848_
        (let ((_g180849_ (let () (declare (not safe)) (##length _g180848_))))
          (cond ((let () (declare (not safe)) (##fx= _g180849_ 1))
                 (apply __SRC__0 _g180848_))
                ((let () (declare (not safe)) (##fx= _g180849_ 2))
                 (apply __SRC__% _g180848_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g180848_))))))
    (define __locat
      (lambda (_%loc180524%_)
        (if (let () (declare (not safe)) (##locat? _%loc180524%_))
            _%loc180524%_
            '#f)))
    (define __check-values
      (lambda (_%obj180519%_ _%k180520%_)
        (let ((_%count180522%_
               (if (let () (declare (not safe)) (##values? _%obj180519%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj180519%_))
                   '1)))
          (if (fx= _%count180522%_ _%k180520%_)
              '#!void
              (let ((__tmp180851
                     (if (fx< _%count180522%_ _%k180520%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp180850
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj180519%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj180519%_))
                         _%obj180519%_)))
                (declare (not safe))
                (error __tmp180851 __tmp180850 _%k180520%_))))))
    (define __compile
      (lambda (_%stx180488%_)
        (let* ((_%$e180490%_ _%stx180488%_)
               (_%$%$E180492180498%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e180490%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e180490%_))
              (let* ((_%$%$tgt180493180501%_
                      (let () (declare (not safe)) (__AST-e _%$e180490%_)))
                     (_%$%$hd180494180504%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt180493180501%_)))
                     (_%$%$tl180495180507%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt180493180501%_)))
                     (_%form180511%_ _%$%$hd180494180504%_)
                     (_%$e180513%_ (__core-resolve _%form180511%_)))
                (if _%$e180513%_
                    ((##structure-ref _%$e180513%_ '1 __syntax::t '#f)
                     _%stx180488%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx180488%_
                       _%form180511%_))))
              (_%$%$E180492180498%_)))))
    (define __compile-error__%
      (lambda (_%stx180475%_ _%detail180476%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx180475%_
           _%detail180476%_))))
    (define __compile-error__0
      (lambda (_%stx180481%_)
        (let ((_%detail180483%_ '#f))
          (__compile-error__% _%stx180481%_ _%detail180483%_))))
    (define __compile-error
      (lambda _g180852_
        (let ((_g180853_ (let () (declare (not safe)) (##length _g180852_))))
          (cond ((let () (declare (not safe)) (##fx= _g180853_ 1))
                 (apply __compile-error__0 _g180852_))
                ((let () (declare (not safe)) (##fx= _g180853_ 2))
                 (apply __compile-error__% _g180852_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g180852_))))))
    (define __compile-ignore%
      (lambda (_%stx180472%_) (__SRC__% ''#!void _%stx180472%_)))
    (define __compile-begin%
      (lambda (_%stx180447%_)
        (let* ((_%$e180449%_ _%stx180447%_)
               (_%$%$E180451180457%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e180449%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e180449%_))
              (let* ((_%$%$tgt180452180460%_
                      (let () (declare (not safe)) (__AST-e _%$e180449%_)))
                     (_%$%$hd180453180463%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt180452180460%_)))
                     (_%$%$tl180454180466%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt180452180460%_)))
                     (_%body180470%_ _%$%$tl180454180466%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body180470%_))
                 _%stx180447%_))
              (_%$%$E180451180457%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx180422%_)
        (let* ((_%$e180424%_ _%stx180422%_)
               (_%$%$E180426180432%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e180424%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e180424%_))
              (let* ((_%$%$tgt180427180435%_
                      (let () (declare (not safe)) (__AST-e _%$e180424%_)))
                     (_%$%$hd180428180438%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt180427180435%_)))
                     (_%$%$tl180429180441%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt180427180435%_)))
                     (_%body180445%_ _%$%$tl180429180441%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body180445%_)))
                 _%stx180422%_))
              (_%$%$E180426180432%_)))))
    (define __compile-import%
      (lambda (_%stx180397%_)
        (let* ((_%$e180399%_ _%stx180397%_)
               (_%$%$E180401180407%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e180399%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e180399%_))
              (let* ((_%$%$tgt180402180410%_
                      (let () (declare (not safe)) (__AST-e _%$e180399%_)))
                     (_%$%$hd180403180413%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt180402180410%_)))
                     (_%$%$tl180404180416%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt180402180410%_)))
                     (_%body180420%_ _%$%$tl180404180416%_))
                (__SRC__%
                 (list '__eval-import (list 'quote _%body180420%_))
                 _%stx180397%_))
              (_%$%$E180401180407%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx180344%_)
        (let* ((_%$e180346%_ _%stx180344%_)
               (_%$%$E180348180360%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e180346%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e180346%_))
              (let* ((_%$%$tgt180349180363%_
                      (let () (declare (not safe)) (__AST-e _%$e180346%_)))
                     (_%$%$hd180350180366%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt180349180363%_)))
                     (_%$%$tl180351180369%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt180349180363%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl180351180369%_))
                    (let* ((_%$%$tgt180352180373%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl180351180369%_)))
                           (_%$%$hd180353180376%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt180352180373%_)))
                           (_%$%$tl180354180379%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt180352180373%_)))
                           (_%ann180383%_ _%$%$hd180353180376%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl180354180379%_))
                          (let* ((_%$%$tgt180355180385%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl180354180379%_)))
                                 (_%$%$hd180356180388%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt180355180385%_)))
                                 (_%$%$tl180357180391%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt180355180385%_)))
                                 (_%expr180395%_ _%$%$hd180356180388%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl180357180391%_))
                                        '())
                                (__compile _%expr180395%_)
                                (_%$%$E180348180360%_)))
                          (_%$%$E180348180360%_)))
                    (_%$%$E180348180360%_)))
              (_%$%$E180348180360%_)))))
    (define __compile-define-values%
      (lambda (_%stx180235%_)
        (let* ((_%$e180237%_ _%stx180235%_)
               (_%$%$E180239180251%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e180237%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e180237%_))
              (let* ((_%$%$tgt180240180254%_
                      (let () (declare (not safe)) (__AST-e _%$e180237%_)))
                     (_%$%$hd180241180257%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt180240180254%_)))
                     (_%$%$tl180242180260%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt180240180254%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl180242180260%_))
                    (let* ((_%$%$tgt180243180264%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl180242180260%_)))
                           (_%$%$hd180244180267%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt180243180264%_)))
                           (_%$%$tl180245180270%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt180243180264%_)))
                           (_%hd180274%_ _%$%$hd180244180267%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl180245180270%_))
                          (let* ((_%$%$tgt180246180276%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl180245180270%_)))
                                 (_%$%$hd180247180279%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt180246180276%_)))
                                 (_%$%$tl180248180282%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt180246180276%_)))
                                 (_%expr180286%_ _%$%$hd180247180279%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl180248180282%_))
                                        '())
                                (let* ((_%$e180288%_ _%hd180274%_)
                                       (_%$%$E180290180331%_
                                        (lambda ()
                                          (let ((_%$%$E180291180316%_
                                                 (lambda ()
                                                   (let* ((_%$%$E180292180303%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e180288%_))))
                  (_%ids180306%_ _%hd180274%_)
                  (_%len180308%_ (length _%ids180306%_))
                  (_%tmp180310%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (list 'define
                                 _%tmp180310%_
                                 (__compile _%expr180286%_))
                           _%stx180235%_)
                          (cons (__SRC__%
                                 (list '__check-values
                                       _%tmp180310%_
                                       _%len180308%_)
                                 _%stx180235%_)
                                (let ((__tmp180855
                                       (lambda (_%id180313%_ _%k180314%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id180313%_))
                                             (__SRC__%
                                              (list 'define
                                                    (__SRC__0 _%id180313%_)
                                                    (list '##values-ref
                                                          _%tmp180310%_
                                                          _%k180314%_))
                                              _%stx180235%_)
                                             '#f)))
                                      (__tmp180854
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len180308%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp180855
                                   _%ids180306%_
                                   __tmp180854)))))
              _%stx180235%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e180288%_))
                                                (let* ((_%$%$tgt180293180319%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e180288%_)))
                                                       (_%$%$hd180294180322%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%$tgt180293180319%_)))
                                                       (_%$%$tl180295180325%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%$tgt180293180319%_)))
                                                       (_%id180329%_
                                                        _%$%$hd180294180322%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$%$tl180295180325%_))
                      '())
              (__SRC__%
               (list 'define
                     (__SRC__0 _%id180329%_)
                     (__compile _%expr180286%_))
               _%stx180235%_)
              (_%$%$E180291180316%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%$E180291180316%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e180288%_))
                                      (let* ((_%$%$tgt180296180334%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e180288%_)))
                                             (_%$%$hd180297180337%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt180296180334%_)))
                                             (_%$%$tl180298180340%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt180296180334%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$hd180297180337%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$%$tl180298180340%_))
                                                        '())
                                                (__compile _%expr180286%_)
                                                (_%$%$E180290180331%_))
                                            (_%$%$E180290180331%_)))
                                      (_%$%$E180290180331%_)))
                                (_%$%$E180239180251%_)))
                          (_%$%$E180239180251%_)))
                    (_%$%$E180239180251%_)))
              (_%$%$E180239180251%_)))))
    (define __compile-head-id
      (lambda (_%e180233%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e180233%_))
             _%e180233%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd180190%_)
        (let _%recur180192%_ ((_%rest180194%_ _%hd180190%_))
          (let* ((_%$e180196%_ _%rest180194%_)
                 (_%$%$E180198180216%_
                  (lambda ()
                    (let ((_%$%$E180199180213%_
                           (lambda ()
                             (let* ((_%$%$E180200180208%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e180196%_))))
                                    (_%tail180211%_ _%$e180196%_))
                               (__compile-head-id _%tail180211%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e180196%_))
                                  '())
                          '()
                          (_%$%$E180199180213%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e180196%_))
                (let* ((_%$%$tgt180201180219%_
                        (let () (declare (not safe)) (__AST-e _%$e180196%_)))
                       (_%$%$hd180202180222%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt180201180219%_)))
                       (_%$%$tl180203180225%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt180201180219%_)))
                       (_%hd180229%_ _%$%$hd180202180222%_)
                       (_%rest180231%_ _%$%$tl180203180225%_))
                  (cons (__compile-head-id _%hd180229%_)
                        (_%recur180192%_ _%rest180231%_)))
                (_%$%$E180198180216%_))))))
    (define __compile-lambda%
      (lambda (_%stx180137%_)
        (let* ((_%$e180139%_ _%stx180137%_)
               (_%$%$E180141180153%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e180139%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e180139%_))
              (let* ((_%$%$tgt180142180156%_
                      (let () (declare (not safe)) (__AST-e _%$e180139%_)))
                     (_%$%$hd180143180159%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt180142180156%_)))
                     (_%$%$tl180144180162%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt180142180156%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl180144180162%_))
                    (let* ((_%$%$tgt180145180166%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl180144180162%_)))
                           (_%$%$hd180146180169%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt180145180166%_)))
                           (_%$%$tl180147180172%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt180145180166%_)))
                           (_%hd180176%_ _%$%$hd180146180169%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl180147180172%_))
                          (let* ((_%$%$tgt180148180178%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl180147180172%_)))
                                 (_%$%$hd180149180181%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt180148180178%_)))
                                 (_%$%$tl180150180184%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt180148180178%_)))
                                 (_%body180188%_ _%$%$hd180149180181%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl180150180184%_))
                                        '())
                                (__SRC__%
                                 (list 'lambda
                                       (__compile-lambda-head _%hd180176%_)
                                       (__compile _%body180188%_))
                                 _%stx180137%_)
                                (_%$%$E180141180153%_)))
                          (_%$%$E180141180153%_)))
                    (_%$%$E180141180153%_)))
              (_%$%$E180141180153%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx179902%_)
        (letrec ((_%variadic?179904%_
                  (lambda (_%hd180102%_)
                    (let* ((_%$e180104%_ _%hd180102%_)
                           (_%$%$E180106180122%_
                            (lambda ()
                              (let ((_%$%$E180107180119%_
                                     (lambda ()
                                       (let ((_%$%$E180108180116%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e180104%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e180104%_))
                                            '())
                                    '#f
                                    (_%$%$E180107180119%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e180104%_))
                          (let* ((_%$%$tgt180109180125%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e180104%_)))
                                 (_%$%$hd180110180128%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt180109180125%_)))
                                 (_%$%$tl180111180131%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt180109180125%_)))
                                 (_%rest180135%_ _%$%$tl180111180131%_))
                            (_%variadic?179904%_ _%rest180135%_))
                          (_%$%$E180106180122%_)))))
                 (_%arity179905%_
                  (lambda (_%hd180040%_)
                    (let _%lp180042%_ ((_%rest180044%_ _%hd180040%_)
                                       (_%k180045%_ '0))
                      (let* ((_%$e180047%_ _%rest180044%_)
                             (_%$%$E180049180060%_
                              (lambda ()
                                (let ((_%$%$E180050180057%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e180047%_)))))
                                  _%k180045%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e180047%_))
                            (let* ((_%$%$tgt180051180063%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e180047%_)))
                                   (_%$%$hd180052180066%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%$tgt180051180063%_)))
                                   (_%$%$tl180053180069%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%$tgt180051180063%_)))
                                   (_%rest180073%_ _%$%$tl180053180069%_))
                              (_%lp180042%_
                               _%rest180073%_
                               (let ((_%x180075%_ _%k180045%_))
                                 (if (fixnum? _%x180075%_)
                                     (let ((_%x180080%_ _%x180075%_))
                                       (declare (not safe))
                                       (__fx1+ _%x180080%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x180075%_)
                                       '#!void)))))
                            (_%$%$E180049180060%_))))))
                 (_%generate179906%_
                  (lambda (_%rest179967%_ _%args179968%_ _%len179969%_)
                    (let* ((_%$e179971%_ _%rest179967%_)
                           (_%$%$E179973179984%_
                            (lambda ()
                              (let ((_%$%$E179974179981%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e179971%_)))))
                                (__SRC__%
                                 (list 'error
                                       '"No clause matching arguments"
                                       _%args179968%_)
                                 _%stx179902%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e179971%_))
                          (let* ((_%$%$tgt179975179987%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e179971%_)))
                                 (_%$%$hd179976179990%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt179975179987%_)))
                                 (_%$%$tl179977179993%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt179975179987%_)))
                                 (_%clause179997%_ _%$%$hd179976179990%_)
                                 (_%rest179999%_ _%$%$tl179977179993%_)
                                 (_%$e180001%_ _%clause179997%_)
                                 (_%$%$E180003180012%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e180001%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e180001%_))
                                (let* ((_%$%$tgt180004180015%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e180001%_)))
                                       (_%$%$hd180005180018%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt180004180015%_)))
                                       (_%$%$tl180006180021%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt180004180015%_)))
                                       (_%hd180025%_ _%$%$hd180005180018%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl180006180021%_))
                                      (let* ((_%$%$tgt180007180027%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl180006180021%_)))
                                             (_%$%$hd180008180030%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt180007180027%_)))
                                             (_%$%$tl180009180033%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt180007180027%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl180009180033%_))
                                                    '())
                                            (let ((_%clen180037%_
                                                   (_%arity179905%_
                                                    _%hd180025%_))
                                                  (_%cmp180038%_
                                                   (if (_%variadic?179904%_
                                                        _%hd180025%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (list 'if
                                                     (list _%cmp180038%_
                                                           _%len179969%_
                                                           _%clen180037%_)
                                                     (__SRC__%
                                                      (list '##apply
                                                            (__compile-lambda%
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause179997%_))
                    _%args179968%_)
              _%stx179902%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%generate179906%_
                                                      _%rest179999%_
                                                      _%args179968%_
                                                      _%len179969%_))
                                               _%stx179902%_))
                                            (_%$%$E180003180012%_)))
                                      (_%$%$E180003180012%_)))
                                (_%$%$E180003180012%_)))
                          (_%$%$E179973179984%_))))))
          (let* ((_%$e179908%_ _%stx179902%_)
                 (_%$%$E179910179942%_
                  (lambda ()
                    (let ((_%$%$E179911179924%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e179908%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e179908%_))
                          (let* ((_%$%$tgt179912179927%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e179908%_)))
                                 (_%$%$hd179913179930%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt179912179927%_)))
                                 (_%$%$tl179914179933%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt179912179927%_)))
                                 (_%clauses179937%_ _%$%$tl179914179933%_))
                            (let ((_%args179939%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx179902%_))
                                  (_%len179940%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx179902%_)))
                              (__SRC__%
                               (list 'lambda
                                     _%args179939%_
                                     (__SRC__%
                                      (list 'let
                                            (list (list _%len179940%_
                                                        (__SRC__%
                                                         (list '##length
                                                               _%args179939%_)
                                                         _%stx179902%_)))
                                            (_%generate179906%_
                                             _%clauses179937%_
                                             _%args179939%_
                                             _%len179940%_))
                                      _%stx179902%_))
                               _%stx179902%_)))
                          (_%$%$E179911179924%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e179908%_))
                (let* ((_%$%$tgt179915179945%_
                        (let () (declare (not safe)) (__AST-e _%$e179908%_)))
                       (_%$%$hd179916179948%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt179915179945%_)))
                       (_%$%$tl179917179951%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt179915179945%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl179917179951%_))
                      (let* ((_%$%$tgt179918179955%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl179917179951%_)))
                             (_%$%$hd179919179958%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt179918179955%_)))
                             (_%$%$tl179920179961%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt179918179955%_)))
                             (_%clause179965%_ _%$%$hd179919179958%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$tl179920179961%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause179965%_))
                            (_%$%$E179910179942%_)))
                      (_%$%$E179910179942%_)))
                (_%$%$E179910179942%_))))))
    (define __compile-let-form
      (lambda (_%stx179671%_ _%compile-simple179672%_ _%compile-values179673%_)
        (letrec ((_%simple-bind?179675%_
                  (lambda (_%hd179860%_)
                    (let* ((_%$%hd179861179871%_ _%hd179860%_)
                           (_%$%else179864179879%_ (lambda () '#f)))
                      (let ((_%$%K179867179892%_ (lambda (_%id179890%_) '#t))
                            (_%$%K179866179884%_ (lambda () '#t)))
                        (let ((_%$%try-match179863179887%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%$%hd179861179871%_ '#f))
                                     (_%$%K179866179884%_)
                                     (_%$%else179864179879%_)))))
                          (if (pair? _%$%hd179861179871%_)
                              (let ((_%$%tl179869179897%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%hd179861179871%_)))
                                    (_%$%hd179868179895%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%hd179861179871%_))))
                                (if (null? _%$%tl179869179897%_)
                                    (let ((_%id179900%_ _%$%hd179868179895%_))
                                      (_%$%K179867179892%_ _%id179900%_))
                                    (_%$%try-match179863179887%_)))
                              (_%$%try-match179863179887%_)))))))
                 (_%car-e179676%_
                  (lambda (_%hd179858%_)
                    (if (pair? _%hd179858%_)
                        (let () (declare (not safe)) (##car _%hd179858%_))
                        _%hd179858%_))))
          (let* ((_%$e179678%_ _%stx179671%_)
                 (_%$%$E179680179823%_
                  (lambda ()
                    (let ((_%$%$E179681179703%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e179678%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e179678%_))
                          (let* ((_%$%$tgt179682179706%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e179678%_)))
                                 (_%$%$hd179683179709%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt179682179706%_)))
                                 (_%$%$tl179684179712%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt179682179706%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl179684179712%_))
                                (let* ((_%$%$tgt179685179716%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl179684179712%_)))
                                       (_%$%$hd179686179719%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt179685179716%_)))
                                       (_%$%$tl179687179722%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt179685179716%_)))
                                       (_%hd179726%_ _%$%$hd179686179719%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl179687179722%_))
                                      (let* ((_%$%$tgt179688179728%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl179687179722%_)))
                                             (_%$%$hd179689179731%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt179688179728%_)))
                                             (_%$%$tl179690179734%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt179688179728%_)))
                                             (_%body179738%_
                                              _%$%$hd179689179731%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl179690179734%_))
                                                    '())
                                            (let* ((_%hd-ids179778%_
                                                    (map (lambda (_%bind179740%_)
                                                           (let* ((_%$e179742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind179740%_)
                          (_%$%$E179744179753%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e179742%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e179742%_))
                         (let* ((_%$%$tgt179745179756%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e179742%_)))
                                (_%$%$hd179746179759%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt179745179756%_)))
                                (_%$%$tl179747179762%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt179745179756%_)))
                                (_%ids179766%_ _%$%$hd179746179759%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl179747179762%_))
                               (let* ((_%$%$tgt179748179768%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl179747179762%_)))
                                      (_%$%$hd179749179771%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt179748179768%_)))
                                      (_%$%$tl179750179774%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt179748179768%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl179750179774%_))
                                             '())
                                     _%ids179766%_
                                     (_%$%$E179744179753%_)))
                               (_%$%$E179744179753%_)))
                         (_%$%$E179744179753%_))))
                 _%hd179726%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs179818%_
                                                    (map (lambda (_%bind179780%_)
                                                           (let* ((_%$e179782%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind179780%_)
                          (_%$%$E179784179793%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e179782%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e179782%_))
                         (let* ((_%$%$tgt179785179796%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e179782%_)))
                                (_%$%$hd179786179799%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt179785179796%_)))
                                (_%$%$tl179787179802%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt179785179796%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl179787179802%_))
                               (let* ((_%$%$tgt179788179806%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl179787179802%_)))
                                      (_%$%$hd179789179809%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt179788179806%_)))
                                      (_%$%$tl179790179812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt179788179806%_)))
                                      (_%expr179816%_ _%$%$hd179789179809%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl179790179812%_))
                                             '())
                                     (__compile _%expr179816%_)
                                     (_%$%$E179784179793%_)))
                               (_%$%$E179784179793%_)))
                         (_%$%$E179784179793%_))))
                 _%hd179726%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body179820%_
                                                    (__compile
                                                     _%body179738%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?179675%_
                                                     _%hd-ids179778%_))
                                                  (_%compile-simple179672%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e179676%_
                                                            _%hd-ids179778%_))
                                                   _%exprs179818%_
                                                   _%body179820%_)
                                                  (_%compile-values179673%_
                                                   _%hd-ids179778%_
                                                   _%exprs179818%_
                                                   _%body179820%_)))
                                            (_%$%$E179681179703%_)))
                                      (_%$%$E179681179703%_)))
                                (_%$%$E179681179703%_)))
                          (_%$%$E179681179703%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e179678%_))
                (let* ((_%$%$tgt179691179826%_
                        (let () (declare (not safe)) (__AST-e _%$e179678%_)))
                       (_%$%$hd179692179829%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt179691179826%_)))
                       (_%$%$tl179693179832%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt179691179826%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl179693179832%_))
                      (let* ((_%$%$tgt179694179836%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl179693179832%_)))
                             (_%$%$hd179695179839%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt179694179836%_)))
                             (_%$%$tl179696179842%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt179694179836%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$hd179695179839%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl179696179842%_))
                                (let* ((_%$%$tgt179697179846%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl179696179842%_)))
                                       (_%$%$hd179698179849%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt179697179846%_)))
                                       (_%$%$tl179699179852%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt179697179846%_)))
                                       (_%body179856%_ _%$%$hd179698179849%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl179699179852%_))
                                              '())
                                      (__compile _%body179856%_)
                                      (_%$%$E179680179823%_)))
                                (_%$%$E179680179823%_))
                            (_%$%$E179680179823%_)))
                      (_%$%$E179680179823%_)))
                (_%$%$E179680179823%_))))))
    (define __compile-let-values%
      (lambda (_%stx179483%_)
        (letrec ((_%compile-simple179485%_
                  (lambda (_%hd-ids179667%_ _%exprs179668%_ _%body179669%_)
                    (__SRC__%
                     (list 'let
                           (let ((__tmp180856
                                  (map __compile-head-id _%hd-ids179667%_)))
                             (declare (not safe))
                             (##map list __tmp180856 _%exprs179668%_))
                           _%body179669%_)
                     _%stx179483%_)))
                 (_%compile-values179486%_
                  (lambda (_%hd-ids179582%_ _%exprs179583%_ _%body179584%_)
                    (let _%lp179586%_ ((_%rest179588%_ _%hd-ids179582%_)
                                       (_%exprs179589%_ _%exprs179583%_)
                                       (_%bind179590%_ '())
                                       (_%post179591%_ '()))
                      (let* ((_%$%rest179592179606%_ _%rest179588%_)
                             (_%$%else179595179614%_
                              (lambda ()
                                (__SRC__%
                                 (list 'let
                                       (reverse _%bind179590%_)
                                       (_%compile-post179487%_
                                        _%post179591%_
                                        _%body179584%_))
                                 _%stx179483%_))))
                        (let ((_%$%K179600179650%_
                               (lambda (_%rest179647%_ _%id179648%_)
                                 (_%lp179586%_
                                  _%rest179647%_
                                  (cdr _%exprs179589%_)
                                  (cons (list (__compile-head-id _%id179648%_)
                                              (car _%exprs179589%_))
                                        _%bind179590%_)
                                  _%post179591%_)))
                              (_%$%K179597179632%_
                               (lambda (_%rest179618%_ _%hd179619%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd179619%_))
                                     (_%lp179586%_
                                      _%rest179618%_
                                      (cdr _%exprs179589%_)
                                      (cons (list (__compile-head-id
                                                   _%hd179619%_)
                                                  (list 'values->list
                                                        (car _%exprs179589%_)))
                                            _%bind179590%_)
                                      _%post179591%_)
                                     (if (list? _%hd179619%_)
                                         (let* ((_%len179623%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd179619%_)))
                                                (_%tmp179625%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp179586%_
                                            _%rest179618%_
                                            (cdr _%exprs179589%_)
                                            (cons (list _%tmp179625%_
                                                        (car _%exprs179589%_))
                                                  _%bind179590%_)
                                            (cons (cons _%tmp179625%_
                                                        (cons _%len179623%_
                                                              (let ((__tmp180858
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id179628%_ _%k179629%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id179628%_))
                                   (cons (__SRC__0 _%id179628%_) _%k179629%_)
                                   '#f)))
                            (__tmp180857
                             (let ()
                               (declare (not safe))
                               (##iota _%len179623%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp180858 _%hd179619%_ __tmp180857))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post179591%_)))
                                         (__compile-error__%
                                          _%stx179483%_
                                          _%hd179619%_))))))
                          (if (pair? _%$%rest179592179606%_)
                              (let ((_%$%tl179602179655%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest179592179606%_)))
                                    (_%$%hd179601179653%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest179592179606%_))))
                                (if (pair? _%$%hd179601179653%_)
                                    (let ((_%$%tl179604179660%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd179601179653%_)))
                                          (_%$%hd179603179658%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd179601179653%_))))
                                      (if (null? _%$%tl179604179660%_)
                                          (let ((_%id179663%_
                                                 _%$%hd179603179658%_)
                                                (_%rest179665%_
                                                 _%$%tl179602179655%_))
                                            (_%$%K179600179650%_
                                             _%rest179665%_
                                             _%id179663%_))
                                          (let ((_%hd179640%_
                                                 _%$%hd179601179653%_)
                                                (_%rest179642%_
                                                 _%$%tl179602179655%_))
                                            (_%$%K179597179632%_
                                             _%rest179642%_
                                             _%hd179640%_))))
                                    (let ((_%hd179640%_ _%$%hd179601179653%_)
                                          (_%rest179642%_
                                           _%$%tl179602179655%_))
                                      (_%$%K179597179632%_
                                       _%rest179642%_
                                       _%hd179640%_))))
                              (_%$%else179595179614%_)))))))
                 (_%compile-post179487%_
                  (lambda (_%post179489%_ _%body179490%_)
                    (let _%lp179492%_ ((_%rest179494%_ _%post179489%_)
                                       (_%check179495%_ '())
                                       (_%bind179496%_ '()))
                      (let* ((_%$%rest179497179509%_ _%rest179494%_)
                             (_%$%else179499179517%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp180859
                                              (list (__SRC__%
                                                     (list 'let
                                                           _%bind179496%_
                                                           _%body179490%_)
                                                     _%stx179483%_))))
                                         (declare (not safe))
                                         (##append
                                          _%check179495%_
                                          __tmp180859)))
                                 _%stx179483%_)))
                             (_%$%K179501179556%_
                              (lambda (_%rest179520%_
                                       _%init179521%_
                                       _%len179522%_
                                       _%tmp179523%_)
                                (_%lp179492%_
                                 _%rest179520%_
                                 (cons (__SRC__%
                                        (list '__check-values
                                              _%tmp179523%_
                                              _%len179522%_)
                                        _%stx179483%_)
                                       _%check179495%_)
                                 (let ((__tmp180860
                                        (lambda (_%hd179525%_ _%r179526%_)
                                          (let* ((_%$%hd179527179534%_
                                                  _%hd179525%_)
                                                 (_%$%E179529179538%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd179527179534%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K179530179544%_
                                                  (lambda (_%k179541%_
                                                           _%id179542%_)
                                                    (cons (list _%id179542%_
                                                                (list '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tmp179523%_
                              _%k179541%_))
                  _%r179526%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd179527179534%_)
                                                (let ((_%$%hd179531179547%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd179527179534%_)))
                                                      (_%$%tl179532179549%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd179527179534%_))))
                                                  (let* ((_%id179552%_
                                                          _%$%hd179531179547%_)
                                                         (_%k179554%_
                                                          _%$%tl179532179549%_))
                                                    (_%$%K179530179544%_
                                                     _%k179554%_
                                                     _%id179552%_)))
                                                (_%$%E179529179538%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp180860
                                    _%bind179496%_
                                    _%init179521%_))))))
                        (if (pair? _%$%rest179497179509%_)
                            (let ((_%$%hd179502179559%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest179497179509%_)))
                                  (_%$%tl179503179561%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest179497179509%_))))
                              (if (pair? _%$%hd179502179559%_)
                                  (let ((_%$%hd179504179564%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd179502179559%_)))
                                        (_%$%tl179505179566%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd179502179559%_))))
                                    (let ((_%tmp179569%_ _%$%hd179504179564%_))
                                      (if (pair? _%$%tl179505179566%_)
                                          (let ((_%$%hd179506179571%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl179505179566%_)))
                                                (_%$%tl179507179573%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl179505179566%_))))
                                            (let* ((_%len179576%_
                                                    _%$%hd179506179571%_)
                                                   (_%init179578%_
                                                    _%$%tl179507179573%_)
                                                   (_%rest179580%_
                                                    _%$%tl179503179561%_))
                                              (_%$%K179501179556%_
                                               _%rest179580%_
                                               _%init179578%_
                                               _%len179576%_
                                               _%tmp179569%_)))
                                          (_%$%else179499179517%_))))
                                  (_%$%else179499179517%_)))
                            (_%$%else179499179517%_)))))))
          (__compile-let-form
           _%stx179483%_
           _%compile-simple179485%_
           _%compile-values179486%_))))
    (define __compile-letrec-values%
      (lambda (_%stx179280%_)
        (letrec ((_%compile-simple179282%_
                  (lambda (_%hd-ids179479%_ _%exprs179480%_ _%body179481%_)
                    (__SRC__%
                     (list 'letrec
                           (let ((__tmp180861
                                  (map __compile-head-id _%hd-ids179479%_)))
                             (declare (not safe))
                             (##map list __tmp180861 _%exprs179480%_))
                           _%body179481%_)
                     _%stx179280%_)))
                 (_%compile-values179283%_
                  (lambda (_%hd-ids179390%_ _%exprs179391%_ _%body179392%_)
                    (let _%lp179394%_ ((_%rest179396%_ _%hd-ids179390%_)
                                       (_%exprs179397%_ _%exprs179391%_)
                                       (_%pre179398%_ '())
                                       (_%bind179399%_ '())
                                       (_%post179400%_ '()))
                      (let* ((_%$%rest179401179415%_ _%rest179396%_)
                             (_%$%else179404179423%_
                              (lambda ()
                                (_%compile-inner179284%_
                                 _%pre179398%_
                                 _%bind179399%_
                                 _%post179400%_
                                 _%body179392%_))))
                        (let ((_%$%K179409179462%_
                               (lambda (_%rest179459%_ _%id179460%_)
                                 (_%lp179394%_
                                  _%rest179459%_
                                  (cdr _%exprs179397%_)
                                  _%pre179398%_
                                  (cons (list (__compile-head-id _%id179460%_)
                                              (car _%exprs179397%_))
                                        _%bind179399%_)
                                  _%post179400%_)))
                              (_%$%K179406179444%_
                               (lambda (_%rest179427%_ _%hd179428%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd179428%_))
                                     (_%lp179394%_
                                      _%rest179427%_
                                      (cdr _%exprs179397%_)
                                      _%pre179398%_
                                      (cons (list (__compile-head-id
                                                   _%hd179428%_)
                                                  (list 'values->list
                                                        (car _%exprs179397%_)))
                                            _%bind179399%_)
                                      _%post179400%_)
                                     (if (list? _%hd179428%_)
                                         (let* ((_%len179432%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd179428%_)))
                                                (_%tmp179434%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp179394%_
                                            _%rest179427%_
                                            (cdr _%exprs179397%_)
                                            (let ((__tmp180862
                                                   (lambda (_%id179437%_
                                                            _%r179438%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id179437%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id179437%_)
                             '('#!void))
                       _%r179438%_)
                 _%r179438%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp180862
                                               _%pre179398%_
                                               _%hd179428%_))
                                            (cons (list _%tmp179434%_
                                                        (car _%exprs179397%_))
                                                  _%bind179399%_)
                                            (cons (cons _%tmp179434%_
                                                        (cons _%len179432%_
                                                              (let ((__tmp180864
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id179440%_ _%k179441%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id179440%_))
                                   (cons (__SRC__0 _%id179440%_) _%k179441%_)
                                   '#f)))
                            (__tmp180863
                             (let ()
                               (declare (not safe))
                               (##iota _%len179432%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp180864 _%hd179428%_ __tmp180863))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post179400%_)))
                                         (__compile-error__%
                                          _%stx179280%_
                                          _%hd179428%_))))))
                          (if (pair? _%$%rest179401179415%_)
                              (let ((_%$%tl179411179467%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest179401179415%_)))
                                    (_%$%hd179410179465%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest179401179415%_))))
                                (if (pair? _%$%hd179410179465%_)
                                    (let ((_%$%tl179413179472%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd179410179465%_)))
                                          (_%$%hd179412179470%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd179410179465%_))))
                                      (if (null? _%$%tl179413179472%_)
                                          (let ((_%id179475%_
                                                 _%$%hd179412179470%_)
                                                (_%rest179477%_
                                                 _%$%tl179411179467%_))
                                            (_%$%K179409179462%_
                                             _%rest179477%_
                                             _%id179475%_))
                                          (let ((_%hd179452%_
                                                 _%$%hd179410179465%_)
                                                (_%rest179454%_
                                                 _%$%tl179411179467%_))
                                            (_%$%K179406179444%_
                                             _%rest179454%_
                                             _%hd179452%_))))
                                    (let ((_%hd179452%_ _%$%hd179410179465%_)
                                          (_%rest179454%_
                                           _%$%tl179411179467%_))
                                      (_%$%K179406179444%_
                                       _%rest179454%_
                                       _%hd179452%_))))
                              (_%$%else179404179423%_)))))))
                 (_%compile-inner179284%_
                  (lambda (_%pre179385%_
                           _%bind179386%_
                           _%post179387%_
                           _%body179388%_)
                    (if (null? _%pre179385%_)
                        (_%compile-bind179285%_
                         _%bind179386%_
                         _%post179387%_
                         _%body179388%_)
                        (__SRC__%
                         (list 'let
                               (reverse _%pre179385%_)
                               (_%compile-bind179285%_
                                _%bind179386%_
                                _%post179387%_
                                _%body179388%_))
                         _%stx179280%_))))
                 (_%compile-bind179285%_
                  (lambda (_%bind179381%_ _%post179382%_ _%body179383%_)
                    (__SRC__%
                     (list 'letrec
                           (reverse _%bind179381%_)
                           (_%compile-post179286%_
                            _%post179382%_
                            _%body179383%_))
                     _%stx179280%_)))
                 (_%compile-post179286%_
                  (lambda (_%post179288%_ _%body179289%_)
                    (let _%lp179291%_ ((_%rest179293%_ _%post179288%_)
                                       (_%check179294%_ '())
                                       (_%bind179295%_ '()))
                      (let* ((_%$%rest179296179308%_ _%rest179293%_)
                             (_%$%else179298179316%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (append _%check179294%_
                                               _%bind179295%_
                                               (list _%body179289%_)))
                                 _%stx179280%_)))
                             (_%$%K179300179355%_
                              (lambda (_%rest179319%_
                                       _%init179320%_
                                       _%len179321%_
                                       _%tmp179322%_)
                                (_%lp179291%_
                                 _%rest179319%_
                                 (cons (__SRC__%
                                        (list '__check-values
                                              _%tmp179322%_
                                              _%len179321%_)
                                        _%stx179280%_)
                                       _%check179294%_)
                                 (let ((__tmp180865
                                        (lambda (_%hd179324%_ _%r179325%_)
                                          (let* ((_%$%hd179326179333%_
                                                  _%hd179324%_)
                                                 (_%$%E179328179337%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd179326179333%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K179329179343%_
                                                  (lambda (_%k179340%_
                                                           _%id179341%_)
                                                    (cons (list 'set!
                                                                _%id179341%_
                                                                (list '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tmp179322%_
                              _%k179340%_))
                  _%r179325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd179326179333%_)
                                                (let ((_%$%hd179330179346%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd179326179333%_)))
                                                      (_%$%tl179331179348%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd179326179333%_))))
                                                  (let* ((_%id179351%_
                                                          _%$%hd179330179346%_)
                                                         (_%k179353%_
                                                          _%$%tl179331179348%_))
                                                    (_%$%K179329179343%_
                                                     _%k179353%_
                                                     _%id179351%_)))
                                                (_%$%E179328179337%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp180865
                                    _%bind179295%_
                                    _%init179320%_))))))
                        (if (pair? _%$%rest179296179308%_)
                            (let ((_%$%hd179301179358%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest179296179308%_)))
                                  (_%$%tl179302179360%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest179296179308%_))))
                              (if (pair? _%$%hd179301179358%_)
                                  (let ((_%$%hd179303179363%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd179301179358%_)))
                                        (_%$%tl179304179365%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd179301179358%_))))
                                    (let ((_%tmp179368%_ _%$%hd179303179363%_))
                                      (if (pair? _%$%tl179304179365%_)
                                          (let ((_%$%hd179305179370%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl179304179365%_)))
                                                (_%$%tl179306179372%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl179304179365%_))))
                                            (let* ((_%len179375%_
                                                    _%$%hd179305179370%_)
                                                   (_%init179377%_
                                                    _%$%tl179306179372%_)
                                                   (_%rest179379%_
                                                    _%$%tl179302179360%_))
                                              (_%$%K179300179355%_
                                               _%rest179379%_
                                               _%init179377%_
                                               _%len179375%_
                                               _%tmp179368%_)))
                                          (_%$%else179298179316%_))))
                                  (_%$%else179298179316%_)))
                            (_%$%else179298179316%_)))))))
          (__compile-let-form
           _%stx179280%_
           _%compile-simple179282%_
           _%compile-values179283%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx179031%_)
        (letrec ((_%compile-simple179033%_
                  (lambda (_%hd-ids179276%_ _%exprs179277%_ _%body179278%_)
                    (__SRC__%
                     (list 'letrec*
                           (let ((__tmp180866
                                  (map __compile-head-id _%hd-ids179276%_)))
                             (declare (not safe))
                             (##map list __tmp180866 _%exprs179277%_))
                           _%body179278%_)
                     _%stx179031%_)))
                 (_%compile-values179034%_
                  (lambda (_%hd-ids179183%_ _%exprs179184%_ _%body179185%_)
                    (let _%lp179187%_ ((_%rest179189%_ _%hd-ids179183%_)
                                       (_%exprs179190%_ _%exprs179184%_)
                                       (_%bind179191%_ '())
                                       (_%post179192%_ '()))
                      (let* ((_%$%rest179193179207%_ _%rest179189%_)
                             (_%$%else179196179215%_
                              (lambda ()
                                (_%compile-bind179035%_
                                 _%bind179191%_
                                 _%post179192%_
                                 _%body179185%_))))
                        (let ((_%$%K179201179259%_
                               (lambda (_%rest179254%_ _%hd179255%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd179255%_))
                                     (let ((_%id179257%_
                                            (__SRC__0 _%hd179255%_)))
                                       (_%lp179187%_
                                        _%rest179254%_
                                        (cdr _%exprs179190%_)
                                        (cons (cons _%id179257%_ '('#!void))
                                              _%bind179191%_)
                                        (cons (list _%id179257%_
                                                    (car _%exprs179190%_))
                                              _%post179192%_)))
                                     (_%lp179187%_
                                      _%rest179254%_
                                      (cdr _%exprs179190%_)
                                      _%bind179191%_
                                      (cons (list '#f (car _%exprs179190%_))
                                            _%post179192%_)))))
                              (_%$%K179198179239%_
                               (lambda (_%rest179219%_ _%hd179220%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd179220%_))
                                     (let ((_%id179223%_
                                            (__SRC__0 _%hd179220%_)))
                                       (_%lp179187%_
                                        _%rest179219%_
                                        (cdr _%exprs179190%_)
                                        (cons (cons _%id179223%_ '('#!void))
                                              _%bind179191%_)
                                        (cons (list _%id179223%_
                                                    (list 'values->list
                                                          (car _%exprs179190%_)))
                                              _%post179192%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd179220%_))
                                         (if (list? _%hd179220%_)
                                             (let* ((_%len179227%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd179220%_)))
                                                    (_%tmp179229%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp179187%_
                                                _%rest179219%_
                                                (cdr _%exprs179190%_)
                                                (let ((__tmp180867
                                                       (lambda (_%id179232%_
                                                                _%r179233%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id179232%_))
                     (cons (cons (__SRC__0 _%id179232%_) '('#!void))
                           _%r179233%_)
                     _%r179233%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp180867
                                                   _%bind179191%_
                                                   _%hd179220%_))
                                                (cons (cons _%tmp179229%_
                                                            (cons (car _%exprs179190%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len179227%_
                                (let ((__tmp180869
                                       (lambda (_%id179235%_ _%k179236%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id179235%_))
                                             (cons (__SRC__0 _%id179235%_)
                                                   _%k179236%_)
                                             '#f)))
                                      (__tmp180868
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len179227%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp180869
                                   _%hd179220%_
                                   __tmp180868)))))
              _%post179192%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx179031%_
                                              _%hd179220%_))
                                         (_%lp179187%_
                                          _%rest179219%_
                                          (cdr _%exprs179190%_)
                                          _%bind179191%_
                                          (cons (list '#f
                                                      (car _%exprs179190%_))
                                                _%post179192%_)))))))
                          (if (pair? _%$%rest179193179207%_)
                              (let ((_%$%tl179203179264%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest179193179207%_)))
                                    (_%$%hd179202179262%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest179193179207%_))))
                                (if (pair? _%$%hd179202179262%_)
                                    (let ((_%$%tl179205179269%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd179202179262%_)))
                                          (_%$%hd179204179267%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd179202179262%_))))
                                      (if (null? _%$%tl179205179269%_)
                                          (let ((_%hd179272%_
                                                 _%$%hd179204179267%_)
                                                (_%rest179274%_
                                                 _%$%tl179203179264%_))
                                            (_%$%K179201179259%_
                                             _%rest179274%_
                                             _%hd179272%_))
                                          (let ((_%hd179247%_
                                                 _%$%hd179202179262%_)
                                                (_%rest179249%_
                                                 _%$%tl179203179264%_))
                                            (_%$%K179198179239%_
                                             _%rest179249%_
                                             _%hd179247%_))))
                                    (let ((_%hd179247%_ _%$%hd179202179262%_)
                                          (_%rest179249%_
                                           _%$%tl179203179264%_))
                                      (_%$%K179198179239%_
                                       _%rest179249%_
                                       _%hd179247%_))))
                              (_%$%else179196179215%_)))))))
                 (_%compile-bind179035%_
                  (lambda (_%bind179179%_ _%post179180%_ _%body179181%_)
                    (__SRC__%
                     (list 'let
                           (reverse _%bind179179%_)
                           (_%compile-post179036%_
                            _%post179180%_
                            _%body179181%_))
                     _%stx179031%_)))
                 (_%compile-post179036%_
                  (lambda (_%post179038%_ _%body179039%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp180871
                                  (lambda (_%hd179041%_ _%r179042%_)
                                    (let* ((_%$%hd179043179066%_ _%hd179041%_)
                                           (_%$%E179047179070%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _%$%hd179043179066%_
                                                       '([#f expr])
                                                       '([id expr])
                                                       '([tmp
                                                          expr
                                                          len
                                                          .
                                                          init])))
                                              '#!void)))
                                      (let ((_%$%K179060179164%_
                                             (lambda (_%expr179162%_)
                                               (cons _%expr179162%_
                                                     _%r179042%_)))
                                            (_%$%K179055179142%_
                                             (lambda (_%expr179139%_
                                                      _%id179140%_)
                                               (cons (__SRC__%
                                                      (list 'set!
                                                            _%id179140%_
                                                            _%expr179139%_)
                                                      _%stx179031%_)
                                                     _%r179042%_)))
                                            (_%$%K179048179109%_
                                             (lambda (_%init179074%_
                                                      _%len179075%_
                                                      _%expr179076%_
                                                      _%tmp179077%_)
                                               (cons (__SRC__%
                                                      (cons 'let
                                                            (cons (list (list _%tmp179077%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%expr179076%_))
                          (cons (__SRC__%
                                 (list '__check-values
                                       _%tmp179077%_
                                       _%len179075%_)
                                 _%stx179031%_)
                                (map (lambda (_%hd179079%_)
                                       (let* ((_%$%hd179080179087%_
                                               _%hd179079%_)
                                              (_%$%E179082179091%_
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (error '"No clause matching"
                                                          _%$%hd179080179087%_
                                                          '([id . k])))
                                                 '#!void))
                                              (_%$%K179083179097%_
                                               (lambda (_%k179094%_
                                                        _%id179095%_)
                                                 (__SRC__%
                                                  (list 'set!
                                                        _%id179095%_
                                                        (list '##values-ref
                                                              _%tmp179077%_
                                                              _%k179094%_))
                                                  _%stx179031%_))))
                                         (if (pair? _%$%hd179080179087%_)
                                             (let ((_%$%hd179084179100%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%hd179080179087%_)))
                                                   (_%$%tl179085179102%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%hd179080179087%_))))
                                               (let* ((_%id179105%_
                                                       _%$%hd179084179100%_)
                                                      (_%k179107%_
                                                       _%$%tl179085179102%_))
                                                 (_%$%K179083179097%_
                                                  _%k179107%_
                                                  _%id179105%_)))
                                             (_%$%E179082179091%_))))
                                     _%init179074%_))))
              _%stx179031%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r179042%_))))
                                        (let* ((_%__match180731180732%_
                                                (lambda (_%$%hd179049179112%_
                                                         _%$%tl179050179114%_
                                                         _%$%hd179051179119%_
                                                         _%$%tl179052179121%_)
                                                  (let ((_%tmp179117%_
                                                         _%$%hd179049179112%_)
                                                        (_%expr179124%_
                                                         _%$%hd179051179119%_))
                                                    (_%$%E179047179070%_))))
                                               (_%__match180725180726%_
                                                (lambda (_%$%hd179049179112%_
                                                         _%$%tl179050179114%_)
                                                  (let ((_%tmp179117%_
                                                         _%$%hd179049179112%_))
                                                    (_%$%E179047179070%_)))))
                                          (if (pair? _%$%hd179043179066%_)
                                              (let ((_%$%tl179062179169%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd179043179066%_)))
                                                    (_%$%hd179061179167%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd179043179066%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd179061179167%_
                                                             '#f))
                                                    (if (pair? _%$%tl179062179169%_)
                                                        (let ((_%$%tl179064179174%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl179062179169%_)))
                      (_%$%hd179063179172%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%tl179062179169%_))))
                  (if (null? _%$%tl179064179174%_)
                      (let ((_%expr179177%_ _%$%hd179063179172%_))
                        (_%$%K179060179164%_ _%expr179177%_))
                      (if (pair? _%$%tl179064179174%_)
                          (let ((_%$%tl179054179128%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl179064179174%_)))
                                (_%$%hd179053179126%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl179064179174%_))))
                            (let ((_%tmp179117%_ _%$%hd179061179167%_)
                                  (_%expr179124%_ _%$%hd179063179172%_)
                                  (_%len179131%_ _%$%hd179053179126%_)
                                  (_%init179133%_ _%$%tl179054179128%_))
                              (_%$%K179048179109%_
                               _%init179133%_
                               _%len179131%_
                               _%expr179124%_
                               _%tmp179117%_)))
                          (_%__match180731180732%_
                           _%$%hd179061179167%_
                           _%$%tl179062179169%_
                           _%$%hd179063179172%_
                           _%$%tl179064179174%_))))
                (_%__match180725180726%_
                 _%$%hd179061179167%_
                 _%$%tl179062179169%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (pair? _%$%tl179062179169%_)
                                                        (let ((_%$%tl179059179154%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl179062179169%_)))
                      (_%$%hd179058179152%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%tl179062179169%_))))
                  (if (null? _%$%tl179059179154%_)
                      (let ((_%id179150%_ _%$%hd179061179167%_)
                            (_%expr179157%_ _%$%hd179058179152%_))
                        (_%$%K179055179142%_ _%expr179157%_ _%id179150%_))
                      (if (pair? _%$%tl179059179154%_)
                          (let ((_%$%tl179054179128%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl179059179154%_)))
                                (_%$%hd179053179126%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl179059179154%_))))
                            (let ((_%tmp179117%_ _%$%hd179061179167%_)
                                  (_%expr179124%_ _%$%hd179058179152%_)
                                  (_%len179131%_ _%$%hd179053179126%_)
                                  (_%init179133%_ _%$%tl179054179128%_))
                              (_%$%K179048179109%_
                               _%init179133%_
                               _%len179131%_
                               _%expr179124%_
                               _%tmp179117%_)))
                          (_%__match180731180732%_
                           _%$%hd179061179167%_
                           _%$%tl179062179169%_
                           _%$%hd179058179152%_
                           _%$%tl179059179154%_))))
                (_%__match180725180726%_
                 _%$%hd179061179167%_
                 _%$%tl179062179169%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E179047179070%_)))))))
                                 (__tmp180870 (list _%body179039%_)))
                             (declare (not safe))
                             (foldl__0
                              __tmp180871
                              __tmp180870
                              _%post179038%_)))
                     _%stx179031%_))))
          (__compile-let-form
           _%stx179031%_
           _%compile-simple179033%_
           _%compile-values179034%_))))
    (define __compile-call%
      (lambda (_%stx178991%_)
        (let* ((_%$e178993%_ _%stx178991%_)
               (_%$%$E178995179004%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178993%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178993%_))
              (let* ((_%$%$tgt178996179007%_
                      (let () (declare (not safe)) (__AST-e _%$e178993%_)))
                     (_%$%$hd178997179010%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178996179007%_)))
                     (_%$%$tl178998179013%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178996179007%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl178998179013%_))
                    (let* ((_%$%$tgt178999179017%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl178998179013%_)))
                           (_%$%$hd179000179020%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt178999179017%_)))
                           (_%$%$tl179001179023%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt178999179017%_)))
                           (_%rator179027%_ _%$%$hd179000179020%_)
                           (_%rands179029%_ _%$%$tl179001179023%_))
                      (__SRC__%
                       (cons (__compile _%rator179027%_)
                             (map __compile _%rands179029%_))
                       _%stx178991%_))
                    (_%$%$E178995179004%_)))
              (_%$%$E178995179004%_)))))
    (define __compile-ref%
      (lambda (_%stx178953%_)
        (let* ((_%$e178955%_ _%stx178953%_)
               (_%$%$E178957178966%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178955%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178955%_))
              (let* ((_%$%$tgt178958178969%_
                      (let () (declare (not safe)) (__AST-e _%$e178955%_)))
                     (_%$%$hd178959178972%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178958178969%_)))
                     (_%$%$tl178960178975%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178958178969%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl178960178975%_))
                    (let* ((_%$%$tgt178961178979%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl178960178975%_)))
                           (_%$%$hd178962178982%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt178961178979%_)))
                           (_%$%$tl178963178985%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt178961178979%_)))
                           (_%id178989%_ _%$%$hd178962178982%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl178963178985%_))
                                  '())
                          (__SRC__% _%id178989%_ _%stx178953%_)
                          (_%$%$E178957178966%_)))
                    (_%$%$E178957178966%_)))
              (_%$%$E178957178966%_)))))
    (define __compile-setq%
      (lambda (_%stx178900%_)
        (let* ((_%$e178902%_ _%stx178900%_)
               (_%$%$E178904178916%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178902%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178902%_))
              (let* ((_%$%$tgt178905178919%_
                      (let () (declare (not safe)) (__AST-e _%$e178902%_)))
                     (_%$%$hd178906178922%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178905178919%_)))
                     (_%$%$tl178907178925%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178905178919%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl178907178925%_))
                    (let* ((_%$%$tgt178908178929%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl178907178925%_)))
                           (_%$%$hd178909178932%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt178908178929%_)))
                           (_%$%$tl178910178935%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt178908178929%_)))
                           (_%id178939%_ _%$%$hd178909178932%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl178910178935%_))
                          (let* ((_%$%$tgt178911178941%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl178910178935%_)))
                                 (_%$%$hd178912178944%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt178911178941%_)))
                                 (_%$%$tl178913178947%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt178911178941%_)))
                                 (_%expr178951%_ _%$%$hd178912178944%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl178913178947%_))
                                        '())
                                (__SRC__%
                                 (list 'set!
                                       (__SRC__% _%id178939%_ _%stx178900%_)
                                       (__compile _%expr178951%_))
                                 _%stx178900%_)
                                (_%$%$E178904178916%_)))
                          (_%$%$E178904178916%_)))
                    (_%$%$E178904178916%_)))
              (_%$%$E178904178916%_)))))
    (define __compile-if%
      (lambda (_%stx178832%_)
        (let* ((_%$e178834%_ _%stx178832%_)
               (_%$%$E178836178851%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178834%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178834%_))
              (let* ((_%$%$tgt178837178854%_
                      (let () (declare (not safe)) (__AST-e _%$e178834%_)))
                     (_%$%$hd178838178857%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178837178854%_)))
                     (_%$%$tl178839178860%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178837178854%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl178839178860%_))
                    (let* ((_%$%$tgt178840178864%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl178839178860%_)))
                           (_%$%$hd178841178867%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt178840178864%_)))
                           (_%$%$tl178842178870%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt178840178864%_)))
                           (_%p178874%_ _%$%$hd178841178867%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl178842178870%_))
                          (let* ((_%$%$tgt178843178876%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl178842178870%_)))
                                 (_%$%$hd178844178879%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt178843178876%_)))
                                 (_%$%$tl178845178882%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt178843178876%_)))
                                 (_%t178886%_ _%$%$hd178844178879%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl178845178882%_))
                                (let* ((_%$%$tgt178846178888%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl178845178882%_)))
                                       (_%$%$hd178847178891%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt178846178888%_)))
                                       (_%$%$tl178848178894%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt178846178888%_)))
                                       (_%f178898%_ _%$%$hd178847178891%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl178848178894%_))
                                              '())
                                      (__SRC__%
                                       (list 'if
                                             (__compile _%p178874%_)
                                             (__compile _%t178886%_)
                                             (__compile _%f178898%_))
                                       _%stx178832%_)
                                      (_%$%$E178836178851%_)))
                                (_%$%$E178836178851%_)))
                          (_%$%$E178836178851%_)))
                    (_%$%$E178836178851%_)))
              (_%$%$E178836178851%_)))))
    (define __compile-quote%
      (lambda (_%stx178794%_)
        (let* ((_%$e178796%_ _%stx178794%_)
               (_%$%$E178798178807%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178796%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178796%_))
              (let* ((_%$%$tgt178799178810%_
                      (let () (declare (not safe)) (__AST-e _%$e178796%_)))
                     (_%$%$hd178800178813%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178799178810%_)))
                     (_%$%$tl178801178816%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178799178810%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl178801178816%_))
                    (let* ((_%$%$tgt178802178820%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl178801178816%_)))
                           (_%$%$hd178803178823%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt178802178820%_)))
                           (_%$%$tl178804178826%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt178802178820%_)))
                           (_%e178830%_ _%$%$hd178803178823%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl178804178826%_))
                                  '())
                          (__SRC__%
                           (list 'quote
                                 (let ()
                                   (declare (not safe))
                                   (__AST->datum _%e178830%_)))
                           _%stx178794%_)
                          (_%$%$E178798178807%_)))
                    (_%$%$E178798178807%_)))
              (_%$%$E178798178807%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx178756%_)
        (let* ((_%$e178758%_ _%stx178756%_)
               (_%$%$E178760178769%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178758%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178758%_))
              (let* ((_%$%$tgt178761178772%_
                      (let () (declare (not safe)) (__AST-e _%$e178758%_)))
                     (_%$%$hd178762178775%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178761178772%_)))
                     (_%$%$tl178763178778%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178761178772%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl178763178778%_))
                    (let* ((_%$%$tgt178764178782%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl178763178778%_)))
                           (_%$%$hd178765178785%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt178764178782%_)))
                           (_%$%$tl178766178788%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt178764178782%_)))
                           (_%e178792%_ _%$%$hd178765178785%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl178766178788%_))
                                  '())
                          (__SRC__% (list 'quote _%e178792%_) _%stx178756%_)
                          (_%$%$E178760178769%_)))
                    (_%$%$E178760178769%_)))
              (_%$%$E178760178769%_)))))
    (__core-bind-syntax!__% '%#begin __compile-begin% make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-foreign
     __compile-begin-foreign%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#module
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#import
     __compile-import%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#export
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#provide
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-values
     __compile-define-values%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-syntax
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-alias
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#define-runtime
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#extern
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#declare
     __compile-ignore%
     make-__core-special-form)
    (__core-bind-syntax!__%
     '%#begin-annotation
     __compile-begin-annotation%
     make-__core-expression)
    (__core-bind-syntax!__% '%#quote __compile-quote% make-__core-expression)
    (__core-bind-syntax!__%
     '%#quote-syntax
     __compile-quote-syntax%
     make-__core-expression)
    (__core-bind-syntax!__% '%#lambda __compile-lambda% make-__core-expression)
    (__core-bind-syntax!__%
     '%#case-lambda
     __compile-case-lambda%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#let-values
     __compile-let-values%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#letrec-values
     __compile-letrec-values%
     make-__core-expression)
    (__core-bind-syntax!__%
     '%#letrec*-values
     __compile-letrec*-values%
     make-__core-expression)
    (__core-bind-syntax!__% '%#call __compile-call% make-__core-expression)
    (__core-bind-syntax!__% '%#if __compile-if% make-__core-expression)
    (__core-bind-syntax!__% '%#ref __compile-ref% make-__core-expression)
    (__core-bind-syntax!__% '%#set! __compile-setq% make-__core-expression)
    (__core-bind-syntax!__% '%#cond-expand __compile-error make-__core-form)
    (__core-bind-syntax!__% '%#include __compile-error make-__core-form)
    (__core-bind-syntax!__% '%#let-syntax __compile-error make-__core-form)
    (__core-bind-syntax!__%
     '%#letrec-syntax
     __compile-error
     make-__core-form)))
