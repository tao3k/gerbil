(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1789371527)
  (begin
    (define __syntax::t
      (let ((__tmp180672 (list)) (__tmp180671 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         '__syntax::t
         '__syntax
         __tmp180672
         '(e id)
         __tmp180671
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args180476%_
        (apply make-instance __syntax::t _%$args180476%_)))
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
      (let ((__tmp180674 (list __syntax::t))
            (__tmp180673 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         '__core-form::t
         '__core-form
         __tmp180674
         '()
         __tmp180673
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args180473%_
        (apply make-instance __core-form::t _%$args180473%_)))
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
      (let ((__tmp180676 (list __core-form::t))
            (__tmp180675 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         '__core-expression::t
         '__core-expression
         __tmp180676
         '()
         __tmp180675
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args180470%_
        (apply make-instance __core-expression::t _%$args180470%_)))
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
      (let ((__tmp180678 (list __core-form::t))
            (__tmp180677 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         '__core-special-form::t
         '__core-special-form
         __tmp180678
         '()
         __tmp180677
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args180467%_
        (apply make-instance __core-special-form::t _%$args180467%_)))
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
      (lambda (_%id180444%_)
        (let* ((_%h180446%_ __core)
               (_%key180449%_
                (let () (declare (not safe)) (__AST-e _%id180444%_)))
               (_%h180453%_ _%h180446%_)
               (_%h180455%_ _%h180453%_))
          (declare (not safe))
          (__hash-get _%h180455%_ _%key180449%_))))
    (define __core-bound-id?__%
      (lambda (_%id180427%_ _%is?180428%_)
        (let ((_%$e180430%_ (__core-resolve _%id180427%_)))
          (if _%$e180430%_ (_%is?180428%_ _%$e180430%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id180437%_)
        (let ((_%is?180439%_ true))
          (__core-bound-id?__% _%id180437%_ _%is?180439%_))))
    (define __core-bound-id?
      (lambda _g180679_
        (let ((_g180680_ (let () (declare (not safe)) (##length _g180679_))))
          (cond ((let () (declare (not safe)) (##fx= _g180680_ 1))
                 (apply __core-bound-id?__0 _g180679_))
                ((let () (declare (not safe)) (##fx= _g180680_ 2))
                 (apply __core-bound-id?__% _g180679_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g180679_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id180385%_ _%e180386%_ _%make180387%_)
        (let* ((_%h180389%_ __core)
               (_%key180392%_ _%id180385%_)
               (_%value180395%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%e180386%_ '__syntax::t))
                    _%e180386%_
                    (_%make180387%_ _%e180386%_ _%id180385%_)))
               (_%h180399%_ _%h180389%_)
               (_%h180401%_ _%h180399%_))
          (declare (not safe))
          (__hash-put! _%h180401%_ _%key180392%_ _%value180395%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id180417%_ _%e180418%_)
        (let ((_%make180420%_ make-__syntax))
          (__core-bind-syntax!__% _%id180417%_ _%e180418%_ _%make180420%_))))
    (define __core-bind-syntax!
      (lambda _g180681_
        (let ((_g180682_ (let () (declare (not safe)) (##length _g180681_))))
          (cond ((let () (declare (not safe)) (##fx= _g180682_ 2))
                 (apply __core-bind-syntax!__0 _g180681_))
                ((let () (declare (not safe)) (##fx= _g180682_ 3))
                 (apply __core-bind-syntax!__% _g180681_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g180681_))))))
    (define __SRC__%
      (lambda (_%e180365%_ _%src-stx180366%_)
        (if (or (pair? _%e180365%_) (symbol? _%e180365%_))
            (let ((__tmp180683
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx180366%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx180366%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e180365%_ __tmp180683))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e180365%_ 'gerbil#AST::t))
                (let ((__tmp180685
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e180365%_ '1 '#f '#f)))
                      (__tmp180684
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e180365%_)))))
                  (declare (not safe))
                  (##make-source __tmp180685 __tmp180684))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e180365%_))))))
    (define __SRC__0
      (lambda (_%e180377%_)
        (let ((_%src-stx180379%_ '#f))
          (__SRC__% _%e180377%_ _%src-stx180379%_))))
    (define __SRC
      (lambda _g180686_
        (let ((_g180687_ (let () (declare (not safe)) (##length _g180686_))))
          (cond ((let () (declare (not safe)) (##fx= _g180687_ 1))
                 (apply __SRC__0 _g180686_))
                ((let () (declare (not safe)) (##fx= _g180687_ 2))
                 (apply __SRC__% _g180686_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g180686_))))))
    (define __locat
      (lambda (_%loc180362%_)
        (if (let () (declare (not safe)) (##locat? _%loc180362%_))
            _%loc180362%_
            '#f)))
    (define __check-values
      (lambda (_%obj180357%_ _%k180358%_)
        (let ((_%count180360%_
               (if (let () (declare (not safe)) (##values? _%obj180357%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj180357%_))
                   '1)))
          (if (fx= _%count180360%_ _%k180358%_)
              '#!void
              (let ((__tmp180689
                     (if (fx< _%count180360%_ _%k180358%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp180688
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj180357%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj180357%_))
                         _%obj180357%_)))
                (declare (not safe))
                (error __tmp180689 __tmp180688 _%k180358%_))))))
    (define __compile
      (lambda (_%stx180326%_)
        (let* ((_%$e180328%_ _%stx180326%_)
               (_%$%$E180330180336%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e180328%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e180328%_))
              (let* ((_%$%$tgt180331180339%_
                      (let () (declare (not safe)) (__AST-e _%$e180328%_)))
                     (_%$%$hd180332180342%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt180331180339%_)))
                     (_%$%$tl180333180345%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt180331180339%_)))
                     (_%form180349%_ _%$%$hd180332180342%_)
                     (_%$e180351%_ (__core-resolve _%form180349%_)))
                (if _%$e180351%_
                    ((##structure-ref _%$e180351%_ '1 __syntax::t '#f)
                     _%stx180326%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx180326%_
                       _%form180349%_))))
              (_%$%$E180330180336%_)))))
    (define __compile-error__%
      (lambda (_%stx180313%_ _%detail180314%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx180313%_
           _%detail180314%_))))
    (define __compile-error__0
      (lambda (_%stx180319%_)
        (let ((_%detail180321%_ '#f))
          (__compile-error__% _%stx180319%_ _%detail180321%_))))
    (define __compile-error
      (lambda _g180690_
        (let ((_g180691_ (let () (declare (not safe)) (##length _g180690_))))
          (cond ((let () (declare (not safe)) (##fx= _g180691_ 1))
                 (apply __compile-error__0 _g180690_))
                ((let () (declare (not safe)) (##fx= _g180691_ 2))
                 (apply __compile-error__% _g180690_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g180690_))))))
    (define __compile-ignore%
      (lambda (_%stx180310%_) (__SRC__% ''#!void _%stx180310%_)))
    (define __compile-begin%
      (lambda (_%stx180285%_)
        (let* ((_%$e180287%_ _%stx180285%_)
               (_%$%$E180289180295%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e180287%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e180287%_))
              (let* ((_%$%$tgt180290180298%_
                      (let () (declare (not safe)) (__AST-e _%$e180287%_)))
                     (_%$%$hd180291180301%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt180290180298%_)))
                     (_%$%$tl180292180304%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt180290180298%_)))
                     (_%body180308%_ _%$%$tl180292180304%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body180308%_))
                 _%stx180285%_))
              (_%$%$E180289180295%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx180260%_)
        (let* ((_%$e180262%_ _%stx180260%_)
               (_%$%$E180264180270%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e180262%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e180262%_))
              (let* ((_%$%$tgt180265180273%_
                      (let () (declare (not safe)) (__AST-e _%$e180262%_)))
                     (_%$%$hd180266180276%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt180265180273%_)))
                     (_%$%$tl180267180279%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt180265180273%_)))
                     (_%body180283%_ _%$%$tl180267180279%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body180283%_)))
                 _%stx180260%_))
              (_%$%$E180264180270%_)))))
    (define __compile-import%
      (lambda (_%stx180235%_)
        (let* ((_%$e180237%_ _%stx180235%_)
               (_%$%$E180239180245%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e180237%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e180237%_))
              (let* ((_%$%$tgt180240180248%_
                      (let () (declare (not safe)) (__AST-e _%$e180237%_)))
                     (_%$%$hd180241180251%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt180240180248%_)))
                     (_%$%$tl180242180254%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt180240180248%_)))
                     (_%body180258%_ _%$%$tl180242180254%_))
                (__SRC__%
                 (list '__eval-import (list 'quote _%body180258%_))
                 _%stx180235%_))
              (_%$%$E180239180245%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx180182%_)
        (let* ((_%$e180184%_ _%stx180182%_)
               (_%$%$E180186180198%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e180184%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e180184%_))
              (let* ((_%$%$tgt180187180201%_
                      (let () (declare (not safe)) (__AST-e _%$e180184%_)))
                     (_%$%$hd180188180204%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt180187180201%_)))
                     (_%$%$tl180189180207%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt180187180201%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl180189180207%_))
                    (let* ((_%$%$tgt180190180211%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl180189180207%_)))
                           (_%$%$hd180191180214%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt180190180211%_)))
                           (_%$%$tl180192180217%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt180190180211%_)))
                           (_%ann180221%_ _%$%$hd180191180214%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl180192180217%_))
                          (let* ((_%$%$tgt180193180223%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl180192180217%_)))
                                 (_%$%$hd180194180226%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt180193180223%_)))
                                 (_%$%$tl180195180229%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt180193180223%_)))
                                 (_%expr180233%_ _%$%$hd180194180226%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl180195180229%_))
                                        '())
                                (__compile _%expr180233%_)
                                (_%$%$E180186180198%_)))
                          (_%$%$E180186180198%_)))
                    (_%$%$E180186180198%_)))
              (_%$%$E180186180198%_)))))
    (define __compile-define-values%
      (lambda (_%stx180073%_)
        (let* ((_%$e180075%_ _%stx180073%_)
               (_%$%$E180077180089%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e180075%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e180075%_))
              (let* ((_%$%$tgt180078180092%_
                      (let () (declare (not safe)) (__AST-e _%$e180075%_)))
                     (_%$%$hd180079180095%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt180078180092%_)))
                     (_%$%$tl180080180098%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt180078180092%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl180080180098%_))
                    (let* ((_%$%$tgt180081180102%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl180080180098%_)))
                           (_%$%$hd180082180105%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt180081180102%_)))
                           (_%$%$tl180083180108%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt180081180102%_)))
                           (_%hd180112%_ _%$%$hd180082180105%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl180083180108%_))
                          (let* ((_%$%$tgt180084180114%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl180083180108%_)))
                                 (_%$%$hd180085180117%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt180084180114%_)))
                                 (_%$%$tl180086180120%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt180084180114%_)))
                                 (_%expr180124%_ _%$%$hd180085180117%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl180086180120%_))
                                        '())
                                (let* ((_%$e180126%_ _%hd180112%_)
                                       (_%$%$E180128180169%_
                                        (lambda ()
                                          (let ((_%$%$E180129180154%_
                                                 (lambda ()
                                                   (let* ((_%$%$E180130180141%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e180126%_))))
                  (_%ids180144%_ _%hd180112%_)
                  (_%len180146%_ (length _%ids180144%_))
                  (_%tmp180148%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (list 'define
                                 _%tmp180148%_
                                 (__compile _%expr180124%_))
                           _%stx180073%_)
                          (cons (__SRC__%
                                 (list '__check-values
                                       _%tmp180148%_
                                       _%len180146%_)
                                 _%stx180073%_)
                                (let ((__tmp180693
                                       (lambda (_%id180151%_ _%k180152%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id180151%_))
                                             (__SRC__%
                                              (list 'define
                                                    (__SRC__0 _%id180151%_)
                                                    (list '##values-ref
                                                          _%tmp180148%_
                                                          _%k180152%_))
                                              _%stx180073%_)
                                             '#f)))
                                      (__tmp180692
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len180146%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp180693
                                   _%ids180144%_
                                   __tmp180692)))))
              _%stx180073%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e180126%_))
                                                (let* ((_%$%$tgt180131180157%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e180126%_)))
                                                       (_%$%$hd180132180160%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%$tgt180131180157%_)))
                                                       (_%$%$tl180133180163%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%$tgt180131180157%_)))
                                                       (_%id180167%_
                                                        _%$%$hd180132180160%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$%$tl180133180163%_))
                      '())
              (__SRC__%
               (list 'define
                     (__SRC__0 _%id180167%_)
                     (__compile _%expr180124%_))
               _%stx180073%_)
              (_%$%$E180129180154%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%$E180129180154%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e180126%_))
                                      (let* ((_%$%$tgt180134180172%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e180126%_)))
                                             (_%$%$hd180135180175%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt180134180172%_)))
                                             (_%$%$tl180136180178%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt180134180172%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$hd180135180175%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$%$tl180136180178%_))
                                                        '())
                                                (__compile _%expr180124%_)
                                                (_%$%$E180128180169%_))
                                            (_%$%$E180128180169%_)))
                                      (_%$%$E180128180169%_)))
                                (_%$%$E180077180089%_)))
                          (_%$%$E180077180089%_)))
                    (_%$%$E180077180089%_)))
              (_%$%$E180077180089%_)))))
    (define __compile-head-id
      (lambda (_%e180071%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e180071%_))
             _%e180071%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd180028%_)
        (let _%recur180030%_ ((_%rest180032%_ _%hd180028%_))
          (let* ((_%$e180034%_ _%rest180032%_)
                 (_%$%$E180036180054%_
                  (lambda ()
                    (let ((_%$%$E180037180051%_
                           (lambda ()
                             (let* ((_%$%$E180038180046%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e180034%_))))
                                    (_%tail180049%_ _%$e180034%_))
                               (__compile-head-id _%tail180049%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e180034%_))
                                  '())
                          '()
                          (_%$%$E180037180051%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e180034%_))
                (let* ((_%$%$tgt180039180057%_
                        (let () (declare (not safe)) (__AST-e _%$e180034%_)))
                       (_%$%$hd180040180060%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt180039180057%_)))
                       (_%$%$tl180041180063%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt180039180057%_)))
                       (_%hd180067%_ _%$%$hd180040180060%_)
                       (_%rest180069%_ _%$%$tl180041180063%_))
                  (cons (__compile-head-id _%hd180067%_)
                        (_%recur180030%_ _%rest180069%_)))
                (_%$%$E180036180054%_))))))
    (define __compile-lambda%
      (lambda (_%stx179975%_)
        (let* ((_%$e179977%_ _%stx179975%_)
               (_%$%$E179979179991%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e179977%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e179977%_))
              (let* ((_%$%$tgt179980179994%_
                      (let () (declare (not safe)) (__AST-e _%$e179977%_)))
                     (_%$%$hd179981179997%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt179980179994%_)))
                     (_%$%$tl179982180000%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt179980179994%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl179982180000%_))
                    (let* ((_%$%$tgt179983180004%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl179982180000%_)))
                           (_%$%$hd179984180007%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt179983180004%_)))
                           (_%$%$tl179985180010%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt179983180004%_)))
                           (_%hd180014%_ _%$%$hd179984180007%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl179985180010%_))
                          (let* ((_%$%$tgt179986180016%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl179985180010%_)))
                                 (_%$%$hd179987180019%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt179986180016%_)))
                                 (_%$%$tl179988180022%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt179986180016%_)))
                                 (_%body180026%_ _%$%$hd179987180019%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl179988180022%_))
                                        '())
                                (__SRC__%
                                 (list 'lambda
                                       (__compile-lambda-head _%hd180014%_)
                                       (__compile _%body180026%_))
                                 _%stx179975%_)
                                (_%$%$E179979179991%_)))
                          (_%$%$E179979179991%_)))
                    (_%$%$E179979179991%_)))
              (_%$%$E179979179991%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx179740%_)
        (letrec ((_%variadic?179742%_
                  (lambda (_%hd179940%_)
                    (let* ((_%$e179942%_ _%hd179940%_)
                           (_%$%$E179944179960%_
                            (lambda ()
                              (let ((_%$%$E179945179957%_
                                     (lambda ()
                                       (let ((_%$%$E179946179954%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e179942%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e179942%_))
                                            '())
                                    '#f
                                    (_%$%$E179945179957%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e179942%_))
                          (let* ((_%$%$tgt179947179963%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e179942%_)))
                                 (_%$%$hd179948179966%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt179947179963%_)))
                                 (_%$%$tl179949179969%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt179947179963%_)))
                                 (_%rest179973%_ _%$%$tl179949179969%_))
                            (_%variadic?179742%_ _%rest179973%_))
                          (_%$%$E179944179960%_)))))
                 (_%arity179743%_
                  (lambda (_%hd179878%_)
                    (let _%lp179880%_ ((_%rest179882%_ _%hd179878%_)
                                       (_%k179883%_ '0))
                      (let* ((_%$e179885%_ _%rest179882%_)
                             (_%$%$E179887179898%_
                              (lambda ()
                                (let ((_%$%$E179888179895%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e179885%_)))))
                                  _%k179883%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e179885%_))
                            (let* ((_%$%$tgt179889179901%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e179885%_)))
                                   (_%$%$hd179890179904%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%$tgt179889179901%_)))
                                   (_%$%$tl179891179907%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%$tgt179889179901%_)))
                                   (_%rest179911%_ _%$%$tl179891179907%_))
                              (_%lp179880%_
                               _%rest179911%_
                               (let ((_%x179913%_ _%k179883%_))
                                 (if (fixnum? _%x179913%_)
                                     (let ((_%x179918%_ _%x179913%_))
                                       (declare (not safe))
                                       (__fx1+ _%x179918%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x179913%_)
                                       '#!void)))))
                            (_%$%$E179887179898%_))))))
                 (_%generate179744%_
                  (lambda (_%rest179805%_ _%args179806%_ _%len179807%_)
                    (let* ((_%$e179809%_ _%rest179805%_)
                           (_%$%$E179811179822%_
                            (lambda ()
                              (let ((_%$%$E179812179819%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e179809%_)))))
                                (__SRC__%
                                 (list 'error
                                       '"No clause matching arguments"
                                       _%args179806%_)
                                 _%stx179740%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e179809%_))
                          (let* ((_%$%$tgt179813179825%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e179809%_)))
                                 (_%$%$hd179814179828%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt179813179825%_)))
                                 (_%$%$tl179815179831%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt179813179825%_)))
                                 (_%clause179835%_ _%$%$hd179814179828%_)
                                 (_%rest179837%_ _%$%$tl179815179831%_)
                                 (_%$e179839%_ _%clause179835%_)
                                 (_%$%$E179841179850%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e179839%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e179839%_))
                                (let* ((_%$%$tgt179842179853%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e179839%_)))
                                       (_%$%$hd179843179856%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt179842179853%_)))
                                       (_%$%$tl179844179859%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt179842179853%_)))
                                       (_%hd179863%_ _%$%$hd179843179856%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl179844179859%_))
                                      (let* ((_%$%$tgt179845179865%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl179844179859%_)))
                                             (_%$%$hd179846179868%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt179845179865%_)))
                                             (_%$%$tl179847179871%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt179845179865%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl179847179871%_))
                                                    '())
                                            (let ((_%clen179875%_
                                                   (_%arity179743%_
                                                    _%hd179863%_))
                                                  (_%cmp179876%_
                                                   (if (_%variadic?179742%_
                                                        _%hd179863%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (list 'if
                                                     (list _%cmp179876%_
                                                           _%len179807%_
                                                           _%clen179875%_)
                                                     (__SRC__%
                                                      (list '##apply
                                                            (__compile-lambda%
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause179835%_))
                    _%args179806%_)
              _%stx179740%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%generate179744%_
                                                      _%rest179837%_
                                                      _%args179806%_
                                                      _%len179807%_))
                                               _%stx179740%_))
                                            (_%$%$E179841179850%_)))
                                      (_%$%$E179841179850%_)))
                                (_%$%$E179841179850%_)))
                          (_%$%$E179811179822%_))))))
          (let* ((_%$e179746%_ _%stx179740%_)
                 (_%$%$E179748179780%_
                  (lambda ()
                    (let ((_%$%$E179749179762%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e179746%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e179746%_))
                          (let* ((_%$%$tgt179750179765%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e179746%_)))
                                 (_%$%$hd179751179768%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt179750179765%_)))
                                 (_%$%$tl179752179771%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt179750179765%_)))
                                 (_%clauses179775%_ _%$%$tl179752179771%_))
                            (let ((_%args179777%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx179740%_))
                                  (_%len179778%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx179740%_)))
                              (__SRC__%
                               (list 'lambda
                                     _%args179777%_
                                     (__SRC__%
                                      (list 'let
                                            (list (list _%len179778%_
                                                        (__SRC__%
                                                         (list '##length
                                                               _%args179777%_)
                                                         _%stx179740%_)))
                                            (_%generate179744%_
                                             _%clauses179775%_
                                             _%args179777%_
                                             _%len179778%_))
                                      _%stx179740%_))
                               _%stx179740%_)))
                          (_%$%$E179749179762%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e179746%_))
                (let* ((_%$%$tgt179753179783%_
                        (let () (declare (not safe)) (__AST-e _%$e179746%_)))
                       (_%$%$hd179754179786%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt179753179783%_)))
                       (_%$%$tl179755179789%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt179753179783%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl179755179789%_))
                      (let* ((_%$%$tgt179756179793%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl179755179789%_)))
                             (_%$%$hd179757179796%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt179756179793%_)))
                             (_%$%$tl179758179799%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt179756179793%_)))
                             (_%clause179803%_ _%$%$hd179757179796%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$tl179758179799%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause179803%_))
                            (_%$%$E179748179780%_)))
                      (_%$%$E179748179780%_)))
                (_%$%$E179748179780%_))))))
    (define __compile-let-form
      (lambda (_%stx179509%_ _%compile-simple179510%_ _%compile-values179511%_)
        (letrec ((_%simple-bind?179513%_
                  (lambda (_%hd179698%_)
                    (let* ((_%$%hd179699179709%_ _%hd179698%_)
                           (_%$%else179702179717%_ (lambda () '#f)))
                      (let ((_%$%K179705179730%_ (lambda (_%id179728%_) '#t))
                            (_%$%K179704179722%_ (lambda () '#t)))
                        (let ((_%$%try-match179701179725%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%$%hd179699179709%_ '#f))
                                     (_%$%K179704179722%_)
                                     (_%$%else179702179717%_)))))
                          (if (pair? _%$%hd179699179709%_)
                              (let ((_%$%tl179707179735%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%hd179699179709%_)))
                                    (_%$%hd179706179733%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%hd179699179709%_))))
                                (if (null? _%$%tl179707179735%_)
                                    (let ((_%id179738%_ _%$%hd179706179733%_))
                                      (_%$%K179705179730%_ _%id179738%_))
                                    (_%$%try-match179701179725%_)))
                              (_%$%try-match179701179725%_)))))))
                 (_%car-e179514%_
                  (lambda (_%hd179696%_)
                    (if (pair? _%hd179696%_)
                        (let () (declare (not safe)) (##car _%hd179696%_))
                        _%hd179696%_))))
          (let* ((_%$e179516%_ _%stx179509%_)
                 (_%$%$E179518179661%_
                  (lambda ()
                    (let ((_%$%$E179519179541%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e179516%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e179516%_))
                          (let* ((_%$%$tgt179520179544%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e179516%_)))
                                 (_%$%$hd179521179547%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt179520179544%_)))
                                 (_%$%$tl179522179550%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt179520179544%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl179522179550%_))
                                (let* ((_%$%$tgt179523179554%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl179522179550%_)))
                                       (_%$%$hd179524179557%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt179523179554%_)))
                                       (_%$%$tl179525179560%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt179523179554%_)))
                                       (_%hd179564%_ _%$%$hd179524179557%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl179525179560%_))
                                      (let* ((_%$%$tgt179526179566%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl179525179560%_)))
                                             (_%$%$hd179527179569%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt179526179566%_)))
                                             (_%$%$tl179528179572%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt179526179566%_)))
                                             (_%body179576%_
                                              _%$%$hd179527179569%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl179528179572%_))
                                                    '())
                                            (let* ((_%hd-ids179616%_
                                                    (map (lambda (_%bind179578%_)
                                                           (let* ((_%$e179580%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind179578%_)
                          (_%$%$E179582179591%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e179580%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e179580%_))
                         (let* ((_%$%$tgt179583179594%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e179580%_)))
                                (_%$%$hd179584179597%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt179583179594%_)))
                                (_%$%$tl179585179600%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt179583179594%_)))
                                (_%ids179604%_ _%$%$hd179584179597%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl179585179600%_))
                               (let* ((_%$%$tgt179586179606%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl179585179600%_)))
                                      (_%$%$hd179587179609%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt179586179606%_)))
                                      (_%$%$tl179588179612%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt179586179606%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl179588179612%_))
                                             '())
                                     _%ids179604%_
                                     (_%$%$E179582179591%_)))
                               (_%$%$E179582179591%_)))
                         (_%$%$E179582179591%_))))
                 _%hd179564%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs179656%_
                                                    (map (lambda (_%bind179618%_)
                                                           (let* ((_%$e179620%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind179618%_)
                          (_%$%$E179622179631%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e179620%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e179620%_))
                         (let* ((_%$%$tgt179623179634%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e179620%_)))
                                (_%$%$hd179624179637%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt179623179634%_)))
                                (_%$%$tl179625179640%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt179623179634%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl179625179640%_))
                               (let* ((_%$%$tgt179626179644%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl179625179640%_)))
                                      (_%$%$hd179627179647%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt179626179644%_)))
                                      (_%$%$tl179628179650%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt179626179644%_)))
                                      (_%expr179654%_ _%$%$hd179627179647%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl179628179650%_))
                                             '())
                                     (__compile _%expr179654%_)
                                     (_%$%$E179622179631%_)))
                               (_%$%$E179622179631%_)))
                         (_%$%$E179622179631%_))))
                 _%hd179564%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body179658%_
                                                    (__compile
                                                     _%body179576%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?179513%_
                                                     _%hd-ids179616%_))
                                                  (_%compile-simple179510%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e179514%_
                                                            _%hd-ids179616%_))
                                                   _%exprs179656%_
                                                   _%body179658%_)
                                                  (_%compile-values179511%_
                                                   _%hd-ids179616%_
                                                   _%exprs179656%_
                                                   _%body179658%_)))
                                            (_%$%$E179519179541%_)))
                                      (_%$%$E179519179541%_)))
                                (_%$%$E179519179541%_)))
                          (_%$%$E179519179541%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e179516%_))
                (let* ((_%$%$tgt179529179664%_
                        (let () (declare (not safe)) (__AST-e _%$e179516%_)))
                       (_%$%$hd179530179667%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt179529179664%_)))
                       (_%$%$tl179531179670%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt179529179664%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl179531179670%_))
                      (let* ((_%$%$tgt179532179674%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl179531179670%_)))
                             (_%$%$hd179533179677%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt179532179674%_)))
                             (_%$%$tl179534179680%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt179532179674%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$hd179533179677%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl179534179680%_))
                                (let* ((_%$%$tgt179535179684%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl179534179680%_)))
                                       (_%$%$hd179536179687%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt179535179684%_)))
                                       (_%$%$tl179537179690%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt179535179684%_)))
                                       (_%body179694%_ _%$%$hd179536179687%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl179537179690%_))
                                              '())
                                      (__compile _%body179694%_)
                                      (_%$%$E179518179661%_)))
                                (_%$%$E179518179661%_))
                            (_%$%$E179518179661%_)))
                      (_%$%$E179518179661%_)))
                (_%$%$E179518179661%_))))))
    (define __compile-let-values%
      (lambda (_%stx179321%_)
        (letrec ((_%compile-simple179323%_
                  (lambda (_%hd-ids179505%_ _%exprs179506%_ _%body179507%_)
                    (__SRC__%
                     (list 'let
                           (let ((__tmp180694
                                  (map __compile-head-id _%hd-ids179505%_)))
                             (declare (not safe))
                             (##map list __tmp180694 _%exprs179506%_))
                           _%body179507%_)
                     _%stx179321%_)))
                 (_%compile-values179324%_
                  (lambda (_%hd-ids179420%_ _%exprs179421%_ _%body179422%_)
                    (let _%lp179424%_ ((_%rest179426%_ _%hd-ids179420%_)
                                       (_%exprs179427%_ _%exprs179421%_)
                                       (_%bind179428%_ '())
                                       (_%post179429%_ '()))
                      (let* ((_%$%rest179430179444%_ _%rest179426%_)
                             (_%$%else179433179452%_
                              (lambda ()
                                (__SRC__%
                                 (list 'let
                                       (reverse _%bind179428%_)
                                       (_%compile-post179325%_
                                        _%post179429%_
                                        _%body179422%_))
                                 _%stx179321%_))))
                        (let ((_%$%K179438179488%_
                               (lambda (_%rest179485%_ _%id179486%_)
                                 (_%lp179424%_
                                  _%rest179485%_
                                  (cdr _%exprs179427%_)
                                  (cons (list (__compile-head-id _%id179486%_)
                                              (car _%exprs179427%_))
                                        _%bind179428%_)
                                  _%post179429%_)))
                              (_%$%K179435179470%_
                               (lambda (_%rest179456%_ _%hd179457%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd179457%_))
                                     (_%lp179424%_
                                      _%rest179456%_
                                      (cdr _%exprs179427%_)
                                      (cons (list (__compile-head-id
                                                   _%hd179457%_)
                                                  (list 'values->list
                                                        (car _%exprs179427%_)))
                                            _%bind179428%_)
                                      _%post179429%_)
                                     (if (list? _%hd179457%_)
                                         (let* ((_%len179461%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd179457%_)))
                                                (_%tmp179463%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp179424%_
                                            _%rest179456%_
                                            (cdr _%exprs179427%_)
                                            (cons (list _%tmp179463%_
                                                        (car _%exprs179427%_))
                                                  _%bind179428%_)
                                            (cons (cons _%tmp179463%_
                                                        (cons _%len179461%_
                                                              (let ((__tmp180696
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id179466%_ _%k179467%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id179466%_))
                                   (cons (__SRC__0 _%id179466%_) _%k179467%_)
                                   '#f)))
                            (__tmp180695
                             (let ()
                               (declare (not safe))
                               (##iota _%len179461%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp180696 _%hd179457%_ __tmp180695))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post179429%_)))
                                         (__compile-error__%
                                          _%stx179321%_
                                          _%hd179457%_))))))
                          (if (pair? _%$%rest179430179444%_)
                              (let ((_%$%tl179440179493%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest179430179444%_)))
                                    (_%$%hd179439179491%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest179430179444%_))))
                                (if (pair? _%$%hd179439179491%_)
                                    (let ((_%$%tl179442179498%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd179439179491%_)))
                                          (_%$%hd179441179496%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd179439179491%_))))
                                      (if (null? _%$%tl179442179498%_)
                                          (let ((_%id179501%_
                                                 _%$%hd179441179496%_)
                                                (_%rest179503%_
                                                 _%$%tl179440179493%_))
                                            (_%$%K179438179488%_
                                             _%rest179503%_
                                             _%id179501%_))
                                          (let ((_%hd179478%_
                                                 _%$%hd179439179491%_)
                                                (_%rest179480%_
                                                 _%$%tl179440179493%_))
                                            (_%$%K179435179470%_
                                             _%rest179480%_
                                             _%hd179478%_))))
                                    (let ((_%hd179478%_ _%$%hd179439179491%_)
                                          (_%rest179480%_
                                           _%$%tl179440179493%_))
                                      (_%$%K179435179470%_
                                       _%rest179480%_
                                       _%hd179478%_))))
                              (_%$%else179433179452%_)))))))
                 (_%compile-post179325%_
                  (lambda (_%post179327%_ _%body179328%_)
                    (let _%lp179330%_ ((_%rest179332%_ _%post179327%_)
                                       (_%check179333%_ '())
                                       (_%bind179334%_ '()))
                      (let* ((_%$%rest179335179347%_ _%rest179332%_)
                             (_%$%else179337179355%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp180697
                                              (list (__SRC__%
                                                     (list 'let
                                                           _%bind179334%_
                                                           _%body179328%_)
                                                     _%stx179321%_))))
                                         (declare (not safe))
                                         (##append
                                          _%check179333%_
                                          __tmp180697)))
                                 _%stx179321%_)))
                             (_%$%K179339179394%_
                              (lambda (_%rest179358%_
                                       _%init179359%_
                                       _%len179360%_
                                       _%tmp179361%_)
                                (_%lp179330%_
                                 _%rest179358%_
                                 (cons (__SRC__%
                                        (list '__check-values
                                              _%tmp179361%_
                                              _%len179360%_)
                                        _%stx179321%_)
                                       _%check179333%_)
                                 (let ((__tmp180698
                                        (lambda (_%hd179363%_ _%r179364%_)
                                          (let* ((_%$%hd179365179372%_
                                                  _%hd179363%_)
                                                 (_%$%E179367179376%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd179365179372%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K179368179382%_
                                                  (lambda (_%k179379%_
                                                           _%id179380%_)
                                                    (cons (list _%id179380%_
                                                                (list '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tmp179361%_
                              _%k179379%_))
                  _%r179364%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd179365179372%_)
                                                (let ((_%$%hd179369179385%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd179365179372%_)))
                                                      (_%$%tl179370179387%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd179365179372%_))))
                                                  (let* ((_%id179390%_
                                                          _%$%hd179369179385%_)
                                                         (_%k179392%_
                                                          _%$%tl179370179387%_))
                                                    (_%$%K179368179382%_
                                                     _%k179392%_
                                                     _%id179390%_)))
                                                (_%$%E179367179376%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp180698
                                    _%bind179334%_
                                    _%init179359%_))))))
                        (if (pair? _%$%rest179335179347%_)
                            (let ((_%$%hd179340179397%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest179335179347%_)))
                                  (_%$%tl179341179399%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest179335179347%_))))
                              (if (pair? _%$%hd179340179397%_)
                                  (let ((_%$%hd179342179402%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd179340179397%_)))
                                        (_%$%tl179343179404%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd179340179397%_))))
                                    (let ((_%tmp179407%_ _%$%hd179342179402%_))
                                      (if (pair? _%$%tl179343179404%_)
                                          (let ((_%$%hd179344179409%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl179343179404%_)))
                                                (_%$%tl179345179411%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl179343179404%_))))
                                            (let* ((_%len179414%_
                                                    _%$%hd179344179409%_)
                                                   (_%init179416%_
                                                    _%$%tl179345179411%_)
                                                   (_%rest179418%_
                                                    _%$%tl179341179399%_))
                                              (_%$%K179339179394%_
                                               _%rest179418%_
                                               _%init179416%_
                                               _%len179414%_
                                               _%tmp179407%_)))
                                          (_%$%else179337179355%_))))
                                  (_%$%else179337179355%_)))
                            (_%$%else179337179355%_)))))))
          (__compile-let-form
           _%stx179321%_
           _%compile-simple179323%_
           _%compile-values179324%_))))
    (define __compile-letrec-values%
      (lambda (_%stx179118%_)
        (letrec ((_%compile-simple179120%_
                  (lambda (_%hd-ids179317%_ _%exprs179318%_ _%body179319%_)
                    (__SRC__%
                     (list 'letrec
                           (let ((__tmp180699
                                  (map __compile-head-id _%hd-ids179317%_)))
                             (declare (not safe))
                             (##map list __tmp180699 _%exprs179318%_))
                           _%body179319%_)
                     _%stx179118%_)))
                 (_%compile-values179121%_
                  (lambda (_%hd-ids179228%_ _%exprs179229%_ _%body179230%_)
                    (let _%lp179232%_ ((_%rest179234%_ _%hd-ids179228%_)
                                       (_%exprs179235%_ _%exprs179229%_)
                                       (_%pre179236%_ '())
                                       (_%bind179237%_ '())
                                       (_%post179238%_ '()))
                      (let* ((_%$%rest179239179253%_ _%rest179234%_)
                             (_%$%else179242179261%_
                              (lambda ()
                                (_%compile-inner179122%_
                                 _%pre179236%_
                                 _%bind179237%_
                                 _%post179238%_
                                 _%body179230%_))))
                        (let ((_%$%K179247179300%_
                               (lambda (_%rest179297%_ _%id179298%_)
                                 (_%lp179232%_
                                  _%rest179297%_
                                  (cdr _%exprs179235%_)
                                  _%pre179236%_
                                  (cons (list (__compile-head-id _%id179298%_)
                                              (car _%exprs179235%_))
                                        _%bind179237%_)
                                  _%post179238%_)))
                              (_%$%K179244179282%_
                               (lambda (_%rest179265%_ _%hd179266%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd179266%_))
                                     (_%lp179232%_
                                      _%rest179265%_
                                      (cdr _%exprs179235%_)
                                      _%pre179236%_
                                      (cons (list (__compile-head-id
                                                   _%hd179266%_)
                                                  (list 'values->list
                                                        (car _%exprs179235%_)))
                                            _%bind179237%_)
                                      _%post179238%_)
                                     (if (list? _%hd179266%_)
                                         (let* ((_%len179270%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd179266%_)))
                                                (_%tmp179272%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp179232%_
                                            _%rest179265%_
                                            (cdr _%exprs179235%_)
                                            (let ((__tmp180700
                                                   (lambda (_%id179275%_
                                                            _%r179276%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id179275%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id179275%_)
                             '('#!void))
                       _%r179276%_)
                 _%r179276%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp180700
                                               _%pre179236%_
                                               _%hd179266%_))
                                            (cons (list _%tmp179272%_
                                                        (car _%exprs179235%_))
                                                  _%bind179237%_)
                                            (cons (cons _%tmp179272%_
                                                        (cons _%len179270%_
                                                              (let ((__tmp180702
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id179278%_ _%k179279%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id179278%_))
                                   (cons (__SRC__0 _%id179278%_) _%k179279%_)
                                   '#f)))
                            (__tmp180701
                             (let ()
                               (declare (not safe))
                               (##iota _%len179270%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp180702 _%hd179266%_ __tmp180701))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post179238%_)))
                                         (__compile-error__%
                                          _%stx179118%_
                                          _%hd179266%_))))))
                          (if (pair? _%$%rest179239179253%_)
                              (let ((_%$%tl179249179305%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest179239179253%_)))
                                    (_%$%hd179248179303%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest179239179253%_))))
                                (if (pair? _%$%hd179248179303%_)
                                    (let ((_%$%tl179251179310%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd179248179303%_)))
                                          (_%$%hd179250179308%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd179248179303%_))))
                                      (if (null? _%$%tl179251179310%_)
                                          (let ((_%id179313%_
                                                 _%$%hd179250179308%_)
                                                (_%rest179315%_
                                                 _%$%tl179249179305%_))
                                            (_%$%K179247179300%_
                                             _%rest179315%_
                                             _%id179313%_))
                                          (let ((_%hd179290%_
                                                 _%$%hd179248179303%_)
                                                (_%rest179292%_
                                                 _%$%tl179249179305%_))
                                            (_%$%K179244179282%_
                                             _%rest179292%_
                                             _%hd179290%_))))
                                    (let ((_%hd179290%_ _%$%hd179248179303%_)
                                          (_%rest179292%_
                                           _%$%tl179249179305%_))
                                      (_%$%K179244179282%_
                                       _%rest179292%_
                                       _%hd179290%_))))
                              (_%$%else179242179261%_)))))))
                 (_%compile-inner179122%_
                  (lambda (_%pre179223%_
                           _%bind179224%_
                           _%post179225%_
                           _%body179226%_)
                    (if (null? _%pre179223%_)
                        (_%compile-bind179123%_
                         _%bind179224%_
                         _%post179225%_
                         _%body179226%_)
                        (__SRC__%
                         (list 'let
                               (reverse _%pre179223%_)
                               (_%compile-bind179123%_
                                _%bind179224%_
                                _%post179225%_
                                _%body179226%_))
                         _%stx179118%_))))
                 (_%compile-bind179123%_
                  (lambda (_%bind179219%_ _%post179220%_ _%body179221%_)
                    (__SRC__%
                     (list 'letrec
                           (reverse _%bind179219%_)
                           (_%compile-post179124%_
                            _%post179220%_
                            _%body179221%_))
                     _%stx179118%_)))
                 (_%compile-post179124%_
                  (lambda (_%post179126%_ _%body179127%_)
                    (let _%lp179129%_ ((_%rest179131%_ _%post179126%_)
                                       (_%check179132%_ '())
                                       (_%bind179133%_ '()))
                      (let* ((_%$%rest179134179146%_ _%rest179131%_)
                             (_%$%else179136179154%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (append _%check179132%_
                                               _%bind179133%_
                                               (list _%body179127%_)))
                                 _%stx179118%_)))
                             (_%$%K179138179193%_
                              (lambda (_%rest179157%_
                                       _%init179158%_
                                       _%len179159%_
                                       _%tmp179160%_)
                                (_%lp179129%_
                                 _%rest179157%_
                                 (cons (__SRC__%
                                        (list '__check-values
                                              _%tmp179160%_
                                              _%len179159%_)
                                        _%stx179118%_)
                                       _%check179132%_)
                                 (let ((__tmp180703
                                        (lambda (_%hd179162%_ _%r179163%_)
                                          (let* ((_%$%hd179164179171%_
                                                  _%hd179162%_)
                                                 (_%$%E179166179175%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd179164179171%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K179167179181%_
                                                  (lambda (_%k179178%_
                                                           _%id179179%_)
                                                    (cons (list 'set!
                                                                _%id179179%_
                                                                (list '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tmp179160%_
                              _%k179178%_))
                  _%r179163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd179164179171%_)
                                                (let ((_%$%hd179168179184%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd179164179171%_)))
                                                      (_%$%tl179169179186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd179164179171%_))))
                                                  (let* ((_%id179189%_
                                                          _%$%hd179168179184%_)
                                                         (_%k179191%_
                                                          _%$%tl179169179186%_))
                                                    (_%$%K179167179181%_
                                                     _%k179191%_
                                                     _%id179189%_)))
                                                (_%$%E179166179175%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp180703
                                    _%bind179133%_
                                    _%init179158%_))))))
                        (if (pair? _%$%rest179134179146%_)
                            (let ((_%$%hd179139179196%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest179134179146%_)))
                                  (_%$%tl179140179198%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest179134179146%_))))
                              (if (pair? _%$%hd179139179196%_)
                                  (let ((_%$%hd179141179201%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd179139179196%_)))
                                        (_%$%tl179142179203%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd179139179196%_))))
                                    (let ((_%tmp179206%_ _%$%hd179141179201%_))
                                      (if (pair? _%$%tl179142179203%_)
                                          (let ((_%$%hd179143179208%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl179142179203%_)))
                                                (_%$%tl179144179210%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl179142179203%_))))
                                            (let* ((_%len179213%_
                                                    _%$%hd179143179208%_)
                                                   (_%init179215%_
                                                    _%$%tl179144179210%_)
                                                   (_%rest179217%_
                                                    _%$%tl179140179198%_))
                                              (_%$%K179138179193%_
                                               _%rest179217%_
                                               _%init179215%_
                                               _%len179213%_
                                               _%tmp179206%_)))
                                          (_%$%else179136179154%_))))
                                  (_%$%else179136179154%_)))
                            (_%$%else179136179154%_)))))))
          (__compile-let-form
           _%stx179118%_
           _%compile-simple179120%_
           _%compile-values179121%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx178869%_)
        (letrec ((_%compile-simple178871%_
                  (lambda (_%hd-ids179114%_ _%exprs179115%_ _%body179116%_)
                    (__SRC__%
                     (list 'letrec*
                           (let ((__tmp180704
                                  (map __compile-head-id _%hd-ids179114%_)))
                             (declare (not safe))
                             (##map list __tmp180704 _%exprs179115%_))
                           _%body179116%_)
                     _%stx178869%_)))
                 (_%compile-values178872%_
                  (lambda (_%hd-ids179021%_ _%exprs179022%_ _%body179023%_)
                    (let _%lp179025%_ ((_%rest179027%_ _%hd-ids179021%_)
                                       (_%exprs179028%_ _%exprs179022%_)
                                       (_%bind179029%_ '())
                                       (_%post179030%_ '()))
                      (let* ((_%$%rest179031179045%_ _%rest179027%_)
                             (_%$%else179034179053%_
                              (lambda ()
                                (_%compile-bind178873%_
                                 _%bind179029%_
                                 _%post179030%_
                                 _%body179023%_))))
                        (let ((_%$%K179039179097%_
                               (lambda (_%rest179092%_ _%hd179093%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd179093%_))
                                     (let ((_%id179095%_
                                            (__SRC__0 _%hd179093%_)))
                                       (_%lp179025%_
                                        _%rest179092%_
                                        (cdr _%exprs179028%_)
                                        (cons (cons _%id179095%_ '('#!void))
                                              _%bind179029%_)
                                        (cons (list _%id179095%_
                                                    (car _%exprs179028%_))
                                              _%post179030%_)))
                                     (_%lp179025%_
                                      _%rest179092%_
                                      (cdr _%exprs179028%_)
                                      _%bind179029%_
                                      (cons (list '#f (car _%exprs179028%_))
                                            _%post179030%_)))))
                              (_%$%K179036179077%_
                               (lambda (_%rest179057%_ _%hd179058%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd179058%_))
                                     (let ((_%id179061%_
                                            (__SRC__0 _%hd179058%_)))
                                       (_%lp179025%_
                                        _%rest179057%_
                                        (cdr _%exprs179028%_)
                                        (cons (cons _%id179061%_ '('#!void))
                                              _%bind179029%_)
                                        (cons (list _%id179061%_
                                                    (list 'values->list
                                                          (car _%exprs179028%_)))
                                              _%post179030%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd179058%_))
                                         (if (list? _%hd179058%_)
                                             (let* ((_%len179065%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd179058%_)))
                                                    (_%tmp179067%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp179025%_
                                                _%rest179057%_
                                                (cdr _%exprs179028%_)
                                                (let ((__tmp180705
                                                       (lambda (_%id179070%_
                                                                _%r179071%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id179070%_))
                     (cons (cons (__SRC__0 _%id179070%_) '('#!void))
                           _%r179071%_)
                     _%r179071%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp180705
                                                   _%bind179029%_
                                                   _%hd179058%_))
                                                (cons (cons _%tmp179067%_
                                                            (cons (car _%exprs179028%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len179065%_
                                (let ((__tmp180707
                                       (lambda (_%id179073%_ _%k179074%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id179073%_))
                                             (cons (__SRC__0 _%id179073%_)
                                                   _%k179074%_)
                                             '#f)))
                                      (__tmp180706
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len179065%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp180707
                                   _%hd179058%_
                                   __tmp180706)))))
              _%post179030%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx178869%_
                                              _%hd179058%_))
                                         (_%lp179025%_
                                          _%rest179057%_
                                          (cdr _%exprs179028%_)
                                          _%bind179029%_
                                          (cons (list '#f
                                                      (car _%exprs179028%_))
                                                _%post179030%_)))))))
                          (if (pair? _%$%rest179031179045%_)
                              (let ((_%$%tl179041179102%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest179031179045%_)))
                                    (_%$%hd179040179100%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest179031179045%_))))
                                (if (pair? _%$%hd179040179100%_)
                                    (let ((_%$%tl179043179107%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd179040179100%_)))
                                          (_%$%hd179042179105%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd179040179100%_))))
                                      (if (null? _%$%tl179043179107%_)
                                          (let ((_%hd179110%_
                                                 _%$%hd179042179105%_)
                                                (_%rest179112%_
                                                 _%$%tl179041179102%_))
                                            (_%$%K179039179097%_
                                             _%rest179112%_
                                             _%hd179110%_))
                                          (let ((_%hd179085%_
                                                 _%$%hd179040179100%_)
                                                (_%rest179087%_
                                                 _%$%tl179041179102%_))
                                            (_%$%K179036179077%_
                                             _%rest179087%_
                                             _%hd179085%_))))
                                    (let ((_%hd179085%_ _%$%hd179040179100%_)
                                          (_%rest179087%_
                                           _%$%tl179041179102%_))
                                      (_%$%K179036179077%_
                                       _%rest179087%_
                                       _%hd179085%_))))
                              (_%$%else179034179053%_)))))))
                 (_%compile-bind178873%_
                  (lambda (_%bind179017%_ _%post179018%_ _%body179019%_)
                    (__SRC__%
                     (list 'let
                           (reverse _%bind179017%_)
                           (_%compile-post178874%_
                            _%post179018%_
                            _%body179019%_))
                     _%stx178869%_)))
                 (_%compile-post178874%_
                  (lambda (_%post178876%_ _%body178877%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp180709
                                  (lambda (_%hd178879%_ _%r178880%_)
                                    (let* ((_%$%hd178881178904%_ _%hd178879%_)
                                           (_%$%E178885178908%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _%$%hd178881178904%_
                                                       '([#f expr])
                                                       '([id expr])
                                                       '([tmp
                                                          expr
                                                          len
                                                          .
                                                          init])))
                                              '#!void)))
                                      (let ((_%$%K178898179002%_
                                             (lambda (_%expr179000%_)
                                               (cons _%expr179000%_
                                                     _%r178880%_)))
                                            (_%$%K178893178980%_
                                             (lambda (_%expr178977%_
                                                      _%id178978%_)
                                               (cons (__SRC__%
                                                      (list 'set!
                                                            _%id178978%_
                                                            _%expr178977%_)
                                                      _%stx178869%_)
                                                     _%r178880%_)))
                                            (_%$%K178886178947%_
                                             (lambda (_%init178912%_
                                                      _%len178913%_
                                                      _%expr178914%_
                                                      _%tmp178915%_)
                                               (cons (__SRC__%
                                                      (cons 'let
                                                            (cons (list (list _%tmp178915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%expr178914%_))
                          (cons (__SRC__%
                                 (list '__check-values
                                       _%tmp178915%_
                                       _%len178913%_)
                                 _%stx178869%_)
                                (map (lambda (_%hd178917%_)
                                       (let* ((_%$%hd178918178925%_
                                               _%hd178917%_)
                                              (_%$%E178920178929%_
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (error '"No clause matching"
                                                          _%$%hd178918178925%_
                                                          '([id . k])))
                                                 '#!void))
                                              (_%$%K178921178935%_
                                               (lambda (_%k178932%_
                                                        _%id178933%_)
                                                 (__SRC__%
                                                  (list 'set!
                                                        _%id178933%_
                                                        (list '##values-ref
                                                              _%tmp178915%_
                                                              _%k178932%_))
                                                  _%stx178869%_))))
                                         (if (pair? _%$%hd178918178925%_)
                                             (let ((_%$%hd178922178938%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%hd178918178925%_)))
                                                   (_%$%tl178923178940%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%hd178918178925%_))))
                                               (let* ((_%id178943%_
                                                       _%$%hd178922178938%_)
                                                      (_%k178945%_
                                                       _%$%tl178923178940%_))
                                                 (_%$%K178921178935%_
                                                  _%k178945%_
                                                  _%id178943%_)))
                                             (_%$%E178920178929%_))))
                                     _%init178912%_))))
              _%stx178869%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r178880%_))))
                                        (let* ((_%__match180569180570%_
                                                (lambda (_%$%hd178887178950%_
                                                         _%$%tl178888178952%_
                                                         _%$%hd178889178957%_
                                                         _%$%tl178890178959%_)
                                                  (let ((_%tmp178955%_
                                                         _%$%hd178887178950%_)
                                                        (_%expr178962%_
                                                         _%$%hd178889178957%_))
                                                    (_%$%E178885178908%_))))
                                               (_%__match180563180564%_
                                                (lambda (_%$%hd178887178950%_
                                                         _%$%tl178888178952%_)
                                                  (let ((_%tmp178955%_
                                                         _%$%hd178887178950%_))
                                                    (_%$%E178885178908%_)))))
                                          (if (pair? _%$%hd178881178904%_)
                                              (let ((_%$%tl178900179007%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd178881178904%_)))
                                                    (_%$%hd178899179005%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd178881178904%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd178899179005%_
                                                             '#f))
                                                    (if (pair? _%$%tl178900179007%_)
                                                        (let ((_%$%tl178902179012%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl178900179007%_)))
                      (_%$%hd178901179010%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%tl178900179007%_))))
                  (if (null? _%$%tl178902179012%_)
                      (let ((_%expr179015%_ _%$%hd178901179010%_))
                        (_%$%K178898179002%_ _%expr179015%_))
                      (if (pair? _%$%tl178902179012%_)
                          (let ((_%$%tl178892178966%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl178902179012%_)))
                                (_%$%hd178891178964%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl178902179012%_))))
                            (let ((_%tmp178955%_ _%$%hd178899179005%_)
                                  (_%expr178962%_ _%$%hd178901179010%_)
                                  (_%len178969%_ _%$%hd178891178964%_)
                                  (_%init178971%_ _%$%tl178892178966%_))
                              (_%$%K178886178947%_
                               _%init178971%_
                               _%len178969%_
                               _%expr178962%_
                               _%tmp178955%_)))
                          (_%__match180569180570%_
                           _%$%hd178899179005%_
                           _%$%tl178900179007%_
                           _%$%hd178901179010%_
                           _%$%tl178902179012%_))))
                (_%__match180563180564%_
                 _%$%hd178899179005%_
                 _%$%tl178900179007%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (pair? _%$%tl178900179007%_)
                                                        (let ((_%$%tl178897178992%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl178900179007%_)))
                      (_%$%hd178896178990%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%tl178900179007%_))))
                  (if (null? _%$%tl178897178992%_)
                      (let ((_%id178988%_ _%$%hd178899179005%_)
                            (_%expr178995%_ _%$%hd178896178990%_))
                        (_%$%K178893178980%_ _%expr178995%_ _%id178988%_))
                      (if (pair? _%$%tl178897178992%_)
                          (let ((_%$%tl178892178966%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl178897178992%_)))
                                (_%$%hd178891178964%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl178897178992%_))))
                            (let ((_%tmp178955%_ _%$%hd178899179005%_)
                                  (_%expr178962%_ _%$%hd178896178990%_)
                                  (_%len178969%_ _%$%hd178891178964%_)
                                  (_%init178971%_ _%$%tl178892178966%_))
                              (_%$%K178886178947%_
                               _%init178971%_
                               _%len178969%_
                               _%expr178962%_
                               _%tmp178955%_)))
                          (_%__match180569180570%_
                           _%$%hd178899179005%_
                           _%$%tl178900179007%_
                           _%$%hd178896178990%_
                           _%$%tl178897178992%_))))
                (_%__match180563180564%_
                 _%$%hd178899179005%_
                 _%$%tl178900179007%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E178885178908%_)))))))
                                 (__tmp180708 (list _%body178877%_)))
                             (declare (not safe))
                             (foldl__0
                              __tmp180709
                              __tmp180708
                              _%post178876%_)))
                     _%stx178869%_))))
          (__compile-let-form
           _%stx178869%_
           _%compile-simple178871%_
           _%compile-values178872%_))))
    (define __compile-call%
      (lambda (_%stx178829%_)
        (let* ((_%$e178831%_ _%stx178829%_)
               (_%$%$E178833178842%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178831%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178831%_))
              (let* ((_%$%$tgt178834178845%_
                      (let () (declare (not safe)) (__AST-e _%$e178831%_)))
                     (_%$%$hd178835178848%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178834178845%_)))
                     (_%$%$tl178836178851%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178834178845%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl178836178851%_))
                    (let* ((_%$%$tgt178837178855%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl178836178851%_)))
                           (_%$%$hd178838178858%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt178837178855%_)))
                           (_%$%$tl178839178861%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt178837178855%_)))
                           (_%rator178865%_ _%$%$hd178838178858%_)
                           (_%rands178867%_ _%$%$tl178839178861%_))
                      (__SRC__%
                       (cons (__compile _%rator178865%_)
                             (map __compile _%rands178867%_))
                       _%stx178829%_))
                    (_%$%$E178833178842%_)))
              (_%$%$E178833178842%_)))))
    (define __compile-ref%
      (lambda (_%stx178791%_)
        (let* ((_%$e178793%_ _%stx178791%_)
               (_%$%$E178795178804%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178793%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178793%_))
              (let* ((_%$%$tgt178796178807%_
                      (let () (declare (not safe)) (__AST-e _%$e178793%_)))
                     (_%$%$hd178797178810%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178796178807%_)))
                     (_%$%$tl178798178813%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178796178807%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl178798178813%_))
                    (let* ((_%$%$tgt178799178817%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl178798178813%_)))
                           (_%$%$hd178800178820%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt178799178817%_)))
                           (_%$%$tl178801178823%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt178799178817%_)))
                           (_%id178827%_ _%$%$hd178800178820%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl178801178823%_))
                                  '())
                          (__SRC__% _%id178827%_ _%stx178791%_)
                          (_%$%$E178795178804%_)))
                    (_%$%$E178795178804%_)))
              (_%$%$E178795178804%_)))))
    (define __compile-setq%
      (lambda (_%stx178738%_)
        (let* ((_%$e178740%_ _%stx178738%_)
               (_%$%$E178742178754%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178740%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178740%_))
              (let* ((_%$%$tgt178743178757%_
                      (let () (declare (not safe)) (__AST-e _%$e178740%_)))
                     (_%$%$hd178744178760%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178743178757%_)))
                     (_%$%$tl178745178763%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178743178757%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl178745178763%_))
                    (let* ((_%$%$tgt178746178767%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl178745178763%_)))
                           (_%$%$hd178747178770%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt178746178767%_)))
                           (_%$%$tl178748178773%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt178746178767%_)))
                           (_%id178777%_ _%$%$hd178747178770%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl178748178773%_))
                          (let* ((_%$%$tgt178749178779%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl178748178773%_)))
                                 (_%$%$hd178750178782%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt178749178779%_)))
                                 (_%$%$tl178751178785%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt178749178779%_)))
                                 (_%expr178789%_ _%$%$hd178750178782%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl178751178785%_))
                                        '())
                                (__SRC__%
                                 (list 'set!
                                       (__SRC__% _%id178777%_ _%stx178738%_)
                                       (__compile _%expr178789%_))
                                 _%stx178738%_)
                                (_%$%$E178742178754%_)))
                          (_%$%$E178742178754%_)))
                    (_%$%$E178742178754%_)))
              (_%$%$E178742178754%_)))))
    (define __compile-if%
      (lambda (_%stx178670%_)
        (let* ((_%$e178672%_ _%stx178670%_)
               (_%$%$E178674178689%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178672%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178672%_))
              (let* ((_%$%$tgt178675178692%_
                      (let () (declare (not safe)) (__AST-e _%$e178672%_)))
                     (_%$%$hd178676178695%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178675178692%_)))
                     (_%$%$tl178677178698%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178675178692%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl178677178698%_))
                    (let* ((_%$%$tgt178678178702%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl178677178698%_)))
                           (_%$%$hd178679178705%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt178678178702%_)))
                           (_%$%$tl178680178708%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt178678178702%_)))
                           (_%p178712%_ _%$%$hd178679178705%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl178680178708%_))
                          (let* ((_%$%$tgt178681178714%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl178680178708%_)))
                                 (_%$%$hd178682178717%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt178681178714%_)))
                                 (_%$%$tl178683178720%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt178681178714%_)))
                                 (_%t178724%_ _%$%$hd178682178717%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl178683178720%_))
                                (let* ((_%$%$tgt178684178726%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl178683178720%_)))
                                       (_%$%$hd178685178729%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt178684178726%_)))
                                       (_%$%$tl178686178732%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt178684178726%_)))
                                       (_%f178736%_ _%$%$hd178685178729%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl178686178732%_))
                                              '())
                                      (__SRC__%
                                       (list 'if
                                             (__compile _%p178712%_)
                                             (__compile _%t178724%_)
                                             (__compile _%f178736%_))
                                       _%stx178670%_)
                                      (_%$%$E178674178689%_)))
                                (_%$%$E178674178689%_)))
                          (_%$%$E178674178689%_)))
                    (_%$%$E178674178689%_)))
              (_%$%$E178674178689%_)))))
    (define __compile-quote%
      (lambda (_%stx178632%_)
        (let* ((_%$e178634%_ _%stx178632%_)
               (_%$%$E178636178645%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178634%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178634%_))
              (let* ((_%$%$tgt178637178648%_
                      (let () (declare (not safe)) (__AST-e _%$e178634%_)))
                     (_%$%$hd178638178651%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178637178648%_)))
                     (_%$%$tl178639178654%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178637178648%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl178639178654%_))
                    (let* ((_%$%$tgt178640178658%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl178639178654%_)))
                           (_%$%$hd178641178661%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt178640178658%_)))
                           (_%$%$tl178642178664%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt178640178658%_)))
                           (_%e178668%_ _%$%$hd178641178661%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl178642178664%_))
                                  '())
                          (__SRC__%
                           (list 'quote
                                 (let ()
                                   (declare (not safe))
                                   (__AST->datum _%e178668%_)))
                           _%stx178632%_)
                          (_%$%$E178636178645%_)))
                    (_%$%$E178636178645%_)))
              (_%$%$E178636178645%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx178594%_)
        (let* ((_%$e178596%_ _%stx178594%_)
               (_%$%$E178598178607%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178596%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178596%_))
              (let* ((_%$%$tgt178599178610%_
                      (let () (declare (not safe)) (__AST-e _%$e178596%_)))
                     (_%$%$hd178600178613%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178599178610%_)))
                     (_%$%$tl178601178616%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178599178610%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl178601178616%_))
                    (let* ((_%$%$tgt178602178620%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl178601178616%_)))
                           (_%$%$hd178603178623%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt178602178620%_)))
                           (_%$%$tl178604178626%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt178602178620%_)))
                           (_%e178630%_ _%$%$hd178603178623%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl178604178626%_))
                                  '())
                          (__SRC__% (list 'quote _%e178630%_) _%stx178594%_)
                          (_%$%$E178598178607%_)))
                    (_%$%$E178598178607%_)))
              (_%$%$E178598178607%_)))))
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
