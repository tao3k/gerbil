(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1784758124)
  (begin
    (define __syntax::t
      (let ((__tmp178659 (list)) (__tmp178658 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__syntax::t
         '__syntax
         __tmp178659
         '(e id)
         __tmp178658
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args178463%_
        (apply make-instance __syntax::t _%$args178463%_)))
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
      (let ((__tmp178661 (list __syntax::t))
            (__tmp178660 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-form::t
         '__core-form
         __tmp178661
         '()
         __tmp178660
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args178460%_
        (apply make-instance __core-form::t _%$args178460%_)))
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
      (let ((__tmp178663 (list __core-form::t))
            (__tmp178662 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-expression::t
         '__core-expression
         __tmp178663
         '()
         __tmp178662
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args178457%_
        (apply make-instance __core-expression::t _%$args178457%_)))
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
      (let ((__tmp178665 (list __core-form::t))
            (__tmp178664 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-special-form::t
         '__core-special-form
         __tmp178665
         '()
         __tmp178664
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args178454%_
        (apply make-instance __core-special-form::t _%$args178454%_)))
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
      (lambda (_%id178431%_)
        (let* ((_%h178433%_ __core)
               (_%key178436%_
                (let () (declare (not safe)) (__AST-e _%id178431%_)))
               (_%h178440%_ _%h178433%_)
               (_%h178442%_ _%h178440%_))
          (declare (not safe))
          (__hash-get _%h178442%_ _%key178436%_))))
    (define __core-bound-id?__%
      (lambda (_%id178414%_ _%is?178415%_)
        (let ((_%$e178417%_ (__core-resolve _%id178414%_)))
          (if _%$e178417%_ (_%is?178415%_ _%$e178417%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id178424%_)
        (let ((_%is?178426%_ true))
          (__core-bound-id?__% _%id178424%_ _%is?178426%_))))
    (define __core-bound-id?
      (lambda _g178666_
        (let ((_g178667_ (let () (declare (not safe)) (##length _g178666_))))
          (cond ((let () (declare (not safe)) (##fx= _g178667_ 1))
                 (apply __core-bound-id?__0 _g178666_))
                ((let () (declare (not safe)) (##fx= _g178667_ 2))
                 (apply __core-bound-id?__% _g178666_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g178666_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id178372%_ _%e178373%_ _%make178374%_)
        (let* ((_%h178376%_ __core)
               (_%key178379%_ _%id178372%_)
               (_%value178382%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%e178373%_ '__syntax::t))
                    _%e178373%_
                    (_%make178374%_ _%e178373%_ _%id178372%_)))
               (_%h178386%_ _%h178376%_)
               (_%h178388%_ _%h178386%_))
          (declare (not safe))
          (__hash-put! _%h178388%_ _%key178379%_ _%value178382%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id178404%_ _%e178405%_)
        (let ((_%make178407%_ make-__syntax))
          (__core-bind-syntax!__% _%id178404%_ _%e178405%_ _%make178407%_))))
    (define __core-bind-syntax!
      (lambda _g178668_
        (let ((_g178669_ (let () (declare (not safe)) (##length _g178668_))))
          (cond ((let () (declare (not safe)) (##fx= _g178669_ 2))
                 (apply __core-bind-syntax!__0 _g178668_))
                ((let () (declare (not safe)) (##fx= _g178669_ 3))
                 (apply __core-bind-syntax!__% _g178668_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g178668_))))))
    (define __SRC__%
      (lambda (_%e178352%_ _%src-stx178353%_)
        (if (or (pair? _%e178352%_) (symbol? _%e178352%_))
            (let ((__tmp178670
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx178353%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx178353%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e178352%_ __tmp178670))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e178352%_ 'gerbil#AST::t))
                (let ((__tmp178672
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e178352%_ '1 '#f '#f)))
                      (__tmp178671
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e178352%_)))))
                  (declare (not safe))
                  (##make-source __tmp178672 __tmp178671))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e178352%_))))))
    (define __SRC__0
      (lambda (_%e178364%_)
        (let ((_%src-stx178366%_ '#f))
          (__SRC__% _%e178364%_ _%src-stx178366%_))))
    (define __SRC
      (lambda _g178673_
        (let ((_g178674_ (let () (declare (not safe)) (##length _g178673_))))
          (cond ((let () (declare (not safe)) (##fx= _g178674_ 1))
                 (apply __SRC__0 _g178673_))
                ((let () (declare (not safe)) (##fx= _g178674_ 2))
                 (apply __SRC__% _g178673_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g178673_))))))
    (define __locat
      (lambda (_%loc178349%_)
        (if (let () (declare (not safe)) (##locat? _%loc178349%_))
            _%loc178349%_
            '#f)))
    (define __check-values
      (lambda (_%obj178344%_ _%k178345%_)
        (let ((_%count178347%_
               (if (let () (declare (not safe)) (##values? _%obj178344%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj178344%_))
                   '1)))
          (if (fx= _%count178347%_ _%k178345%_)
              '#!void
              (let ((__tmp178676
                     (if (fx< _%count178347%_ _%k178345%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp178675
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj178344%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj178344%_))
                         _%obj178344%_)))
                (declare (not safe))
                (error __tmp178676 __tmp178675 _%k178345%_))))))
    (define __compile
      (lambda (_%stx178313%_)
        (let* ((_%$e178315%_ _%stx178313%_)
               (_%$%$E178317178323%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178315%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178315%_))
              (let* ((_%$%$tgt178318178326%_
                      (let () (declare (not safe)) (__AST-e _%$e178315%_)))
                     (_%$%$hd178319178329%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178318178326%_)))
                     (_%$%$tl178320178332%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178318178326%_)))
                     (_%form178336%_ _%$%$hd178319178329%_)
                     (_%$e178338%_ (__core-resolve _%form178336%_)))
                (if _%$e178338%_
                    ((##structure-ref _%$e178338%_ '1 __syntax::t '#f)
                     _%stx178313%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx178313%_
                       _%form178336%_))))
              (_%$%$E178317178323%_)))))
    (define __compile-error__%
      (lambda (_%stx178300%_ _%detail178301%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx178300%_
           _%detail178301%_))))
    (define __compile-error__0
      (lambda (_%stx178306%_)
        (let ((_%detail178308%_ '#f))
          (__compile-error__% _%stx178306%_ _%detail178308%_))))
    (define __compile-error
      (lambda _g178677_
        (let ((_g178678_ (let () (declare (not safe)) (##length _g178677_))))
          (cond ((let () (declare (not safe)) (##fx= _g178678_ 1))
                 (apply __compile-error__0 _g178677_))
                ((let () (declare (not safe)) (##fx= _g178678_ 2))
                 (apply __compile-error__% _g178677_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g178677_))))))
    (define __compile-ignore%
      (lambda (_%stx178297%_) (__SRC__% ''#!void _%stx178297%_)))
    (define __compile-begin%
      (lambda (_%stx178272%_)
        (let* ((_%$e178274%_ _%stx178272%_)
               (_%$%$E178276178282%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178274%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178274%_))
              (let* ((_%$%$tgt178277178285%_
                      (let () (declare (not safe)) (__AST-e _%$e178274%_)))
                     (_%$%$hd178278178288%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178277178285%_)))
                     (_%$%$tl178279178291%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178277178285%_)))
                     (_%body178295%_ _%$%$tl178279178291%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body178295%_))
                 _%stx178272%_))
              (_%$%$E178276178282%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx178247%_)
        (let* ((_%$e178249%_ _%stx178247%_)
               (_%$%$E178251178257%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178249%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178249%_))
              (let* ((_%$%$tgt178252178260%_
                      (let () (declare (not safe)) (__AST-e _%$e178249%_)))
                     (_%$%$hd178253178263%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178252178260%_)))
                     (_%$%$tl178254178266%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178252178260%_)))
                     (_%body178270%_ _%$%$tl178254178266%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body178270%_)))
                 _%stx178247%_))
              (_%$%$E178251178257%_)))))
    (define __compile-import%
      (lambda (_%stx178222%_)
        (let* ((_%$e178224%_ _%stx178222%_)
               (_%$%$E178226178232%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178224%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178224%_))
              (let* ((_%$%$tgt178227178235%_
                      (let () (declare (not safe)) (__AST-e _%$e178224%_)))
                     (_%$%$hd178228178238%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178227178235%_)))
                     (_%$%$tl178229178241%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178227178235%_)))
                     (_%body178245%_ _%$%$tl178229178241%_))
                (__SRC__%
                 (list '__eval-import (list 'quote _%body178245%_))
                 _%stx178222%_))
              (_%$%$E178226178232%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx178169%_)
        (let* ((_%$e178171%_ _%stx178169%_)
               (_%$%$E178173178185%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178171%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178171%_))
              (let* ((_%$%$tgt178174178188%_
                      (let () (declare (not safe)) (__AST-e _%$e178171%_)))
                     (_%$%$hd178175178191%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178174178188%_)))
                     (_%$%$tl178176178194%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178174178188%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl178176178194%_))
                    (let* ((_%$%$tgt178177178198%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl178176178194%_)))
                           (_%$%$hd178178178201%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt178177178198%_)))
                           (_%$%$tl178179178204%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt178177178198%_)))
                           (_%ann178208%_ _%$%$hd178178178201%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl178179178204%_))
                          (let* ((_%$%$tgt178180178210%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl178179178204%_)))
                                 (_%$%$hd178181178213%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt178180178210%_)))
                                 (_%$%$tl178182178216%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt178180178210%_)))
                                 (_%expr178220%_ _%$%$hd178181178213%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl178182178216%_))
                                        '())
                                (__compile _%expr178220%_)
                                (_%$%$E178173178185%_)))
                          (_%$%$E178173178185%_)))
                    (_%$%$E178173178185%_)))
              (_%$%$E178173178185%_)))))
    (define __compile-define-values%
      (lambda (_%stx178060%_)
        (let* ((_%$e178062%_ _%stx178060%_)
               (_%$%$E178064178076%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178062%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178062%_))
              (let* ((_%$%$tgt178065178079%_
                      (let () (declare (not safe)) (__AST-e _%$e178062%_)))
                     (_%$%$hd178066178082%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178065178079%_)))
                     (_%$%$tl178067178085%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178065178079%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl178067178085%_))
                    (let* ((_%$%$tgt178068178089%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl178067178085%_)))
                           (_%$%$hd178069178092%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt178068178089%_)))
                           (_%$%$tl178070178095%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt178068178089%_)))
                           (_%hd178099%_ _%$%$hd178069178092%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl178070178095%_))
                          (let* ((_%$%$tgt178071178101%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl178070178095%_)))
                                 (_%$%$hd178072178104%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt178071178101%_)))
                                 (_%$%$tl178073178107%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt178071178101%_)))
                                 (_%expr178111%_ _%$%$hd178072178104%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl178073178107%_))
                                        '())
                                (let* ((_%$e178113%_ _%hd178099%_)
                                       (_%$%$E178115178156%_
                                        (lambda ()
                                          (let ((_%$%$E178116178141%_
                                                 (lambda ()
                                                   (let* ((_%$%$E178117178128%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e178113%_))))
                  (_%ids178131%_ _%hd178099%_)
                  (_%len178133%_ (length _%ids178131%_))
                  (_%tmp178135%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (list 'define
                                 _%tmp178135%_
                                 (__compile _%expr178111%_))
                           _%stx178060%_)
                          (cons (__SRC__%
                                 (list '__check-values
                                       _%tmp178135%_
                                       _%len178133%_)
                                 _%stx178060%_)
                                (let ((__tmp178680
                                       (lambda (_%id178138%_ _%k178139%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id178138%_))
                                             (__SRC__%
                                              (list 'define
                                                    (__SRC__0 _%id178138%_)
                                                    (list '##values-ref
                                                          _%tmp178135%_
                                                          _%k178139%_))
                                              _%stx178060%_)
                                             '#f)))
                                      (__tmp178679
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len178133%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp178680
                                   _%ids178131%_
                                   __tmp178679)))))
              _%stx178060%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e178113%_))
                                                (let* ((_%$%$tgt178118178144%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e178113%_)))
                                                       (_%$%$hd178119178147%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%$tgt178118178144%_)))
                                                       (_%$%$tl178120178150%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%$tgt178118178144%_)))
                                                       (_%id178154%_
                                                        _%$%$hd178119178147%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$%$tl178120178150%_))
                      '())
              (__SRC__%
               (list 'define
                     (__SRC__0 _%id178154%_)
                     (__compile _%expr178111%_))
               _%stx178060%_)
              (_%$%$E178116178141%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%$E178116178141%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e178113%_))
                                      (let* ((_%$%$tgt178121178159%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e178113%_)))
                                             (_%$%$hd178122178162%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt178121178159%_)))
                                             (_%$%$tl178123178165%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt178121178159%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$hd178122178162%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$%$tl178123178165%_))
                                                        '())
                                                (__compile _%expr178111%_)
                                                (_%$%$E178115178156%_))
                                            (_%$%$E178115178156%_)))
                                      (_%$%$E178115178156%_)))
                                (_%$%$E178064178076%_)))
                          (_%$%$E178064178076%_)))
                    (_%$%$E178064178076%_)))
              (_%$%$E178064178076%_)))))
    (define __compile-head-id
      (lambda (_%e178058%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e178058%_))
             _%e178058%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd178015%_)
        (let _%recur178017%_ ((_%rest178019%_ _%hd178015%_))
          (let* ((_%$e178021%_ _%rest178019%_)
                 (_%$%$E178023178041%_
                  (lambda ()
                    (let ((_%$%$E178024178038%_
                           (lambda ()
                             (let* ((_%$%$E178025178033%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e178021%_))))
                                    (_%tail178036%_ _%$e178021%_))
                               (__compile-head-id _%tail178036%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e178021%_))
                                  '())
                          '()
                          (_%$%$E178024178038%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e178021%_))
                (let* ((_%$%$tgt178026178044%_
                        (let () (declare (not safe)) (__AST-e _%$e178021%_)))
                       (_%$%$hd178027178047%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt178026178044%_)))
                       (_%$%$tl178028178050%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt178026178044%_)))
                       (_%hd178054%_ _%$%$hd178027178047%_)
                       (_%rest178056%_ _%$%$tl178028178050%_))
                  (cons (__compile-head-id _%hd178054%_)
                        (_%recur178017%_ _%rest178056%_)))
                (_%$%$E178023178041%_))))))
    (define __compile-lambda%
      (lambda (_%stx177962%_)
        (let* ((_%$e177964%_ _%stx177962%_)
               (_%$%$E177966177978%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177964%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177964%_))
              (let* ((_%$%$tgt177967177981%_
                      (let () (declare (not safe)) (__AST-e _%$e177964%_)))
                     (_%$%$hd177968177984%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177967177981%_)))
                     (_%$%$tl177969177987%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177967177981%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl177969177987%_))
                    (let* ((_%$%$tgt177970177991%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl177969177987%_)))
                           (_%$%$hd177971177994%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt177970177991%_)))
                           (_%$%$tl177972177997%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt177970177991%_)))
                           (_%hd178001%_ _%$%$hd177971177994%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl177972177997%_))
                          (let* ((_%$%$tgt177973178003%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl177972177997%_)))
                                 (_%$%$hd177974178006%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177973178003%_)))
                                 (_%$%$tl177975178009%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177973178003%_)))
                                 (_%body178013%_ _%$%$hd177974178006%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177975178009%_))
                                        '())
                                (__SRC__%
                                 (list 'lambda
                                       (__compile-lambda-head _%hd178001%_)
                                       (__compile _%body178013%_))
                                 _%stx177962%_)
                                (_%$%$E177966177978%_)))
                          (_%$%$E177966177978%_)))
                    (_%$%$E177966177978%_)))
              (_%$%$E177966177978%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx177727%_)
        (letrec ((_%variadic?177729%_
                  (lambda (_%hd177927%_)
                    (let* ((_%$e177929%_ _%hd177927%_)
                           (_%$%$E177931177947%_
                            (lambda ()
                              (let ((_%$%$E177932177944%_
                                     (lambda ()
                                       (let ((_%$%$E177933177941%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e177929%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e177929%_))
                                            '())
                                    '#f
                                    (_%$%$E177932177944%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e177929%_))
                          (let* ((_%$%$tgt177934177950%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177929%_)))
                                 (_%$%$hd177935177953%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177934177950%_)))
                                 (_%$%$tl177936177956%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177934177950%_)))
                                 (_%rest177960%_ _%$%$tl177936177956%_))
                            (_%variadic?177729%_ _%rest177960%_))
                          (_%$%$E177931177947%_)))))
                 (_%arity177730%_
                  (lambda (_%hd177865%_)
                    (let _%lp177867%_ ((_%rest177869%_ _%hd177865%_)
                                       (_%k177870%_ '0))
                      (let* ((_%$e177872%_ _%rest177869%_)
                             (_%$%$E177874177885%_
                              (lambda ()
                                (let ((_%$%$E177875177882%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e177872%_)))))
                                  _%k177870%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e177872%_))
                            (let* ((_%$%$tgt177876177888%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e177872%_)))
                                   (_%$%$hd177877177891%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%$tgt177876177888%_)))
                                   (_%$%$tl177878177894%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%$tgt177876177888%_)))
                                   (_%rest177898%_ _%$%$tl177878177894%_))
                              (_%lp177867%_
                               _%rest177898%_
                               (let ((_%x177900%_ _%k177870%_))
                                 (if (fixnum? _%x177900%_)
                                     (let ((_%x177905%_ _%x177900%_))
                                       (declare (not safe))
                                       (__fx1+ _%x177905%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x177900%_)
                                       '#!void)))))
                            (_%$%$E177874177885%_))))))
                 (_%generate177731%_
                  (lambda (_%rest177792%_ _%args177793%_ _%len177794%_)
                    (let* ((_%$e177796%_ _%rest177792%_)
                           (_%$%$E177798177809%_
                            (lambda ()
                              (let ((_%$%$E177799177806%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e177796%_)))))
                                (__SRC__%
                                 (list 'error
                                       '"No clause matching arguments"
                                       _%args177793%_)
                                 _%stx177727%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e177796%_))
                          (let* ((_%$%$tgt177800177812%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177796%_)))
                                 (_%$%$hd177801177815%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177800177812%_)))
                                 (_%$%$tl177802177818%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177800177812%_)))
                                 (_%clause177822%_ _%$%$hd177801177815%_)
                                 (_%rest177824%_ _%$%$tl177802177818%_)
                                 (_%$e177826%_ _%clause177822%_)
                                 (_%$%$E177828177837%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e177826%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e177826%_))
                                (let* ((_%$%$tgt177829177840%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e177826%_)))
                                       (_%$%$hd177830177843%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt177829177840%_)))
                                       (_%$%$tl177831177846%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt177829177840%_)))
                                       (_%hd177850%_ _%$%$hd177830177843%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl177831177846%_))
                                      (let* ((_%$%$tgt177832177852%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl177831177846%_)))
                                             (_%$%$hd177833177855%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt177832177852%_)))
                                             (_%$%$tl177834177858%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt177832177852%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl177834177858%_))
                                                    '())
                                            (let ((_%clen177862%_
                                                   (_%arity177730%_
                                                    _%hd177850%_))
                                                  (_%cmp177863%_
                                                   (if (_%variadic?177729%_
                                                        _%hd177850%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (list 'if
                                                     (list _%cmp177863%_
                                                           _%len177794%_
                                                           _%clen177862%_)
                                                     (__SRC__%
                                                      (list '##apply
                                                            (__compile-lambda%
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause177822%_))
                    _%args177793%_)
              _%stx177727%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%generate177731%_
                                                      _%rest177824%_
                                                      _%args177793%_
                                                      _%len177794%_))
                                               _%stx177727%_))
                                            (_%$%$E177828177837%_)))
                                      (_%$%$E177828177837%_)))
                                (_%$%$E177828177837%_)))
                          (_%$%$E177798177809%_))))))
          (let* ((_%$e177733%_ _%stx177727%_)
                 (_%$%$E177735177767%_
                  (lambda ()
                    (let ((_%$%$E177736177749%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e177733%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e177733%_))
                          (let* ((_%$%$tgt177737177752%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177733%_)))
                                 (_%$%$hd177738177755%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177737177752%_)))
                                 (_%$%$tl177739177758%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177737177752%_)))
                                 (_%clauses177762%_ _%$%$tl177739177758%_))
                            (let ((_%args177764%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx177727%_))
                                  (_%len177765%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx177727%_)))
                              (__SRC__%
                               (list 'lambda
                                     _%args177764%_
                                     (__SRC__%
                                      (list 'let
                                            (list (list _%len177765%_
                                                        (__SRC__%
                                                         (list '##length
                                                               _%args177764%_)
                                                         _%stx177727%_)))
                                            (_%generate177731%_
                                             _%clauses177762%_
                                             _%args177764%_
                                             _%len177765%_))
                                      _%stx177727%_))
                               _%stx177727%_)))
                          (_%$%$E177736177749%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e177733%_))
                (let* ((_%$%$tgt177740177770%_
                        (let () (declare (not safe)) (__AST-e _%$e177733%_)))
                       (_%$%$hd177741177773%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt177740177770%_)))
                       (_%$%$tl177742177776%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt177740177770%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl177742177776%_))
                      (let* ((_%$%$tgt177743177780%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl177742177776%_)))
                             (_%$%$hd177744177783%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt177743177780%_)))
                             (_%$%$tl177745177786%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt177743177780%_)))
                             (_%clause177790%_ _%$%$hd177744177783%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$tl177745177786%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause177790%_))
                            (_%$%$E177735177767%_)))
                      (_%$%$E177735177767%_)))
                (_%$%$E177735177767%_))))))
    (define __compile-let-form
      (lambda (_%stx177496%_ _%compile-simple177497%_ _%compile-values177498%_)
        (letrec ((_%simple-bind?177500%_
                  (lambda (_%hd177685%_)
                    (let* ((_%$%hd177686177696%_ _%hd177685%_)
                           (_%$%else177689177704%_ (lambda () '#f)))
                      (let ((_%$%K177692177717%_ (lambda (_%id177715%_) '#t))
                            (_%$%K177691177709%_ (lambda () '#t)))
                        (let ((_%$%try-match177688177712%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%$%hd177686177696%_ '#f))
                                     (_%$%K177691177709%_)
                                     (_%$%else177689177704%_)))))
                          (if (pair? _%$%hd177686177696%_)
                              (let ((_%$%tl177694177722%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%hd177686177696%_)))
                                    (_%$%hd177693177720%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%hd177686177696%_))))
                                (if (null? _%$%tl177694177722%_)
                                    (let ((_%id177725%_ _%$%hd177693177720%_))
                                      (_%$%K177692177717%_ _%id177725%_))
                                    (_%$%try-match177688177712%_)))
                              (_%$%try-match177688177712%_)))))))
                 (_%car-e177501%_
                  (lambda (_%hd177683%_)
                    (if (pair? _%hd177683%_)
                        (let () (declare (not safe)) (##car _%hd177683%_))
                        _%hd177683%_))))
          (let* ((_%$e177503%_ _%stx177496%_)
                 (_%$%$E177505177648%_
                  (lambda ()
                    (let ((_%$%$E177506177528%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e177503%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e177503%_))
                          (let* ((_%$%$tgt177507177531%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177503%_)))
                                 (_%$%$hd177508177534%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177507177531%_)))
                                 (_%$%$tl177509177537%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177507177531%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl177509177537%_))
                                (let* ((_%$%$tgt177510177541%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177509177537%_)))
                                       (_%$%$hd177511177544%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt177510177541%_)))
                                       (_%$%$tl177512177547%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt177510177541%_)))
                                       (_%hd177551%_ _%$%$hd177511177544%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl177512177547%_))
                                      (let* ((_%$%$tgt177513177553%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl177512177547%_)))
                                             (_%$%$hd177514177556%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt177513177553%_)))
                                             (_%$%$tl177515177559%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt177513177553%_)))
                                             (_%body177563%_
                                              _%$%$hd177514177556%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl177515177559%_))
                                                    '())
                                            (let* ((_%hd-ids177603%_
                                                    (map (lambda (_%bind177565%_)
                                                           (let* ((_%$e177567%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind177565%_)
                          (_%$%$E177569177578%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e177567%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e177567%_))
                         (let* ((_%$%$tgt177570177581%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e177567%_)))
                                (_%$%$hd177571177584%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt177570177581%_)))
                                (_%$%$tl177572177587%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt177570177581%_)))
                                (_%ids177591%_ _%$%$hd177571177584%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl177572177587%_))
                               (let* ((_%$%$tgt177573177593%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl177572177587%_)))
                                      (_%$%$hd177574177596%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt177573177593%_)))
                                      (_%$%$tl177575177599%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt177573177593%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl177575177599%_))
                                             '())
                                     _%ids177591%_
                                     (_%$%$E177569177578%_)))
                               (_%$%$E177569177578%_)))
                         (_%$%$E177569177578%_))))
                 _%hd177551%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs177643%_
                                                    (map (lambda (_%bind177605%_)
                                                           (let* ((_%$e177607%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind177605%_)
                          (_%$%$E177609177618%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e177607%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e177607%_))
                         (let* ((_%$%$tgt177610177621%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e177607%_)))
                                (_%$%$hd177611177624%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt177610177621%_)))
                                (_%$%$tl177612177627%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt177610177621%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl177612177627%_))
                               (let* ((_%$%$tgt177613177631%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl177612177627%_)))
                                      (_%$%$hd177614177634%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt177613177631%_)))
                                      (_%$%$tl177615177637%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt177613177631%_)))
                                      (_%expr177641%_ _%$%$hd177614177634%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl177615177637%_))
                                             '())
                                     (__compile _%expr177641%_)
                                     (_%$%$E177609177618%_)))
                               (_%$%$E177609177618%_)))
                         (_%$%$E177609177618%_))))
                 _%hd177551%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body177645%_
                                                    (__compile
                                                     _%body177563%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?177500%_
                                                     _%hd-ids177603%_))
                                                  (_%compile-simple177497%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e177501%_
                                                            _%hd-ids177603%_))
                                                   _%exprs177643%_
                                                   _%body177645%_)
                                                  (_%compile-values177498%_
                                                   _%hd-ids177603%_
                                                   _%exprs177643%_
                                                   _%body177645%_)))
                                            (_%$%$E177506177528%_)))
                                      (_%$%$E177506177528%_)))
                                (_%$%$E177506177528%_)))
                          (_%$%$E177506177528%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e177503%_))
                (let* ((_%$%$tgt177516177651%_
                        (let () (declare (not safe)) (__AST-e _%$e177503%_)))
                       (_%$%$hd177517177654%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt177516177651%_)))
                       (_%$%$tl177518177657%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt177516177651%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl177518177657%_))
                      (let* ((_%$%$tgt177519177661%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl177518177657%_)))
                             (_%$%$hd177520177664%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt177519177661%_)))
                             (_%$%$tl177521177667%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt177519177661%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$hd177520177664%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl177521177667%_))
                                (let* ((_%$%$tgt177522177671%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177521177667%_)))
                                       (_%$%$hd177523177674%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt177522177671%_)))
                                       (_%$%$tl177524177677%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt177522177671%_)))
                                       (_%body177681%_ _%$%$hd177523177674%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl177524177677%_))
                                              '())
                                      (__compile _%body177681%_)
                                      (_%$%$E177505177648%_)))
                                (_%$%$E177505177648%_))
                            (_%$%$E177505177648%_)))
                      (_%$%$E177505177648%_)))
                (_%$%$E177505177648%_))))))
    (define __compile-let-values%
      (lambda (_%stx177308%_)
        (letrec ((_%compile-simple177310%_
                  (lambda (_%hd-ids177492%_ _%exprs177493%_ _%body177494%_)
                    (__SRC__%
                     (list 'let
                           (let ((__tmp178681
                                  (map __compile-head-id _%hd-ids177492%_)))
                             (declare (not safe))
                             (##map list __tmp178681 _%exprs177493%_))
                           _%body177494%_)
                     _%stx177308%_)))
                 (_%compile-values177311%_
                  (lambda (_%hd-ids177407%_ _%exprs177408%_ _%body177409%_)
                    (let _%lp177411%_ ((_%rest177413%_ _%hd-ids177407%_)
                                       (_%exprs177414%_ _%exprs177408%_)
                                       (_%bind177415%_ '())
                                       (_%post177416%_ '()))
                      (let* ((_%$%rest177417177431%_ _%rest177413%_)
                             (_%$%else177420177439%_
                              (lambda ()
                                (__SRC__%
                                 (list 'let
                                       (reverse _%bind177415%_)
                                       (_%compile-post177312%_
                                        _%post177416%_
                                        _%body177409%_))
                                 _%stx177308%_))))
                        (let ((_%$%K177425177475%_
                               (lambda (_%rest177472%_ _%id177473%_)
                                 (_%lp177411%_
                                  _%rest177472%_
                                  (cdr _%exprs177414%_)
                                  (cons (list (__compile-head-id _%id177473%_)
                                              (car _%exprs177414%_))
                                        _%bind177415%_)
                                  _%post177416%_)))
                              (_%$%K177422177457%_
                               (lambda (_%rest177443%_ _%hd177444%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd177444%_))
                                     (_%lp177411%_
                                      _%rest177443%_
                                      (cdr _%exprs177414%_)
                                      (cons (list (__compile-head-id
                                                   _%hd177444%_)
                                                  (list 'values->list
                                                        (car _%exprs177414%_)))
                                            _%bind177415%_)
                                      _%post177416%_)
                                     (if (list? _%hd177444%_)
                                         (let* ((_%len177448%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd177444%_)))
                                                (_%tmp177450%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp177411%_
                                            _%rest177443%_
                                            (cdr _%exprs177414%_)
                                            (cons (list _%tmp177450%_
                                                        (car _%exprs177414%_))
                                                  _%bind177415%_)
                                            (cons (cons _%tmp177450%_
                                                        (cons _%len177448%_
                                                              (let ((__tmp178683
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id177453%_ _%k177454%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id177453%_))
                                   (cons (__SRC__0 _%id177453%_) _%k177454%_)
                                   '#f)))
                            (__tmp178682
                             (let ()
                               (declare (not safe))
                               (##iota _%len177448%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp178683 _%hd177444%_ __tmp178682))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post177416%_)))
                                         (__compile-error__%
                                          _%stx177308%_
                                          _%hd177444%_))))))
                          (if (pair? _%$%rest177417177431%_)
                              (let ((_%$%tl177427177480%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest177417177431%_)))
                                    (_%$%hd177426177478%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest177417177431%_))))
                                (if (pair? _%$%hd177426177478%_)
                                    (let ((_%$%tl177429177485%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd177426177478%_)))
                                          (_%$%hd177428177483%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd177426177478%_))))
                                      (if (null? _%$%tl177429177485%_)
                                          (let ((_%id177488%_
                                                 _%$%hd177428177483%_)
                                                (_%rest177490%_
                                                 _%$%tl177427177480%_))
                                            (_%$%K177425177475%_
                                             _%rest177490%_
                                             _%id177488%_))
                                          (let ((_%hd177465%_
                                                 _%$%hd177426177478%_)
                                                (_%rest177467%_
                                                 _%$%tl177427177480%_))
                                            (_%$%K177422177457%_
                                             _%rest177467%_
                                             _%hd177465%_))))
                                    (let ((_%hd177465%_ _%$%hd177426177478%_)
                                          (_%rest177467%_
                                           _%$%tl177427177480%_))
                                      (_%$%K177422177457%_
                                       _%rest177467%_
                                       _%hd177465%_))))
                              (_%$%else177420177439%_)))))))
                 (_%compile-post177312%_
                  (lambda (_%post177314%_ _%body177315%_)
                    (let _%lp177317%_ ((_%rest177319%_ _%post177314%_)
                                       (_%check177320%_ '())
                                       (_%bind177321%_ '()))
                      (let* ((_%$%rest177322177334%_ _%rest177319%_)
                             (_%$%else177324177342%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp178684
                                              (list (__SRC__%
                                                     (list 'let
                                                           _%bind177321%_
                                                           _%body177315%_)
                                                     _%stx177308%_))))
                                         (declare (not safe))
                                         (##append
                                          _%check177320%_
                                          __tmp178684)))
                                 _%stx177308%_)))
                             (_%$%K177326177381%_
                              (lambda (_%rest177345%_
                                       _%init177346%_
                                       _%len177347%_
                                       _%tmp177348%_)
                                (_%lp177317%_
                                 _%rest177345%_
                                 (cons (__SRC__%
                                        (list '__check-values
                                              _%tmp177348%_
                                              _%len177347%_)
                                        _%stx177308%_)
                                       _%check177320%_)
                                 (let ((__tmp178685
                                        (lambda (_%hd177350%_ _%r177351%_)
                                          (let* ((_%$%hd177352177359%_
                                                  _%hd177350%_)
                                                 (_%$%E177354177363%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd177352177359%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K177355177369%_
                                                  (lambda (_%k177366%_
                                                           _%id177367%_)
                                                    (cons (list _%id177367%_
                                                                (list '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tmp177348%_
                              _%k177366%_))
                  _%r177351%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd177352177359%_)
                                                (let ((_%$%hd177356177372%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd177352177359%_)))
                                                      (_%$%tl177357177374%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd177352177359%_))))
                                                  (let* ((_%id177377%_
                                                          _%$%hd177356177372%_)
                                                         (_%k177379%_
                                                          _%$%tl177357177374%_))
                                                    (_%$%K177355177369%_
                                                     _%k177379%_
                                                     _%id177377%_)))
                                                (_%$%E177354177363%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp178685
                                    _%bind177321%_
                                    _%init177346%_))))))
                        (if (pair? _%$%rest177322177334%_)
                            (let ((_%$%hd177327177384%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest177322177334%_)))
                                  (_%$%tl177328177386%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest177322177334%_))))
                              (if (pair? _%$%hd177327177384%_)
                                  (let ((_%$%hd177329177389%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd177327177384%_)))
                                        (_%$%tl177330177391%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd177327177384%_))))
                                    (let ((_%tmp177394%_ _%$%hd177329177389%_))
                                      (if (pair? _%$%tl177330177391%_)
                                          (let ((_%$%hd177331177396%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl177330177391%_)))
                                                (_%$%tl177332177398%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl177330177391%_))))
                                            (let* ((_%len177401%_
                                                    _%$%hd177331177396%_)
                                                   (_%init177403%_
                                                    _%$%tl177332177398%_)
                                                   (_%rest177405%_
                                                    _%$%tl177328177386%_))
                                              (_%$%K177326177381%_
                                               _%rest177405%_
                                               _%init177403%_
                                               _%len177401%_
                                               _%tmp177394%_)))
                                          (_%$%else177324177342%_))))
                                  (_%$%else177324177342%_)))
                            (_%$%else177324177342%_)))))))
          (__compile-let-form
           _%stx177308%_
           _%compile-simple177310%_
           _%compile-values177311%_))))
    (define __compile-letrec-values%
      (lambda (_%stx177105%_)
        (letrec ((_%compile-simple177107%_
                  (lambda (_%hd-ids177304%_ _%exprs177305%_ _%body177306%_)
                    (__SRC__%
                     (list 'letrec
                           (let ((__tmp178686
                                  (map __compile-head-id _%hd-ids177304%_)))
                             (declare (not safe))
                             (##map list __tmp178686 _%exprs177305%_))
                           _%body177306%_)
                     _%stx177105%_)))
                 (_%compile-values177108%_
                  (lambda (_%hd-ids177215%_ _%exprs177216%_ _%body177217%_)
                    (let _%lp177219%_ ((_%rest177221%_ _%hd-ids177215%_)
                                       (_%exprs177222%_ _%exprs177216%_)
                                       (_%pre177223%_ '())
                                       (_%bind177224%_ '())
                                       (_%post177225%_ '()))
                      (let* ((_%$%rest177226177240%_ _%rest177221%_)
                             (_%$%else177229177248%_
                              (lambda ()
                                (_%compile-inner177109%_
                                 _%pre177223%_
                                 _%bind177224%_
                                 _%post177225%_
                                 _%body177217%_))))
                        (let ((_%$%K177234177287%_
                               (lambda (_%rest177284%_ _%id177285%_)
                                 (_%lp177219%_
                                  _%rest177284%_
                                  (cdr _%exprs177222%_)
                                  _%pre177223%_
                                  (cons (list (__compile-head-id _%id177285%_)
                                              (car _%exprs177222%_))
                                        _%bind177224%_)
                                  _%post177225%_)))
                              (_%$%K177231177269%_
                               (lambda (_%rest177252%_ _%hd177253%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd177253%_))
                                     (_%lp177219%_
                                      _%rest177252%_
                                      (cdr _%exprs177222%_)
                                      _%pre177223%_
                                      (cons (list (__compile-head-id
                                                   _%hd177253%_)
                                                  (list 'values->list
                                                        (car _%exprs177222%_)))
                                            _%bind177224%_)
                                      _%post177225%_)
                                     (if (list? _%hd177253%_)
                                         (let* ((_%len177257%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd177253%_)))
                                                (_%tmp177259%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp177219%_
                                            _%rest177252%_
                                            (cdr _%exprs177222%_)
                                            (let ((__tmp178687
                                                   (lambda (_%id177262%_
                                                            _%r177263%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id177262%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id177262%_)
                             '('#!void))
                       _%r177263%_)
                 _%r177263%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp178687
                                               _%pre177223%_
                                               _%hd177253%_))
                                            (cons (list _%tmp177259%_
                                                        (car _%exprs177222%_))
                                                  _%bind177224%_)
                                            (cons (cons _%tmp177259%_
                                                        (cons _%len177257%_
                                                              (let ((__tmp178689
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id177265%_ _%k177266%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id177265%_))
                                   (cons (__SRC__0 _%id177265%_) _%k177266%_)
                                   '#f)))
                            (__tmp178688
                             (let ()
                               (declare (not safe))
                               (##iota _%len177257%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp178689 _%hd177253%_ __tmp178688))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post177225%_)))
                                         (__compile-error__%
                                          _%stx177105%_
                                          _%hd177253%_))))))
                          (if (pair? _%$%rest177226177240%_)
                              (let ((_%$%tl177236177292%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest177226177240%_)))
                                    (_%$%hd177235177290%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest177226177240%_))))
                                (if (pair? _%$%hd177235177290%_)
                                    (let ((_%$%tl177238177297%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd177235177290%_)))
                                          (_%$%hd177237177295%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd177235177290%_))))
                                      (if (null? _%$%tl177238177297%_)
                                          (let ((_%id177300%_
                                                 _%$%hd177237177295%_)
                                                (_%rest177302%_
                                                 _%$%tl177236177292%_))
                                            (_%$%K177234177287%_
                                             _%rest177302%_
                                             _%id177300%_))
                                          (let ((_%hd177277%_
                                                 _%$%hd177235177290%_)
                                                (_%rest177279%_
                                                 _%$%tl177236177292%_))
                                            (_%$%K177231177269%_
                                             _%rest177279%_
                                             _%hd177277%_))))
                                    (let ((_%hd177277%_ _%$%hd177235177290%_)
                                          (_%rest177279%_
                                           _%$%tl177236177292%_))
                                      (_%$%K177231177269%_
                                       _%rest177279%_
                                       _%hd177277%_))))
                              (_%$%else177229177248%_)))))))
                 (_%compile-inner177109%_
                  (lambda (_%pre177210%_
                           _%bind177211%_
                           _%post177212%_
                           _%body177213%_)
                    (if (null? _%pre177210%_)
                        (_%compile-bind177110%_
                         _%bind177211%_
                         _%post177212%_
                         _%body177213%_)
                        (__SRC__%
                         (list 'let
                               (reverse _%pre177210%_)
                               (_%compile-bind177110%_
                                _%bind177211%_
                                _%post177212%_
                                _%body177213%_))
                         _%stx177105%_))))
                 (_%compile-bind177110%_
                  (lambda (_%bind177206%_ _%post177207%_ _%body177208%_)
                    (__SRC__%
                     (list 'letrec
                           (reverse _%bind177206%_)
                           (_%compile-post177111%_
                            _%post177207%_
                            _%body177208%_))
                     _%stx177105%_)))
                 (_%compile-post177111%_
                  (lambda (_%post177113%_ _%body177114%_)
                    (let _%lp177116%_ ((_%rest177118%_ _%post177113%_)
                                       (_%check177119%_ '())
                                       (_%bind177120%_ '()))
                      (let* ((_%$%rest177121177133%_ _%rest177118%_)
                             (_%$%else177123177141%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (append _%check177119%_
                                               _%bind177120%_
                                               (list _%body177114%_)))
                                 _%stx177105%_)))
                             (_%$%K177125177180%_
                              (lambda (_%rest177144%_
                                       _%init177145%_
                                       _%len177146%_
                                       _%tmp177147%_)
                                (_%lp177116%_
                                 _%rest177144%_
                                 (cons (__SRC__%
                                        (list '__check-values
                                              _%tmp177147%_
                                              _%len177146%_)
                                        _%stx177105%_)
                                       _%check177119%_)
                                 (let ((__tmp178690
                                        (lambda (_%hd177149%_ _%r177150%_)
                                          (let* ((_%$%hd177151177158%_
                                                  _%hd177149%_)
                                                 (_%$%E177153177162%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd177151177158%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K177154177168%_
                                                  (lambda (_%k177165%_
                                                           _%id177166%_)
                                                    (cons (list 'set!
                                                                _%id177166%_
                                                                (list '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tmp177147%_
                              _%k177165%_))
                  _%r177150%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd177151177158%_)
                                                (let ((_%$%hd177155177171%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd177151177158%_)))
                                                      (_%$%tl177156177173%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd177151177158%_))))
                                                  (let* ((_%id177176%_
                                                          _%$%hd177155177171%_)
                                                         (_%k177178%_
                                                          _%$%tl177156177173%_))
                                                    (_%$%K177154177168%_
                                                     _%k177178%_
                                                     _%id177176%_)))
                                                (_%$%E177153177162%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp178690
                                    _%bind177120%_
                                    _%init177145%_))))))
                        (if (pair? _%$%rest177121177133%_)
                            (let ((_%$%hd177126177183%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest177121177133%_)))
                                  (_%$%tl177127177185%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest177121177133%_))))
                              (if (pair? _%$%hd177126177183%_)
                                  (let ((_%$%hd177128177188%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd177126177183%_)))
                                        (_%$%tl177129177190%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd177126177183%_))))
                                    (let ((_%tmp177193%_ _%$%hd177128177188%_))
                                      (if (pair? _%$%tl177129177190%_)
                                          (let ((_%$%hd177130177195%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl177129177190%_)))
                                                (_%$%tl177131177197%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl177129177190%_))))
                                            (let* ((_%len177200%_
                                                    _%$%hd177130177195%_)
                                                   (_%init177202%_
                                                    _%$%tl177131177197%_)
                                                   (_%rest177204%_
                                                    _%$%tl177127177185%_))
                                              (_%$%K177125177180%_
                                               _%rest177204%_
                                               _%init177202%_
                                               _%len177200%_
                                               _%tmp177193%_)))
                                          (_%$%else177123177141%_))))
                                  (_%$%else177123177141%_)))
                            (_%$%else177123177141%_)))))))
          (__compile-let-form
           _%stx177105%_
           _%compile-simple177107%_
           _%compile-values177108%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx176856%_)
        (letrec ((_%compile-simple176858%_
                  (lambda (_%hd-ids177101%_ _%exprs177102%_ _%body177103%_)
                    (__SRC__%
                     (list 'letrec*
                           (let ((__tmp178691
                                  (map __compile-head-id _%hd-ids177101%_)))
                             (declare (not safe))
                             (##map list __tmp178691 _%exprs177102%_))
                           _%body177103%_)
                     _%stx176856%_)))
                 (_%compile-values176859%_
                  (lambda (_%hd-ids177008%_ _%exprs177009%_ _%body177010%_)
                    (let _%lp177012%_ ((_%rest177014%_ _%hd-ids177008%_)
                                       (_%exprs177015%_ _%exprs177009%_)
                                       (_%bind177016%_ '())
                                       (_%post177017%_ '()))
                      (let* ((_%$%rest177018177032%_ _%rest177014%_)
                             (_%$%else177021177040%_
                              (lambda ()
                                (_%compile-bind176860%_
                                 _%bind177016%_
                                 _%post177017%_
                                 _%body177010%_))))
                        (let ((_%$%K177026177084%_
                               (lambda (_%rest177079%_ _%hd177080%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd177080%_))
                                     (let ((_%id177082%_
                                            (__SRC__0 _%hd177080%_)))
                                       (_%lp177012%_
                                        _%rest177079%_
                                        (cdr _%exprs177015%_)
                                        (cons (cons _%id177082%_ '('#!void))
                                              _%bind177016%_)
                                        (cons (list _%id177082%_
                                                    (car _%exprs177015%_))
                                              _%post177017%_)))
                                     (_%lp177012%_
                                      _%rest177079%_
                                      (cdr _%exprs177015%_)
                                      _%bind177016%_
                                      (cons (list '#f (car _%exprs177015%_))
                                            _%post177017%_)))))
                              (_%$%K177023177064%_
                               (lambda (_%rest177044%_ _%hd177045%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd177045%_))
                                     (let ((_%id177048%_
                                            (__SRC__0 _%hd177045%_)))
                                       (_%lp177012%_
                                        _%rest177044%_
                                        (cdr _%exprs177015%_)
                                        (cons (cons _%id177048%_ '('#!void))
                                              _%bind177016%_)
                                        (cons (list _%id177048%_
                                                    (list 'values->list
                                                          (car _%exprs177015%_)))
                                              _%post177017%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd177045%_))
                                         (if (list? _%hd177045%_)
                                             (let* ((_%len177052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd177045%_)))
                                                    (_%tmp177054%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp177012%_
                                                _%rest177044%_
                                                (cdr _%exprs177015%_)
                                                (let ((__tmp178692
                                                       (lambda (_%id177057%_
                                                                _%r177058%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id177057%_))
                     (cons (cons (__SRC__0 _%id177057%_) '('#!void))
                           _%r177058%_)
                     _%r177058%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp178692
                                                   _%bind177016%_
                                                   _%hd177045%_))
                                                (cons (cons _%tmp177054%_
                                                            (cons (car _%exprs177015%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len177052%_
                                (let ((__tmp178694
                                       (lambda (_%id177060%_ _%k177061%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id177060%_))
                                             (cons (__SRC__0 _%id177060%_)
                                                   _%k177061%_)
                                             '#f)))
                                      (__tmp178693
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len177052%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp178694
                                   _%hd177045%_
                                   __tmp178693)))))
              _%post177017%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx176856%_
                                              _%hd177045%_))
                                         (_%lp177012%_
                                          _%rest177044%_
                                          (cdr _%exprs177015%_)
                                          _%bind177016%_
                                          (cons (list '#f
                                                      (car _%exprs177015%_))
                                                _%post177017%_)))))))
                          (if (pair? _%$%rest177018177032%_)
                              (let ((_%$%tl177028177089%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest177018177032%_)))
                                    (_%$%hd177027177087%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest177018177032%_))))
                                (if (pair? _%$%hd177027177087%_)
                                    (let ((_%$%tl177030177094%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd177027177087%_)))
                                          (_%$%hd177029177092%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd177027177087%_))))
                                      (if (null? _%$%tl177030177094%_)
                                          (let ((_%hd177097%_
                                                 _%$%hd177029177092%_)
                                                (_%rest177099%_
                                                 _%$%tl177028177089%_))
                                            (_%$%K177026177084%_
                                             _%rest177099%_
                                             _%hd177097%_))
                                          (let ((_%hd177072%_
                                                 _%$%hd177027177087%_)
                                                (_%rest177074%_
                                                 _%$%tl177028177089%_))
                                            (_%$%K177023177064%_
                                             _%rest177074%_
                                             _%hd177072%_))))
                                    (let ((_%hd177072%_ _%$%hd177027177087%_)
                                          (_%rest177074%_
                                           _%$%tl177028177089%_))
                                      (_%$%K177023177064%_
                                       _%rest177074%_
                                       _%hd177072%_))))
                              (_%$%else177021177040%_)))))))
                 (_%compile-bind176860%_
                  (lambda (_%bind177004%_ _%post177005%_ _%body177006%_)
                    (__SRC__%
                     (list 'let
                           (reverse _%bind177004%_)
                           (_%compile-post176861%_
                            _%post177005%_
                            _%body177006%_))
                     _%stx176856%_)))
                 (_%compile-post176861%_
                  (lambda (_%post176863%_ _%body176864%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp178696
                                  (lambda (_%hd176866%_ _%r176867%_)
                                    (let* ((_%$%hd176868176891%_ _%hd176866%_)
                                           (_%$%E176872176895%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _%$%hd176868176891%_
                                                       '([#f expr])
                                                       '([id expr])
                                                       '([tmp
                                                          expr
                                                          len
                                                          .
                                                          init])))
                                              '#!void)))
                                      (let ((_%$%K176885176989%_
                                             (lambda (_%expr176987%_)
                                               (cons _%expr176987%_
                                                     _%r176867%_)))
                                            (_%$%K176880176967%_
                                             (lambda (_%expr176964%_
                                                      _%id176965%_)
                                               (cons (__SRC__%
                                                      (list 'set!
                                                            _%id176965%_
                                                            _%expr176964%_)
                                                      _%stx176856%_)
                                                     _%r176867%_)))
                                            (_%$%K176873176934%_
                                             (lambda (_%init176899%_
                                                      _%len176900%_
                                                      _%expr176901%_
                                                      _%tmp176902%_)
                                               (cons (__SRC__%
                                                      (cons 'let
                                                            (cons (list (list _%tmp176902%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%expr176901%_))
                          (cons (__SRC__%
                                 (list '__check-values
                                       _%tmp176902%_
                                       _%len176900%_)
                                 _%stx176856%_)
                                (map (lambda (_%hd176904%_)
                                       (let* ((_%$%hd176905176912%_
                                               _%hd176904%_)
                                              (_%$%E176907176916%_
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (error '"No clause matching"
                                                          _%$%hd176905176912%_
                                                          '([id . k])))
                                                 '#!void))
                                              (_%$%K176908176922%_
                                               (lambda (_%k176919%_
                                                        _%id176920%_)
                                                 (__SRC__%
                                                  (list 'set!
                                                        _%id176920%_
                                                        (list '##values-ref
                                                              _%tmp176902%_
                                                              _%k176919%_))
                                                  _%stx176856%_))))
                                         (if (pair? _%$%hd176905176912%_)
                                             (let ((_%$%hd176909176925%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%hd176905176912%_)))
                                                   (_%$%tl176910176927%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%hd176905176912%_))))
                                               (let* ((_%id176930%_
                                                       _%$%hd176909176925%_)
                                                      (_%k176932%_
                                                       _%$%tl176910176927%_))
                                                 (_%$%K176908176922%_
                                                  _%k176932%_
                                                  _%id176930%_)))
                                             (_%$%E176907176916%_))))
                                     _%init176899%_))))
              _%stx176856%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r176867%_))))
                                        (let* ((_%__match178556178557%_
                                                (lambda (_%$%hd176874176937%_
                                                         _%$%tl176875176939%_
                                                         _%$%hd176876176944%_
                                                         _%$%tl176877176946%_)
                                                  (let ((_%tmp176942%_
                                                         _%$%hd176874176937%_)
                                                        (_%expr176949%_
                                                         _%$%hd176876176944%_))
                                                    (_%$%E176872176895%_))))
                                               (_%__match178550178551%_
                                                (lambda (_%$%hd176874176937%_
                                                         _%$%tl176875176939%_)
                                                  (let ((_%tmp176942%_
                                                         _%$%hd176874176937%_))
                                                    (_%$%E176872176895%_)))))
                                          (if (pair? _%$%hd176868176891%_)
                                              (let ((_%$%tl176887176994%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd176868176891%_)))
                                                    (_%$%hd176886176992%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd176868176891%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd176886176992%_
                                                             '#f))
                                                    (if (pair? _%$%tl176887176994%_)
                                                        (let ((_%$%tl176889176999%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl176887176994%_)))
                      (_%$%hd176888176997%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%tl176887176994%_))))
                  (if (null? _%$%tl176889176999%_)
                      (let ((_%expr177002%_ _%$%hd176888176997%_))
                        (_%$%K176885176989%_ _%expr177002%_))
                      (if (pair? _%$%tl176889176999%_)
                          (let ((_%$%tl176879176953%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl176889176999%_)))
                                (_%$%hd176878176951%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl176889176999%_))))
                            (let ((_%tmp176942%_ _%$%hd176886176992%_)
                                  (_%expr176949%_ _%$%hd176888176997%_)
                                  (_%len176956%_ _%$%hd176878176951%_)
                                  (_%init176958%_ _%$%tl176879176953%_))
                              (_%$%K176873176934%_
                               _%init176958%_
                               _%len176956%_
                               _%expr176949%_
                               _%tmp176942%_)))
                          (_%__match178556178557%_
                           _%$%hd176886176992%_
                           _%$%tl176887176994%_
                           _%$%hd176888176997%_
                           _%$%tl176889176999%_))))
                (_%__match178550178551%_
                 _%$%hd176886176992%_
                 _%$%tl176887176994%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (pair? _%$%tl176887176994%_)
                                                        (let ((_%$%tl176884176979%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl176887176994%_)))
                      (_%$%hd176883176977%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%tl176887176994%_))))
                  (if (null? _%$%tl176884176979%_)
                      (let ((_%id176975%_ _%$%hd176886176992%_)
                            (_%expr176982%_ _%$%hd176883176977%_))
                        (_%$%K176880176967%_ _%expr176982%_ _%id176975%_))
                      (if (pair? _%$%tl176884176979%_)
                          (let ((_%$%tl176879176953%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl176884176979%_)))
                                (_%$%hd176878176951%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl176884176979%_))))
                            (let ((_%tmp176942%_ _%$%hd176886176992%_)
                                  (_%expr176949%_ _%$%hd176883176977%_)
                                  (_%len176956%_ _%$%hd176878176951%_)
                                  (_%init176958%_ _%$%tl176879176953%_))
                              (_%$%K176873176934%_
                               _%init176958%_
                               _%len176956%_
                               _%expr176949%_
                               _%tmp176942%_)))
                          (_%__match178556178557%_
                           _%$%hd176886176992%_
                           _%$%tl176887176994%_
                           _%$%hd176883176977%_
                           _%$%tl176884176979%_))))
                (_%__match178550178551%_
                 _%$%hd176886176992%_
                 _%$%tl176887176994%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E176872176895%_)))))))
                                 (__tmp178695 (list _%body176864%_)))
                             (declare (not safe))
                             (foldl__0
                              __tmp178696
                              __tmp178695
                              _%post176863%_)))
                     _%stx176856%_))))
          (__compile-let-form
           _%stx176856%_
           _%compile-simple176858%_
           _%compile-values176859%_))))
    (define __compile-call%
      (lambda (_%stx176816%_)
        (let* ((_%$e176818%_ _%stx176816%_)
               (_%$%$E176820176829%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176818%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176818%_))
              (let* ((_%$%$tgt176821176832%_
                      (let () (declare (not safe)) (__AST-e _%$e176818%_)))
                     (_%$%$hd176822176835%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176821176832%_)))
                     (_%$%$tl176823176838%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176821176832%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176823176838%_))
                    (let* ((_%$%$tgt176824176842%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176823176838%_)))
                           (_%$%$hd176825176845%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176824176842%_)))
                           (_%$%$tl176826176848%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176824176842%_)))
                           (_%rator176852%_ _%$%$hd176825176845%_)
                           (_%rands176854%_ _%$%$tl176826176848%_))
                      (__SRC__%
                       (cons (__compile _%rator176852%_)
                             (map __compile _%rands176854%_))
                       _%stx176816%_))
                    (_%$%$E176820176829%_)))
              (_%$%$E176820176829%_)))))
    (define __compile-ref%
      (lambda (_%stx176778%_)
        (let* ((_%$e176780%_ _%stx176778%_)
               (_%$%$E176782176791%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176780%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176780%_))
              (let* ((_%$%$tgt176783176794%_
                      (let () (declare (not safe)) (__AST-e _%$e176780%_)))
                     (_%$%$hd176784176797%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176783176794%_)))
                     (_%$%$tl176785176800%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176783176794%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176785176800%_))
                    (let* ((_%$%$tgt176786176804%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176785176800%_)))
                           (_%$%$hd176787176807%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176786176804%_)))
                           (_%$%$tl176788176810%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176786176804%_)))
                           (_%id176814%_ _%$%$hd176787176807%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl176788176810%_))
                                  '())
                          (__SRC__% _%id176814%_ _%stx176778%_)
                          (_%$%$E176782176791%_)))
                    (_%$%$E176782176791%_)))
              (_%$%$E176782176791%_)))))
    (define __compile-setq%
      (lambda (_%stx176725%_)
        (let* ((_%$e176727%_ _%stx176725%_)
               (_%$%$E176729176741%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176727%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176727%_))
              (let* ((_%$%$tgt176730176744%_
                      (let () (declare (not safe)) (__AST-e _%$e176727%_)))
                     (_%$%$hd176731176747%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176730176744%_)))
                     (_%$%$tl176732176750%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176730176744%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176732176750%_))
                    (let* ((_%$%$tgt176733176754%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176732176750%_)))
                           (_%$%$hd176734176757%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176733176754%_)))
                           (_%$%$tl176735176760%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176733176754%_)))
                           (_%id176764%_ _%$%$hd176734176757%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl176735176760%_))
                          (let* ((_%$%$tgt176736176766%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl176735176760%_)))
                                 (_%$%$hd176737176769%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt176736176766%_)))
                                 (_%$%$tl176738176772%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt176736176766%_)))
                                 (_%expr176776%_ _%$%$hd176737176769%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl176738176772%_))
                                        '())
                                (__SRC__%
                                 (list 'set!
                                       (__SRC__% _%id176764%_ _%stx176725%_)
                                       (__compile _%expr176776%_))
                                 _%stx176725%_)
                                (_%$%$E176729176741%_)))
                          (_%$%$E176729176741%_)))
                    (_%$%$E176729176741%_)))
              (_%$%$E176729176741%_)))))
    (define __compile-if%
      (lambda (_%stx176657%_)
        (let* ((_%$e176659%_ _%stx176657%_)
               (_%$%$E176661176676%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176659%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176659%_))
              (let* ((_%$%$tgt176662176679%_
                      (let () (declare (not safe)) (__AST-e _%$e176659%_)))
                     (_%$%$hd176663176682%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176662176679%_)))
                     (_%$%$tl176664176685%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176662176679%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176664176685%_))
                    (let* ((_%$%$tgt176665176689%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176664176685%_)))
                           (_%$%$hd176666176692%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176665176689%_)))
                           (_%$%$tl176667176695%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176665176689%_)))
                           (_%p176699%_ _%$%$hd176666176692%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl176667176695%_))
                          (let* ((_%$%$tgt176668176701%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl176667176695%_)))
                                 (_%$%$hd176669176704%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt176668176701%_)))
                                 (_%$%$tl176670176707%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt176668176701%_)))
                                 (_%t176711%_ _%$%$hd176669176704%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl176670176707%_))
                                (let* ((_%$%$tgt176671176713%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl176670176707%_)))
                                       (_%$%$hd176672176716%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt176671176713%_)))
                                       (_%$%$tl176673176719%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt176671176713%_)))
                                       (_%f176723%_ _%$%$hd176672176716%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl176673176719%_))
                                              '())
                                      (__SRC__%
                                       (list 'if
                                             (__compile _%p176699%_)
                                             (__compile _%t176711%_)
                                             (__compile _%f176723%_))
                                       _%stx176657%_)
                                      (_%$%$E176661176676%_)))
                                (_%$%$E176661176676%_)))
                          (_%$%$E176661176676%_)))
                    (_%$%$E176661176676%_)))
              (_%$%$E176661176676%_)))))
    (define __compile-quote%
      (lambda (_%stx176619%_)
        (let* ((_%$e176621%_ _%stx176619%_)
               (_%$%$E176623176632%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176621%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176621%_))
              (let* ((_%$%$tgt176624176635%_
                      (let () (declare (not safe)) (__AST-e _%$e176621%_)))
                     (_%$%$hd176625176638%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176624176635%_)))
                     (_%$%$tl176626176641%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176624176635%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176626176641%_))
                    (let* ((_%$%$tgt176627176645%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176626176641%_)))
                           (_%$%$hd176628176648%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176627176645%_)))
                           (_%$%$tl176629176651%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176627176645%_)))
                           (_%e176655%_ _%$%$hd176628176648%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl176629176651%_))
                                  '())
                          (__SRC__%
                           (list 'quote
                                 (let ()
                                   (declare (not safe))
                                   (__AST->datum _%e176655%_)))
                           _%stx176619%_)
                          (_%$%$E176623176632%_)))
                    (_%$%$E176623176632%_)))
              (_%$%$E176623176632%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx176581%_)
        (let* ((_%$e176583%_ _%stx176581%_)
               (_%$%$E176585176594%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176583%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176583%_))
              (let* ((_%$%$tgt176586176597%_
                      (let () (declare (not safe)) (__AST-e _%$e176583%_)))
                     (_%$%$hd176587176600%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176586176597%_)))
                     (_%$%$tl176588176603%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176586176597%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176588176603%_))
                    (let* ((_%$%$tgt176589176607%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176588176603%_)))
                           (_%$%$hd176590176610%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176589176607%_)))
                           (_%$%$tl176591176613%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176589176607%_)))
                           (_%e176617%_ _%$%$hd176590176610%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl176591176613%_))
                                  '())
                          (__SRC__% (list 'quote _%e176617%_) _%stx176581%_)
                          (_%$%$E176585176594%_)))
                    (_%$%$E176585176594%_)))
              (_%$%$E176585176594%_)))))
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
