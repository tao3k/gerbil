(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/eval::timestamp 1789188907)
  (begin
    (define __syntax::t
      (let ((__tmp178642 (list)) (__tmp178641 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__syntax::t
         '__syntax
         __tmp178642
         '(e id)
         __tmp178641
         '#f)))
    (define __syntax?
      (let () (declare (not safe)) (__make-class-predicate __syntax::t)))
    (define make-__syntax
      (lambda _%$args178446%_
        (apply make-instance __syntax::t _%$args178446%_)))
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
      (let ((__tmp178644 (list __syntax::t))
            (__tmp178643 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-form::t
         '__core-form
         __tmp178644
         '()
         __tmp178643
         '#f)))
    (define __core-form?
      (let () (declare (not safe)) (__make-class-predicate __core-form::t)))
    (define make-__core-form
      (lambda _%$args178443%_
        (apply make-instance __core-form::t _%$args178443%_)))
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
      (let ((__tmp178646 (list __core-form::t))
            (__tmp178645 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-expression::t
         '__core-expression
         __tmp178646
         '()
         __tmp178645
         '#f)))
    (define __core-expression?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-expression::t)))
    (define make-__core-expression
      (lambda _%$args178440%_
        (apply make-instance __core-expression::t _%$args178440%_)))
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
      (let ((__tmp178648 (list __core-form::t))
            (__tmp178647 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         '__core-special-form::t
         '__core-special-form
         __tmp178648
         '()
         __tmp178647
         '#f)))
    (define __core-special-form?
      (let ()
        (declare (not safe))
        (__make-class-predicate __core-special-form::t)))
    (define make-__core-special-form
      (lambda _%$args178437%_
        (apply make-instance __core-special-form::t _%$args178437%_)))
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
      (lambda (_%id178414%_)
        (let* ((_%h178416%_ __core)
               (_%key178419%_
                (let () (declare (not safe)) (__AST-e _%id178414%_)))
               (_%h178423%_ _%h178416%_)
               (_%h178425%_ _%h178423%_))
          (declare (not safe))
          (__hash-get _%h178425%_ _%key178419%_))))
    (define __core-bound-id?__%
      (lambda (_%id178397%_ _%is?178398%_)
        (let ((_%$e178400%_ (__core-resolve _%id178397%_)))
          (if _%$e178400%_ (_%is?178398%_ _%$e178400%_) '#f))))
    (define __core-bound-id?__0
      (lambda (_%id178407%_)
        (let ((_%is?178409%_ true))
          (__core-bound-id?__% _%id178407%_ _%is?178409%_))))
    (define __core-bound-id?
      (lambda _g178649_
        (let ((_g178650_ (let () (declare (not safe)) (##length _g178649_))))
          (cond ((let () (declare (not safe)) (##fx= _g178650_ 1))
                 (apply __core-bound-id?__0 _g178649_))
                ((let () (declare (not safe)) (##fx= _g178650_ 2))
                 (apply __core-bound-id?__% _g178649_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bound-id?
                  _g178649_))))))
    (define __core-bind-syntax!__%
      (lambda (_%id178355%_ _%e178356%_ _%make178357%_)
        (let* ((_%h178359%_ __core)
               (_%key178362%_ _%id178355%_)
               (_%value178365%_
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%e178356%_ '__syntax::t))
                    _%e178356%_
                    (_%make178357%_ _%e178356%_ _%id178355%_)))
               (_%h178369%_ _%h178359%_)
               (_%h178371%_ _%h178369%_))
          (declare (not safe))
          (__hash-put! _%h178371%_ _%key178362%_ _%value178365%_))))
    (define __core-bind-syntax!__0
      (lambda (_%id178387%_ _%e178388%_)
        (let ((_%make178390%_ make-__syntax))
          (__core-bind-syntax!__% _%id178387%_ _%e178388%_ _%make178390%_))))
    (define __core-bind-syntax!
      (lambda _g178651_
        (let ((_g178652_ (let () (declare (not safe)) (##length _g178651_))))
          (cond ((let () (declare (not safe)) (##fx= _g178652_ 2))
                 (apply __core-bind-syntax!__0 _g178651_))
                ((let () (declare (not safe)) (##fx= _g178652_ 3))
                 (apply __core-bind-syntax!__% _g178651_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __core-bind-syntax!
                  _g178651_))))))
    (define __SRC__%
      (lambda (_%e178335%_ _%src-stx178336%_)
        (if (or (pair? _%e178335%_) (symbol? _%e178335%_))
            (let ((__tmp178653
                   (if (let ()
                         (declare (not safe))
                         (##structure-instance-of?
                          _%src-stx178336%_
                          'gerbil#AST::t))
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%src-stx178336%_)))
                       '#f)))
              (declare (not safe))
              (##make-source _%e178335%_ __tmp178653))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%e178335%_ 'gerbil#AST::t))
                (let ((__tmp178655
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref _%e178335%_ '1 '#f '#f)))
                      (__tmp178654
                       (__locat (let ()
                                  (declare (not safe))
                                  (__AST-source _%e178335%_)))))
                  (declare (not safe))
                  (##make-source __tmp178655 __tmp178654))
                (let ()
                  (declare (not safe))
                  (error '"BUG! Cannot sourcify object" _%e178335%_))))))
    (define __SRC__0
      (lambda (_%e178347%_)
        (let ((_%src-stx178349%_ '#f))
          (__SRC__% _%e178347%_ _%src-stx178349%_))))
    (define __SRC
      (lambda _g178656_
        (let ((_g178657_ (let () (declare (not safe)) (##length _g178656_))))
          (cond ((let () (declare (not safe)) (##fx= _g178657_ 1))
                 (apply __SRC__0 _g178656_))
                ((let () (declare (not safe)) (##fx= _g178657_ 2))
                 (apply __SRC__% _g178656_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __SRC
                  _g178656_))))))
    (define __locat
      (lambda (_%loc178332%_)
        (if (let () (declare (not safe)) (##locat? _%loc178332%_))
            _%loc178332%_
            '#f)))
    (define __check-values
      (lambda (_%obj178327%_ _%k178328%_)
        (let ((_%count178330%_
               (if (let () (declare (not safe)) (##values? _%obj178327%_))
                   (let ()
                     (declare (not safe))
                     (##values-length _%obj178327%_))
                   '1)))
          (if (fx= _%count178330%_ _%k178328%_)
              '#!void
              (let ((__tmp178659
                     (if (fx< _%count178330%_ _%k178328%_)
                         '"Too few values for context"
                         '"Too many values for context"))
                    (__tmp178658
                     (if (let ()
                           (declare (not safe))
                           (##values? _%obj178327%_))
                         (let ()
                           (declare (not safe))
                           (##values->list _%obj178327%_))
                         _%obj178327%_)))
                (declare (not safe))
                (error __tmp178659 __tmp178658 _%k178328%_))))))
    (define __compile
      (lambda (_%stx178296%_)
        (let* ((_%$e178298%_ _%stx178296%_)
               (_%$%$E178300178306%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178298%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178298%_))
              (let* ((_%$%$tgt178301178309%_
                      (let () (declare (not safe)) (__AST-e _%$e178298%_)))
                     (_%$%$hd178302178312%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178301178309%_)))
                     (_%$%$tl178303178315%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178301178309%_)))
                     (_%form178319%_ _%$%$hd178302178312%_)
                     (_%$e178321%_ (__core-resolve _%form178319%_)))
                (if _%$e178321%_
                    ((##structure-ref _%$e178321%_ '1 __syntax::t '#f)
                     _%stx178296%_)
                    (let ()
                      (declare (not safe))
                      (__raise-syntax-error
                       '#f
                       '"Bad syntax; cannot resolve form"
                       _%stx178296%_
                       _%form178319%_))))
              (_%$%$E178300178306%_)))))
    (define __compile-error__%
      (lambda (_%stx178283%_ _%detail178284%_)
        (let ()
          (declare (not safe))
          (__raise-syntax-error
           'compile
           '"Bad syntax; cannot compile"
           _%stx178283%_
           _%detail178284%_))))
    (define __compile-error__0
      (lambda (_%stx178289%_)
        (let ((_%detail178291%_ '#f))
          (__compile-error__% _%stx178289%_ _%detail178291%_))))
    (define __compile-error
      (lambda _g178660_
        (let ((_g178661_ (let () (declare (not safe)) (##length _g178660_))))
          (cond ((let () (declare (not safe)) (##fx= _g178661_ 1))
                 (apply __compile-error__0 _g178660_))
                ((let () (declare (not safe)) (##fx= _g178661_ 2))
                 (apply __compile-error__% _g178660_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __compile-error
                  _g178660_))))))
    (define __compile-ignore%
      (lambda (_%stx178280%_) (__SRC__% ''#!void _%stx178280%_)))
    (define __compile-begin%
      (lambda (_%stx178255%_)
        (let* ((_%$e178257%_ _%stx178255%_)
               (_%$%$E178259178265%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178257%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178257%_))
              (let* ((_%$%$tgt178260178268%_
                      (let () (declare (not safe)) (__AST-e _%$e178257%_)))
                     (_%$%$hd178261178271%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178260178268%_)))
                     (_%$%$tl178262178274%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178260178268%_)))
                     (_%body178278%_ _%$%$tl178262178274%_))
                (__SRC__%
                 (cons 'begin (map __compile _%body178278%_))
                 _%stx178255%_))
              (_%$%$E178259178265%_)))))
    (define __compile-begin-foreign%
      (lambda (_%stx178230%_)
        (let* ((_%$e178232%_ _%stx178230%_)
               (_%$%$E178234178240%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178232%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178232%_))
              (let* ((_%$%$tgt178235178243%_
                      (let () (declare (not safe)) (__AST-e _%$e178232%_)))
                     (_%$%$hd178236178246%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178235178243%_)))
                     (_%$%$tl178237178249%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178235178243%_)))
                     (_%body178253%_ _%$%$tl178237178249%_))
                (__SRC__%
                 (cons 'begin
                       (let ()
                         (declare (not safe))
                         (__AST->datum _%body178253%_)))
                 _%stx178230%_))
              (_%$%$E178234178240%_)))))
    (define __compile-import%
      (lambda (_%stx178205%_)
        (let* ((_%$e178207%_ _%stx178205%_)
               (_%$%$E178209178215%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178207%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178207%_))
              (let* ((_%$%$tgt178210178218%_
                      (let () (declare (not safe)) (__AST-e _%$e178207%_)))
                     (_%$%$hd178211178221%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178210178218%_)))
                     (_%$%$tl178212178224%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178210178218%_)))
                     (_%body178228%_ _%$%$tl178212178224%_))
                (__SRC__%
                 (list '__eval-import (list 'quote _%body178228%_))
                 _%stx178205%_))
              (_%$%$E178209178215%_)))))
    (define __compile-begin-annotation%
      (lambda (_%stx178152%_)
        (let* ((_%$e178154%_ _%stx178152%_)
               (_%$%$E178156178168%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178154%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178154%_))
              (let* ((_%$%$tgt178157178171%_
                      (let () (declare (not safe)) (__AST-e _%$e178154%_)))
                     (_%$%$hd178158178174%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178157178171%_)))
                     (_%$%$tl178159178177%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178157178171%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl178159178177%_))
                    (let* ((_%$%$tgt178160178181%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl178159178177%_)))
                           (_%$%$hd178161178184%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt178160178181%_)))
                           (_%$%$tl178162178187%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt178160178181%_)))
                           (_%ann178191%_ _%$%$hd178161178184%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl178162178187%_))
                          (let* ((_%$%$tgt178163178193%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl178162178187%_)))
                                 (_%$%$hd178164178196%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt178163178193%_)))
                                 (_%$%$tl178165178199%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt178163178193%_)))
                                 (_%expr178203%_ _%$%$hd178164178196%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl178165178199%_))
                                        '())
                                (__compile _%expr178203%_)
                                (_%$%$E178156178168%_)))
                          (_%$%$E178156178168%_)))
                    (_%$%$E178156178168%_)))
              (_%$%$E178156178168%_)))))
    (define __compile-define-values%
      (lambda (_%stx178043%_)
        (let* ((_%$e178045%_ _%stx178043%_)
               (_%$%$E178047178059%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e178045%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e178045%_))
              (let* ((_%$%$tgt178048178062%_
                      (let () (declare (not safe)) (__AST-e _%$e178045%_)))
                     (_%$%$hd178049178065%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt178048178062%_)))
                     (_%$%$tl178050178068%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt178048178062%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl178050178068%_))
                    (let* ((_%$%$tgt178051178072%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl178050178068%_)))
                           (_%$%$hd178052178075%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt178051178072%_)))
                           (_%$%$tl178053178078%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt178051178072%_)))
                           (_%hd178082%_ _%$%$hd178052178075%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl178053178078%_))
                          (let* ((_%$%$tgt178054178084%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl178053178078%_)))
                                 (_%$%$hd178055178087%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt178054178084%_)))
                                 (_%$%$tl178056178090%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt178054178084%_)))
                                 (_%expr178094%_ _%$%$hd178055178087%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl178056178090%_))
                                        '())
                                (let* ((_%$e178096%_ _%hd178082%_)
                                       (_%$%$E178098178139%_
                                        (lambda ()
                                          (let ((_%$%$E178099178124%_
                                                 (lambda ()
                                                   (let* ((_%$%$E178100178111%_
                                                           (lambda ()
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__raise-syntax-error
                        '#f
                        '"Bad syntax; malformed ast clause"
                        _%$e178096%_))))
                  (_%ids178114%_ _%hd178082%_)
                  (_%len178116%_ (length _%ids178114%_))
                  (_%tmp178118%_
                   (__SRC__0 (let () (declare (not safe)) (##gensym)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (__SRC__%
                                                      (cons 'begin
                                                            (cons (__SRC__%
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (list 'define
                                 _%tmp178118%_
                                 (__compile _%expr178094%_))
                           _%stx178043%_)
                          (cons (__SRC__%
                                 (list '__check-values
                                       _%tmp178118%_
                                       _%len178116%_)
                                 _%stx178043%_)
                                (let ((__tmp178663
                                       (lambda (_%id178121%_ _%k178122%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id178121%_))
                                             (__SRC__%
                                              (list 'define
                                                    (__SRC__0 _%id178121%_)
                                                    (list '##values-ref
                                                          _%tmp178118%_
                                                          _%k178122%_))
                                              _%stx178043%_)
                                             '#f)))
                                      (__tmp178662
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len178116%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp178663
                                   _%ids178114%_
                                   __tmp178662)))))
              _%stx178043%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (let ()
                                                  (declare (not safe))
                                                  (__AST-pair? _%$e178096%_))
                                                (let* ((_%$%$tgt178101178127%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$e178096%_)))
                                                       (_%$%$hd178102178130%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%$tgt178101178127%_)))
                                                       (_%$%$tl178103178133%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%$tgt178101178127%_)))
                                                       (_%id178137%_
                                                        _%$%$hd178102178130%_))
                                                  (if (equal? (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (__AST-e _%$%$tl178103178133%_))
                      '())
              (__SRC__%
               (list 'define
                     (__SRC__0 _%id178137%_)
                     (__compile _%expr178094%_))
               _%stx178043%_)
              (_%$%$E178099178124%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%$E178099178124%_))))))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$e178096%_))
                                      (let* ((_%$%$tgt178104178142%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$e178096%_)))
                                             (_%$%$hd178105178145%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt178104178142%_)))
                                             (_%$%$tl178106178148%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt178104178142%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$hd178105178145%_))
                                                    '#f)
                                            (if (equal? (let ()
                                                          (declare (not safe))
                                                          (__AST-e _%$%$tl178106178148%_))
                                                        '())
                                                (__compile _%expr178094%_)
                                                (_%$%$E178098178139%_))
                                            (_%$%$E178098178139%_)))
                                      (_%$%$E178098178139%_)))
                                (_%$%$E178047178059%_)))
                          (_%$%$E178047178059%_)))
                    (_%$%$E178047178059%_)))
              (_%$%$E178047178059%_)))))
    (define __compile-head-id
      (lambda (_%e178041%_)
        (__SRC__0
         (if (let () (declare (not safe)) (__AST-e _%e178041%_))
             _%e178041%_
             (let () (declare (not safe)) (##gensym))))))
    (define __compile-lambda-head
      (lambda (_%hd177998%_)
        (let _%recur178000%_ ((_%rest178002%_ _%hd177998%_))
          (let* ((_%$e178004%_ _%rest178002%_)
                 (_%$%$E178006178024%_
                  (lambda ()
                    (let ((_%$%$E178007178021%_
                           (lambda ()
                             (let* ((_%$%$E178008178016%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e178004%_))))
                                    (_%tail178019%_ _%$e178004%_))
                               (__compile-head-id _%tail178019%_)))))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e178004%_))
                                  '())
                          '()
                          (_%$%$E178007178021%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e178004%_))
                (let* ((_%$%$tgt178009178027%_
                        (let () (declare (not safe)) (__AST-e _%$e178004%_)))
                       (_%$%$hd178010178030%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt178009178027%_)))
                       (_%$%$tl178011178033%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt178009178027%_)))
                       (_%hd178037%_ _%$%$hd178010178030%_)
                       (_%rest178039%_ _%$%$tl178011178033%_))
                  (cons (__compile-head-id _%hd178037%_)
                        (_%recur178000%_ _%rest178039%_)))
                (_%$%$E178006178024%_))))))
    (define __compile-lambda%
      (lambda (_%stx177945%_)
        (let* ((_%$e177947%_ _%stx177945%_)
               (_%$%$E177949177961%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e177947%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e177947%_))
              (let* ((_%$%$tgt177950177964%_
                      (let () (declare (not safe)) (__AST-e _%$e177947%_)))
                     (_%$%$hd177951177967%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt177950177964%_)))
                     (_%$%$tl177952177970%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt177950177964%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl177952177970%_))
                    (let* ((_%$%$tgt177953177974%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl177952177970%_)))
                           (_%$%$hd177954177977%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt177953177974%_)))
                           (_%$%$tl177955177980%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt177953177974%_)))
                           (_%hd177984%_ _%$%$hd177954177977%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl177955177980%_))
                          (let* ((_%$%$tgt177956177986%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl177955177980%_)))
                                 (_%$%$hd177957177989%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177956177986%_)))
                                 (_%$%$tl177958177992%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177956177986%_)))
                                 (_%body177996%_ _%$%$hd177957177989%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177958177992%_))
                                        '())
                                (__SRC__%
                                 (list 'lambda
                                       (__compile-lambda-head _%hd177984%_)
                                       (__compile _%body177996%_))
                                 _%stx177945%_)
                                (_%$%$E177949177961%_)))
                          (_%$%$E177949177961%_)))
                    (_%$%$E177949177961%_)))
              (_%$%$E177949177961%_)))))
    (define __compile-case-lambda%
      (lambda (_%stx177710%_)
        (letrec ((_%variadic?177712%_
                  (lambda (_%hd177910%_)
                    (let* ((_%$e177912%_ _%hd177910%_)
                           (_%$%$E177914177930%_
                            (lambda ()
                              (let ((_%$%$E177915177927%_
                                     (lambda ()
                                       (let ((_%$%$E177916177924%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (__raise-syntax-error
                                                   '#f
                                                   '"Bad syntax; malformed ast clause"
                                                   _%$e177912%_)))))
                                         '#t))))
                                (if (equal? (let ()
                                              (declare (not safe))
                                              (__AST-e _%$e177912%_))
                                            '())
                                    '#f
                                    (_%$%$E177915177927%_))))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e177912%_))
                          (let* ((_%$%$tgt177917177933%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177912%_)))
                                 (_%$%$hd177918177936%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177917177933%_)))
                                 (_%$%$tl177919177939%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177917177933%_)))
                                 (_%rest177943%_ _%$%$tl177919177939%_))
                            (_%variadic?177712%_ _%rest177943%_))
                          (_%$%$E177914177930%_)))))
                 (_%arity177713%_
                  (lambda (_%hd177848%_)
                    (let _%lp177850%_ ((_%rest177852%_ _%hd177848%_)
                                       (_%k177853%_ '0))
                      (let* ((_%$e177855%_ _%rest177852%_)
                             (_%$%$E177857177868%_
                              (lambda ()
                                (let ((_%$%$E177858177865%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__raise-syntax-error
                                            '#f
                                            '"Bad syntax; malformed ast clause"
                                            _%$e177855%_)))))
                                  _%k177853%_))))
                        (if (let ()
                              (declare (not safe))
                              (__AST-pair? _%$e177855%_))
                            (let* ((_%$%$tgt177859177871%_
                                    (let ()
                                      (declare (not safe))
                                      (__AST-e _%$e177855%_)))
                                   (_%$%$hd177860177874%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%$tgt177859177871%_)))
                                   (_%$%$tl177861177877%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%$tgt177859177871%_)))
                                   (_%rest177881%_ _%$%$tl177861177877%_))
                              (_%lp177850%_
                               _%rest177881%_
                               (let ((_%x177883%_ _%k177853%_))
                                 (if (fixnum? _%x177883%_)
                                     (let ((_%x177888%_ _%x177883%_))
                                       (declare (not safe))
                                       (__fx1+ _%x177888%_))
                                     (begin
                                       (raise-contract-violation-error
                                        '"contract violation"
                                        'context:
                                        'gerbil/runtime/eval
                                        'contract:
                                        'fixnum?
                                        'value:
                                        _%x177883%_)
                                       '#!void)))))
                            (_%$%$E177857177868%_))))))
                 (_%generate177714%_
                  (lambda (_%rest177775%_ _%args177776%_ _%len177777%_)
                    (let* ((_%$e177779%_ _%rest177775%_)
                           (_%$%$E177781177792%_
                            (lambda ()
                              (let ((_%$%$E177782177789%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (__raise-syntax-error
                                          '#f
                                          '"Bad syntax; malformed ast clause"
                                          _%$e177779%_)))))
                                (__SRC__%
                                 (list 'error
                                       '"No clause matching arguments"
                                       _%args177776%_)
                                 _%stx177710%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e177779%_))
                          (let* ((_%$%$tgt177783177795%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177779%_)))
                                 (_%$%$hd177784177798%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177783177795%_)))
                                 (_%$%$tl177785177801%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177783177795%_)))
                                 (_%clause177805%_ _%$%$hd177784177798%_)
                                 (_%rest177807%_ _%$%$tl177785177801%_)
                                 (_%$e177809%_ _%clause177805%_)
                                 (_%$%$E177811177820%_
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (__raise-syntax-error
                                       '#f
                                       '"Bad syntax; malformed ast clause"
                                       _%$e177809%_)))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$e177809%_))
                                (let* ((_%$%$tgt177812177823%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$e177809%_)))
                                       (_%$%$hd177813177826%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt177812177823%_)))
                                       (_%$%$tl177814177829%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt177812177823%_)))
                                       (_%hd177833%_ _%$%$hd177813177826%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl177814177829%_))
                                      (let* ((_%$%$tgt177815177835%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl177814177829%_)))
                                             (_%$%$hd177816177838%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt177815177835%_)))
                                             (_%$%$tl177817177841%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt177815177835%_))))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl177817177841%_))
                                                    '())
                                            (let ((_%clen177845%_
                                                   (_%arity177713%_
                                                    _%hd177833%_))
                                                  (_%cmp177846%_
                                                   (if (_%variadic?177712%_
                                                        _%hd177833%_)
                                                       'fx>=
                                                       'fx=)))
                                              (__SRC__%
                                               (list 'if
                                                     (list _%cmp177846%_
                                                           _%len177777%_
                                                           _%clen177845%_)
                                                     (__SRC__%
                                                      (list '##apply
                                                            (__compile-lambda%
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%clause177805%_))
                    _%args177776%_)
              _%stx177710%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%generate177714%_
                                                      _%rest177807%_
                                                      _%args177776%_
                                                      _%len177777%_))
                                               _%stx177710%_))
                                            (_%$%$E177811177820%_)))
                                      (_%$%$E177811177820%_)))
                                (_%$%$E177811177820%_)))
                          (_%$%$E177781177792%_))))))
          (let* ((_%$e177716%_ _%stx177710%_)
                 (_%$%$E177718177750%_
                  (lambda ()
                    (let ((_%$%$E177719177732%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e177716%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e177716%_))
                          (let* ((_%$%$tgt177720177735%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177716%_)))
                                 (_%$%$hd177721177738%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177720177735%_)))
                                 (_%$%$tl177722177741%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177720177735%_)))
                                 (_%clauses177745%_ _%$%$tl177722177741%_))
                            (let ((_%args177747%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx177710%_))
                                  (_%len177748%_
                                   (__SRC__%
                                    (let () (declare (not safe)) (##gensym))
                                    _%stx177710%_)))
                              (__SRC__%
                               (list 'lambda
                                     _%args177747%_
                                     (__SRC__%
                                      (list 'let
                                            (list (list _%len177748%_
                                                        (__SRC__%
                                                         (list '##length
                                                               _%args177747%_)
                                                         _%stx177710%_)))
                                            (_%generate177714%_
                                             _%clauses177745%_
                                             _%args177747%_
                                             _%len177748%_))
                                      _%stx177710%_))
                               _%stx177710%_)))
                          (_%$%$E177719177732%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e177716%_))
                (let* ((_%$%$tgt177723177753%_
                        (let () (declare (not safe)) (__AST-e _%$e177716%_)))
                       (_%$%$hd177724177756%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt177723177753%_)))
                       (_%$%$tl177725177759%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt177723177753%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl177725177759%_))
                      (let* ((_%$%$tgt177726177763%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl177725177759%_)))
                             (_%$%$hd177727177766%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt177726177763%_)))
                             (_%$%$tl177728177769%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt177726177763%_)))
                             (_%clause177773%_ _%$%$hd177727177766%_))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$tl177728177769%_))
                                    '())
                            (__compile-lambda%
                             (cons '%#lambda _%clause177773%_))
                            (_%$%$E177718177750%_)))
                      (_%$%$E177718177750%_)))
                (_%$%$E177718177750%_))))))
    (define __compile-let-form
      (lambda (_%stx177479%_ _%compile-simple177480%_ _%compile-values177481%_)
        (letrec ((_%simple-bind?177483%_
                  (lambda (_%hd177668%_)
                    (let* ((_%$%hd177669177679%_ _%hd177668%_)
                           (_%$%else177672177687%_ (lambda () '#f)))
                      (let ((_%$%K177675177700%_ (lambda (_%id177698%_) '#t))
                            (_%$%K177674177692%_ (lambda () '#t)))
                        (let ((_%$%try-match177671177695%_
                               (lambda ()
                                 (if (let ()
                                       (declare (not safe))
                                       (##eq? _%$%hd177669177679%_ '#f))
                                     (_%$%K177674177692%_)
                                     (_%$%else177672177687%_)))))
                          (if (pair? _%$%hd177669177679%_)
                              (let ((_%$%tl177677177705%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%hd177669177679%_)))
                                    (_%$%hd177676177703%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%hd177669177679%_))))
                                (if (null? _%$%tl177677177705%_)
                                    (let ((_%id177708%_ _%$%hd177676177703%_))
                                      (_%$%K177675177700%_ _%id177708%_))
                                    (_%$%try-match177671177695%_)))
                              (_%$%try-match177671177695%_)))))))
                 (_%car-e177484%_
                  (lambda (_%hd177666%_)
                    (if (pair? _%hd177666%_)
                        (let () (declare (not safe)) (##car _%hd177666%_))
                        _%hd177666%_))))
          (let* ((_%$e177486%_ _%stx177479%_)
                 (_%$%$E177488177631%_
                  (lambda ()
                    (let ((_%$%$E177489177511%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e177486%_)))))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$e177486%_))
                          (let* ((_%$%$tgt177490177514%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$e177486%_)))
                                 (_%$%$hd177491177517%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt177490177514%_)))
                                 (_%$%$tl177492177520%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt177490177514%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl177492177520%_))
                                (let* ((_%$%$tgt177493177524%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177492177520%_)))
                                       (_%$%$hd177494177527%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt177493177524%_)))
                                       (_%$%$tl177495177530%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt177493177524%_)))
                                       (_%hd177534%_ _%$%$hd177494177527%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (__AST-pair? _%$%$tl177495177530%_))
                                      (let* ((_%$%$tgt177496177536%_
                                              (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl177495177530%_)))
                                             (_%$%$hd177497177539%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%$tgt177496177536%_)))
                                             (_%$%$tl177498177542%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%$tgt177496177536%_)))
                                             (_%body177546%_
                                              _%$%$hd177497177539%_))
                                        (if (equal? (let ()
                                                      (declare (not safe))
                                                      (__AST-e _%$%$tl177498177542%_))
                                                    '())
                                            (let* ((_%hd-ids177586%_
                                                    (map (lambda (_%bind177548%_)
                                                           (let* ((_%$e177550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind177548%_)
                          (_%$%$E177552177561%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e177550%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e177550%_))
                         (let* ((_%$%$tgt177553177564%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e177550%_)))
                                (_%$%$hd177554177567%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt177553177564%_)))
                                (_%$%$tl177555177570%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt177553177564%_)))
                                (_%ids177574%_ _%$%$hd177554177567%_))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl177555177570%_))
                               (let* ((_%$%$tgt177556177576%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl177555177570%_)))
                                      (_%$%$hd177557177579%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt177556177576%_)))
                                      (_%$%$tl177558177582%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt177556177576%_))))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl177558177582%_))
                                             '())
                                     _%ids177574%_
                                     (_%$%$E177552177561%_)))
                               (_%$%$E177552177561%_)))
                         (_%$%$E177552177561%_))))
                 _%hd177534%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%exprs177626%_
                                                    (map (lambda (_%bind177588%_)
                                                           (let* ((_%$e177590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%bind177588%_)
                          (_%$%$E177592177601%_
                           (lambda ()
                             (let ()
                               (declare (not safe))
                               (__raise-syntax-error
                                '#f
                                '"Bad syntax; malformed ast clause"
                                _%$e177590%_)))))
                     (if (let ()
                           (declare (not safe))
                           (__AST-pair? _%$e177590%_))
                         (let* ((_%$%$tgt177593177604%_
                                 (let ()
                                   (declare (not safe))
                                   (__AST-e _%$e177590%_)))
                                (_%$%$hd177594177607%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%$tgt177593177604%_)))
                                (_%$%$tl177595177610%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%$tgt177593177604%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (__AST-pair? _%$%$tl177595177610%_))
                               (let* ((_%$%$tgt177596177614%_
                                       (let ()
                                         (declare (not safe))
                                         (__AST-e _%$%$tl177595177610%_)))
                                      (_%$%$hd177597177617%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%$tgt177596177614%_)))
                                      (_%$%$tl177598177620%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%$tgt177596177614%_)))
                                      (_%expr177624%_ _%$%$hd177597177617%_))
                                 (if (equal? (let ()
                                               (declare (not safe))
                                               (__AST-e _%$%$tl177598177620%_))
                                             '())
                                     (__compile _%expr177624%_)
                                     (_%$%$E177592177601%_)))
                               (_%$%$E177592177601%_)))
                         (_%$%$E177592177601%_))))
                 _%hd177534%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%body177628%_
                                                    (__compile
                                                     _%body177546%_)))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (andmap__0
                                                     _%simple-bind?177483%_
                                                     _%hd-ids177586%_))
                                                  (_%compile-simple177480%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##map _%car-e177484%_
                                                            _%hd-ids177586%_))
                                                   _%exprs177626%_
                                                   _%body177628%_)
                                                  (_%compile-values177481%_
                                                   _%hd-ids177586%_
                                                   _%exprs177626%_
                                                   _%body177628%_)))
                                            (_%$%$E177489177511%_)))
                                      (_%$%$E177489177511%_)))
                                (_%$%$E177489177511%_)))
                          (_%$%$E177489177511%_))))))
            (if (let () (declare (not safe)) (__AST-pair? _%$e177486%_))
                (let* ((_%$%$tgt177499177634%_
                        (let () (declare (not safe)) (__AST-e _%$e177486%_)))
                       (_%$%$hd177500177637%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%$tgt177499177634%_)))
                       (_%$%$tl177501177640%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%$tgt177499177634%_))))
                  (if (let ()
                        (declare (not safe))
                        (__AST-pair? _%$%$tl177501177640%_))
                      (let* ((_%$%$tgt177502177644%_
                              (let ()
                                (declare (not safe))
                                (__AST-e _%$%$tl177501177640%_)))
                             (_%$%$hd177503177647%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%$tgt177502177644%_)))
                             (_%$%$tl177504177650%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%$tgt177502177644%_))))
                        (if (equal? (let ()
                                      (declare (not safe))
                                      (__AST-e _%$%$hd177503177647%_))
                                    '())
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl177504177650%_))
                                (let* ((_%$%$tgt177505177654%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl177504177650%_)))
                                       (_%$%$hd177506177657%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt177505177654%_)))
                                       (_%$%$tl177507177660%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt177505177654%_)))
                                       (_%body177664%_ _%$%$hd177506177657%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl177507177660%_))
                                              '())
                                      (__compile _%body177664%_)
                                      (_%$%$E177488177631%_)))
                                (_%$%$E177488177631%_))
                            (_%$%$E177488177631%_)))
                      (_%$%$E177488177631%_)))
                (_%$%$E177488177631%_))))))
    (define __compile-let-values%
      (lambda (_%stx177291%_)
        (letrec ((_%compile-simple177293%_
                  (lambda (_%hd-ids177475%_ _%exprs177476%_ _%body177477%_)
                    (__SRC__%
                     (list 'let
                           (let ((__tmp178664
                                  (map __compile-head-id _%hd-ids177475%_)))
                             (declare (not safe))
                             (##map list __tmp178664 _%exprs177476%_))
                           _%body177477%_)
                     _%stx177291%_)))
                 (_%compile-values177294%_
                  (lambda (_%hd-ids177390%_ _%exprs177391%_ _%body177392%_)
                    (let _%lp177394%_ ((_%rest177396%_ _%hd-ids177390%_)
                                       (_%exprs177397%_ _%exprs177391%_)
                                       (_%bind177398%_ '())
                                       (_%post177399%_ '()))
                      (let* ((_%$%rest177400177414%_ _%rest177396%_)
                             (_%$%else177403177422%_
                              (lambda ()
                                (__SRC__%
                                 (list 'let
                                       (reverse _%bind177398%_)
                                       (_%compile-post177295%_
                                        _%post177399%_
                                        _%body177392%_))
                                 _%stx177291%_))))
                        (let ((_%$%K177408177458%_
                               (lambda (_%rest177455%_ _%id177456%_)
                                 (_%lp177394%_
                                  _%rest177455%_
                                  (cdr _%exprs177397%_)
                                  (cons (list (__compile-head-id _%id177456%_)
                                              (car _%exprs177397%_))
                                        _%bind177398%_)
                                  _%post177399%_)))
                              (_%$%K177405177440%_
                               (lambda (_%rest177426%_ _%hd177427%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd177427%_))
                                     (_%lp177394%_
                                      _%rest177426%_
                                      (cdr _%exprs177397%_)
                                      (cons (list (__compile-head-id
                                                   _%hd177427%_)
                                                  (list 'values->list
                                                        (car _%exprs177397%_)))
                                            _%bind177398%_)
                                      _%post177399%_)
                                     (if (list? _%hd177427%_)
                                         (let* ((_%len177431%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd177427%_)))
                                                (_%tmp177433%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp177394%_
                                            _%rest177426%_
                                            (cdr _%exprs177397%_)
                                            (cons (list _%tmp177433%_
                                                        (car _%exprs177397%_))
                                                  _%bind177398%_)
                                            (cons (cons _%tmp177433%_
                                                        (cons _%len177431%_
                                                              (let ((__tmp178666
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id177436%_ _%k177437%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id177436%_))
                                   (cons (__SRC__0 _%id177436%_) _%k177437%_)
                                   '#f)))
                            (__tmp178665
                             (let ()
                               (declare (not safe))
                               (##iota _%len177431%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp178666 _%hd177427%_ __tmp178665))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post177399%_)))
                                         (__compile-error__%
                                          _%stx177291%_
                                          _%hd177427%_))))))
                          (if (pair? _%$%rest177400177414%_)
                              (let ((_%$%tl177410177463%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest177400177414%_)))
                                    (_%$%hd177409177461%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest177400177414%_))))
                                (if (pair? _%$%hd177409177461%_)
                                    (let ((_%$%tl177412177468%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd177409177461%_)))
                                          (_%$%hd177411177466%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd177409177461%_))))
                                      (if (null? _%$%tl177412177468%_)
                                          (let ((_%id177471%_
                                                 _%$%hd177411177466%_)
                                                (_%rest177473%_
                                                 _%$%tl177410177463%_))
                                            (_%$%K177408177458%_
                                             _%rest177473%_
                                             _%id177471%_))
                                          (let ((_%hd177448%_
                                                 _%$%hd177409177461%_)
                                                (_%rest177450%_
                                                 _%$%tl177410177463%_))
                                            (_%$%K177405177440%_
                                             _%rest177450%_
                                             _%hd177448%_))))
                                    (let ((_%hd177448%_ _%$%hd177409177461%_)
                                          (_%rest177450%_
                                           _%$%tl177410177463%_))
                                      (_%$%K177405177440%_
                                       _%rest177450%_
                                       _%hd177448%_))))
                              (_%$%else177403177422%_)))))))
                 (_%compile-post177295%_
                  (lambda (_%post177297%_ _%body177298%_)
                    (let _%lp177300%_ ((_%rest177302%_ _%post177297%_)
                                       (_%check177303%_ '())
                                       (_%bind177304%_ '()))
                      (let* ((_%$%rest177305177317%_ _%rest177302%_)
                             (_%$%else177307177325%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (let ((__tmp178667
                                              (list (__SRC__%
                                                     (list 'let
                                                           _%bind177304%_
                                                           _%body177298%_)
                                                     _%stx177291%_))))
                                         (declare (not safe))
                                         (##append
                                          _%check177303%_
                                          __tmp178667)))
                                 _%stx177291%_)))
                             (_%$%K177309177364%_
                              (lambda (_%rest177328%_
                                       _%init177329%_
                                       _%len177330%_
                                       _%tmp177331%_)
                                (_%lp177300%_
                                 _%rest177328%_
                                 (cons (__SRC__%
                                        (list '__check-values
                                              _%tmp177331%_
                                              _%len177330%_)
                                        _%stx177291%_)
                                       _%check177303%_)
                                 (let ((__tmp178668
                                        (lambda (_%hd177333%_ _%r177334%_)
                                          (let* ((_%$%hd177335177342%_
                                                  _%hd177333%_)
                                                 (_%$%E177337177346%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd177335177342%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K177338177352%_
                                                  (lambda (_%k177349%_
                                                           _%id177350%_)
                                                    (cons (list _%id177350%_
                                                                (list '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tmp177331%_
                              _%k177349%_))
                  _%r177334%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd177335177342%_)
                                                (let ((_%$%hd177339177355%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd177335177342%_)))
                                                      (_%$%tl177340177357%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd177335177342%_))))
                                                  (let* ((_%id177360%_
                                                          _%$%hd177339177355%_)
                                                         (_%k177362%_
                                                          _%$%tl177340177357%_))
                                                    (_%$%K177338177352%_
                                                     _%k177362%_
                                                     _%id177360%_)))
                                                (_%$%E177337177346%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp178668
                                    _%bind177304%_
                                    _%init177329%_))))))
                        (if (pair? _%$%rest177305177317%_)
                            (let ((_%$%hd177310177367%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest177305177317%_)))
                                  (_%$%tl177311177369%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest177305177317%_))))
                              (if (pair? _%$%hd177310177367%_)
                                  (let ((_%$%hd177312177372%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd177310177367%_)))
                                        (_%$%tl177313177374%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd177310177367%_))))
                                    (let ((_%tmp177377%_ _%$%hd177312177372%_))
                                      (if (pair? _%$%tl177313177374%_)
                                          (let ((_%$%hd177314177379%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl177313177374%_)))
                                                (_%$%tl177315177381%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl177313177374%_))))
                                            (let* ((_%len177384%_
                                                    _%$%hd177314177379%_)
                                                   (_%init177386%_
                                                    _%$%tl177315177381%_)
                                                   (_%rest177388%_
                                                    _%$%tl177311177369%_))
                                              (_%$%K177309177364%_
                                               _%rest177388%_
                                               _%init177386%_
                                               _%len177384%_
                                               _%tmp177377%_)))
                                          (_%$%else177307177325%_))))
                                  (_%$%else177307177325%_)))
                            (_%$%else177307177325%_)))))))
          (__compile-let-form
           _%stx177291%_
           _%compile-simple177293%_
           _%compile-values177294%_))))
    (define __compile-letrec-values%
      (lambda (_%stx177088%_)
        (letrec ((_%compile-simple177090%_
                  (lambda (_%hd-ids177287%_ _%exprs177288%_ _%body177289%_)
                    (__SRC__%
                     (list 'letrec
                           (let ((__tmp178669
                                  (map __compile-head-id _%hd-ids177287%_)))
                             (declare (not safe))
                             (##map list __tmp178669 _%exprs177288%_))
                           _%body177289%_)
                     _%stx177088%_)))
                 (_%compile-values177091%_
                  (lambda (_%hd-ids177198%_ _%exprs177199%_ _%body177200%_)
                    (let _%lp177202%_ ((_%rest177204%_ _%hd-ids177198%_)
                                       (_%exprs177205%_ _%exprs177199%_)
                                       (_%pre177206%_ '())
                                       (_%bind177207%_ '())
                                       (_%post177208%_ '()))
                      (let* ((_%$%rest177209177223%_ _%rest177204%_)
                             (_%$%else177212177231%_
                              (lambda ()
                                (_%compile-inner177092%_
                                 _%pre177206%_
                                 _%bind177207%_
                                 _%post177208%_
                                 _%body177200%_))))
                        (let ((_%$%K177217177270%_
                               (lambda (_%rest177267%_ _%id177268%_)
                                 (_%lp177202%_
                                  _%rest177267%_
                                  (cdr _%exprs177205%_)
                                  _%pre177206%_
                                  (cons (list (__compile-head-id _%id177268%_)
                                              (car _%exprs177205%_))
                                        _%bind177207%_)
                                  _%post177208%_)))
                              (_%$%K177214177252%_
                               (lambda (_%rest177235%_ _%hd177236%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd177236%_))
                                     (_%lp177202%_
                                      _%rest177235%_
                                      (cdr _%exprs177205%_)
                                      _%pre177206%_
                                      (cons (list (__compile-head-id
                                                   _%hd177236%_)
                                                  (list 'values->list
                                                        (car _%exprs177205%_)))
                                            _%bind177207%_)
                                      _%post177208%_)
                                     (if (list? _%hd177236%_)
                                         (let* ((_%len177240%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##length _%hd177236%_)))
                                                (_%tmp177242%_
                                                 (__SRC__0
                                                  (let ()
                                                    (declare (not safe))
                                                    (##gensym)))))
                                           (_%lp177202%_
                                            _%rest177235%_
                                            (cdr _%exprs177205%_)
                                            (let ((__tmp178670
                                                   (lambda (_%id177245%_
                                                            _%r177246%_)
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (__AST-e _%id177245%_))
                                                         (cons (cons (__SRC__0
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%id177245%_)
                             '('#!void))
                       _%r177246%_)
                 _%r177246%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (declare (not safe))
                                              (foldl__0
                                               __tmp178670
                                               _%pre177206%_
                                               _%hd177236%_))
                                            (cons (list _%tmp177242%_
                                                        (car _%exprs177205%_))
                                                  _%bind177207%_)
                                            (cons (cons _%tmp177242%_
                                                        (cons _%len177240%_
                                                              (let ((__tmp178672
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (lambda (_%id177248%_ _%k177249%_)
                               (if (let ()
                                     (declare (not safe))
                                     (__AST-e _%id177248%_))
                                   (cons (__SRC__0 _%id177248%_) _%k177249%_)
                                   '#f)))
                            (__tmp178671
                             (let ()
                               (declare (not safe))
                               (##iota _%len177240%_))))
                        (declare (not safe))
                        (filter-map__1 __tmp178672 _%hd177236%_ __tmp178671))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  _%post177208%_)))
                                         (__compile-error__%
                                          _%stx177088%_
                                          _%hd177236%_))))))
                          (if (pair? _%$%rest177209177223%_)
                              (let ((_%$%tl177219177275%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest177209177223%_)))
                                    (_%$%hd177218177273%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest177209177223%_))))
                                (if (pair? _%$%hd177218177273%_)
                                    (let ((_%$%tl177221177280%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd177218177273%_)))
                                          (_%$%hd177220177278%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd177218177273%_))))
                                      (if (null? _%$%tl177221177280%_)
                                          (let ((_%id177283%_
                                                 _%$%hd177220177278%_)
                                                (_%rest177285%_
                                                 _%$%tl177219177275%_))
                                            (_%$%K177217177270%_
                                             _%rest177285%_
                                             _%id177283%_))
                                          (let ((_%hd177260%_
                                                 _%$%hd177218177273%_)
                                                (_%rest177262%_
                                                 _%$%tl177219177275%_))
                                            (_%$%K177214177252%_
                                             _%rest177262%_
                                             _%hd177260%_))))
                                    (let ((_%hd177260%_ _%$%hd177218177273%_)
                                          (_%rest177262%_
                                           _%$%tl177219177275%_))
                                      (_%$%K177214177252%_
                                       _%rest177262%_
                                       _%hd177260%_))))
                              (_%$%else177212177231%_)))))))
                 (_%compile-inner177092%_
                  (lambda (_%pre177193%_
                           _%bind177194%_
                           _%post177195%_
                           _%body177196%_)
                    (if (null? _%pre177193%_)
                        (_%compile-bind177093%_
                         _%bind177194%_
                         _%post177195%_
                         _%body177196%_)
                        (__SRC__%
                         (list 'let
                               (reverse _%pre177193%_)
                               (_%compile-bind177093%_
                                _%bind177194%_
                                _%post177195%_
                                _%body177196%_))
                         _%stx177088%_))))
                 (_%compile-bind177093%_
                  (lambda (_%bind177189%_ _%post177190%_ _%body177191%_)
                    (__SRC__%
                     (list 'letrec
                           (reverse _%bind177189%_)
                           (_%compile-post177094%_
                            _%post177190%_
                            _%body177191%_))
                     _%stx177088%_)))
                 (_%compile-post177094%_
                  (lambda (_%post177096%_ _%body177097%_)
                    (let _%lp177099%_ ((_%rest177101%_ _%post177096%_)
                                       (_%check177102%_ '())
                                       (_%bind177103%_ '()))
                      (let* ((_%$%rest177104177116%_ _%rest177101%_)
                             (_%$%else177106177124%_
                              (lambda ()
                                (__SRC__%
                                 (cons 'begin
                                       (append _%check177102%_
                                               _%bind177103%_
                                               (list _%body177097%_)))
                                 _%stx177088%_)))
                             (_%$%K177108177163%_
                              (lambda (_%rest177127%_
                                       _%init177128%_
                                       _%len177129%_
                                       _%tmp177130%_)
                                (_%lp177099%_
                                 _%rest177127%_
                                 (cons (__SRC__%
                                        (list '__check-values
                                              _%tmp177130%_
                                              _%len177129%_)
                                        _%stx177088%_)
                                       _%check177102%_)
                                 (let ((__tmp178673
                                        (lambda (_%hd177132%_ _%r177133%_)
                                          (let* ((_%$%hd177134177141%_
                                                  _%hd177132%_)
                                                 (_%$%E177136177145%_
                                                  (lambda ()
                                                    (let ()
                                                      (declare (not safe))
                                                      (error '"No clause matching"
                                                             _%$%hd177134177141%_
                                                             '([id . k])))
                                                    '#!void))
                                                 (_%$%K177137177151%_
                                                  (lambda (_%k177148%_
                                                           _%id177149%_)
                                                    (cons (list 'set!
                                                                _%id177149%_
                                                                (list '##values-ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%tmp177130%_
                              _%k177148%_))
                  _%r177133%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (if (pair? _%$%hd177134177141%_)
                                                (let ((_%$%hd177138177154%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%hd177134177141%_)))
                                                      (_%$%tl177139177156%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%hd177134177141%_))))
                                                  (let* ((_%id177159%_
                                                          _%$%hd177138177154%_)
                                                         (_%k177161%_
                                                          _%$%tl177139177156%_))
                                                    (_%$%K177137177151%_
                                                     _%k177161%_
                                                     _%id177159%_)))
                                                (_%$%E177136177145%_))))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp178673
                                    _%bind177103%_
                                    _%init177128%_))))))
                        (if (pair? _%$%rest177104177116%_)
                            (let ((_%$%hd177109177166%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%rest177104177116%_)))
                                  (_%$%tl177110177168%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%rest177104177116%_))))
                              (if (pair? _%$%hd177109177166%_)
                                  (let ((_%$%hd177111177171%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%hd177109177166%_)))
                                        (_%$%tl177112177173%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%hd177109177166%_))))
                                    (let ((_%tmp177176%_ _%$%hd177111177171%_))
                                      (if (pair? _%$%tl177112177173%_)
                                          (let ((_%$%hd177113177178%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tl177112177173%_)))
                                                (_%$%tl177114177180%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tl177112177173%_))))
                                            (let* ((_%len177183%_
                                                    _%$%hd177113177178%_)
                                                   (_%init177185%_
                                                    _%$%tl177114177180%_)
                                                   (_%rest177187%_
                                                    _%$%tl177110177168%_))
                                              (_%$%K177108177163%_
                                               _%rest177187%_
                                               _%init177185%_
                                               _%len177183%_
                                               _%tmp177176%_)))
                                          (_%$%else177106177124%_))))
                                  (_%$%else177106177124%_)))
                            (_%$%else177106177124%_)))))))
          (__compile-let-form
           _%stx177088%_
           _%compile-simple177090%_
           _%compile-values177091%_))))
    (define __compile-letrec*-values%
      (lambda (_%stx176839%_)
        (letrec ((_%compile-simple176841%_
                  (lambda (_%hd-ids177084%_ _%exprs177085%_ _%body177086%_)
                    (__SRC__%
                     (list 'letrec*
                           (let ((__tmp178674
                                  (map __compile-head-id _%hd-ids177084%_)))
                             (declare (not safe))
                             (##map list __tmp178674 _%exprs177085%_))
                           _%body177086%_)
                     _%stx176839%_)))
                 (_%compile-values176842%_
                  (lambda (_%hd-ids176991%_ _%exprs176992%_ _%body176993%_)
                    (let _%lp176995%_ ((_%rest176997%_ _%hd-ids176991%_)
                                       (_%exprs176998%_ _%exprs176992%_)
                                       (_%bind176999%_ '())
                                       (_%post177000%_ '()))
                      (let* ((_%$%rest177001177015%_ _%rest176997%_)
                             (_%$%else177004177023%_
                              (lambda ()
                                (_%compile-bind176843%_
                                 _%bind176999%_
                                 _%post177000%_
                                 _%body176993%_))))
                        (let ((_%$%K177009177067%_
                               (lambda (_%rest177062%_ _%hd177063%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd177063%_))
                                     (let ((_%id177065%_
                                            (__SRC__0 _%hd177063%_)))
                                       (_%lp176995%_
                                        _%rest177062%_
                                        (cdr _%exprs176998%_)
                                        (cons (cons _%id177065%_ '('#!void))
                                              _%bind176999%_)
                                        (cons (list _%id177065%_
                                                    (car _%exprs176998%_))
                                              _%post177000%_)))
                                     (_%lp176995%_
                                      _%rest177062%_
                                      (cdr _%exprs176998%_)
                                      _%bind176999%_
                                      (cons (list '#f (car _%exprs176998%_))
                                            _%post177000%_)))))
                              (_%$%K177006177047%_
                               (lambda (_%rest177027%_ _%hd177028%_)
                                 (if (let ()
                                       (declare (not safe))
                                       (__AST-id? _%hd177028%_))
                                     (let ((_%id177031%_
                                            (__SRC__0 _%hd177028%_)))
                                       (_%lp176995%_
                                        _%rest177027%_
                                        (cdr _%exprs176998%_)
                                        (cons (cons _%id177031%_ '('#!void))
                                              _%bind176999%_)
                                        (cons (list _%id177031%_
                                                    (list 'values->list
                                                          (car _%exprs176998%_)))
                                              _%post177000%_)))
                                     (if (let ()
                                           (declare (not safe))
                                           (__AST-e _%hd177028%_))
                                         (if (list? _%hd177028%_)
                                             (let* ((_%len177035%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##length
                                                        _%hd177028%_)))
                                                    (_%tmp177037%_
                                                     (__SRC__0
                                                      (let ()
                                                        (declare (not safe))
                                                        (##gensym)))))
                                               (_%lp176995%_
                                                _%rest177027%_
                                                (cdr _%exprs176998%_)
                                                (let ((__tmp178675
                                                       (lambda (_%id177040%_
                                                                _%r177041%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (__AST-e _%id177040%_))
                     (cons (cons (__SRC__0 _%id177040%_) '('#!void))
                           _%r177041%_)
                     _%r177041%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (declare (not safe))
                                                  (foldl__0
                                                   __tmp178675
                                                   _%bind176999%_
                                                   _%hd177028%_))
                                                (cons (cons _%tmp177037%_
                                                            (cons (car _%exprs176998%_)
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%len177035%_
                                (let ((__tmp178677
                                       (lambda (_%id177043%_ _%k177044%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (__AST-e _%id177043%_))
                                             (cons (__SRC__0 _%id177043%_)
                                                   _%k177044%_)
                                             '#f)))
                                      (__tmp178676
                                       (let ()
                                         (declare (not safe))
                                         (##iota _%len177035%_))))
                                  (declare (not safe))
                                  (filter-map__1
                                   __tmp178677
                                   _%hd177028%_
                                   __tmp178676)))))
              _%post177000%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (__compile-error__%
                                              _%stx176839%_
                                              _%hd177028%_))
                                         (_%lp176995%_
                                          _%rest177027%_
                                          (cdr _%exprs176998%_)
                                          _%bind176999%_
                                          (cons (list '#f
                                                      (car _%exprs176998%_))
                                                _%post177000%_)))))))
                          (if (pair? _%$%rest177001177015%_)
                              (let ((_%$%tl177011177072%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest177001177015%_)))
                                    (_%$%hd177010177070%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest177001177015%_))))
                                (if (pair? _%$%hd177010177070%_)
                                    (let ((_%$%tl177013177077%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd177010177070%_)))
                                          (_%$%hd177012177075%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd177010177070%_))))
                                      (if (null? _%$%tl177013177077%_)
                                          (let ((_%hd177080%_
                                                 _%$%hd177012177075%_)
                                                (_%rest177082%_
                                                 _%$%tl177011177072%_))
                                            (_%$%K177009177067%_
                                             _%rest177082%_
                                             _%hd177080%_))
                                          (let ((_%hd177055%_
                                                 _%$%hd177010177070%_)
                                                (_%rest177057%_
                                                 _%$%tl177011177072%_))
                                            (_%$%K177006177047%_
                                             _%rest177057%_
                                             _%hd177055%_))))
                                    (let ((_%hd177055%_ _%$%hd177010177070%_)
                                          (_%rest177057%_
                                           _%$%tl177011177072%_))
                                      (_%$%K177006177047%_
                                       _%rest177057%_
                                       _%hd177055%_))))
                              (_%$%else177004177023%_)))))))
                 (_%compile-bind176843%_
                  (lambda (_%bind176987%_ _%post176988%_ _%body176989%_)
                    (__SRC__%
                     (list 'let
                           (reverse _%bind176987%_)
                           (_%compile-post176844%_
                            _%post176988%_
                            _%body176989%_))
                     _%stx176839%_)))
                 (_%compile-post176844%_
                  (lambda (_%post176846%_ _%body176847%_)
                    (__SRC__%
                     (cons 'begin
                           (let ((__tmp178679
                                  (lambda (_%hd176849%_ _%r176850%_)
                                    (let* ((_%$%hd176851176874%_ _%hd176849%_)
                                           (_%$%E176855176878%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (error '"No clause matching"
                                                       _%$%hd176851176874%_
                                                       '([#f expr])
                                                       '([id expr])
                                                       '([tmp
                                                          expr
                                                          len
                                                          .
                                                          init])))
                                              '#!void)))
                                      (let ((_%$%K176868176972%_
                                             (lambda (_%expr176970%_)
                                               (cons _%expr176970%_
                                                     _%r176850%_)))
                                            (_%$%K176863176950%_
                                             (lambda (_%expr176947%_
                                                      _%id176948%_)
                                               (cons (__SRC__%
                                                      (list 'set!
                                                            _%id176948%_
                                                            _%expr176947%_)
                                                      _%stx176839%_)
                                                     _%r176850%_)))
                                            (_%$%K176856176917%_
                                             (lambda (_%init176882%_
                                                      _%len176883%_
                                                      _%expr176884%_
                                                      _%tmp176885%_)
                                               (cons (__SRC__%
                                                      (cons 'let
                                                            (cons (list (list _%tmp176885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      _%expr176884%_))
                          (cons (__SRC__%
                                 (list '__check-values
                                       _%tmp176885%_
                                       _%len176883%_)
                                 _%stx176839%_)
                                (map (lambda (_%hd176887%_)
                                       (let* ((_%$%hd176888176895%_
                                               _%hd176887%_)
                                              (_%$%E176890176899%_
                                               (lambda ()
                                                 (let ()
                                                   (declare (not safe))
                                                   (error '"No clause matching"
                                                          _%$%hd176888176895%_
                                                          '([id . k])))
                                                 '#!void))
                                              (_%$%K176891176905%_
                                               (lambda (_%k176902%_
                                                        _%id176903%_)
                                                 (__SRC__%
                                                  (list 'set!
                                                        _%id176903%_
                                                        (list '##values-ref
                                                              _%tmp176885%_
                                                              _%k176902%_))
                                                  _%stx176839%_))))
                                         (if (pair? _%$%hd176888176895%_)
                                             (let ((_%$%hd176892176908%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%hd176888176895%_)))
                                                   (_%$%tl176893176910%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%hd176888176895%_))))
                                               (let* ((_%id176913%_
                                                       _%$%hd176892176908%_)
                                                      (_%k176915%_
                                                       _%$%tl176893176910%_))
                                                 (_%$%K176891176905%_
                                                  _%k176915%_
                                                  _%id176913%_)))
                                             (_%$%E176890176899%_))))
                                     _%init176882%_))))
              _%stx176839%_)
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     _%r176850%_))))
                                        (let* ((_%__match178539178540%_
                                                (lambda (_%$%hd176857176920%_
                                                         _%$%tl176858176922%_
                                                         _%$%hd176859176927%_
                                                         _%$%tl176860176929%_)
                                                  (let ((_%tmp176925%_
                                                         _%$%hd176857176920%_)
                                                        (_%expr176932%_
                                                         _%$%hd176859176927%_))
                                                    (_%$%E176855176878%_))))
                                               (_%__match178533178534%_
                                                (lambda (_%$%hd176857176920%_
                                                         _%$%tl176858176922%_)
                                                  (let ((_%tmp176925%_
                                                         _%$%hd176857176920%_))
                                                    (_%$%E176855176878%_)))))
                                          (if (pair? _%$%hd176851176874%_)
                                              (let ((_%$%tl176870176977%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%hd176851176874%_)))
                                                    (_%$%hd176869176975%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%hd176851176874%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##eq? _%$%hd176869176975%_
                                                             '#f))
                                                    (if (pair? _%$%tl176870176977%_)
                                                        (let ((_%$%tl176872176982%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl176870176977%_)))
                      (_%$%hd176871176980%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%tl176870176977%_))))
                  (if (null? _%$%tl176872176982%_)
                      (let ((_%expr176985%_ _%$%hd176871176980%_))
                        (_%$%K176868176972%_ _%expr176985%_))
                      (if (pair? _%$%tl176872176982%_)
                          (let ((_%$%tl176862176936%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl176872176982%_)))
                                (_%$%hd176861176934%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl176872176982%_))))
                            (let ((_%tmp176925%_ _%$%hd176869176975%_)
                                  (_%expr176932%_ _%$%hd176871176980%_)
                                  (_%len176939%_ _%$%hd176861176934%_)
                                  (_%init176941%_ _%$%tl176862176936%_))
                              (_%$%K176856176917%_
                               _%init176941%_
                               _%len176939%_
                               _%expr176932%_
                               _%tmp176925%_)))
                          (_%__match178539178540%_
                           _%$%hd176869176975%_
                           _%$%tl176870176977%_
                           _%$%hd176871176980%_
                           _%$%tl176872176982%_))))
                (_%__match178533178534%_
                 _%$%hd176869176975%_
                 _%$%tl176870176977%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (if (pair? _%$%tl176870176977%_)
                                                        (let ((_%$%tl176867176962%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (##cdr _%$%tl176870176977%_)))
                      (_%$%hd176866176960%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%tl176870176977%_))))
                  (if (null? _%$%tl176867176962%_)
                      (let ((_%id176958%_ _%$%hd176869176975%_)
                            (_%expr176965%_ _%$%hd176866176960%_))
                        (_%$%K176863176950%_ _%expr176965%_ _%id176958%_))
                      (if (pair? _%$%tl176867176962%_)
                          (let ((_%$%tl176862176936%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%tl176867176962%_)))
                                (_%$%hd176861176934%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%tl176867176962%_))))
                            (let ((_%tmp176925%_ _%$%hd176869176975%_)
                                  (_%expr176932%_ _%$%hd176866176960%_)
                                  (_%len176939%_ _%$%hd176861176934%_)
                                  (_%init176941%_ _%$%tl176862176936%_))
                              (_%$%K176856176917%_
                               _%init176941%_
                               _%len176939%_
                               _%expr176932%_
                               _%tmp176925%_)))
                          (_%__match178539178540%_
                           _%$%hd176869176975%_
                           _%$%tl176870176977%_
                           _%$%hd176866176960%_
                           _%$%tl176867176962%_))))
                (_%__match178533178534%_
                 _%$%hd176869176975%_
                 _%$%tl176870176977%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%$%E176855176878%_)))))))
                                 (__tmp178678 (list _%body176847%_)))
                             (declare (not safe))
                             (foldl__0
                              __tmp178679
                              __tmp178678
                              _%post176846%_)))
                     _%stx176839%_))))
          (__compile-let-form
           _%stx176839%_
           _%compile-simple176841%_
           _%compile-values176842%_))))
    (define __compile-call%
      (lambda (_%stx176799%_)
        (let* ((_%$e176801%_ _%stx176799%_)
               (_%$%$E176803176812%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176801%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176801%_))
              (let* ((_%$%$tgt176804176815%_
                      (let () (declare (not safe)) (__AST-e _%$e176801%_)))
                     (_%$%$hd176805176818%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176804176815%_)))
                     (_%$%$tl176806176821%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176804176815%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176806176821%_))
                    (let* ((_%$%$tgt176807176825%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176806176821%_)))
                           (_%$%$hd176808176828%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176807176825%_)))
                           (_%$%$tl176809176831%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176807176825%_)))
                           (_%rator176835%_ _%$%$hd176808176828%_)
                           (_%rands176837%_ _%$%$tl176809176831%_))
                      (__SRC__%
                       (cons (__compile _%rator176835%_)
                             (map __compile _%rands176837%_))
                       _%stx176799%_))
                    (_%$%$E176803176812%_)))
              (_%$%$E176803176812%_)))))
    (define __compile-ref%
      (lambda (_%stx176761%_)
        (let* ((_%$e176763%_ _%stx176761%_)
               (_%$%$E176765176774%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176763%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176763%_))
              (let* ((_%$%$tgt176766176777%_
                      (let () (declare (not safe)) (__AST-e _%$e176763%_)))
                     (_%$%$hd176767176780%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176766176777%_)))
                     (_%$%$tl176768176783%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176766176777%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176768176783%_))
                    (let* ((_%$%$tgt176769176787%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176768176783%_)))
                           (_%$%$hd176770176790%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176769176787%_)))
                           (_%$%$tl176771176793%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176769176787%_)))
                           (_%id176797%_ _%$%$hd176770176790%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl176771176793%_))
                                  '())
                          (__SRC__% _%id176797%_ _%stx176761%_)
                          (_%$%$E176765176774%_)))
                    (_%$%$E176765176774%_)))
              (_%$%$E176765176774%_)))))
    (define __compile-setq%
      (lambda (_%stx176708%_)
        (let* ((_%$e176710%_ _%stx176708%_)
               (_%$%$E176712176724%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176710%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176710%_))
              (let* ((_%$%$tgt176713176727%_
                      (let () (declare (not safe)) (__AST-e _%$e176710%_)))
                     (_%$%$hd176714176730%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176713176727%_)))
                     (_%$%$tl176715176733%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176713176727%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176715176733%_))
                    (let* ((_%$%$tgt176716176737%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176715176733%_)))
                           (_%$%$hd176717176740%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176716176737%_)))
                           (_%$%$tl176718176743%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176716176737%_)))
                           (_%id176747%_ _%$%$hd176717176740%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl176718176743%_))
                          (let* ((_%$%$tgt176719176749%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl176718176743%_)))
                                 (_%$%$hd176720176752%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt176719176749%_)))
                                 (_%$%$tl176721176755%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt176719176749%_)))
                                 (_%expr176759%_ _%$%$hd176720176752%_))
                            (if (equal? (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl176721176755%_))
                                        '())
                                (__SRC__%
                                 (list 'set!
                                       (__SRC__% _%id176747%_ _%stx176708%_)
                                       (__compile _%expr176759%_))
                                 _%stx176708%_)
                                (_%$%$E176712176724%_)))
                          (_%$%$E176712176724%_)))
                    (_%$%$E176712176724%_)))
              (_%$%$E176712176724%_)))))
    (define __compile-if%
      (lambda (_%stx176640%_)
        (let* ((_%$e176642%_ _%stx176640%_)
               (_%$%$E176644176659%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176642%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176642%_))
              (let* ((_%$%$tgt176645176662%_
                      (let () (declare (not safe)) (__AST-e _%$e176642%_)))
                     (_%$%$hd176646176665%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176645176662%_)))
                     (_%$%$tl176647176668%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176645176662%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176647176668%_))
                    (let* ((_%$%$tgt176648176672%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176647176668%_)))
                           (_%$%$hd176649176675%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176648176672%_)))
                           (_%$%$tl176650176678%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176648176672%_)))
                           (_%p176682%_ _%$%$hd176649176675%_))
                      (if (let ()
                            (declare (not safe))
                            (__AST-pair? _%$%$tl176650176678%_))
                          (let* ((_%$%$tgt176651176684%_
                                  (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl176650176678%_)))
                                 (_%$%$hd176652176687%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%$tgt176651176684%_)))
                                 (_%$%$tl176653176690%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%$tgt176651176684%_)))
                                 (_%t176694%_ _%$%$hd176652176687%_))
                            (if (let ()
                                  (declare (not safe))
                                  (__AST-pair? _%$%$tl176653176690%_))
                                (let* ((_%$%$tgt176654176696%_
                                        (let ()
                                          (declare (not safe))
                                          (__AST-e _%$%$tl176653176690%_)))
                                       (_%$%$hd176655176699%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%$tgt176654176696%_)))
                                       (_%$%$tl176656176702%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%$tgt176654176696%_)))
                                       (_%f176706%_ _%$%$hd176655176699%_))
                                  (if (equal? (let ()
                                                (declare (not safe))
                                                (__AST-e _%$%$tl176656176702%_))
                                              '())
                                      (__SRC__%
                                       (list 'if
                                             (__compile _%p176682%_)
                                             (__compile _%t176694%_)
                                             (__compile _%f176706%_))
                                       _%stx176640%_)
                                      (_%$%$E176644176659%_)))
                                (_%$%$E176644176659%_)))
                          (_%$%$E176644176659%_)))
                    (_%$%$E176644176659%_)))
              (_%$%$E176644176659%_)))))
    (define __compile-quote%
      (lambda (_%stx176602%_)
        (let* ((_%$e176604%_ _%stx176602%_)
               (_%$%$E176606176615%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176604%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176604%_))
              (let* ((_%$%$tgt176607176618%_
                      (let () (declare (not safe)) (__AST-e _%$e176604%_)))
                     (_%$%$hd176608176621%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176607176618%_)))
                     (_%$%$tl176609176624%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176607176618%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176609176624%_))
                    (let* ((_%$%$tgt176610176628%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176609176624%_)))
                           (_%$%$hd176611176631%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176610176628%_)))
                           (_%$%$tl176612176634%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176610176628%_)))
                           (_%e176638%_ _%$%$hd176611176631%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl176612176634%_))
                                  '())
                          (__SRC__%
                           (list 'quote
                                 (let ()
                                   (declare (not safe))
                                   (__AST->datum _%e176638%_)))
                           _%stx176602%_)
                          (_%$%$E176606176615%_)))
                    (_%$%$E176606176615%_)))
              (_%$%$E176606176615%_)))))
    (define __compile-quote-syntax%
      (lambda (_%stx176564%_)
        (let* ((_%$e176566%_ _%stx176564%_)
               (_%$%$E176568176577%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (__raise-syntax-error
                     '#f
                     '"Bad syntax; malformed ast clause"
                     _%$e176566%_)))))
          (if (let () (declare (not safe)) (__AST-pair? _%$e176566%_))
              (let* ((_%$%$tgt176569176580%_
                      (let () (declare (not safe)) (__AST-e _%$e176566%_)))
                     (_%$%$hd176570176583%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%$tgt176569176580%_)))
                     (_%$%$tl176571176586%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%$tgt176569176580%_))))
                (if (let ()
                      (declare (not safe))
                      (__AST-pair? _%$%$tl176571176586%_))
                    (let* ((_%$%$tgt176572176590%_
                            (let ()
                              (declare (not safe))
                              (__AST-e _%$%$tl176571176586%_)))
                           (_%$%$hd176573176593%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%$tgt176572176590%_)))
                           (_%$%$tl176574176596%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%$tgt176572176590%_)))
                           (_%e176600%_ _%$%$hd176573176593%_))
                      (if (equal? (let ()
                                    (declare (not safe))
                                    (__AST-e _%$%$tl176574176596%_))
                                  '())
                          (__SRC__% (list 'quote _%e176600%_) _%stx176564%_)
                          (_%$%$E176568176577%_)))
                    (_%$%$E176568176577%_)))
              (_%$%$E176568176577%_)))))
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
