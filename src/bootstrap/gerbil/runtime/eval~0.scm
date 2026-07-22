(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1784461443)
  (begin
    (define __syntax::t
      (let ((__tmp178438 (list)) (__tmp178437 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__syntax::t
         '__syntax
         __tmp178438
         '(e id)
         __tmp178437
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args178242%_
        (apply make-instance __syntax::t _%$args178242%_)))
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
      (let ((__tmp178440 (list __syntax::t))
            (__tmp178439 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-form::t
         '__core-form
         __tmp178440
         '()
         __tmp178439
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args178239%_
        (apply make-instance __core-form::t _%$args178239%_)))
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
      (let ((__tmp178442 (list __core-form::t))
            (__tmp178441 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-expression::t
         '__core-expression
         __tmp178442
         '()
         __tmp178441
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args178236%_
        (apply make-instance __core-expression::t _%$args178236%_)))
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
      (let ((__tmp178444 (list __core-form::t))
            (__tmp178443 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-special-form::t
         '__core-special-form
         __tmp178444
         '()
         __tmp178443
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args178233%_
        (apply make-instance __core-special-form::t _%$args178233%_)))
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
      (lambda (_%id178210%_)
        (let* ((_%h178212%_ __core)
               (_%key178215%_
                (let () (declare (not safe)) (__AST-e _%id178210%_)))
               (_%h178219%_ _%h178212%_)
               (_%h178221%_ _%h178219%_))
          (declare (not safe))
          (__hash-get _%h178221%_ _%key178215%_))))
    (define __core-bound-id?__%
      (lambda (_%id178193%_ _%is?178194%_)
        (let ((_%$e178196%_ (__core-resolve _%id178193%_)))
          (if _%$e178196%_ (_%is?178194%_ _%$e178196%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id178203%_)
        (let ((_%is?178205%_ true))
          (__core-bound-id?__% _%id178203%_ _%is?178205%_))))
    (define __core-bound-id?
      (lambda _g178445_
        (let ((_g178446_ (let () (declare (not safe)) (##length _g178445_))))
          (cond ((let () (declare (not safe)) (##fx= _g178446_ 1))
                 (apply __core-bound-id?__0 _g178445_))
                ((let () (declare (not safe)) (##fx= _g178446_ 2))
                 (apply __core-bound-id?__% _g178445_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g178445_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id178151%_ _%e178152%_ _%make178153%_)
        (let* ((_%h178155%_ __core)
               (_%key178158%_ _%id178151%_)
               (_%value178161%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%e178152%_ '__syntax::t))
                    _%e178152%_
                    (_%make178153%_ _%e178152%_ _%id178151%_)))
               (_%h178165%_ _%h178155%_)
               (_%h178167%_ _%h178165%_))
          (declare (not safe))
          (__hash-put! _%h178167%_ _%key178158%_ _%value178161%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id178183%_ _%e178184%_)
        (let ((_%make178186%_ make-__syntax))
          (__core-bind-syntax!__% _%id178183%_ _%e178184%_ _%make178186%_))))
    (define __core-bind-syntax!
      (lambda _g178447_
        (let ((_g178448_ (let () (declare (not safe)) (##length _g178447_))))
          (cond ((let () (declare (not safe)) (##fx= _g178448_ 2))
                 (apply __core-bind-syntax!__0 _g178447_))
                ((let () (declare (not safe)) (##fx= _g178448_ 3))
                 (apply __core-bind-syntax!__% _g178447_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g178447_))))))
    (define __SRC__%
      (lambda (_%e178131%_ _%src-stx178132%_)
        (if (or (pair? _%e178131%_) (symbol? _%e178131%_))
            (let ((__tmp178449
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx178132%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx178132%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e178131%_ __tmp178449))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e178131%_ 'gerbil#AST::t))
                (let ((__tmp178451
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e178131%_ '1 '#f '#f)))
                      (__tmp178450
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e178131%_)))))
                  (declare (not safe))
                  (##make-source __tmp178451 __tmp178450))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e178131%_))))))
    (define __SRC__0
      (lambda (_%e178143%_)
        (let ((_%src-stx178145%_ '#f))
          (__SRC__% _%e178143%_ _%src-stx178145%_))))
    (define __SRC
      (lambda _g178452_
        (let ((_g178453_ (let () (declare (not safe)) (##length _g178452_))))
          (cond ((let () (declare (not safe)) (##fx= _g178453_ 1))
                 (apply __SRC__0 _g178452_))
                ((let () (declare (not safe)) (##fx= _g178453_ 2))
                 (apply __SRC__% _g178452_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g178452_))))))
    (define __locat
      (lambda (_%loc178128%_)
        (if (let () (declare (not safe)) (##locat? _%loc178128%_))
            _%loc178128%_
            '#f)))
    (define __check-values
      (lambda (_%obj178123%_ _%k178124%_)
        (let ((_%count178126%_
               (if (let () (declare (not safe)) (##values? _%obj178123%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj178123%_))
                   '1)))
          (if (fx= _%count178126%_ _%k178124%_)
              '#!void
              (let ((__tmp178455
                     (if (fx< _%count178126%_ _%k178124%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp178454
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj178123%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj178123%_))
                         _%obj178123%_)))
                (declare (not safe))
                (error __tmp178455 __tmp178454 _%k178124%_))))))
    (define __compile
      (lambda (_%stx178092%_)
        (let* ((_%$e178094%_ _%stx178092%_)
               (_%$%$E178096178102%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178094%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178094%_))
              (let* ((_%$%$tgt178097178105%_
                      (let () (declare (not safe)) (__AST-e _%$e178094%_)))
                     (_%$%$hd178098178108%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178097178105%_)))
                     (_%$%$tl178099178111%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178097178105%_)))
                     (_%form178115%_ _%$%$hd178098178108%_)
                     (_%$e178117%_ (__core-resolve _%form178115%_)))
                (if _%$e178117%_
                    ((##structure-ref _%$e178117%_ '1 __syntax::t '#f)
                     _%stx178092%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx178092%_
                       _%form178115%_))))
              (_%$%$E178096178102%_)))))
    (define __compile-error__%
      (lambda (_%stx178079%_ _%detail178080%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx178079%_
           _%detail178080%_))))
    (define __compile-error__0
      (lambda (_%stx178085%_)
        (let ((_%detail178087%_ '#f))
          (__compile-error__% _%stx178085%_ _%detail178087%_))))
    (define __compile-error
      (lambda _g178456_
        (let ((_g178457_ (let () (declare (not safe)) (##length _g178456_))))
          (cond ((let () (declare (not safe)) (##fx= _g178457_ 1))
                 (apply __compile-error__0 _g178456_))
                ((let () (declare (not safe)) (##fx= _g178457_ 2))
                 (apply __compile-error__% _g178456_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g178456_))))))
    (define __compile-ignore%
      (lambda (_%stx178076%_) (__SRC__% ''#!void _%stx178076%_)))
    (define __compile-begin%
      (lambda (_%stx178051%_)
        (let* ((_%$e178053%_ _%stx178051%_)
               (_%$%$E178055178061%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178053%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178053%_))
              (let* ((_%$%$tgt178056178064%_
                      (let () (declare (not safe)) (__AST-e _%$e178053%_)))
                     (_%$%$hd178057178067%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178056178064%_)))
                     (_%$%$tl178058178070%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178056178064%_)))
                     (_%body178074%_ _%$%$tl178058178070%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body178074%_))
                 _%stx178051%_))
              (_%$%$E178055178061%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx178026%_)
        (let* ((_%$e178028%_ _%stx178026%_)
               (_%$%$E178030178036%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178028%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178028%_))
              (let* ((_%$%$tgt178031178039%_
                      (let () (declare (not safe)) (__AST-e _%$e178028%_)))
                     (_%$%$hd178032178042%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178031178039%_)))
                     (_%$%$tl178033178045%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178031178039%_)))
                     (_%body178049%_ _%$%$tl178033178045%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body178049%_)))
                 _%stx178026%_))
              (_%$%$E178030178036%_)))))
    (define __compile-import%
      (lambda (_%stx178001%_)
        (let* ((_%$e178003%_ _%stx178001%_)
               (_%$%$E178005178011%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178003%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178003%_))
              (let* ((_%$%$tgt178006178014%_
                      (let () (declare (not safe)) (__AST-e _%$e178003%_)))
                     (_%$%$hd178007178017%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178006178014%_)))
                     (_%$%$tl178008178020%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178006178014%_)))
                     (_%body178024%_ _%$%$tl178008178020%_))
                (__SRC__%
                 (list '__eval-import (list 'quote _%body178024%_))
                 _%stx178001%_))
              (_%$%$E178005178011%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx177948%_)
        (let* ((_%$e177950%_ _%stx177948%_)
               (_%$%$E177952177964%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177950%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177950%_))
              (let* ((_%$%$tgt177953177967%_
                      (let () (declare (not safe)) (__AST-e _%$e177950%_)))
                     (_%$%$hd177954177970%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177953177967%_)))
                     (_%$%$tl177955177973%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177953177967%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl177955177973%_))
                    (let* ((_%$%$tgt177956177977%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl177955177973%_)))
                           (_%$%$hd177957177980%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt177956177977%_)))
                           (_%$%$tl177958177983%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt177956177977%_)))
                           (_%ann177987%_ _%$%$hd177957177980%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl177958177983%_))
                          (let* ((_%$%$tgt177959177989%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl177958177983%_)))
                                 (_%$%$hd177960177992%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177959177989%_)))
                                 (_%$%$tl177961177995%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177959177989%_)))
                                 (_%expr177999%_ _%$%$hd177960177992%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177961177995%_))
                                        '())
                                (__compile _%expr177999%_)
                                (_%$%$E177952177964%_)))
                          (_%$%$E177952177964%_)))
                    (_%$%$E177952177964%_)))
              (_%$%$E177952177964%_)))))
    (define __compile-define-values%
      (lambda (_%stx177839%_)
        (let* ((_%$e177841%_ _%stx177839%_)
               (_%$%$E177843177855%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177841%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177841%_))
              (let* ((_%$%$tgt177844177858%_
                      (let () (declare (not safe)) (__AST-e _%$e177841%_)))
                     (_%$%$hd177845177861%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177844177858%_)))
                     (_%$%$tl177846177864%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177844177858%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl177846177864%_))
                    (let* ((_%$%$tgt177847177868%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl177846177864%_)))
                           (_%$%$hd177848177871%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt177847177868%_)))
                           (_%$%$tl177849177874%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt177847177868%_)))
                           (_%hd177878%_ _%$%$hd177848177871%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl177849177874%_))
                          (let* ((_%$%$tgt177850177880%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl177849177874%_)))
                                 (_%$%$hd177851177883%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177850177880%_)))
                                 (_%$%$tl177852177886%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177850177880%_)))
                                 (_%expr177890%_ _%$%$hd177851177883%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177852177886%_))
                                        '())
                                (let* ((_%$e177892%_ _%hd177878%_)
                                       (_%$%$E177894177935%_
                                        (lambda ()
                                          (let ((_%$%$E177895177920%_
                                                 (lambda ()
                                                   (let* ((_%$%$E177896177907%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e177892%_))))
                  (_%ids177910%_ _%hd177878%_)
                  (_%len177912%_ (length _%ids177910%_))
                  (_%tmp177914%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (list 'define
                                 _%tmp177914%_
                                 (__compile _%expr177890%_))
                           _%stx177839%_)
                          (cons (__SRC__%
                                 (list '__check-values
                                       _%tmp177914%_
                                       _%len177912%_)
                                 _%stx177839%_)
                                (let ((__tmp178459
                                       (lambda (_%id177917%_ _%k177918%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id177917%_))
                                             (__SRC__%
                                              (list 'define
                                                    (__SRC__0 _%id177917%_)
                                                    (list '##values-ref
                                                          _%tmp177914%_
                                                          _%k177918%_))
                                              _%stx177839%_)
                                             '#f)))
                                      (__tmp178458
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len177912%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp178459
                                   _%ids177910%_
                                   __tmp178458)))))
              _%stx177839%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e177892%_))
                                                (let* ((_%$%$tgt177897177923%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e177892%_)))
                                                       (_%$%$hd177898177926%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%$tgt177897177923%_)))
                                                       (_%$%$tl177899177929%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%$tgt177897177923%_)))
                                                       (_%id177933%_
                                                        _%$%$hd177898177926%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$%$tl177899177929%_))
                      '())
              (__SRC__%
               (list 'define
                     (__SRC__0 _%id177933%_)
                     (__compile _%expr177890%_))
               _%stx177839%_)
              (_%$%$E177895177920%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%$E177895177920%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e177892%_))
                                      (let* ((_%$%$tgt177900177938%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e177892%_)))
                                             (_%$%$hd177901177941%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt177900177938%_)))
                                             (_%$%$tl177902177944%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt177900177938%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$hd177901177941%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$%$tl177902177944%_))
                                                        '())
                                                (__compile _%expr177890%_)
                                                (_%$%$E177894177935%_))
                                            (_%$%$E177894177935%_)))
                                      (_%$%$E177894177935%_)))
                                (_%$%$E177843177855%_)))
                          (_%$%$E177843177855%_)))
                    (_%$%$E177843177855%_)))
              (_%$%$E177843177855%_)))))
    (define __compile-head-id
      (lambda (_%e177837%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e177837%_))
             _%e177837%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd177794%_)
        (let _%recur177796%_ ((_%rest177798%_ _%hd177794%_))
          (let* ((_%$e177800%_ _%rest177798%_)
                 (_%$%$E177802177820%_
                  (lambda ()
                    (let ((_%$%$E177803177817%_
                           (lambda ()
                             (let* ((_%$%$E177804177812%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e177800%_))))
                                    (_%tail177815%_ _%$e177800%_))
                               (__compile-head-id _%tail177815%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177800%_))
                                  '())
                          '()
                          (_%$%$E177803177817%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e177800%_))
                (let* ((_%$%$tgt177805177823%_
                        (let () (declare (not safe)) (__AST-e _%$e177800%_)))
                       (_%$%$hd177806177826%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt177805177823%_)))
                       (_%$%$tl177807177829%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt177805177823%_)))
                       (_%hd177833%_ _%$%$hd177806177826%_)
                       (_%rest177835%_ _%$%$tl177807177829%_))
                  (cons (__compile-head-id _%hd177833%_)
                        (_%recur177796%_ _%rest177835%_)))
                (_%$%$E177802177820%_))))))
    (define __compile-lambda%
      (lambda (_%stx177741%_)
        (let* ((_%$e177743%_ _%stx177741%_)
               (_%$%$E177745177757%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177743%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177743%_))
              (let* ((_%$%$tgt177746177760%_
                      (let () (declare (not safe)) (__AST-e _%$e177743%_)))
                     (_%$%$hd177747177763%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177746177760%_)))
                     (_%$%$tl177748177766%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177746177760%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl177748177766%_))
                    (let* ((_%$%$tgt177749177770%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl177748177766%_)))
                           (_%$%$hd177750177773%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt177749177770%_)))
                           (_%$%$tl177751177776%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt177749177770%_)))
                           (_%hd177780%_ _%$%$hd177750177773%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl177751177776%_))
                          (let* ((_%$%$tgt177752177782%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl177751177776%_)))
                                 (_%$%$hd177753177785%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177752177782%_)))
                                 (_%$%$tl177754177788%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177752177782%_)))
                                 (_%body177792%_ _%$%$hd177753177785%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177754177788%_))
                                        '())
                                (__SRC__%
                                 (list 'lambda
                                       (__compile-lambda-head _%hd177780%_)
                                       (__compile _%body177792%_))
                                 _%stx177741%_)
                                (_%$%$E177745177757%_)))
                          (_%$%$E177745177757%_)))
                    (_%$%$E177745177757%_)))
              (_%$%$E177745177757%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx177506%_)
        (letrec ((_%variadic?177508%_
                  (lambda (_%hd177706%_)
                    (let* ((_%$e177708%_ _%hd177706%_)
                           (_%$%$E177710177726%_
                            (lambda ()
                              (let ((_%$%$E177711177723%_
                                     (lambda ()
                                       (let ((_%$%$E177712177720%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e177708%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e177708%_))
                                            '())
                                    '#f
                                    (_%$%$E177711177723%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e177708%_))
                          (let* ((_%$%$tgt177713177729%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177708%_)))
                                 (_%$%$hd177714177732%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177713177729%_)))
                                 (_%$%$tl177715177735%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177713177729%_)))
                                 (_%rest177739%_ _%$%$tl177715177735%_))
                            (_%variadic?177508%_ _%rest177739%_))
                          (_%$%$E177710177726%_)))))
                 (_%arity177509%_
                  (lambda (_%hd177644%_)
                    (let _%lp177646%_ ((_%rest177648%_ _%hd177644%_)
                                       (_%k177649%_ '0))
                      (let* ((_%$e177651%_ _%rest177648%_)
                             (_%$%$E177653177664%_
                              (lambda ()
                                (let ((_%$%$E177654177661%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e177651%_)))))
                                  _%k177649%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e177651%_))
                            (let* ((_%$%$tgt177655177667%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e177651%_)))
                                   (_%$%$hd177656177670%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%$tgt177655177667%_)))
                                   (_%$%$tl177657177673%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%$tgt177655177667%_)))
                                   (_%rest177677%_ _%$%$tl177657177673%_))
                              (_%lp177646%_
                               _%rest177677%_
                               (let ((_%x177679%_ _%k177649%_))
                                 (if (fixnum? _%x177679%_)
                                     (let ((_%x177684%_ _%x177679%_))
                                       (declare (not safe))
                                       (__fx1+ _%x177684%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x177679%_)
                                       '#!void)))))
                            (_%$%$E177653177664%_))))))
                 (_%generate177510%_
                  (lambda (_%rest177571%_ _%args177572%_ _%len177573%_)
                    (let* ((_%$e177575%_ _%rest177571%_)
                           (_%$%$E177577177588%_
                            (lambda ()
                              (let ((_%$%$E177578177585%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e177575%_)))))
                                (__SRC__%
                                 (list 'error
                                       '"No clause matching arguments"
                                       _%args177572%_)
                                 _%stx177506%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e177575%_))
                          (let* ((_%$%$tgt177579177591%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177575%_)))
                                 (_%$%$hd177580177594%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177579177591%_)))
                                 (_%$%$tl177581177597%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177579177591%_)))
                                 (_%clause177601%_ _%$%$hd177580177594%_)
                                 (_%rest177603%_ _%$%$tl177581177597%_)
                                 (_%$e177605%_ _%clause177601%_)
                                 (_%$%$E177607177616%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e177605%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e177605%_))
                                (let* ((_%$%$tgt177608177619%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e177605%_)))
                                       (_%$%$hd177609177622%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt177608177619%_)))
                                       (_%$%$tl177610177625%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt177608177619%_)))
                                       (_%hd177629%_ _%$%$hd177609177622%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl177610177625%_))
                                      (let* ((_%$%$tgt177611177631%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl177610177625%_)))
                                             (_%$%$hd177612177634%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt177611177631%_)))
                                             (_%$%$tl177613177637%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt177611177631%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl177613177637%_))
                                                    '())
                                            (let ((_%clen177641%_
                                                   (_%arity177509%_
                                                    _%hd177629%_))
                                                  (_%cmp177642%_
                                                   (if (_%variadic?177508%_
                                                        _%hd177629%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (list 'if
                                                     (list _%cmp177642%_
                                                           _%len177573%_
                                                           _%clen177641%_)
                                                     (__SRC__%
                                                      (list '##apply
                                                            (__compile-lambda%
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause177601%_))
                    _%args177572%_)
              _%stx177506%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%generate177510%_
                                                      _%rest177603%_
                                                      _%args177572%_
                                                      _%len177573%_))
                                               _%stx177506%_))
                                            (_%$%$E177607177616%_)))
                                      (_%$%$E177607177616%_)))
                                (_%$%$E177607177616%_)))
                          (_%$%$E177577177588%_))))))
          (let* ((_%$e177512%_ _%stx177506%_)
                 (_%$%$E177514177546%_
                  (lambda ()
                    (let ((_%$%$E177515177528%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e177512%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e177512%_))
                          (let* ((_%$%$tgt177516177531%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177512%_)))
                                 (_%$%$hd177517177534%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177516177531%_)))
                                 (_%$%$tl177518177537%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177516177531%_)))
                                 (_%clauses177541%_ _%$%$tl177518177537%_))
                            (let ((_%args177543%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx177506%_))
                                  (_%len177544%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx177506%_)))
                              (__SRC__%
                               (list 'lambda
                                     _%args177543%_
                                     (__SRC__%
                                      (list 'let
                                            (list (list _%len177544%_
                                                        (__SRC__%
                                                         (list '##length
                                                               _%args177543%_)
                                                         _%stx177506%_)))
                                            (_%generate177510%_
                                             _%clauses177541%_
                                             _%args177543%_
                                             _%len177544%_))
                                      _%stx177506%_))
                               _%stx177506%_)))
                          (_%$%$E177515177528%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e177512%_))
                (let* ((_%$%$tgt177519177549%_
                        (let () (declare (not safe)) (__AST-e _%$e177512%_)))
                       (_%$%$hd177520177552%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt177519177549%_)))
                       (_%$%$tl177521177555%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt177519177549%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl177521177555%_))
                      (let* ((_%$%$tgt177522177559%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl177521177555%_)))
                             (_%$%$hd177523177562%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt177522177559%_)))
                             (_%$%$tl177524177565%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt177522177559%_)))
                             (_%clause177569%_ _%$%$hd177523177562%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$tl177524177565%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause177569%_))
                            (_%$%$E177514177546%_)))
                      (_%$%$E177514177546%_)))
                (_%$%$E177514177546%_))))))
    (define __compile-let-form
      (lambda (_%stx177275%_ _%compile-simple177276%_ _%compile-values177277%_)
        (letrec ((_%simple-bind?177279%_
                  (lambda (_%hd177464%_)
                    (let* ((_%$%hd177465177475%_ _%hd177464%_)
                           (_%$%else177468177483%_ (lambda () '#f)))
                      (let ((_%$%K177471177496%_ (lambda (_%id177494%_) '#t))
                            (_%$%K177470177488%_ (lambda () '#t)))
                        (let ((_%$%try-match177467177491%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%$%hd177465177475%_ '#f))
                                     (_%$%K177470177488%_)
                                     (_%$%else177468177483%_)))))
                          (if (pair? _%$%hd177465177475%_)
                              (let ((_%$%tl177473177501%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%hd177465177475%_)))
                                    (_%$%hd177472177499%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%hd177465177475%_))))
                                (if (null? _%$%tl177473177501%_)
                                    (let ((_%id177504%_ _%$%hd177472177499%_))
                                      (_%$%K177471177496%_ _%id177504%_))
                                    (_%$%try-match177467177491%_)))
                              (_%$%try-match177467177491%_)))))))
                 (_%car-e177280%_
                  (lambda (_%hd177462%_)
                    (if (pair? _%hd177462%_)
                        (let () (declare (not safe)) (##car _%hd177462%_))
                        _%hd177462%_))))
          (let* ((_%$e177282%_ _%stx177275%_)
                 (_%$%$E177284177427%_
                  (lambda ()
                    (let ((_%$%$E177285177307%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e177282%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e177282%_))
                          (let* ((_%$%$tgt177286177310%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177282%_)))
                                 (_%$%$hd177287177313%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177286177310%_)))
                                 (_%$%$tl177288177316%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177286177310%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl177288177316%_))
                                (let* ((_%$%$tgt177289177320%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177288177316%_)))
                                       (_%$%$hd177290177323%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt177289177320%_)))
                                       (_%$%$tl177291177326%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt177289177320%_)))
                                       (_%hd177330%_ _%$%$hd177290177323%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl177291177326%_))
                                      (let* ((_%$%$tgt177292177332%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl177291177326%_)))
                                             (_%$%$hd177293177335%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt177292177332%_)))
                                             (_%$%$tl177294177338%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt177292177332%_)))
                                             (_%body177342%_
                                              _%$%$hd177293177335%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl177294177338%_))
                                                    '())
                                            (let* ((_%hd-ids177382%_
                                                    (map (lambda (_%bind177344%_)
                                                           (let* ((_%$e177346%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind177344%_)
                          (_%$%$E177348177357%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e177346%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e177346%_))
                         (let* ((_%$%$tgt177349177360%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e177346%_)))
                                (_%$%$hd177350177363%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt177349177360%_)))
                                (_%$%$tl177351177366%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt177349177360%_)))
                                (_%ids177370%_ _%$%$hd177350177363%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl177351177366%_))
                               (let* ((_%$%$tgt177352177372%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl177351177366%_)))
                                      (_%$%$hd177353177375%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt177352177372%_)))
                                      (_%$%$tl177354177378%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt177352177372%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl177354177378%_))
                                             '())
                                     _%ids177370%_
                                     (_%$%$E177348177357%_)))
                               (_%$%$E177348177357%_)))
                         (_%$%$E177348177357%_))))
                 _%hd177330%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs177422%_
                                                    (map (lambda (_%bind177384%_)
                                                           (let* ((_%$e177386%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind177384%_)
                          (_%$%$E177388177397%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e177386%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e177386%_))
                         (let* ((_%$%$tgt177389177400%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e177386%_)))
                                (_%$%$hd177390177403%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt177389177400%_)))
                                (_%$%$tl177391177406%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt177389177400%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl177391177406%_))
                               (let* ((_%$%$tgt177392177410%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl177391177406%_)))
                                      (_%$%$hd177393177413%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt177392177410%_)))
                                      (_%$%$tl177394177416%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt177392177410%_)))
                                      (_%expr177420%_ _%$%$hd177393177413%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl177394177416%_))
                                             '())
                                     (__compile _%expr177420%_)
                                     (_%$%$E177388177397%_)))
                               (_%$%$E177388177397%_)))
                         (_%$%$E177388177397%_))))
                 _%hd177330%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body177424%_
                                                    (__compile
                                                     _%body177342%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?177279%_
                                                     _%hd-ids177382%_))
                                                  (_%compile-simple177276%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e177280%_
                                                            _%hd-ids177382%_))
                                                   _%exprs177422%_
                                                   _%body177424%_)
                                                  (_%compile-values177277%_
                                                   _%hd-ids177382%_
                                                   _%exprs177422%_
                                                   _%body177424%_)))
                                            (_%$%$E177285177307%_)))
                                      (_%$%$E177285177307%_)))
                                (_%$%$E177285177307%_)))
                          (_%$%$E177285177307%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e177282%_))
                (let* ((_%$%$tgt177295177430%_
                        (let () (declare (not safe)) (__AST-e _%$e177282%_)))
                       (_%$%$hd177296177433%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt177295177430%_)))
                       (_%$%$tl177297177436%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt177295177430%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl177297177436%_))
                      (let* ((_%$%$tgt177298177440%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl177297177436%_)))
                             (_%$%$hd177299177443%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt177298177440%_)))
                             (_%$%$tl177300177446%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt177298177440%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$hd177299177443%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl177300177446%_))
                                (let* ((_%$%$tgt177301177450%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177300177446%_)))
                                       (_%$%$hd177302177453%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt177301177450%_)))
                                       (_%$%$tl177303177456%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt177301177450%_)))
                                       (_%body177460%_ _%$%$hd177302177453%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl177303177456%_))
                                              '())
                                      (__compile _%body177460%_)
                                      (_%$%$E177284177427%_)))
                                (_%$%$E177284177427%_))
                            (_%$%$E177284177427%_)))
                      (_%$%$E177284177427%_)))
                (_%$%$E177284177427%_))))))
    (define __compile-let-values%
      (lambda (_%stx177087%_)
        (letrec ((_%compile-simple177089%_
                  (lambda (_%hd-ids177271%_ _%exprs177272%_ _%body177273%_)
                    (__SRC__%
                     (list 'let
                           (let ((__tmp178460
                                  (map __compile-head-id _%hd-ids177271%_)))
                             (declare (not safe))
                             (##map list __tmp178460 _%exprs177272%_))
                           _%body177273%_)
                     _%stx177087%_)))
                 (_%compile-values177090%_
                  (lambda (_%hd-ids177186%_ _%exprs177187%_ _%body177188%_)
                    (let _%lp177190%_ ((_%rest177192%_ _%hd-ids177186%_)
                                       (_%exprs177193%_ _%exprs177187%_)
                                       (_%bind177194%_ '())
                                       (_%post177195%_ '()))
                      (let* ((_%$%rest177196177210%_ _%rest177192%_)
                             (_%$%else177199177218%_
                              (lambda ()
                                (__SRC__%
                                 (list 'let
                                       (reverse _%bind177194%_)
                                       (_%compile-post177091%_
                                        _%post177195%_
                                        _%body177188%_))
                                 _%stx177087%_))))
                        (let ((_%$%K177204177254%_
                               (lambda (_%rest177251%_ _%id177252%_)
                                 (_%lp177190%_
                                  _%rest177251%_
                                  (cdr _%exprs177193%_)
                                  (cons (list (__compile-head-id _%id177252%_)
                                              (car _%exprs177193%_))
                                        _%bind177194%_)
                                  _%post177195%_)))
                              (_%$%K177201177236%_
                               (lambda (_%rest177222%_ _%hd177223%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd177223%_))
                                     (_%lp177190%_
                                      _%rest177222%_
                                      (cdr _%exprs177193%_)
                                      (cons (list (__compile-head-id
                                                   _%hd177223%_)
                                                  (list 'values->list
                                                        (car _%exprs177193%_)))
                                            _%bind177194%_)
                                      _%post177195%_)
                                     (if (list? _%hd177223%_)
                                         (let* ((_%len177227%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd177223%_)))
                                                (_%tmp177229%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp177190%_
                                            _%rest177222%_
                                            (cdr _%exprs177193%_)
                                            (cons (list _%tmp177229%_
                                                        (car _%exprs177193%_))
                                                  _%bind177194%_)
                                            (cons (cons _%tmp177229%_
                                                        (cons _%len177227%_
                                                              (let ((__tmp178462
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id177232%_ _%k177233%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id177232%_))
                                   (cons (__SRC__0 _%id177232%_) _%k177233%_)
                                   '#f)))
                            (__tmp178461
                             (let ()
                               (declare (not safe))
                               (##iota _%len177227%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp178462 _%hd177223%_ __tmp178461))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post177195%_)))
                                         (__compile-error__%
                                          _%stx177087%_
                                          _%hd177223%_))))))
                          (if (pair? _%$%rest177196177210%_)
                              (let ((_%$%tl177206177259%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest177196177210%_)))
                                    (_%$%hd177205177257%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest177196177210%_))))
                                (if (pair? _%$%hd177205177257%_)
                                    (let ((_%$%tl177208177264%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd177205177257%_)))
                                          (_%$%hd177207177262%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd177205177257%_))))
                                      (if (null? _%$%tl177208177264%_)
                                          (let ((_%id177267%_
                                                 _%$%hd177207177262%_)
                                                (_%rest177269%_
                                                 _%$%tl177206177259%_))
                                            (_%$%K177204177254%_
                                             _%rest177269%_
                                             _%id177267%_))
                                          (let ((_%hd177244%_
                                                 _%$%hd177205177257%_)
                                                (_%rest177246%_
                                                 _%$%tl177206177259%_))
                                            (_%$%K177201177236%_
                                             _%rest177246%_
                                             _%hd177244%_))))
                                    (let ((_%hd177244%_ _%$%hd177205177257%_)
                                          (_%rest177246%_
                                           _%$%tl177206177259%_))
                                      (_%$%K177201177236%_
                                       _%rest177246%_
                                       _%hd177244%_))))
                              (_%$%else177199177218%_)))))))
                 (_%compile-post177091%_
                  (lambda (_%post177093%_ _%body177094%_)
                    (let _%lp177096%_ ((_%rest177098%_ _%post177093%_)
                                       (_%check177099%_ '())
                                       (_%bind177100%_ '()))
                      (let* ((_%$%rest177101177113%_ _%rest177098%_)
                             (_%$%else177103177121%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp178463
                                              (list (__SRC__%
                                                     (list 'let
                                                           _%bind177100%_
                                                           _%body177094%_)
                                                     _%stx177087%_))))
                                         (declare (not safe))
                                         (##append
                                          _%check177099%_
                                          __tmp178463)))
                                 _%stx177087%_)))
                             (_%$%K177105177160%_
                              (lambda (_%rest177124%_
                                       _%init177125%_
                                       _%len177126%_
                                       _%tmp177127%_)
                                (_%lp177096%_
                                 _%rest177124%_
                                 (cons (__SRC__%
                                        (list '__check-values
                                              _%tmp177127%_
                                              _%len177126%_)
                                        _%stx177087%_)
                                       _%check177099%_)
                                 (let ((__tmp178464
                                        (lambda (_%hd177129%_ _%r177130%_)
                                          (let* ((_%$%hd177131177138%_
                                                  _%hd177129%_)
                                                 (_%$%E177133177142%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd177131177138%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K177134177148%_
                                                  (lambda (_%k177145%_
                                                           _%id177146%_)
                                                    (cons (list _%id177146%_
                                                                (list '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tmp177127%_
                              _%k177145%_))
                  _%r177130%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd177131177138%_)
                                                (let ((_%$%hd177135177151%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd177131177138%_)))
                                                      (_%$%tl177136177153%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd177131177138%_))))
                                                  (let* ((_%id177156%_
                                                          _%$%hd177135177151%_)
                                                         (_%k177158%_
                                                          _%$%tl177136177153%_))
                                                    (_%$%K177134177148%_
                                                     _%k177158%_
                                                     _%id177156%_)))
                                                (_%$%E177133177142%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp178464
                                    _%bind177100%_
                                    _%init177125%_))))))
                        (if (pair? _%$%rest177101177113%_)
                            (let ((_%$%hd177106177163%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest177101177113%_)))
                                  (_%$%tl177107177165%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest177101177113%_))))
                              (if (pair? _%$%hd177106177163%_)
                                  (let ((_%$%hd177108177168%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd177106177163%_)))
                                        (_%$%tl177109177170%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd177106177163%_))))
                                    (let ((_%tmp177173%_ _%$%hd177108177168%_))
                                      (if (pair? _%$%tl177109177170%_)
                                          (let ((_%$%hd177110177175%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl177109177170%_)))
                                                (_%$%tl177111177177%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl177109177170%_))))
                                            (let* ((_%len177180%_
                                                    _%$%hd177110177175%_)
                                                   (_%init177182%_
                                                    _%$%tl177111177177%_)
                                                   (_%rest177184%_
                                                    _%$%tl177107177165%_))
                                              (_%$%K177105177160%_
                                               _%rest177184%_
                                               _%init177182%_
                                               _%len177180%_
                                               _%tmp177173%_)))
                                          (_%$%else177103177121%_))))
                                  (_%$%else177103177121%_)))
                            (_%$%else177103177121%_)))))))
          (__compile-let-form
           _%stx177087%_
           _%compile-simple177089%_
           _%compile-values177090%_))))
    (define __compile-letrec-values%
      (lambda (_%stx176884%_)
        (letrec ((_%compile-simple176886%_
                  (lambda (_%hd-ids177083%_ _%exprs177084%_ _%body177085%_)
                    (__SRC__%
                     (list 'letrec
                           (let ((__tmp178465
                                  (map __compile-head-id _%hd-ids177083%_)))
                             (declare (not safe))
                             (##map list __tmp178465 _%exprs177084%_))
                           _%body177085%_)
                     _%stx176884%_)))
                 (_%compile-values176887%_
                  (lambda (_%hd-ids176994%_ _%exprs176995%_ _%body176996%_)
                    (let _%lp176998%_ ((_%rest177000%_ _%hd-ids176994%_)
                                       (_%exprs177001%_ _%exprs176995%_)
                                       (_%pre177002%_ '())
                                       (_%bind177003%_ '())
                                       (_%post177004%_ '()))
                      (let* ((_%$%rest177005177019%_ _%rest177000%_)
                             (_%$%else177008177027%_
                              (lambda ()
                                (_%compile-inner176888%_
                                 _%pre177002%_
                                 _%bind177003%_
                                 _%post177004%_
                                 _%body176996%_))))
                        (let ((_%$%K177013177066%_
                               (lambda (_%rest177063%_ _%id177064%_)
                                 (_%lp176998%_
                                  _%rest177063%_
                                  (cdr _%exprs177001%_)
                                  _%pre177002%_
                                  (cons (list (__compile-head-id _%id177064%_)
                                              (car _%exprs177001%_))
                                        _%bind177003%_)
                                  _%post177004%_)))
                              (_%$%K177010177048%_
                               (lambda (_%rest177031%_ _%hd177032%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd177032%_))
                                     (_%lp176998%_
                                      _%rest177031%_
                                      (cdr _%exprs177001%_)
                                      _%pre177002%_
                                      (cons (list (__compile-head-id
                                                   _%hd177032%_)
                                                  (list 'values->list
                                                        (car _%exprs177001%_)))
                                            _%bind177003%_)
                                      _%post177004%_)
                                     (if (list? _%hd177032%_)
                                         (let* ((_%len177036%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd177032%_)))
                                                (_%tmp177038%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp176998%_
                                            _%rest177031%_
                                            (cdr _%exprs177001%_)
                                            (let ((__tmp178466
                                                   (lambda (_%id177041%_
                                                            _%r177042%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id177041%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id177041%_)
                             '('#!void))
                       _%r177042%_)
                 _%r177042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp178466
                                               _%pre177002%_
                                               _%hd177032%_))
                                            (cons (list _%tmp177038%_
                                                        (car _%exprs177001%_))
                                                  _%bind177003%_)
                                            (cons (cons _%tmp177038%_
                                                        (cons _%len177036%_
                                                              (let ((__tmp178468
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id177044%_ _%k177045%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id177044%_))
                                   (cons (__SRC__0 _%id177044%_) _%k177045%_)
                                   '#f)))
                            (__tmp178467
                             (let ()
                               (declare (not safe))
                               (##iota _%len177036%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp178468 _%hd177032%_ __tmp178467))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post177004%_)))
                                         (__compile-error__%
                                          _%stx176884%_
                                          _%hd177032%_))))))
                          (if (pair? _%$%rest177005177019%_)
                              (let ((_%$%tl177015177071%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest177005177019%_)))
                                    (_%$%hd177014177069%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest177005177019%_))))
                                (if (pair? _%$%hd177014177069%_)
                                    (let ((_%$%tl177017177076%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd177014177069%_)))
                                          (_%$%hd177016177074%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd177014177069%_))))
                                      (if (null? _%$%tl177017177076%_)
                                          (let ((_%id177079%_
                                                 _%$%hd177016177074%_)
                                                (_%rest177081%_
                                                 _%$%tl177015177071%_))
                                            (_%$%K177013177066%_
                                             _%rest177081%_
                                             _%id177079%_))
                                          (let ((_%hd177056%_
                                                 _%$%hd177014177069%_)
                                                (_%rest177058%_
                                                 _%$%tl177015177071%_))
                                            (_%$%K177010177048%_
                                             _%rest177058%_
                                             _%hd177056%_))))
                                    (let ((_%hd177056%_ _%$%hd177014177069%_)
                                          (_%rest177058%_
                                           _%$%tl177015177071%_))
                                      (_%$%K177010177048%_
                                       _%rest177058%_
                                       _%hd177056%_))))
                              (_%$%else177008177027%_)))))))
                 (_%compile-inner176888%_
                  (lambda (_%pre176989%_
                           _%bind176990%_
                           _%post176991%_
                           _%body176992%_)
                    (if (null? _%pre176989%_)
                        (_%compile-bind176889%_
                         _%bind176990%_
                         _%post176991%_
                         _%body176992%_)
                        (__SRC__%
                         (list 'let
                               (reverse _%pre176989%_)
                               (_%compile-bind176889%_
                                _%bind176990%_
                                _%post176991%_
                                _%body176992%_))
                         _%stx176884%_))))
                 (_%compile-bind176889%_
                  (lambda (_%bind176985%_ _%post176986%_ _%body176987%_)
                    (__SRC__%
                     (list 'letrec
                           (reverse _%bind176985%_)
                           (_%compile-post176890%_
                            _%post176986%_
                            _%body176987%_))
                     _%stx176884%_)))
                 (_%compile-post176890%_
                  (lambda (_%post176892%_ _%body176893%_)
                    (let _%lp176895%_ ((_%rest176897%_ _%post176892%_)
                                       (_%check176898%_ '())
                                       (_%bind176899%_ '()))
                      (let* ((_%$%rest176900176912%_ _%rest176897%_)
                             (_%$%else176902176920%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (append _%check176898%_
                                               _%bind176899%_
                                               (list _%body176893%_)))
                                 _%stx176884%_)))
                             (_%$%K176904176959%_
                              (lambda (_%rest176923%_
                                       _%init176924%_
                                       _%len176925%_
                                       _%tmp176926%_)
                                (_%lp176895%_
                                 _%rest176923%_
                                 (cons (__SRC__%
                                        (list '__check-values
                                              _%tmp176926%_
                                              _%len176925%_)
                                        _%stx176884%_)
                                       _%check176898%_)
                                 (let ((__tmp178469
                                        (lambda (_%hd176928%_ _%r176929%_)
                                          (let* ((_%$%hd176930176937%_
                                                  _%hd176928%_)
                                                 (_%$%E176932176941%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd176930176937%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K176933176947%_
                                                  (lambda (_%k176944%_
                                                           _%id176945%_)
                                                    (cons (list 'set!
                                                                _%id176945%_
                                                                (list '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tmp176926%_
                              _%k176944%_))
                  _%r176929%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd176930176937%_)
                                                (let ((_%$%hd176934176950%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd176930176937%_)))
                                                      (_%$%tl176935176952%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd176930176937%_))))
                                                  (let* ((_%id176955%_
                                                          _%$%hd176934176950%_)
                                                         (_%k176957%_
                                                          _%$%tl176935176952%_))
                                                    (_%$%K176933176947%_
                                                     _%k176957%_
                                                     _%id176955%_)))
                                                (_%$%E176932176941%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp178469
                                    _%bind176899%_
                                    _%init176924%_))))))
                        (if (pair? _%$%rest176900176912%_)
                            (let ((_%$%hd176905176962%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest176900176912%_)))
                                  (_%$%tl176906176964%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest176900176912%_))))
                              (if (pair? _%$%hd176905176962%_)
                                  (let ((_%$%hd176907176967%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd176905176962%_)))
                                        (_%$%tl176908176969%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd176905176962%_))))
                                    (let ((_%tmp176972%_ _%$%hd176907176967%_))
                                      (if (pair? _%$%tl176908176969%_)
                                          (let ((_%$%hd176909176974%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl176908176969%_)))
                                                (_%$%tl176910176976%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl176908176969%_))))
                                            (let* ((_%len176979%_
                                                    _%$%hd176909176974%_)
                                                   (_%init176981%_
                                                    _%$%tl176910176976%_)
                                                   (_%rest176983%_
                                                    _%$%tl176906176964%_))
                                              (_%$%K176904176959%_
                                               _%rest176983%_
                                               _%init176981%_
                                               _%len176979%_
                                               _%tmp176972%_)))
                                          (_%$%else176902176920%_))))
                                  (_%$%else176902176920%_)))
                            (_%$%else176902176920%_)))))))
          (__compile-let-form
           _%stx176884%_
           _%compile-simple176886%_
           _%compile-values176887%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx176635%_)
        (letrec ((_%compile-simple176637%_
                  (lambda (_%hd-ids176880%_ _%exprs176881%_ _%body176882%_)
                    (__SRC__%
                     (list 'letrec*
                           (let ((__tmp178470
                                  (map __compile-head-id _%hd-ids176880%_)))
                             (declare (not safe))
                             (##map list __tmp178470 _%exprs176881%_))
                           _%body176882%_)
                     _%stx176635%_)))
                 (_%compile-values176638%_
                  (lambda (_%hd-ids176787%_ _%exprs176788%_ _%body176789%_)
                    (let _%lp176791%_ ((_%rest176793%_ _%hd-ids176787%_)
                                       (_%exprs176794%_ _%exprs176788%_)
                                       (_%bind176795%_ '())
                                       (_%post176796%_ '()))
                      (let* ((_%$%rest176797176811%_ _%rest176793%_)
                             (_%$%else176800176819%_
                              (lambda ()
                                (_%compile-bind176639%_
                                 _%bind176795%_
                                 _%post176796%_
                                 _%body176789%_))))
                        (let ((_%$%K176805176863%_
                               (lambda (_%rest176858%_ _%hd176859%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd176859%_))
                                     (let ((_%id176861%_
                                            (__SRC__0 _%hd176859%_)))
                                       (_%lp176791%_
                                        _%rest176858%_
                                        (cdr _%exprs176794%_)
                                        (cons (cons _%id176861%_ '('#!void))
                                              _%bind176795%_)
                                        (cons (list _%id176861%_
                                                    (car _%exprs176794%_))
                                              _%post176796%_)))
                                     (_%lp176791%_
                                      _%rest176858%_
                                      (cdr _%exprs176794%_)
                                      _%bind176795%_
                                      (cons (list '#f (car _%exprs176794%_))
                                            _%post176796%_)))))
                              (_%$%K176802176843%_
                               (lambda (_%rest176823%_ _%hd176824%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd176824%_))
                                     (let ((_%id176827%_
                                            (__SRC__0 _%hd176824%_)))
                                       (_%lp176791%_
                                        _%rest176823%_
                                        (cdr _%exprs176794%_)
                                        (cons (cons _%id176827%_ '('#!void))
                                              _%bind176795%_)
                                        (cons (list _%id176827%_
                                                    (list 'values->list
                                                          (car _%exprs176794%_)))
                                              _%post176796%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd176824%_))
                                         (if (list? _%hd176824%_)
                                             (let* ((_%len176831%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd176824%_)))
                                                    (_%tmp176833%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp176791%_
                                                _%rest176823%_
                                                (cdr _%exprs176794%_)
                                                (let ((__tmp178471
                                                       (lambda (_%id176836%_
                                                                _%r176837%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id176836%_))
                     (cons (cons (__SRC__0 _%id176836%_) '('#!void))
                           _%r176837%_)
                     _%r176837%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp178471
                                                   _%bind176795%_
                                                   _%hd176824%_))
                                                (cons (cons _%tmp176833%_
                                                            (cons (car _%exprs176794%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len176831%_
                                (let ((__tmp178473
                                       (lambda (_%id176839%_ _%k176840%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id176839%_))
                                             (cons (__SRC__0 _%id176839%_)
                                                   _%k176840%_)
                                             '#f)))
                                      (__tmp178472
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len176831%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp178473
                                   _%hd176824%_
                                   __tmp178472)))))
              _%post176796%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx176635%_
                                              _%hd176824%_))
                                         (_%lp176791%_
                                          _%rest176823%_
                                          (cdr _%exprs176794%_)
                                          _%bind176795%_
                                          (cons (list '#f
                                                      (car _%exprs176794%_))
                                                _%post176796%_)))))))
                          (if (pair? _%$%rest176797176811%_)
                              (let ((_%$%tl176807176868%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest176797176811%_)))
                                    (_%$%hd176806176866%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest176797176811%_))))
                                (if (pair? _%$%hd176806176866%_)
                                    (let ((_%$%tl176809176873%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd176806176866%_)))
                                          (_%$%hd176808176871%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd176806176866%_))))
                                      (if (null? _%$%tl176809176873%_)
                                          (let ((_%hd176876%_
                                                 _%$%hd176808176871%_)
                                                (_%rest176878%_
                                                 _%$%tl176807176868%_))
                                            (_%$%K176805176863%_
                                             _%rest176878%_
                                             _%hd176876%_))
                                          (let ((_%hd176851%_
                                                 _%$%hd176806176866%_)
                                                (_%rest176853%_
                                                 _%$%tl176807176868%_))
                                            (_%$%K176802176843%_
                                             _%rest176853%_
                                             _%hd176851%_))))
                                    (let ((_%hd176851%_ _%$%hd176806176866%_)
                                          (_%rest176853%_
                                           _%$%tl176807176868%_))
                                      (_%$%K176802176843%_
                                       _%rest176853%_
                                       _%hd176851%_))))
                              (_%$%else176800176819%_)))))))
                 (_%compile-bind176639%_
                  (lambda (_%bind176783%_ _%post176784%_ _%body176785%_)
                    (__SRC__%
                     (list 'let
                           (reverse _%bind176783%_)
                           (_%compile-post176640%_
                            _%post176784%_
                            _%body176785%_))
                     _%stx176635%_)))
                 (_%compile-post176640%_
                  (lambda (_%post176642%_ _%body176643%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp178475
                                  (lambda (_%hd176645%_ _%r176646%_)
                                    (let* ((_%$%hd176647176670%_ _%hd176645%_)
                                           (_%$%E176651176674%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _%$%hd176647176670%_
                                                       '([#f expr])
                                                       '([id expr])
                                                       '([tmp
                                                          expr
                                                          len
                                                          .
                                                          init])))
                                              '#!void)))
                                      (let ((_%$%K176664176768%_
                                             (lambda (_%expr176766%_)
                                               (cons _%expr176766%_
                                                     _%r176646%_)))
                                            (_%$%K176659176746%_
                                             (lambda (_%expr176743%_
                                                      _%id176744%_)
                                               (cons (__SRC__%
                                                      (list 'set!
                                                            _%id176744%_
                                                            _%expr176743%_)
                                                      _%stx176635%_)
                                                     _%r176646%_)))
                                            (_%$%K176652176713%_
                                             (lambda (_%init176678%_
                                                      _%len176679%_
                                                      _%expr176680%_
                                                      _%tmp176681%_)
                                               (cons (__SRC__%
                                                      (cons 'let
                                                            (cons (list (list _%tmp176681%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%expr176680%_))
                          (cons (__SRC__%
                                 (list '__check-values
                                       _%tmp176681%_
                                       _%len176679%_)
                                 _%stx176635%_)
                                (map (lambda (_%hd176683%_)
                                       (let* ((_%$%hd176684176691%_
                                               _%hd176683%_)
                                              (_%$%E176686176695%_
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (error '"No clause matching"
                                                          _%$%hd176684176691%_
                                                          '([id . k])))
                                                 '#!void))
                                              (_%$%K176687176701%_
                                               (lambda (_%k176698%_
                                                        _%id176699%_)
                                                 (__SRC__%
                                                  (list 'set!
                                                        _%id176699%_
                                                        (list '##values-ref
                                                              _%tmp176681%_
                                                              _%k176698%_))
                                                  _%stx176635%_))))
                                         (if (pair? _%$%hd176684176691%_)
                                             (let ((_%$%hd176688176704%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%hd176684176691%_)))
                                                   (_%$%tl176689176706%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%hd176684176691%_))))
                                               (let* ((_%id176709%_
                                                       _%$%hd176688176704%_)
                                                      (_%k176711%_
                                                       _%$%tl176689176706%_))
                                                 (_%$%K176687176701%_
                                                  _%k176711%_
                                                  _%id176709%_)))
                                             (_%$%E176686176695%_))))
                                     _%init176678%_))))
              _%stx176635%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r176646%_))))
                                        (let* ((_%__match178335178336%_
                                                (lambda (_%$%hd176653176716%_
                                                         _%$%tl176654176718%_
                                                         _%$%hd176655176723%_
                                                         _%$%tl176656176725%_)
                                                  (let ((_%tmp176721%_
                                                         _%$%hd176653176716%_)
                                                        (_%expr176728%_
                                                         _%$%hd176655176723%_))
                                                    (_%$%E176651176674%_))))
                                               (_%__match178329178330%_
                                                (lambda (_%$%hd176653176716%_
                                                         _%$%tl176654176718%_)
                                                  (let ((_%tmp176721%_
                                                         _%$%hd176653176716%_))
                                                    (_%$%E176651176674%_)))))
                                          (if (pair? _%$%hd176647176670%_)
                                              (let ((_%$%tl176666176773%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd176647176670%_)))
                                                    (_%$%hd176665176771%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd176647176670%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd176665176771%_
                                                             '#f))
                                                    (if (pair? _%$%tl176666176773%_)
                                                        (let ((_%$%tl176668176778%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl176666176773%_)))
                      (_%$%hd176667176776%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%tl176666176773%_))))
                  (if (null? _%$%tl176668176778%_)
                      (let ((_%expr176781%_ _%$%hd176667176776%_))
                        (_%$%K176664176768%_ _%expr176781%_))
                      (if (pair? _%$%tl176668176778%_)
                          (let ((_%$%tl176658176732%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl176668176778%_)))
                                (_%$%hd176657176730%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl176668176778%_))))
                            (let ((_%tmp176721%_ _%$%hd176665176771%_)
                                  (_%expr176728%_ _%$%hd176667176776%_)
                                  (_%len176735%_ _%$%hd176657176730%_)
                                  (_%init176737%_ _%$%tl176658176732%_))
                              (_%$%K176652176713%_
                               _%init176737%_
                               _%len176735%_
                               _%expr176728%_
                               _%tmp176721%_)))
                          (_%__match178335178336%_
                           _%$%hd176665176771%_
                           _%$%tl176666176773%_
                           _%$%hd176667176776%_
                           _%$%tl176668176778%_))))
                (_%__match178329178330%_
                 _%$%hd176665176771%_
                 _%$%tl176666176773%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (pair? _%$%tl176666176773%_)
                                                        (let ((_%$%tl176663176758%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl176666176773%_)))
                      (_%$%hd176662176756%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%tl176666176773%_))))
                  (if (null? _%$%tl176663176758%_)
                      (let ((_%id176754%_ _%$%hd176665176771%_)
                            (_%expr176761%_ _%$%hd176662176756%_))
                        (_%$%K176659176746%_ _%expr176761%_ _%id176754%_))
                      (if (pair? _%$%tl176663176758%_)
                          (let ((_%$%tl176658176732%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl176663176758%_)))
                                (_%$%hd176657176730%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl176663176758%_))))
                            (let ((_%tmp176721%_ _%$%hd176665176771%_)
                                  (_%expr176728%_ _%$%hd176662176756%_)
                                  (_%len176735%_ _%$%hd176657176730%_)
                                  (_%init176737%_ _%$%tl176658176732%_))
                              (_%$%K176652176713%_
                               _%init176737%_
                               _%len176735%_
                               _%expr176728%_
                               _%tmp176721%_)))
                          (_%__match178335178336%_
                           _%$%hd176665176771%_
                           _%$%tl176666176773%_
                           _%$%hd176662176756%_
                           _%$%tl176663176758%_))))
                (_%__match178329178330%_
                 _%$%hd176665176771%_
                 _%$%tl176666176773%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E176651176674%_)))))))
                                 (__tmp178474 (list _%body176643%_)))
                             (declare (not safe))
                             (foldl__0
                              __tmp178475
                              __tmp178474
                              _%post176642%_)))
                     _%stx176635%_))))
          (__compile-let-form
           _%stx176635%_
           _%compile-simple176637%_
           _%compile-values176638%_))))
    (define __compile-call%
      (lambda (_%stx176595%_)
        (let* ((_%$e176597%_ _%stx176595%_)
               (_%$%$E176599176608%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176597%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176597%_))
              (let* ((_%$%$tgt176600176611%_
                      (let () (declare (not safe)) (__AST-e _%$e176597%_)))
                     (_%$%$hd176601176614%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176600176611%_)))
                     (_%$%$tl176602176617%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176600176611%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176602176617%_))
                    (let* ((_%$%$tgt176603176621%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176602176617%_)))
                           (_%$%$hd176604176624%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176603176621%_)))
                           (_%$%$tl176605176627%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176603176621%_)))
                           (_%rator176631%_ _%$%$hd176604176624%_)
                           (_%rands176633%_ _%$%$tl176605176627%_))
                      (__SRC__%
                       (cons (__compile _%rator176631%_)
                             (map __compile _%rands176633%_))
                       _%stx176595%_))
                    (_%$%$E176599176608%_)))
              (_%$%$E176599176608%_)))))
    (define __compile-ref%
      (lambda (_%stx176557%_)
        (let* ((_%$e176559%_ _%stx176557%_)
               (_%$%$E176561176570%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176559%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176559%_))
              (let* ((_%$%$tgt176562176573%_
                      (let () (declare (not safe)) (__AST-e _%$e176559%_)))
                     (_%$%$hd176563176576%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176562176573%_)))
                     (_%$%$tl176564176579%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176562176573%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176564176579%_))
                    (let* ((_%$%$tgt176565176583%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176564176579%_)))
                           (_%$%$hd176566176586%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176565176583%_)))
                           (_%$%$tl176567176589%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176565176583%_)))
                           (_%id176593%_ _%$%$hd176566176586%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl176567176589%_))
                                  '())
                          (__SRC__% _%id176593%_ _%stx176557%_)
                          (_%$%$E176561176570%_)))
                    (_%$%$E176561176570%_)))
              (_%$%$E176561176570%_)))))
    (define __compile-setq%
      (lambda (_%stx176504%_)
        (let* ((_%$e176506%_ _%stx176504%_)
               (_%$%$E176508176520%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176506%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176506%_))
              (let* ((_%$%$tgt176509176523%_
                      (let () (declare (not safe)) (__AST-e _%$e176506%_)))
                     (_%$%$hd176510176526%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176509176523%_)))
                     (_%$%$tl176511176529%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176509176523%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176511176529%_))
                    (let* ((_%$%$tgt176512176533%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176511176529%_)))
                           (_%$%$hd176513176536%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176512176533%_)))
                           (_%$%$tl176514176539%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176512176533%_)))
                           (_%id176543%_ _%$%$hd176513176536%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl176514176539%_))
                          (let* ((_%$%$tgt176515176545%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl176514176539%_)))
                                 (_%$%$hd176516176548%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt176515176545%_)))
                                 (_%$%$tl176517176551%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt176515176545%_)))
                                 (_%expr176555%_ _%$%$hd176516176548%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl176517176551%_))
                                        '())
                                (__SRC__%
                                 (list 'set!
                                       (__SRC__% _%id176543%_ _%stx176504%_)
                                       (__compile _%expr176555%_))
                                 _%stx176504%_)
                                (_%$%$E176508176520%_)))
                          (_%$%$E176508176520%_)))
                    (_%$%$E176508176520%_)))
              (_%$%$E176508176520%_)))))
    (define __compile-if%
      (lambda (_%stx176436%_)
        (let* ((_%$e176438%_ _%stx176436%_)
               (_%$%$E176440176455%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176438%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176438%_))
              (let* ((_%$%$tgt176441176458%_
                      (let () (declare (not safe)) (__AST-e _%$e176438%_)))
                     (_%$%$hd176442176461%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176441176458%_)))
                     (_%$%$tl176443176464%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176441176458%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176443176464%_))
                    (let* ((_%$%$tgt176444176468%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176443176464%_)))
                           (_%$%$hd176445176471%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176444176468%_)))
                           (_%$%$tl176446176474%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176444176468%_)))
                           (_%p176478%_ _%$%$hd176445176471%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl176446176474%_))
                          (let* ((_%$%$tgt176447176480%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl176446176474%_)))
                                 (_%$%$hd176448176483%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt176447176480%_)))
                                 (_%$%$tl176449176486%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt176447176480%_)))
                                 (_%t176490%_ _%$%$hd176448176483%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl176449176486%_))
                                (let* ((_%$%$tgt176450176492%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl176449176486%_)))
                                       (_%$%$hd176451176495%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt176450176492%_)))
                                       (_%$%$tl176452176498%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt176450176492%_)))
                                       (_%f176502%_ _%$%$hd176451176495%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl176452176498%_))
                                              '())
                                      (__SRC__%
                                       (list 'if
                                             (__compile _%p176478%_)
                                             (__compile _%t176490%_)
                                             (__compile _%f176502%_))
                                       _%stx176436%_)
                                      (_%$%$E176440176455%_)))
                                (_%$%$E176440176455%_)))
                          (_%$%$E176440176455%_)))
                    (_%$%$E176440176455%_)))
              (_%$%$E176440176455%_)))))
    (define __compile-quote%
      (lambda (_%stx176398%_)
        (let* ((_%$e176400%_ _%stx176398%_)
               (_%$%$E176402176411%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176400%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176400%_))
              (let* ((_%$%$tgt176403176414%_
                      (let () (declare (not safe)) (__AST-e _%$e176400%_)))
                     (_%$%$hd176404176417%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176403176414%_)))
                     (_%$%$tl176405176420%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176403176414%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176405176420%_))
                    (let* ((_%$%$tgt176406176424%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176405176420%_)))
                           (_%$%$hd176407176427%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176406176424%_)))
                           (_%$%$tl176408176430%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176406176424%_)))
                           (_%e176434%_ _%$%$hd176407176427%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl176408176430%_))
                                  '())
                          (__SRC__%
                           (list 'quote
                                 (let ()
                                   (declare (not safe))
                                   (__AST->datum _%e176434%_)))
                           _%stx176398%_)
                          (_%$%$E176402176411%_)))
                    (_%$%$E176402176411%_)))
              (_%$%$E176402176411%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx176360%_)
        (let* ((_%$e176362%_ _%stx176360%_)
               (_%$%$E176364176373%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176362%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176362%_))
              (let* ((_%$%$tgt176365176376%_
                      (let () (declare (not safe)) (__AST-e _%$e176362%_)))
                     (_%$%$hd176366176379%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176365176376%_)))
                     (_%$%$tl176367176382%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176365176376%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176367176382%_))
                    (let* ((_%$%$tgt176368176386%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176367176382%_)))
                           (_%$%$hd176369176389%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176368176386%_)))
                           (_%$%$tl176370176392%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176368176386%_)))
                           (_%e176396%_ _%$%$hd176369176389%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl176370176392%_))
                                  '())
                          (__SRC__% (list 'quote _%e176396%_) _%stx176360%_)
                          (_%$%$E176364176373%_)))
                    (_%$%$E176364176373%_)))
              (_%$%$E176364176373%_)))))
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
