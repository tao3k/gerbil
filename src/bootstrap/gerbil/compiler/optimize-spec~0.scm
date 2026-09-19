(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1789839230)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp250318 (list gxc#::identity::t))
            (__tmp250317 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp250318
         '()
         __tmp250317
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args249115%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args249115%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp250319
             (lambda ()
               (force gxc#::identity-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-method-specializers::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-method-specializers::t
                  '%#begin-syntax
                  gxc#xform-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-method-specializers::t
                  '%#module
                  gxc#xform-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-method-specializers::t
                  '%#define-values
                  gxc#generate-method-specializers-define-values%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-method-specializers::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp250319)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx249107%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self249110%_
                (let ((__obj250310
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj250310))
               (__tmp250320
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self249110%_ _%stx249107%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp250320
           gxc#current-compile-method
           _%self249110%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp250322 (list gxc#::false::t))
            (__tmp250321 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp250322
         '()
         __tmp250321
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args249104%_
        (apply make-instance gxc#::extract-receiver::t _%$args249104%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp250323
             (lambda ()
               (force gxc#::false-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#begin
                  gxc#apply-last-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#begin-annotation
                  gxc#extract-receiver-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#let-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#letrec-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#letrec*-values
                  gxc#apply-body-last-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::extract-receiver::t
                  '%#if
                  gxc#extract-receiver-if%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::extract-receiver::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp250323)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx249096%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self249099%_
                (let ((__obj250312
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj250312))
               (__tmp250324
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self249099%_ _%stx249096%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp250324
           gxc#current-compile-method
           _%self249099%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp250326 (list gxc#::void::t))
            (__tmp250325 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp250326
         '(receiver methods slots)
         __tmp250325
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args249093%_
        (apply make-instance gxc#::collect-object-refs::t _%$args249093%_)))
    (define gxc#::collect-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-object-refs::t 'receiver)))
    (define gxc#::collect-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-object-refs::t 'methods)))
    (define gxc#::collect-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::collect-object-refs::t 'slots)))
    (define gxc#::collect-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-object-refs::t 'receiver)))
    (define gxc#::collect-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-object-refs::t 'methods)))
    (define gxc#::collect-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::collect-object-refs::t 'slots)))
    (define gxc#&::collect-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'receiver)))
    (define gxc#&::collect-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'methods)))
    (define gxc#&::collect-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::collect-object-refs::t
         'slots)))
    (define gxc#&::collect-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'receiver)))
    (define gxc#&::collect-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'methods)))
    (define gxc#&::collect-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::collect-object-refs::t
         'slots)))
    (define gxc#::collect-object-refs-bind-methods!
      (let ((__tmp250327
             (lambda ()
               (force gxc#::void-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#begin
                  gxc#apply-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#begin-annotation
                  gxc#apply-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#lambda
                  gxc#apply-body-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#case-lambda
                  gxc#apply-body-case-lambda%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#let-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#letrec-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#letrec*-values
                  gxc#apply-body-let-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#call
                  gxc#collect-object-refs-call%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#if
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#set!
                  gxc#apply-body-setq%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-direct-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-direct-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-unchecked-ref
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::collect-object-refs::t
                  '%#struct-unchecked-set!
                  gxc#apply-operands))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::collect-object-refs::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp250327)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords249062%_
               _%$%receiver249057249063%_
               _%$%methods249058249064%_
               _%$%slots249059249065%_
               _%stx249066%_)
        (let* ((_%receiver249069%_
                (if (eq? _%$%receiver249057249063%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver249057249063%_))
               (_%methods249071%_
                (if (eq? _%$%methods249058249064%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods249058249064%_))
               (_%slots249073%_
                (if (eq? _%$%slots249059249065%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots249059249065%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self249075%_
                  (let ((__obj250314
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::collect-object-refs::t
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250314
                       _%receiver249069%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250314
                       _%methods249071%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250314
                       _%slots249073%_
                       '3
                       '#f
                       '#f))
                    __obj250314))
                 (__tmp250328
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self249075%_ _%stx249066%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp250328
             gxc#current-compile-method
             _%self249075%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords249082%_ . _%args249083%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords249082%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords249082%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords249082%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords249082%_
                  'slots:
                  absent-value))
               _%args249083%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%$%args249060249089%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%$%args249060249089%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp250330 (list gxc#::basic-xform-expression::t))
            (__tmp250329 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp250330
         '(receiver klass methods slots)
         __tmp250329
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args249053%_
        (apply make-instance gxc#::subst-object-refs::t _%$args249053%_)))
    (define gxc#::subst-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'receiver)))
    (define gxc#::subst-object-refs-klass
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'klass)))
    (define gxc#::subst-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'methods)))
    (define gxc#::subst-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#::subst-object-refs::t 'slots)))
    (define gxc#::subst-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'receiver)))
    (define gxc#::subst-object-refs-klass-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'klass)))
    (define gxc#::subst-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'methods)))
    (define gxc#::subst-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#::subst-object-refs::t 'slots)))
    (define gxc#&::subst-object-refs-receiver
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'receiver)))
    (define gxc#&::subst-object-refs-klass
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'klass)))
    (define gxc#&::subst-object-refs-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'methods)))
    (define gxc#&::subst-object-refs-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#::subst-object-refs::t
         'slots)))
    (define gxc#&::subst-object-refs-receiver-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'receiver)))
    (define gxc#&::subst-object-refs-klass-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'klass)))
    (define gxc#&::subst-object-refs-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'methods)))
    (define gxc#&::subst-object-refs-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#::subst-object-refs::t
         'slots)))
    (define gxc#::subst-object-refs-bind-methods!
      (let ((__tmp250331
             (lambda ()
               (force gxc#::basic-xform-expression-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::subst-object-refs::t
                  '%#begin
                  gxc#xform-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::subst-object-refs::t
                  '%#call
                  gxc#subst-object-refs-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::subst-object-refs::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp250331)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords249019%_
               _%$%receiver249013249020%_
               _%$%klass249014249021%_
               _%$%methods249015249022%_
               _%$%slots249016249023%_
               _%stx249024%_)
        (let* ((_%receiver249027%_
                (if (eq? _%$%receiver249013249020%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver249013249020%_))
               (_%klass249029%_
                (if (eq? _%$%klass249014249021%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%$%klass249014249021%_))
               (_%methods249031%_
                (if (eq? _%$%methods249015249022%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods249015249022%_))
               (_%slots249033%_
                (if (eq? _%$%slots249016249023%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots249016249023%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self249035%_
                  (let ((__obj250316
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#::subst-object-refs::t
                            '#f
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250316
                       _%receiver249027%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250316
                       _%klass249029%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250316
                       _%methods249031%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250316
                       _%slots249033%_
                       '4
                       '#f
                       '#f))
                    __obj250316))
                 (__tmp250332
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self249035%_ _%stx249024%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp250332
             gxc#current-compile-method
             _%self249035%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords249042%_ . _%args249043%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords249042%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords249042%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords249042%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords249042%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords249042%_
                  'slots:
                  absent-value))
               _%args249043%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%$%args249017249049%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%$%args249017249049%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self246144%_ _%stx246145%_)
        (letrec ((_%generate-method-bind246147%_
                  (lambda (_%$klass249005%_
                           _%$method-table249006%_
                           _%id249007%_
                           _%$id249008%_)
                    (let ((_%$tmp249010%_
                           (let ((__tmp250333
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp250333))))
                      (cons (cons _%$id249008%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp249010%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table249006%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id249007%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp249010%_ '()))
                    (cons (cons '%#ref (cons _%$tmp249010%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id249007%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '()))
                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())))
                              '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-slot-bind246148%_
                  (lambda (_%$klass248999%_ _%id249000%_ _%$id249001%_)
                    (let ((_%$tmp249003%_
                           (let ((__tmp250334
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp250334))))
                      (cons (cons _%$id249001%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp249003%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass248999%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id249000%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp249003%_ '()))
                        (cons (cons '%#ref (cons _%$tmp249003%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id249000%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl246149%_
                  (lambda (_%$klass248993%_
                           _%$method-table248994%_
                           _%methods-bind248995%_
                           _%slots-bind248996%_
                           _%specializer-impl248997%_)
                    (let ((__tmp250335
                           (cons '%#lambda
                                 (cons (cons _%$klass248993%_
                                             (cons _%$method-table248994%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (append _%methods-bind248995%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%slots-bind248996%_)
                 (cons _%specializer-impl248997%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp250335 _%stx246145%_))))
                 (_%generate-specializer-def246150%_
                  (lambda (_%id248989%_
                           _%specializer-id248990%_
                           _%specializer-impl248991%_)
                    (let ((__tmp250336
                           (cons '%#begin
                                 (cons _%stx246145%_
                                       (cons (let ((__tmp250337
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id248990%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl248991%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp250337
                                                _%stx246145%_))
                                             (cons (let ((__tmp250338
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id248989%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id248990%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp250338
                                                      _%stx246145%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp250336 _%stx246145%_)))))
          (let* ((_%__stx249204249205%_ _%stx246145%_)
                 (_%$%g246153246173%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx249204249205%_)))))
            (let ((_%__kont249206249207%_
                   (lambda (_%$%g246155246217%_ _%$%g246156246218%_)
                     (let ((_%method-calls246237%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs246238%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty246239%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?246241%_
                                 (lambda ()
                                   (if (let ((__tmp250339
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls246237%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp250339))
                                       (let ((__tmp250340
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs246238%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp250340))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%$%g246155246217%_))
                             (let* ((_%__stx249118249119%_ _%$%g246155246217%_)
                                    (_%$%g246625246643%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx249118249119%_)))))
                               (let ((_%__kont249120249121%_
                                      (lambda (_%$%g246627246679%_
                                               _%$%g246628246680%_
                                               _%$%g246629246681%_)
                                        (let ((_%receiver246701%_
                                               (let ((_%$e246698%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%g246627246679%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e246698%_
                                                     _%$e246698%_
                                                     _%$%g246629246681%_))))
                                          (for-each
                                           (lambda (_%$%g246702246704%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver246701%_
                                              _%method-calls246237%_
                                              _%slot-refs246238%_
                                              _%$%g246702246704%_))
                                           _%$%g246627246679%_)
                                          (if (_%no-specializer?246241%_)
                                              _%stx246145%_
                                              (let* ((_%specializer-id246713%_
                                                      (let* ((_%id246707%_
                                                              (let ((__tmp250341
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g246156246218%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp250341 '"::specialize")))
                     (_%specializer-id246710%_
                      (let ((__tmp250342
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx246145%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id246707%_ __tmp250342))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id246710%_))
                _%specializer-id246710%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass246715%_
                                                      (let ((__tmp250343
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp250343)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table246717%_
                                                      (let ((__tmp250344
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp250344)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods246719%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls246237%_)))
                                                     (_%$methods246723%_
                                                      (let ((__tmp250345
                                                             (lambda (_%id246721%_)
                                                               (let ((__tmp250346
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id246721%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp250346)))))
                (declare (not safe))
                (##map __tmp250345 _%methods246719%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_246732%_
                                                      (let ((__tmp250347
                                                             (lambda (_%$%g246724246727%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g246725246729%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls246237%_
                          _%$%g246724246727%_
                          _%$%g246725246729%_)))))
                (declare (not safe))
                (##for-each __tmp250347 _%methods246719%_ _%$methods246723%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind246742%_
                                                      (let ((__tmp250348
                                                             (lambda (_%$%g246734246737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g246735246739%_)
                       (_%generate-method-bind246147%_
                        _%$klass246715%_
                        _%$method-table246717%_
                        _%$%g246734246737%_
                        _%$%g246735246739%_))))
                (declare (not safe))
                (##map __tmp250348 _%methods246719%_ _%$methods246723%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots246744%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs246238%_)))
                                                     (_%$slots246748%_
                                                      (let ((__tmp250349
                                                             (lambda (_%id246746%_)
                                                               (let ((__tmp250350
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id246746%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp250350)))))
                (declare (not safe))
                (##map __tmp250349 _%slots246744%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_246757%_
                                                      (let ((__tmp250351
                                                             (lambda (_%$%g246749246752%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g246750246754%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs246238%_
                          _%$%g246749246752%_
                          _%$%g246750246754%_)))))
                (declare (not safe))
                (##for-each __tmp250351 _%slots246744%_ _%$slots246748%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind246766%_
                                                      (let ((__tmp250352
                                                             (lambda (_%$%g246758246761%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g246759246763%_)
                       (_%generate-slot-bind246148%_
                        _%$klass246715%_
                        _%$%g246758246761%_
                        _%$%g246759246763%_))))
                (declare (not safe))
                (##map __tmp250352 _%slots246744%_ _%$slots246748%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body246772%_
                                                      (map (lambda (_%$%g246767246769%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver246701%_
                                                              _%$klass246715%_
                                                              _%method-calls246237%_
                                                              _%slot-refs246238%_
                                                              _%$%g246767246769%_))
                                                           _%$%g246627246679%_))
                                                     (_%specializer-impl246774%_
                                                      (let ((__tmp250353
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%$%g246629246681%_ _%$%g246628246680%_)
                                 _%specializer-body246772%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp250353 _%stx246145%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl246776%_
                                                      (_%generate-specializer-impl246149%_
                                                       _%$klass246715%_
                                                       _%$method-table246717%_
                                                       _%methods-bind246742%_
                                                       _%slots-bind246766%_
                                                       _%specializer-impl246774%_)))
                                                (let ((__tmp250355
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g246156246218%_)))
                                                      (__tmp250354
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id246713%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp250355
                                                   '" => "
                                                   __tmp250354))
                                                (_%generate-specializer-def246150%_
                                                 _%$%g246156246218%_
                                                 _%specializer-id246713%_
                                                 _%specializer-impl246776%_))))))
                                     (_%__kont249122249123%_
                                      (lambda () _%stx246145%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx249118249119%_))
                                     (let ((_%$%e246630246655%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx249118249119%_))))
                                       (let ((_%$%tl246632246660%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e246630246655%_)))
                                             (_%$%hd246631246658%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e246630246655%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl246632246660%_))
                                             (let ((_%$%e246633246663%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl246632246660%_))))
                                               (let ((_%$%tl246635246668%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e246633246663%_)))
                                                     (_%$%hd246634246666%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e246633246663%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%hd246634246666%_))
                                                     (let ((_%$%e246636246671%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%hd246634246666%_))))
                                                       (let ((_%$%tl246638246676%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e246636246671%_)))
                     (_%$%hd246637246674%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e246636246671%_))))
                 (_%__kont249120249121%_
                  _%$%tl246635246668%_
                  _%$%tl246638246676%_
                  _%$%hd246637246674%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont249122249123%_))))
                                             (_%__kont249122249123%_))))
                                     (_%__kont249122249123%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%$%g246155246217%_))
                                 (let* ((_%$%g246783246802%_
                                         (lambda (_%$%g246784246799%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g246784246799%_))))
                                        (_%$%g246782247098%_
                                         (lambda (_%$%g246784246805%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%g246784246805%_))
                                               (let ((_%$%e246786246807%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g246784246805%_))))
                                                 (let ((_%$%hd246787246810%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e246786246807%_)))
                                                       (_%$%tl246788246812%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e246786246807%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%$%tl246788246812%_))
                                                       (let ((_g250356_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%$%tl246788246812%_ '0))))
                 (begin
                   (let ((_g250357_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g250356_)
                                (##values-length _g250356_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g250357_ 2)))
                         (error "Context expects 2 values" _g250357_)))
                   (let ((_%$%target246789246815%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g250356_ 0)))
                         (_%$%tl246791246817%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g250356_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl246791246817%_))
                         (letrec ((_%$%loop246792246820%_
                                   (lambda (_%$%hd246790246823%_
                                            _%$%clause246796246825%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd246790246823%_))
                                         (let ((_%$%e246793246827%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd246790246823%_))))
                                           (let ((_%$%lp-hd246794246830%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e246793246827%_)))
                                                 (_%$%lp-tl246795246832%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e246793246827%_))))
                                             (_%$%loop246792246820%_
                                              _%$%lp-tl246795246832%_
                                              (cons _%$%lp-hd246794246830%_
                                                    _%$%clause246796246825%_))))
                                         (let ((_%$%clause246797246835%_
                                                (reverse _%$%clause246796246825%_)))
                                           (for-each
                                            (lambda (_%clause246851%_)
                                              (let* ((_%__stx249144249145%_
                                                      _%clause246851%_)
                                                     (_%$%g246854246869%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx249144249145%_)))))
                                                (let ((_%__kont249146249147%_
                                                       (lambda (_%$%g246856246897%_
                                                                _%$%g246857246898%_
                                                                _%$%g246858246899%_)
                                                         (let ((_%receiver246918%_
                                                                (let ((_%$e246915%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gxc#apply-extract-receiver
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f '%#begin))
                                      _%$%g246856246897%_))))
                          (if _%$e246915%_ _%$e246915%_ _%$%g246858246899%_))))
                   (for-each
                    (lambda (_%$%g246919246921%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver246918%_
                       _%method-calls246237%_
                       _%slot-refs246238%_
                       _%$%g246919246921%_))
                    _%$%g246856246897%_))))
              (_%__kont249148249149%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx249144249145%_))
                                                      (let ((_%$%e246859246881%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx249144249145%_))))
                (let ((_%$%tl246861246886%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e246859246881%_)))
                      (_%$%hd246860246884%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e246859246881%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd246860246884%_))
                      (let ((_%$%e246862246889%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd246860246884%_))))
                        (let ((_%$%tl246864246894%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e246862246889%_)))
                              (_%$%hd246863246892%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e246862246889%_))))
                          (_%__kont249146249147%_
                           _%$%tl246861246886%_
                           _%$%tl246864246894%_
                           _%$%hd246863246892%_)))
                      '#!void)))
              '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((__tmp250358
                                                   (lambda (_%$%g246926246929%_
                                                            _%$%g246927246931%_)
                                                     (cons _%$%g246926246929%_
                                                           _%$%g246927246931%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp250358
                                               '()
                                               _%$%clause246797246835%_)))
                                           (if (_%no-specializer?246241%_)
                                               _%stx246145%_
                                               (let* ((_%specializer-id246940%_
                                                       (let* ((_%id246934%_
                                                               (let ((__tmp250359
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g246156246218%_))))
                         (declare (not safe))
                         (make-symbol__1 __tmp250359 '"::specialize")))
                      (_%specializer-id246937%_
                       (let ((__tmp250360
                              (let ()
                                (declare (not safe))
                                (gx#stx-source _%stx246145%_))))
                         (declare (not safe))
                         (gx#core-quote-syntax__1 _%id246934%_ __tmp250360))))
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _%specializer-id246937%_))
                 _%specializer-id246937%_))
              (_%$klass246942%_
               (let ((__tmp250361
                      (let () (declare (not safe)) (##gensym '__klass))))
                 (declare (not safe))
                 (make-symbol__0 __tmp250361)))
              (_%$method-table246944%_
               (let ((__tmp250362
                      (let ()
                        (declare (not safe))
                        (##gensym '__method-table))))
                 (declare (not safe))
                 (make-symbol__0 __tmp250362)))
              (_%methods246946%_
               (let ()
                 (declare (not safe))
                 (__hash-keys _%method-calls246237%_)))
              (_%$methods246950%_
               (let ((__tmp250363
                      (lambda (_%id246948%_)
                        (let ((__tmp250364 (gensym _%id246948%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp250364)))))
                 (declare (not safe))
                 (##map __tmp250363 _%methods246946%_)))
              (_%_246959%_
               (let ((__tmp250365
                      (lambda (_%$%g246951246954%_ _%$%g246952246956%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%method-calls246237%_
                           _%$%g246951246954%_
                           _%$%g246952246956%_)))))
                 (declare (not safe))
                 (##for-each
                  __tmp250365
                  _%methods246946%_
                  _%$methods246950%_)))
              (_%methods-bind246969%_
               (let ((__tmp250366
                      (lambda (_%$%g246961246964%_ _%$%g246962246966%_)
                        (_%generate-method-bind246147%_
                         _%$klass246942%_
                         _%$method-table246944%_
                         _%$%g246961246964%_
                         _%$%g246962246966%_))))
                 (declare (not safe))
                 (##map __tmp250366 _%methods246946%_ _%$methods246950%_)))
              (_%slots246971%_
               (let () (declare (not safe)) (__hash-keys _%slot-refs246238%_)))
              (_%$slots246975%_
               (let ((__tmp250367
                      (lambda (_%id246973%_)
                        (let ((__tmp250368 (gensym _%id246973%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp250368)))))
                 (declare (not safe))
                 (##map __tmp250367 _%slots246971%_)))
              (_%_246984%_
               (let ((__tmp250369
                      (lambda (_%$%g246976246979%_ _%$%g246977246981%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%slot-refs246238%_
                           _%$%g246976246979%_
                           _%$%g246977246981%_)))))
                 (declare (not safe))
                 (##for-each __tmp250369 _%slots246971%_ _%$slots246975%_)))
              (_%slots-bind246993%_
               (let ((__tmp250370
                      (lambda (_%$%g246985246988%_ _%$%g246986246990%_)
                        (_%generate-slot-bind246148%_
                         _%$klass246942%_
                         _%$%g246985246988%_
                         _%$%g246986246990%_))))
                 (declare (not safe))
                 (##map __tmp250370 _%slots246971%_ _%$slots246975%_)))
              (_%specializer-clauses247091%_
               (map (lambda (_%clause246995%_)
                      (let* ((_%__stx249164249165%_ _%clause246995%_)
                             (_%$%g246998247013%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx249164249165%_)))))
                        (let ((_%__kont249166249167%_
                               (lambda (_%$%g247000247041%_
                                        _%$%g247001247042%_
                                        _%$%g247002247043%_)
                                 (let* ((_%receiver247072%_
                                         (let ((_%$e247069%_
                                                (gxc#apply-extract-receiver
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#begin))
                                                       _%$%g247000247041%_))))
                                           (if _%$e247069%_
                                               _%$e247069%_
                                               _%$%g247002247043%_)))
                                        (_%body247078%_
                                         (map (lambda (_%$%g247073247075%_)
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%receiver247072%_
                                                 _%$klass246942%_
                                                 _%method-calls246237%_
                                                 _%slot-refs246238%_
                                                 _%$%g247073247075%_))
                                              _%$%g247000247041%_)))
                                   (cons (cons _%$%g247002247043%_
                                               _%$%g247001247042%_)
                                         _%body247078%_))))
                              (_%__kont249168249169%_
                               (lambda () _%clause246995%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx249164249165%_))
                              (let ((_%$%e247003247025%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx249164249165%_))))
                                (let ((_%$%tl247005247030%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e247003247025%_)))
                                      (_%$%hd247004247028%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e247003247025%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd247004247028%_))
                                      (let ((_%$%e247006247033%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd247004247028%_))))
                                        (let ((_%$%tl247008247038%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e247006247033%_)))
                                              (_%$%hd247007247036%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e247006247033%_))))
                                          (_%__kont249166249167%_
                                           _%$%tl247005247030%_
                                           _%$%tl247008247038%_
                                           _%$%hd247007247036%_)))
                                      (_%__kont249168249169%_))))
                              (_%__kont249168249169%_)))))
                    (let ((__tmp250371
                           (lambda (_%$%g247083247086%_ _%$%g247084247088%_)
                             (cons _%$%g247083247086%_ _%$%g247084247088%_))))
                      (declare (not safe))
                      (foldr__0 __tmp250371 '() _%$%clause246797246835%_))))
              (_%specializer-impl247093%_
               (let ((__tmp250372
                      (cons '%#case-lambda _%specializer-clauses247091%_)))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp250372 _%stx246145%_)))
              (_%specializer-impl247095%_
               (_%generate-specializer-impl246149%_
                _%$klass246942%_
                _%$method-table246944%_
                _%methods-bind246969%_
                _%slots-bind246993%_
                _%specializer-impl247093%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp250374
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g246156246218%_)))
                                                       (__tmp250373
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%specializer-id246940%_))))
                                                   (declare (not safe))
                                                   (gxc#verbose
                                                    '"generate method specializer "
                                                    __tmp250374
                                                    '" => "
                                                    __tmp250373))
                                                 (_%generate-specializer-def246150%_
                                                  _%$%g246156246218%_
                                                  _%specializer-id246940%_
                                                  _%specializer-impl247095%_))))))))
                           (_%$%loop246792246820%_
                            _%$%target246789246815%_
                            '()))
                         (_%$%g246783246802%_ _%$%g246784246805%_)))))
               (_%$%g246783246802%_ _%$%g246784246805%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g246783246802%_
                                                _%$%g246784246805%_)))))
                                   (_%$%g246782247098%_ _%$%g246155246217%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%$%g246155246217%_))
                                     (let* ((_%$%g247102247132%_
                                             (lambda (_%$%g247103247129%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g247103247129%_))))
                                            (_%$%g247101247759%_
                                             (lambda (_%$%g247103247135%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g247103247135%_))
                                                   (let ((_%$%e247107247137%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%g247103247135%_))))
                                                     (let ((_%$%hd247108247140%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e247107247137%_)))
                                                           (_%$%tl247109247142%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e247107247137%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl247109247142%_))
                                                           (let ((_%$%e247110247145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl247109247142%_))))
                     (let ((_%$%hd247111247148%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e247110247145%_)))
                           (_%$%tl247112247150%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e247110247145%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd247111247148%_))
                           (let ((_%$%e247113247153%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd247111247148%_))))
                             (let ((_%$%hd247114247156%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e247113247153%_)))
                                   (_%$%tl247115247158%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e247113247153%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd247114247156%_))
                                   (let ((_%$%e247116247161%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd247114247156%_))))
                                     (let ((_%$%hd247117247164%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e247116247161%_)))
                                           (_%$%tl247118247166%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e247116247161%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd247117247164%_))
                                           (let ((_%$%e247119247169%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd247117247164%_))))
                                             (let ((_%$%hd247120247172%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e247119247169%_)))
                                                   (_%$%tl247121247174%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e247119247169%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl247121247174%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl247118247166%_))
                                                       (let ((_%$%e247122247177%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl247118247166%_))))
                 (let ((_%$%hd247123247180%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e247122247177%_)))
                       (_%$%tl247124247182%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e247122247177%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl247124247182%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl247115247158%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl247112247150%_))
                               (let ((_%$%e247125247185%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl247112247150%_))))
                                 (let ((_%$%hd247126247188%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e247125247185%_)))
                                       (_%$%tl247127247190%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e247125247185%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl247127247190%_))
                                       (let ()
                                         (let* ((_%$%g247219247237%_
                                                 (lambda (_%$%g247220247234%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g247220247234%_))))
                                                (_%$%g247218247293%_
                                                 (lambda (_%$%g247220247240%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g247220247240%_))
                                                       (let ((_%$%e247224247242%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g247220247240%_))))
                 (let ((_%$%hd247225247245%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e247224247242%_)))
                       (_%$%tl247226247247%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e247224247242%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl247226247247%_))
                       (let ((_%$%e247227247250%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl247226247247%_))))
                         (let ((_%$%hd247228247253%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e247227247250%_)))
                               (_%$%tl247229247255%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e247227247250%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd247228247253%_))
                               (let ((_%$%e247230247258%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%hd247228247253%_))))
                                 (let ((_%$%hd247231247261%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e247230247258%_)))
                                       (_%$%tl247232247263%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e247230247258%_))))
                                   (let ((_%receiver247287%_
                                          (let ((_%$e247284%_
                                                 (gxc#apply-extract-receiver
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#begin))
                                                        _%$%tl247229247255%_))))
                                            (if _%$e247284%_
                                                _%$e247284%_
                                                _%$%hd247231247261%_))))
                                     (for-each
                                      (lambda (_%$%g247288247290%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver247287%_
                                         _%method-calls246237%_
                                         _%slot-refs246238%_
                                         _%$%g247288247290%_))
                                      _%$%tl247229247255%_))))
                               (_%$%g247219247237%_ _%$%g247220247240%_))))
                       (_%$%g247219247237%_ _%$%g247220247240%_))))
               (_%$%g247219247237%_ _%$%g247220247240%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g247218247293%_
                                            _%$%hd247123247180%_))
                                         (let* ((_%$%g247296247315%_
                                                 (lambda (_%$%g247297247312%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g247297247312%_))))
                                                (_%$%g247295247437%_
                                                 (lambda (_%$%g247297247318%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g247297247318%_))
                                                       (let ((_%$%e247299247320%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g247297247318%_))))
                 (let ((_%$%hd247300247323%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e247299247320%_)))
                       (_%$%tl247301247325%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e247299247320%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? _%$%tl247301247325%_))
                       (let ((_g250375_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 _%$%tl247301247325%_
                                 '0))))
                         (begin
                           (let ((_g250376_
                                  (let ()
                                    (declare (not safe))
                                    (if (##values? _g250375_)
                                        (##values-length _g250375_)
                                        1))))
                             (if (not (let ()
                                        (declare (not safe))
                                        (##fx= _g250376_ 2)))
                                 (error "Context expects 2 values" _g250376_)))
                           (let ((_%$%target247302247328%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g250375_ 0)))
                                 (_%$%tl247304247330%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g250375_ 1))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl247304247330%_))
                                 (letrec ((_%$%loop247305247333%_
                                           (lambda (_%$%hd247303247336%_
                                                    _%$%clause247309247338%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd247303247336%_))
                                                 (let ((_%$%e247306247340%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd247303247336%_))))
                                                   (let ((_%$%lp-hd247307247343%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e247306247340%_)))
                                                         (_%$%lp-tl247308247345%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e247306247340%_))))
                                                     (_%$%loop247305247333%_
                                                      _%$%lp-tl247308247345%_
                                                      (cons _%$%lp-hd247307247343%_
                                                            _%$%clause247309247338%_))))
                                                 (let ((_%$%clause247310247348%_
                                                        (reverse _%$%clause247309247338%_)))
                                                   (for-each
                                                    (lambda (_%clause247363%_)
                                                      (let* ((_%$%g247365247380%_
                                                              (lambda (_%$%g247366247377%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g247366247377%_))))
                     (_%$%g247364247427%_
                      (lambda (_%$%g247366247383%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%g247366247383%_))
                            (let ((_%$%e247370247385%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g247366247383%_))))
                              (let ((_%$%hd247371247388%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e247370247385%_)))
                                    (_%$%tl247372247390%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e247370247385%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd247371247388%_))
                                    (let ((_%$%e247373247393%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd247371247388%_))))
                                      (let ((_%$%hd247374247396%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e247373247393%_)))
                                            (_%$%tl247375247398%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e247373247393%_))))
                                        (let ((_%receiver247421%_
                                               (let ((_%$e247418%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%tl247372247390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e247418%_
                                                     _%$e247418%_
                                                     _%$%hd247374247396%_))))
                                          (for-each
                                           (lambda (_%$%g247422247424%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver247421%_
                                              _%method-calls246237%_
                                              _%slot-refs246238%_
                                              _%$%g247422247424%_))
                                           _%$%tl247372247390%_))))
                                    (_%$%g247365247380%_
                                     _%$%g247366247383%_))))
                            (_%$%g247365247380%_ _%$%g247366247383%_)))))
                (_%$%g247364247427%_ _%clause247363%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp250377
                                                           (lambda (_%$%g247429247432%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g247430247434%_)
                     (cons _%$%g247429247432%_ _%$%g247430247434%_))))
              (declare (not safe))
              (foldr__0 __tmp250377 '() _%$%clause247310247348%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%loop247305247333%_
                                    _%$%target247302247328%_
                                    '()))
                                 (_%$%g247296247315%_ _%$%g247297247318%_)))))
                       (_%$%g247296247315%_ _%$%g247297247318%_))))
               (_%$%g247296247315%_ _%$%g247297247318%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g247295247437%_
                                            _%$%hd247126247188%_))
                                         (if (_%no-specializer?246241%_)
                                             _%stx246145%_
                                             (let* ((_%specializer-id247446%_
                                                     (let* ((_%id247440%_
                                                             (let ((__tmp250378
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g246156246218%_))))
                       (declare (not safe))
                       (make-symbol__1 __tmp250378 '"::specialize")))
                    (_%specializer-id247443%_
                     (let ((__tmp250379
                            (let ()
                              (declare (not safe))
                              (gx#stx-source _%stx246145%_))))
                       (declare (not safe))
                       (gx#core-quote-syntax__1 _%id247440%_ __tmp250379))))
               (let ()
                 (declare (not safe))
                 (gx#core-bind-runtime!__0 _%specializer-id247443%_))
               _%specializer-id247443%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$klass247448%_
                                                     (let ((__tmp250380
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__klass))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp250380)))
                                                    (_%$method-table247450%_
                                                     (let ((__tmp250381
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__method-table))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp250381)))
                                                    (_%methods247452%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%method-calls246237%_)))
                                                    (_%$methods247456%_
                                                     (let ((__tmp250382
                                                            (lambda (_%id247454%_)
                                                              (let ((__tmp250383
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id247454%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp250383)))))
               (declare (not safe))
               (##map __tmp250382 _%methods247452%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_247465%_
                                                     (let ((__tmp250384
                                                            (lambda (_%$%g247457247460%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g247458247462%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%method-calls246237%_
                         _%$%g247457247460%_
                         _%$%g247458247462%_)))))
               (declare (not safe))
               (##for-each __tmp250384 _%methods247452%_ _%$methods247456%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%methods-bind247475%_
                                                     (let ((__tmp250385
                                                            (lambda (_%$%g247467247470%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g247468247472%_)
                      (_%generate-method-bind246147%_
                       _%$klass247448%_
                       _%$method-table247450%_
                       _%$%g247467247470%_
                       _%$%g247468247472%_))))
               (declare (not safe))
               (##map __tmp250385 _%methods247452%_ _%$methods247456%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots247477%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%slot-refs246238%_)))
                                                    (_%$slots247481%_
                                                     (let ((__tmp250386
                                                            (lambda (_%id247479%_)
                                                              (let ((__tmp250387
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id247479%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp250387)))))
               (declare (not safe))
               (##map __tmp250386 _%slots247477%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_247490%_
                                                     (let ((__tmp250388
                                                            (lambda (_%$%g247482247485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g247483247487%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%slot-refs246238%_
                         _%$%g247482247485%_
                         _%$%g247483247487%_)))))
               (declare (not safe))
               (##for-each __tmp250388 _%slots247477%_ _%$slots247481%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots-bind247499%_
                                                     (let ((__tmp250389
                                                            (lambda (_%$%g247491247494%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g247492247496%_)
                      (_%generate-slot-bind246148%_
                       _%$klass247448%_
                       _%$%g247491247494%_
                       _%$%g247492247496%_))))
               (declare (not safe))
               (##map __tmp250389 _%slots247477%_ _%$slots247481%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-lambda-expr247591%_
                                                     (let* ((_%$%g247501247519%_
                                                             (lambda (_%$%g247502247516%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g247502247516%_))))
                    (_%$%g247500247588%_
                     (lambda (_%$%g247502247522%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g247502247522%_))
                           (let ((_%$%e247506247524%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g247502247522%_))))
                             (let ((_%$%hd247507247527%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e247506247524%_)))
                                   (_%$%tl247508247529%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e247506247524%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl247508247529%_))
                                   (let ((_%$%e247509247532%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl247508247529%_))))
                                     (let ((_%$%hd247510247535%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e247509247532%_)))
                                           (_%$%tl247511247537%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e247509247532%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd247510247535%_))
                                           (let ((_%$%e247512247540%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd247510247535%_))))
                                             (let ((_%$%hd247513247543%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e247512247540%_)))
                                                   (_%$%tl247514247545%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e247512247540%_))))
                                               (let* ((_%receiver247579%_
                                                       (let ((_%$e247576%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%tl247511247537%_))))
                 (if _%$e247576%_ _%$e247576%_ _%$%hd247513247543%_)))
              (_%body247585%_
               (map (lambda (_%$%g247580247582%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver247579%_
                       _%$klass247448%_
                       _%method-calls246237%_
                       _%slot-refs246238%_
                       _%$%g247580247582%_))
                    _%$%tl247511247537%_))
              (__tmp250390
               (cons '%#lambda
                     (cons (cons _%$%hd247513247543%_ _%$%tl247514247545%_)
                           _%body247585%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp250390
                                                  _%$%hd247123247180%_))))
                                           (_%$%g247501247519%_
                                            _%$%g247502247522%_))))
                                   (_%$%g247501247519%_ _%$%g247502247522%_))))
                           (_%$%g247501247519%_ _%$%g247502247522%_)))))
               (_%$%g247500247588%_ _%$%hd247123247180%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-case-lambda-expr247752%_
                                                     (let* ((_%$%g247593247612%_
                                                             (lambda (_%$%g247594247609%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g247594247609%_))))
                    (_%$%g247592247749%_
                     (lambda (_%$%g247594247615%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g247594247615%_))
                           (let ((_%$%e247596247617%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g247594247615%_))))
                             (let ((_%$%hd247597247620%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e247596247617%_)))
                                   (_%$%tl247598247622%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e247596247617%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair/null? _%$%tl247598247622%_))
                                   (let ((_g250391_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-split-splice
                                             _%$%tl247598247622%_
                                             '0))))
                                     (begin
                                       (let ((_g250392_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g250391_)
                                                    (##values-length _g250391_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g250392_ 2)))
                                             (error "Context expects 2 values"
                                                    _g250392_)))
                                       (let ((_%$%target247599247625%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g250391_ 0)))
                                             (_%$%tl247601247627%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g250391_ 1))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%$%tl247601247627%_))
                                             (letrec ((_%$%loop247602247630%_
                                                       (lambda (_%$%hd247600247633%_
                                                                _%$%clause247606247635%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%hd247600247633%_))
                     (let ((_%$%e247603247637%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%hd247600247633%_))))
                       (let ((_%$%lp-hd247604247640%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e247603247637%_)))
                             (_%$%lp-tl247605247642%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e247603247637%_))))
                         (_%$%loop247602247630%_
                          _%$%lp-tl247605247642%_
                          (cons _%$%lp-hd247604247640%_
                                _%$%clause247606247635%_))))
                     (let* ((_%$%clause247607247645%_
                             (reverse _%$%clause247606247635%_))
                            (_%clauses247747%_
                             (map (lambda (_%clause247661%_)
                                    (let* ((_%__stx249184249185%_
                                            _%clause247661%_)
                                           (_%$%g247664247679%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%__stx249184249185%_)))))
                                      (let ((_%__kont249186249187%_
                                             (lambda (_%$%g247666247707%_
                                                      _%$%g247667247708%_
                                                      _%$%g247668247709%_)
                                               (let* ((_%receiver247728%_
                                                       (let ((_%$e247725%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%g247666247707%_))))
                 (if _%$e247725%_ _%$e247725%_ _%$%g247668247709%_)))
              (_%body247734%_
               (map (lambda (_%$%g247729247731%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver247728%_
                       _%$klass247448%_
                       _%method-calls246237%_
                       _%slot-refs246238%_
                       _%$%g247729247731%_))
                    _%$%g247666247707%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g247668247709%_
                                                             _%$%g247667247708%_)
                                                       _%body247734%_))))
                                            (_%__kont249188249189%_
                                             (lambda () _%clause247661%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%__stx249184249185%_))
                                            (let ((_%$%e247669247691%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%__stx249184249185%_))))
                                              (let ((_%$%tl247671247696%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e247669247691%_)))
                                                    (_%$%hd247670247694%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e247669247691%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd247670247694%_))
                                                    (let ((_%$%e247672247699%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd247670247694%_))))
                                                      (let ((_%$%tl247674247704%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e247672247699%_)))
                    (_%$%hd247673247702%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e247672247699%_))))
                (_%__kont249186249187%_
                 _%$%tl247671247696%_
                 _%$%tl247674247704%_
                 _%$%hd247673247702%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont249188249189%_))))
                                            (_%__kont249188249189%_)))))
                                  (let ((__tmp250393
                                         (lambda (_%$%g247739247742%_
                                                  _%$%g247740247744%_)
                                           (cons _%$%g247739247742%_
                                                 _%$%g247740247744%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp250393
                                     '()
                                     _%$%clause247607247645%_))))
                            (__tmp250394
                             (cons '%#case-lambda _%clauses247747%_)))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp250394
                        _%$%hd247126247188%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop247602247630%_
                                                _%$%target247599247625%_
                                                '()))
                                             (_%$%g247593247612%_
                                              _%$%g247594247615%_)))))
                                   (_%$%g247593247612%_ _%$%g247594247615%_))))
                           (_%$%g247593247612%_ _%$%g247594247615%_)))))
               (_%$%g247592247749%_ _%$%hd247126247188%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl247754%_
                                                     (let ((__tmp250395
                                                            (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _%$%hd247120247172%_ '())
                                            (cons _%specializer-lambda-expr247591%_
                                                  '()))
                                      '())
                                (cons _%specializer-case-lambda-expr247752%_
                                      '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp250395 _%stx246145%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl247756%_
                                                     (_%generate-specializer-impl246149%_
                                                      _%$klass247448%_
                                                      _%$method-table247450%_
                                                      _%methods-bind247475%_
                                                      _%slots-bind247499%_
                                                      _%specializer-impl247754%_)))
                                               (let ((__tmp250397
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g246156246218%_)))
                                                     (__tmp250396
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%specializer-id247446%_))))
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"generate method specializer "
                                                  __tmp250397
                                                  '" => "
                                                  __tmp250396))
                                               (_%generate-specializer-def246150%_
                                                _%$%g246156246218%_
                                                _%specializer-id247446%_
                                                _%specializer-impl247756%_))))
                                       (_%$%g247102247132%_
                                        _%$%g247103247135%_))))
                               (_%$%g247102247132%_ _%$%g247103247135%_))
                           (_%$%g247102247132%_ _%$%g247103247135%_))
                       (_%$%g247102247132%_ _%$%g247103247135%_))))
               (_%$%g247102247132%_ _%$%g247103247135%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g247102247132%_
                                                    _%$%g247103247135%_))))
                                           (_%$%g247102247132%_
                                            _%$%g247103247135%_))))
                                   (_%$%g247102247132%_ _%$%g247103247135%_))))
                           (_%$%g247102247132%_ _%$%g247103247135%_))))
                   (_%$%g247102247132%_ _%$%g247103247135%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g247102247132%_
                                                    _%$%g247103247135%_)))))
                                       (_%$%g247101247759%_
                                        _%$%g246155246217%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%$%g246155246217%_))
                                         (let* ((_%$%g247763247816%_
                                                 (lambda (_%$%g247764247813%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g247764247813%_))))
                                                (_%$%g247762248981%_
                                                 (lambda (_%$%g247764247819%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g247764247819%_))
                                                       (let ((_%$%e247770247821%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g247764247819%_))))
                 (let ((_%$%hd247771247824%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e247770247821%_)))
                       (_%$%tl247772247826%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e247770247821%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%$%hd247771247824%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%$%hd247771247824%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl247772247826%_))
                               (let ((_%$%e247773247829%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl247772247826%_))))
                                 (let ((_%$%hd247774247832%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e247773247829%_)))
                                       (_%$%tl247775247834%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e247773247829%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd247774247832%_))
                                       (let ((_%$%e247776247837%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd247774247832%_))))
                                         (let ((_%$%hd247777247840%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e247776247837%_)))
                                               (_%$%tl247778247842%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e247776247837%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd247777247840%_))
                                               (let ((_%$%e247779247845%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd247777247840%_))))
                                                 (let ((_%$%hd247780247848%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e247779247845%_)))
                                                       (_%$%tl247781247850%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e247779247845%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%hd247780247848%_))
                                                       (let ((_%$%e247782247853%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%hd247780247848%_))))
                 (let ((_%$%hd247783247856%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e247782247853%_)))
                       (_%$%tl247784247858%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e247782247853%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl247784247858%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl247781247850%_))
                           (let ((_%$%e247785247861%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl247781247850%_))))
                             (let ((_%$%hd247786247864%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e247785247861%_)))
                                   (_%$%tl247787247866%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e247785247861%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd247786247864%_))
                                   (let ((_%$%e247788247869%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd247786247864%_))))
                                     (let ((_%$%hd247789247872%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e247788247869%_)))
                                           (_%$%tl247790247874%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e247788247869%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd247789247872%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%$%hd247789247872%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl247790247874%_))
                                                   (let ((_%$%e247791247877%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl247790247874%_))))
                                                     (let ((_%$%hd247792247880%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e247791247877%_)))
                                                           (_%$%tl247793247882%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e247791247877%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd247792247880%_))
                                                           (let ((_%$%e247794247885%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd247792247880%_))))
                     (let ((_%$%hd247795247888%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e247794247885%_)))
                           (_%$%tl247796247890%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e247794247885%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd247795247888%_))
                           (let ((_%$%e247797247893%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd247795247888%_))))
                             (let ((_%$%hd247798247896%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e247797247893%_)))
                                   (_%$%tl247799247898%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e247797247893%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd247798247896%_))
                                   (let ((_%$%e247800247901%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd247798247896%_))))
                                     (let ((_%$%hd247801247904%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e247800247901%_)))
                                           (_%$%tl247802247906%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e247800247901%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl247802247906%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl247799247898%_))
                                               (let ((_%$%e247803247909%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl247799247898%_))))
                                                 (let ((_%$%hd247804247912%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e247803247909%_)))
                                                       (_%$%tl247805247914%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e247803247909%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl247805247914%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl247796247890%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl247793247882%_))
                       (let ((_%$%e247806247917%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl247793247882%_))))
                         (let ((_%$%hd247807247920%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e247806247917%_)))
                               (_%$%tl247808247922%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e247806247917%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl247808247922%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl247787247866%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl247778247842%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl247775247834%_))
                                           (let ((_%$%e247809247925%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl247775247834%_))))
                                             (let ((_%$%hd247810247928%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e247809247925%_)))
                                                   (_%$%tl247811247930%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e247809247925%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl247811247930%_))
                                                   (let* ((_%$%g247977248039%_
                                                           (lambda (_%$%g247978248036%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g247978248036%_))))
                  (_%$%g247976248978%_
                   (lambda (_%$%g247978248042%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g247978248042%_))
                         (let ((_%$%e247984248044%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g247978248042%_))))
                           (let ((_%$%hd247985248047%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e247984248044%_)))
                                 (_%$%tl247986248049%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e247984248044%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd247985248047%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#lambda
                                        _%$%hd247985248047%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl247986248049%_))
                                         (let ((_%$%e247987248052%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl247986248049%_))))
                                           (let ((_%$%hd247988248055%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e247987248052%_)))
                                                 (_%$%tl247989248057%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e247987248052%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl247989248057%_))
                                                 (let ((_%$%e247990248060%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl247989248057%_))))
                                                   (let ((_%$%hd247991248063%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e247990248060%_)))
                                                         (_%$%tl247992248065%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e247990248060%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%hd247991248063%_))
                                                         (let ((_%$%e247993248068%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd247991248063%_))))
                   (let ((_%$%hd247994248071%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e247993248068%_)))
                         (_%$%tl247995248073%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e247993248068%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%$%hd247994248071%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#call _%$%hd247994248071%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl247995248073%_))
                                 (let ((_%$%e247996248076%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl247995248073%_))))
                                   (let ((_%$%hd247997248079%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e247996248076%_)))
                                         (_%$%tl247998248081%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e247996248076%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd247997248079%_))
                                         (let ((_%$%e247999248084%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd247997248079%_))))
                                           (let ((_%$%hd248000248087%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e247999248084%_)))
                                                 (_%$%tl248001248089%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e247999248084%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd248000248087%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%$%hd248000248087%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl248001248089%_))
                                                         (let ((_%$%e248002248092%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl248001248089%_))))
                   (let ((_%$%hd248003248095%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e248002248092%_)))
                         (_%$%tl248004248097%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e248002248092%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl248004248097%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl247998248081%_))
                             (let ((_%$%e248005248100%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl247998248081%_))))
                               (let ((_%$%hd248006248103%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e248005248100%_)))
                                     (_%$%tl248007248105%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e248005248100%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd248006248103%_))
                                     (let ((_%$%e248008248108%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd248006248103%_))))
                                       (let ((_%$%hd248009248111%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e248008248108%_)))
                                             (_%$%tl248010248113%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e248008248108%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%hd248009248111%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#ref
                                                    _%$%hd248009248111%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl248010248113%_))
                                                     (let ((_%$%e248011248116%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl248010248113%_))))
                                                       (let ((_%$%hd248012248119%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e248011248116%_)))
                     (_%$%tl248013248121%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e248011248116%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl248013248121%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl248007248105%_))
                         (let ((_%$%e248014248124%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl248007248105%_))))
                           (let ((_%$%hd248015248127%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e248014248124%_)))
                                 (_%$%tl248016248129%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e248014248124%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd248015248127%_))
                                 (let ((_%$%e248017248132%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd248015248127%_))))
                                   (let ((_%$%hd248018248135%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e248017248132%_)))
                                         (_%$%tl248019248137%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e248017248132%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier?
                                            _%$%hd248018248135%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%$%hd248018248135%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl248019248137%_))
                                                 (let ((_%$%e248020248140%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl248019248137%_))))
                                                   (let ((_%$%hd248021248143%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e248020248140%_)))
                                                         (_%$%tl248022248145%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e248020248140%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl248022248145%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair/null? _%$%tl248016248129%_))
                     (if (let ((__tmp250398
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-length _%$%tl248016248129%_))))
                           (declare (not safe))
                           (##fx>= __tmp250398 '1))
                         (let ((_g250399_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-split-splice
                                   _%$%tl248016248129%_
                                   '1))))
                           (begin
                             (let ((_g250400_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g250399_)
                                          (##values-length _g250399_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g250400_ 2)))
                                   (error "Context expects 2 values"
                                          _g250400_)))
                             (let ((_%$%target248023248148%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g250399_ 0)))
                                   (_%$%tl248025248150%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g250399_ 1))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl248025248150%_))
                                   (let ((_%$%e248032248153%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl248025248150%_))))
                                     (let ((_%$%hd248033248156%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e248032248153%_)))
                                           (_%$%tl248034248158%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e248032248153%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl248034248158%_))
                                           (letrec ((_%$%loop248026248161%_
                                                     (lambda (_%$%hd248024248164%_
                                                              _%$%kw-ref248030248166%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd248024248164%_))
                                                           (let ((_%$%e248027248168%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd248024248164%_))))
                     (let ((_%$%lp-hd248028248171%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e248027248168%_)))
                           (_%$%lp-tl248029248173%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e248027248168%_))))
                       (_%$%loop248026248161%_
                        _%$%lp-tl248029248173%_
                        (cons _%$%lp-hd248028248171%_
                              _%$%kw-ref248030248166%_))))
                   (let ((_%$%kw-ref248031248176%_
                          (reverse _%$%kw-ref248030248166%_)))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl247992248065%_))
                         (let* ((_%kw-count248233%_
                                 (length (let ((__tmp250401
                                                (lambda (_%$%g248225248228%_
                                                         _%$%g248226248230%_)
                                                  (cons _%$%g248225248228%_
                                                        _%$%g248226248230%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp250401
                                            '()
                                            _%$%kw-ref248031248176%_))))
                                (_%self-index248235%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%kw-count248233%_ '1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#lambda-expr? _%$%hd247804247912%_))
                               (let* ((_%$%g248239248253%_
                                       (lambda (_%$%g248240248250%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g248240248250%_))))
                                      (_%$%g248238248376%_
                                       (lambda (_%$%g248240248256%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%g248240248256%_))
                                             (let ((_%$%e248243248258%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g248240248256%_))))
                                               (let ((_%$%hd248244248261%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e248243248258%_)))
                                                     (_%$%tl248245248263%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e248243248258%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl248245248263%_))
                                                     (let ((_%$%e248246248266%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl248245248263%_))))
                                                       (let ((_%$%hd248247248269%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e248246248266%_)))
                     (_%$%tl248248248271%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e248246248266%_))))
                 (let* ((_%self248292%_
                         (list-ref _%$%hd248247248269%_ _%self-index248235%_))
                        (_%receiver248297%_
                         (let ((_%$e248294%_
                                (gxc#apply-extract-receiver
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '%#begin))
                                       _%$%tl248248248271%_))))
                           (if _%$e248294%_ _%$e248294%_ _%self248292%_))))
                   (for-each
                    (lambda (_%$%g248299248301%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver248297%_
                       _%method-calls246237%_
                       _%slot-refs246238%_
                       _%$%g248299248301%_))
                    _%$%tl248248248271%_)
                   (if (_%no-specializer?246241%_)
                       _%stx246145%_
                       (let* ((_%specializer-id248310%_
                               (let* ((_%id248304%_
                                       (let ((__tmp250402
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%g246156246218%_))))
                                         (declare (not safe))
                                         (make-symbol__1
                                          __tmp250402
                                          '"::specialize")))
                                      (_%specializer-id248307%_
                                       (let ((__tmp250403
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-source
                                                 _%stx246145%_))))
                                         (declare (not safe))
                                         (gx#core-quote-syntax__1
                                          _%id248304%_
                                          __tmp250403))))
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-bind-runtime!__0
                                    _%specializer-id248307%_))
                                 _%specializer-id248307%_))
                              (_%$klass248312%_
                               (let ((__tmp250404
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__klass))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp250404)))
                              (_%$method-table248314%_
                               (let ((__tmp250405
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__method-table))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp250405)))
                              (_%methods248316%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%method-calls246237%_)))
                              (_%$methods248320%_
                               (let ((__tmp250406
                                      (lambda (_%id248318%_)
                                        (let ((__tmp250407
                                               (gensym _%id248318%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp250407)))))
                                 (declare (not safe))
                                 (##map __tmp250406 _%methods248316%_)))
                              (_%_248329%_
                               (let ((__tmp250408
                                      (lambda (_%$%g248321248324%_
                                               _%$%g248322248326%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%method-calls246237%_
                                           _%$%g248321248324%_
                                           _%$%g248322248326%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp250408
                                  _%methods248316%_
                                  _%$methods248320%_)))
                              (_%methods-bind248339%_
                               (let ((__tmp250409
                                      (lambda (_%$%g248331248334%_
                                               _%$%g248332248336%_)
                                        (_%generate-method-bind246147%_
                                         _%$klass248312%_
                                         _%$method-table248314%_
                                         _%$%g248331248334%_
                                         _%$%g248332248336%_))))
                                 (declare (not safe))
                                 (##map __tmp250409
                                        _%methods248316%_
                                        _%$methods248320%_)))
                              (_%slots248341%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%slot-refs246238%_)))
                              (_%$slots248345%_
                               (let ((__tmp250410
                                      (lambda (_%id248343%_)
                                        (let ((__tmp250411
                                               (gensym _%id248343%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp250411)))))
                                 (declare (not safe))
                                 (##map __tmp250410 _%slots248341%_)))
                              (_%_248354%_
                               (let ((__tmp250412
                                      (lambda (_%$%g248346248349%_
                                               _%$%g248347248351%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%slot-refs246238%_
                                           _%$%g248346248349%_
                                           _%$%g248347248351%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp250412
                                  _%slots248341%_
                                  _%$slots248345%_)))
                              (_%slots-bind248363%_
                               (let ((__tmp250413
                                      (lambda (_%$%g248355248358%_
                                               _%$%g248356248360%_)
                                        (_%generate-slot-bind246148%_
                                         _%$klass248312%_
                                         _%$%g248355248358%_
                                         _%$%g248356248360%_))))
                                 (declare (not safe))
                                 (##map __tmp250413
                                        _%slots248341%_
                                        _%$slots248345%_)))
                              (_%specializer-impl248371%_
                               (let* ((_%specializer-body248369%_
                                       (map (lambda (_%$%g248364248366%_)
                                              (gxc#apply-subst-object-refs__%
                                               '#f
                                               _%receiver248297%_
                                               _%$klass248312%_
                                               _%method-calls246237%_
                                               _%slot-refs246238%_
                                               _%$%g248364248366%_))
                                            _%$%tl248248248271%_))
                                      (__tmp250414
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _%$%hd247783247856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#let-values
                                   (cons (cons (cons (cons _%$%hd247801247904%_
                                                           '())
                                                     (cons (let ((__tmp250415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#lambda
                                (cons _%$%hd248247248269%_
                                      _%specializer-body248369%_))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp250415 _%$%hd247804247912%_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%$%hd247807247920%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%$%hd247810247928%_
                                                         '())))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp250414
                                  _%stx246145%_)))
                              (_%specializer-impl248373%_
                               (_%generate-specializer-impl246149%_
                                _%$klass248312%_
                                _%$method-table248314%_
                                _%methods-bind248339%_
                                _%slots-bind248363%_
                                _%specializer-impl248371%_)))
                         (let ((__tmp250417
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g246156246218%_)))
                               (__tmp250416
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%specializer-id248310%_))))
                           (declare (not safe))
                           (gxc#verbose
                            '"generate method specializer "
                            __tmp250417
                            '" => "
                            __tmp250416))
                         (_%generate-specializer-def246150%_
                          _%$%g246156246218%_
                          _%specializer-id248310%_
                          _%specializer-impl248373%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248239248253%_
                                                      _%$%g248240248256%_))))
                                             (_%$%g248239248253%_
                                              _%$%g248240248256%_)))))
                                 (_%$%g248238248376%_ _%$%hd247804247912%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr?
                                      _%$%hd247804247912%_))
                                   (let* ((_%$%g248380248410%_
                                           (lambda (_%$%g248381248407%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g248381248407%_))))
                                          (_%$%g248379248974%_
                                           (lambda (_%$%g248381248413%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%g248381248413%_))
                                                 (let ((_%$%e248385248415%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g248381248413%_))))
                                                   (let ((_%$%hd248386248418%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e248385248415%_)))
                                                         (_%$%tl248387248420%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e248385248415%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl248387248420%_))
                                                         (let ((_%$%e248388248423%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl248387248420%_))))
                   (let ((_%$%hd248389248426%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e248388248423%_)))
                         (_%$%tl248390248428%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e248388248423%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd248389248426%_))
                         (let ((_%$%e248391248431%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd248389248426%_))))
                           (let ((_%$%hd248392248434%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e248391248431%_)))
                                 (_%$%tl248393248436%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e248391248431%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd248392248434%_))
                                 (let ((_%$%e248394248439%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd248392248434%_))))
                                   (let ((_%$%hd248395248442%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e248394248439%_)))
                                         (_%$%tl248396248444%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e248394248439%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd248395248442%_))
                                         (let ((_%$%e248397248447%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd248395248442%_))))
                                           (let ((_%$%hd248398248450%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e248397248447%_)))
                                                 (_%$%tl248399248452%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e248397248447%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl248399248452%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl248396248444%_))
                                                     (let ((_%$%e248400248455%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl248396248444%_))))
                                                       (let ((_%$%hd248401248458%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e248400248455%_)))
                     (_%$%tl248402248460%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e248400248455%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl248402248460%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl248393248436%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl248390248428%_))
                             (let ((_%$%e248403248463%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl248390248428%_))))
                               (let ((_%$%hd248404248466%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e248403248463%_)))
                                     (_%$%tl248405248468%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e248403248463%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl248405248468%_))
                                     (let ()
                                       (let* ((_%$%g248497248511%_
                                               (lambda (_%$%g248498248508%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g248498248508%_))))
                                              (_%$%g248496248558%_
                                               (lambda (_%$%g248498248514%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g248498248514%_))
                                                     (let ((_%$%e248501248516%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g248498248514%_))))
                                                       (let ((_%$%hd248502248519%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e248501248516%_)))
                     (_%$%tl248503248521%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e248501248516%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl248503248521%_))
                     (let ((_%$%e248504248524%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl248503248521%_))))
                       (let ((_%$%hd248505248527%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e248504248524%_)))
                             (_%$%tl248506248529%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e248504248524%_))))
                         (let* ((_%self248546%_
                                 (list-ref
                                  _%$%hd248505248527%_
                                  _%self-index248235%_))
                                (_%receiver248551%_
                                 (let ((_%$e248548%_
                                        (gxc#apply-extract-receiver
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin))
                                               _%$%tl248506248529%_))))
                                   (if _%$e248548%_
                                       _%$e248548%_
                                       _%self248546%_))))
                           (for-each
                            (lambda (_%$%g248553248555%_)
                              (gxc#apply-collect-object-refs__%
                               '#f
                               _%receiver248551%_
                               _%method-calls246237%_
                               _%slot-refs246238%_
                               _%$%g248553248555%_))
                            _%$%tl248506248529%_))))
                     (_%$%g248497248511%_ _%$%g248498248514%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248497248511%_
                                                      _%$%g248498248514%_)))))
                                         (_%$%g248496248558%_
                                          _%$%hd248401248458%_))
                                       (let* ((_%$%g248561248580%_
                                               (lambda (_%$%g248562248577%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g248562248577%_))))
                                              (_%$%g248560248689%_
                                               (lambda (_%$%g248562248583%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g248562248583%_))
                                                     (let ((_%$%e248564248585%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g248562248583%_))))
                                                       (let ((_%$%hd248565248588%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e248564248585%_)))
                     (_%$%tl248566248590%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e248564248585%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair/null? _%$%tl248566248590%_))
                     (let ((_g250418_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-split-splice
                               _%$%tl248566248590%_
                               '0))))
                       (begin
                         (let ((_g250419_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g250418_)
                                      (##values-length _g250418_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g250419_ 2)))
                               (error "Context expects 2 values" _g250419_)))
                         (let ((_%$%target248567248593%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g250418_ 0)))
                               (_%$%tl248569248595%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g250418_ 1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl248569248595%_))
                               (letrec ((_%$%loop248570248598%_
                                         (lambda (_%$%hd248568248601%_
                                                  _%$%clause248574248603%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd248568248601%_))
                                               (let ((_%$%e248571248605%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd248568248601%_))))
                                                 (let ((_%$%lp-hd248572248608%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e248571248605%_)))
                                                       (_%$%lp-tl248573248610%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e248571248605%_))))
                                                   (_%$%loop248570248598%_
                                                    _%$%lp-tl248573248610%_
                                                    (cons _%$%lp-hd248572248608%_
                                                          _%$%clause248574248603%_))))
                                               (let ((_%$%clause248575248613%_
                                                      (reverse _%$%clause248574248603%_)))
                                                 (for-each
                                                  (lambda (_%clause248628%_)
                                                    (let* ((_%$%g248630248641%_
                                                            (lambda (_%$%g248631248638%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g248631248638%_))))
                   (_%$%g248629248679%_
                    (lambda (_%$%g248631248644%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g248631248644%_))
                          (let ((_%$%e248634248646%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g248631248644%_))))
                            (let ((_%$%hd248635248649%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e248634248646%_)))
                                  (_%$%tl248636248651%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e248634248646%_))))
                              (let* ((_%self248667%_
                                      (list-ref
                                       _%$%hd248635248649%_
                                       _%self-index248235%_))
                                     (_%receiver248672%_
                                      (let ((_%$e248669%_
                                             (gxc#apply-extract-receiver
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#begin))
                                                    _%$%tl248636248651%_))))
                                        (if _%$e248669%_
                                            _%$e248669%_
                                            _%self248667%_))))
                                (for-each
                                 (lambda (_%$%g248674248676%_)
                                   (gxc#apply-collect-object-refs__%
                                    '#f
                                    _%receiver248672%_
                                    _%method-calls246237%_
                                    _%slot-refs246238%_
                                    _%$%g248674248676%_))
                                 _%$%tl248636248651%_))))
                          (_%$%g248630248641%_ _%$%g248631248644%_)))))
              (_%$%g248629248679%_ _%clause248628%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp250420
                                                         (lambda (_%$%g248681248684%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g248682248686%_)
                   (cons _%$%g248681248684%_ _%$%g248682248686%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp250420
                                                     '()
                                                     _%$%clause248575248613%_))))))))
                                 (_%$%loop248570248598%_
                                  _%$%target248567248593%_
                                  '()))
                               (_%$%g248561248580%_ _%$%g248562248583%_)))))
                     (_%$%g248561248580%_ _%$%g248562248583%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248561248580%_
                                                      _%$%g248562248583%_)))))
                                         (_%$%g248560248689%_
                                          _%$%hd248404248466%_))
                                       (if (_%no-specializer?246241%_)
                                           _%stx246145%_
                                           (let* ((_%specializer-id248698%_
                                                   (let* ((_%id248692%_
                                                           (let ((__tmp250421
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g246156246218%_))))
                     (declare (not safe))
                     (make-symbol__1 __tmp250421 '"::specialize")))
                  (_%specializer-id248695%_
                   (let ((__tmp250422
                          (let ()
                            (declare (not safe))
                            (gx#stx-source _%stx246145%_))))
                     (declare (not safe))
                     (gx#core-quote-syntax__1 _%id248692%_ __tmp250422))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#core-bind-runtime!__0
                                                        _%specializer-id248695%_))
                                                     _%specializer-id248695%_))
                                                  (_%$klass248700%_
                                                   (let ((__tmp250423
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__klass))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp250423)))
                                                  (_%$method-table248702%_
                                                   (let ((__tmp250424
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__method-table))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp250424)))
                                                  (_%methods248704%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%method-calls246237%_)))
                                                  (_%$methods248708%_
                                                   (let ((__tmp250425
                                                          (lambda (_%id248706%_)
                                                            (let ((__tmp250426
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id248706%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp250426)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp250425
                                                            _%methods248704%_)))
                                                  (_%_248717%_
                                                   (let ((__tmp250427
                                                          (lambda (_%$%g248709248712%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g248710248714%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%method-calls246237%_
                       _%$%g248709248712%_
                       _%$%g248710248714%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp250427
                                                      _%methods248704%_
                                                      _%$methods248708%_)))
                                                  (_%methods-bind248727%_
                                                   (let ((__tmp250428
                                                          (lambda (_%$%g248719248722%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g248720248724%_)
                    (_%generate-method-bind246147%_
                     _%$klass248700%_
                     _%$method-table248702%_
                     _%$%g248719248722%_
                     _%$%g248720248724%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp250428
                                                            _%methods248704%_
                                                            _%$methods248708%_)))
                                                  (_%slots248729%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%slot-refs246238%_)))
                                                  (_%$slots248733%_
                                                   (let ((__tmp250429
                                                          (lambda (_%id248731%_)
                                                            (let ((__tmp250430
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id248731%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp250430)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp250429
                                                            _%slots248729%_)))
                                                  (_%_248742%_
                                                   (let ((__tmp250431
                                                          (lambda (_%$%g248734248737%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g248735248739%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%slot-refs246238%_
                       _%$%g248734248737%_
                       _%$%g248735248739%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp250431
                                                      _%slots248729%_
                                                      _%$slots248733%_)))
                                                  (_%slots-bind248751%_
                                                   (let ((__tmp250432
                                                          (lambda (_%$%g248743248746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g248744248748%_)
                    (_%generate-slot-bind246148%_
                     _%$klass248700%_
                     _%$%g248743248746%_
                     _%$%g248744248748%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp250432
                                                            _%slots248729%_
                                                            _%$slots248733%_)))
                                                  (_%specializer-lambda-expr248829%_
                                                   (let* ((_%$%g248753248767%_
                                                           (lambda (_%$%g248754248764%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g248754248764%_))))
                  (_%$%g248752248826%_
                   (lambda (_%$%g248754248770%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g248754248770%_))
                         (let ((_%$%e248757248772%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g248754248770%_))))
                           (let ((_%$%hd248758248775%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e248757248772%_)))
                                 (_%$%tl248759248777%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e248757248772%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl248759248777%_))
                                 (let ((_%$%e248760248780%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl248759248777%_))))
                                   (let ((_%$%hd248761248783%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e248760248780%_)))
                                         (_%$%tl248762248785%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e248760248780%_))))
                                     (let* ((_%self248812%_
                                             (list-ref
                                              _%$%hd248761248783%_
                                              _%self-index248235%_))
                                            (_%receiver248817%_
                                             (let ((_%$e248814%_
                                                    (gxc#apply-extract-receiver
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%$%tl248762248785%_))))
                                               (if _%$e248814%_
                                                   _%$e248814%_
                                                   _%self248812%_)))
                                            (_%body248823%_
                                             (map (lambda (_%$%g248818248820%_)
                                                    (gxc#apply-subst-object-refs__%
                                                     '#f
                                                     _%receiver248817%_
                                                     _%$klass248700%_
                                                     _%method-calls246237%_
                                                     _%slot-refs246238%_
                                                     _%$%g248818248820%_))
                                                  _%$%tl248762248785%_))
                                            (__tmp250433
                                             (cons '%#lambda
                                                   (cons _%$%hd248761248783%_
                                                         _%body248823%_))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp250433
                                        _%$%hd248401248458%_))))
                                 (_%$%g248753248767%_ _%$%g248754248770%_))))
                         (_%$%g248753248767%_ _%$%g248754248770%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248752248826%_
                                                      _%$%hd248401248458%_)))
                                                  (_%specializer-case-lambda-expr248967%_
                                                   (let* ((_%$%g248831248850%_
                                                           (lambda (_%$%g248832248847%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g248832248847%_))))
                  (_%$%g248830248964%_
                   (lambda (_%$%g248832248853%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g248832248853%_))
                         (let ((_%$%e248834248855%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g248832248853%_))))
                           (let ((_%$%hd248835248858%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e248834248855%_)))
                                 (_%$%tl248836248860%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e248834248855%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair/null? _%$%tl248836248860%_))
                                 (let ((_g250434_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-split-splice
                                           _%$%tl248836248860%_
                                           '0))))
                                   (begin
                                     (let ((_g250435_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g250434_)
                                                  (##values-length _g250434_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g250435_ 2)))
                                           (error "Context expects 2 values"
                                                  _g250435_)))
                                     (let ((_%$%target248837248863%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g250434_ 0)))
                                           (_%$%tl248839248865%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g250434_ 1))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl248839248865%_))
                                           (letrec ((_%$%loop248840248868%_
                                                     (lambda (_%$%hd248838248871%_
                                                              _%$%clause248844248873%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd248838248871%_))
                                                           (let ((_%$%e248841248875%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd248838248871%_))))
                     (let ((_%$%lp-hd248842248878%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e248841248875%_)))
                           (_%$%lp-tl248843248880%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e248841248875%_))))
                       (_%$%loop248840248868%_
                        _%$%lp-tl248843248880%_
                        (cons _%$%lp-hd248842248878%_
                              _%$%clause248844248873%_))))
                   (let* ((_%$%clause248845248883%_
                           (reverse _%$%clause248844248873%_))
                          (_%clauses248962%_
                           (map (lambda (_%clause248899%_)
                                  (let* ((_%$%g248901248912%_
                                          (lambda (_%$%g248902248909%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g248902248909%_))))
                                         (_%$%g248900248952%_
                                          (lambda (_%$%g248902248915%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g248902248915%_))
                                                (let ((_%$%e248905248917%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g248902248915%_))))
                                                  (let ((_%$%hd248906248920%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e248905248917%_)))
                                                        (_%$%tl248907248922%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e248905248917%_))))
                                                    (let* ((_%self248938%_
                                                            (list-ref
                                                             _%$%hd248906248920%_
                                                             _%self-index248235%_))
                                                           (_%receiver248943%_
                                                            (let ((_%$e248940%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-extract-receiver
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#begin))
                                  _%$%tl248907248922%_))))
                      (if _%$e248940%_ _%$e248940%_ _%self248938%_)))
                   (_%body248949%_
                    (map (lambda (_%$%g248944248946%_)
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%receiver248943%_
                            _%$klass248700%_
                            _%method-calls246237%_
                            _%slot-refs246238%_
                            _%$%g248944248946%_))
                         _%$%tl248907248922%_)))
              (cons _%$%hd248906248920%_ _%body248949%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g248901248912%_
                                                 _%$%g248902248915%_)))))
                                    (_%$%g248900248952%_ _%clause248899%_)))
                                (let ((__tmp250436
                                       (lambda (_%$%g248954248957%_
                                                _%$%g248955248959%_)
                                         (cons _%$%g248954248957%_
                                               _%$%g248955248959%_))))
                                  (declare (not safe))
                                  (foldr__0
                                   __tmp250436
                                   '()
                                   _%$%clause248845248883%_))))
                          (__tmp250437
                           (cons '%#case-lambda _%clauses248962%_)))
                     (declare (not safe))
                     (gxc#xform-wrap-source
                      __tmp250437
                      _%$%hd248404248466%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop248840248868%_
                                              _%$%target248837248863%_
                                              '()))
                                           (_%$%g248831248850%_
                                            _%$%g248832248853%_)))))
                                 (_%$%g248831248850%_ _%$%g248832248853%_))))
                         (_%$%g248831248850%_ _%$%g248832248853%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248830248964%_
                                                      _%$%hd248404248466%_)))
                                                  (_%specializer-impl248969%_
                                                   (let ((__tmp250438
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$%hd247783247856%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons (cons '%#let-values
                                                      (cons (cons (cons (cons _%$%hd247801247904%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (let ((__tmp250439
                                             (cons '%#let-values
                                                   (cons (cons (cons (cons _%$%hd248398248450%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons _%specializer-lambda-expr248829%_ '()))
                       '())
                 (cons _%specializer-case-lambda-expr248967%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp250439
                                         _%stx246145%_))
                                      '()))
                          '())
                    (cons _%$%hd247807247920%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())
                              (cons _%$%hd247810247928%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp250438
                                                      _%stx246145%_)))
                                                  (_%specializer-impl248971%_
                                                   (_%generate-specializer-impl246149%_
                                                    _%$klass248700%_
                                                    _%$method-table248702%_
                                                    _%methods-bind248727%_
                                                    _%slots-bind248751%_
                                                    _%specializer-impl248969%_)))
                                             (let ((__tmp250441
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g246156246218%_)))
                                                   (__tmp250440
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%specializer-id248698%_))))
                                               (declare (not safe))
                                               (gxc#verbose
                                                '"generate method specializer "
                                                __tmp250441
                                                '" => "
                                                __tmp250440))
                                             (_%generate-specializer-def246150%_
                                              _%$%g246156246218%_
                                              _%specializer-id248698%_
                                              _%specializer-impl248971%_))))
                                     (_%$%g248380248410%_
                                      _%$%g248381248413%_))))
                             (_%$%g248380248410%_ _%$%g248381248413%_))
                         (_%$%g248380248410%_ _%$%g248381248413%_))
                     (_%$%g248380248410%_ _%$%g248381248413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248380248410%_
                                                      _%$%g248381248413%_))
                                                 (_%$%g248380248410%_
                                                  _%$%g248381248413%_))))
                                         (_%$%g248380248410%_
                                          _%$%g248381248413%_))))
                                 (_%$%g248380248410%_ _%$%g248381248413%_))))
                         (_%$%g248380248410%_ _%$%g248381248413%_))))
                 (_%$%g248380248410%_ _%$%g248381248413%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g248380248410%_
                                                  _%$%g248381248413%_)))))
                                     (_%$%g248379248974%_
                                      _%$%hd247804247912%_))
                                   _%stx246145%_)))
                         (_%$%g247977248039%_ _%$%g247978248042%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop248026248161%_
                                              _%$%target248023248148%_
                                              '()))
                                           (_%$%g247977248039%_
                                            _%$%g247978248042%_))))
                                   (_%$%g247977248039%_
                                    _%$%g247978248042%_)))))
                         (_%$%g247977248039%_ _%$%g247978248042%_))
                     (_%$%g247977248039%_ _%$%g247978248042%_))
                 (_%$%g247977248039%_ _%$%g247978248042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g247977248039%_
                                                  _%$%g247978248042%_))
                                             (_%$%g247977248039%_
                                              _%$%g247978248042%_))
                                         (_%$%g247977248039%_
                                          _%$%g247978248042%_))))
                                 (_%$%g247977248039%_ _%$%g247978248042%_))))
                         (_%$%g247977248039%_ _%$%g247978248042%_))
                     (_%$%g247977248039%_ _%$%g247978248042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g247977248039%_
                                                      _%$%g247978248042%_))
                                                 (_%$%g247977248039%_
                                                  _%$%g247978248042%_))
                                             (_%$%g247977248039%_
                                              _%$%g247978248042%_))))
                                     (_%$%g247977248039%_
                                      _%$%g247978248042%_))))
                             (_%$%g247977248039%_ _%$%g247978248042%_))
                         (_%$%g247977248039%_ _%$%g247978248042%_))))
                 (_%$%g247977248039%_ _%$%g247978248042%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g247977248039%_
                                                      _%$%g247978248042%_))
                                                 (_%$%g247977248039%_
                                                  _%$%g247978248042%_))))
                                         (_%$%g247977248039%_
                                          _%$%g247978248042%_))))
                                 (_%$%g247977248039%_ _%$%g247978248042%_))
                             (_%$%g247977248039%_ _%$%g247978248042%_))
                         (_%$%g247977248039%_ _%$%g247978248042%_))))
                 (_%$%g247977248039%_ _%$%g247978248042%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g247977248039%_
                                                  _%$%g247978248042%_))))
                                         (_%$%g247977248039%_
                                          _%$%g247978248042%_))
                                     (_%$%g247977248039%_ _%$%g247978248042%_))
                                 (_%$%g247977248039%_ _%$%g247978248042%_))))
                         (_%$%g247977248039%_ _%$%g247978248042%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g247976248978%_
                                                      _%$%hd247807247920%_))
                                                   (_%$%g247763247816%_
                                                    _%$%g247764247819%_))))
                                           (_%$%g247763247816%_
                                            _%$%g247764247819%_))
                                       (_%$%g247763247816%_
                                        _%$%g247764247819%_))
                                   (_%$%g247763247816%_ _%$%g247764247819%_))
                               (_%$%g247763247816%_ _%$%g247764247819%_))))
                       (_%$%g247763247816%_ _%$%g247764247819%_))
                   (_%$%g247763247816%_ _%$%g247764247819%_))
               (_%$%g247763247816%_ _%$%g247764247819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g247763247816%_
                                                _%$%g247764247819%_))
                                           (_%$%g247763247816%_
                                            _%$%g247764247819%_))))
                                   (_%$%g247763247816%_ _%$%g247764247819%_))))
                           (_%$%g247763247816%_ _%$%g247764247819%_))))
                   (_%$%g247763247816%_ _%$%g247764247819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g247763247816%_
                                                    _%$%g247764247819%_))
                                               (_%$%g247763247816%_
                                                _%$%g247764247819%_))
                                           (_%$%g247763247816%_
                                            _%$%g247764247819%_))))
                                   (_%$%g247763247816%_ _%$%g247764247819%_))))
                           (_%$%g247763247816%_ _%$%g247764247819%_))
                       (_%$%g247763247816%_ _%$%g247764247819%_))))
               (_%$%g247763247816%_ _%$%g247764247819%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g247763247816%_
                                                _%$%g247764247819%_))))
                                       (_%$%g247763247816%_
                                        _%$%g247764247819%_))))
                               (_%$%g247763247816%_ _%$%g247764247819%_))
                           (_%$%g247763247816%_ _%$%g247764247819%_))
                       (_%$%g247763247816%_ _%$%g247764247819%_))))
               (_%$%g247763247816%_ _%$%g247764247819%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g247762248981%_
                                            _%$%g246155246217%_))
                                         _%stx246145%_))))))))
                  (_%__kont249208249209%_ (lambda () _%stx246145%_)))
              (let ((_%__match249237249238%_
                     (lambda (_%$%e246157246185%_
                              _%$%hd246158246188%_
                              _%$%tl246159246190%_
                              _%$%e246160246193%_
                              _%$%hd246161246196%_
                              _%$%tl246162246198%_
                              _%$%e246163246201%_
                              _%$%hd246164246204%_
                              _%$%tl246165246206%_
                              _%$%e246166246209%_
                              _%$%hd246167246212%_
                              _%$%tl246168246214%_)
                       (let ((_%$%g246155246217%_ _%$%hd246167246212%_)
                             (_%$%g246156246218%_ _%$%hd246164246204%_))
                         (if (let ((__tmp250442
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g246156246218%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp250442))
                             (_%__kont249206249207%_
                              _%$%g246155246217%_
                              _%$%g246156246218%_)
                             (_%__kont249208249209%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx249204249205%_))
                    (let ((_%$%e246157246185%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx249204249205%_))))
                      (let ((_%$%tl246159246190%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e246157246185%_)))
                            (_%$%hd246158246188%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e246157246185%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl246159246190%_))
                            (let ((_%$%e246160246193%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl246159246190%_))))
                              (let ((_%$%tl246162246198%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e246160246193%_)))
                                    (_%$%hd246161246196%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e246160246193%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd246161246196%_))
                                    (let ((_%$%e246163246201%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd246161246196%_))))
                                      (let ((_%$%tl246165246206%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e246163246201%_)))
                                            (_%$%hd246164246204%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e246163246201%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl246165246206%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl246162246198%_))
                                                (let ((_%$%e246166246209%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl246162246198%_))))
                                                  (let ((_%$%tl246168246214%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e246166246209%_)))
                                                        (_%$%hd246167246212%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e246166246209%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl246168246214%_))
                                                        (_%__match249237249238%_
                                                         _%$%e246157246185%_
                                                         _%$%hd246158246188%_
                                                         _%$%tl246159246190%_
                                                         _%$%e246160246193%_
                                                         _%$%hd246161246196%_
                                                         _%$%tl246162246198%_
                                                         _%$%e246163246201%_
                                                         _%$%hd246164246204%_
                                                         _%$%tl246165246206%_
                                                         _%$%e246166246209%_
                                                         _%$%hd246167246212%_
                                                         _%$%tl246168246214%_)
                                                        (_%__kont249208249209%_))))
                                                (_%__kont249208249209%_))
                                            (_%__kont249208249209%_))))
                                    (_%__kont249208249209%_))))
                            (_%__kont249208249209%_))))
                    (_%__kont249208249209%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self245997%_ _%stx245998%_)
        (let* ((_%__stx249240249241%_ _%stx245998%_)
               (_%$%g246001246034%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx249240249241%_)))))
          (let ((_%__kont249242249243%_
                 (lambda (_%$%g246003246124%_) _%$%g246003246124%_))
                (_%__kont249244249245%_
                 (lambda (_%$%g246019246063%_ _%$%g246020246064%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self245997%_ _%$%g246019246063%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx249240249241%_))
                (let ((_%$%e246004246084%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx249240249241%_))))
                  (let ((_%$%tl246006246089%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e246004246084%_)))
                        (_%$%hd246005246087%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e246004246084%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl246006246089%_))
                        (let ((_%$%e246007246092%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl246006246089%_))))
                          (let ((_%$%tl246009246097%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e246007246092%_)))
                                (_%$%hd246008246095%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e246007246092%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd246008246095%_))
                                (let ((_%$%e246010246100%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd246008246095%_))))
                                  (let ((_%$%tl246012246105%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e246010246100%_)))
                                        (_%$%hd246011246103%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e246010246100%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd246011246103%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%$%hd246011246103%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl246012246105%_))
                                                (let ((_%$%e246013246108%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl246012246105%_))))
                                                  (let ((_%$%tl246015246113%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e246013246108%_)))
                                                        (_%$%hd246014246111%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e246013246108%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl246015246113%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl246009246097%_))
                                                            (let ((_%$%e246016246116%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl246009246097%_))))
                      (let ((_%$%tl246018246121%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e246016246116%_)))
                            (_%$%hd246017246119%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e246016246116%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl246018246121%_))
                            (_%__kont249242249243%_ _%$%hd246014246111%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g246001246034%_)))))
                    (let () (declare (not safe)) (_%$%g246001246034%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl246009246097%_))
                    (let ((_%$%e246027246055%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl246009246097%_))))
                      (let ((_%$%tl246029246060%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e246027246055%_)))
                            (_%$%hd246028246058%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e246027246055%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl246029246060%_))
                            (_%__kont249244249245%_
                             _%$%hd246028246058%_
                             _%$%hd246008246095%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g246001246034%_)))))
                    (let () (declare (not safe)) (_%$%g246001246034%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl246009246097%_))
                                                    (let ((_%$%e246027246055%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl246009246097%_))))
                                                      (let ((_%$%tl246029246060%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e246027246055%_)))
                    (_%$%hd246028246058%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e246027246055%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl246029246060%_))
                    (_%__kont249244249245%_
                     _%$%hd246028246058%_
                     _%$%hd246008246095%_)
                    (let () (declare (not safe)) (_%$%g246001246034%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g246001246034%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl246009246097%_))
                                                (let ((_%$%e246027246055%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl246009246097%_))))
                                                  (let ((_%$%tl246029246060%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e246027246055%_)))
                                                        (_%$%hd246028246058%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e246027246055%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl246029246060%_))
                                                        (_%__kont249244249245%_
                                                         _%$%hd246028246058%_
                                                         _%$%hd246008246095%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g246001246034%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g246001246034%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl246009246097%_))
                                            (let ((_%$%e246027246055%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl246009246097%_))))
                                              (let ((_%$%tl246029246060%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e246027246055%_)))
                                                    (_%$%hd246028246058%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e246027246055%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl246029246060%_))
                                                    (_%__kont249244249245%_
                                                     _%$%hd246028246058%_
                                                     _%$%hd246008246095%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g246001246034%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g246001246034%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl246009246097%_))
                                    (let ((_%$%e246027246055%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl246009246097%_))))
                                      (let ((_%$%tl246029246060%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e246027246055%_)))
                                            (_%$%hd246028246058%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e246027246055%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl246029246060%_))
                                            (_%__kont249244249245%_
                                             _%$%hd246028246058%_
                                             _%$%hd246008246095%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g246001246034%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g246001246034%_))))))
                        (let () (declare (not safe)) (_%$%g246001246034%_)))))
                (let () (declare (not safe)) (_%$%g246001246034%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self245913%_ _%stx245914%_)
        (let* ((_%$%g245916245937%_
                (lambda (_%$%g245917245934%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g245917245934%_))))
               (_%$%g245915245994%_
                (lambda (_%$%g245917245940%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g245917245940%_))
                      (let ((_%$%e245921245942%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g245917245940%_))))
                        (let ((_%$%hd245922245945%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e245921245942%_)))
                              (_%$%tl245923245947%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e245921245942%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl245923245947%_))
                              (let ((_%$%e245924245950%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl245923245947%_))))
                                (let ((_%$%hd245925245953%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e245924245950%_)))
                                      (_%$%tl245926245955%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e245924245950%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl245926245955%_))
                                      (let ((_%$%e245927245958%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl245926245955%_))))
                                        (let ((_%$%hd245928245961%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e245927245958%_)))
                                              (_%$%tl245929245963%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e245927245958%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl245929245963%_))
                                              (let ((_%$%e245930245966%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl245929245963%_))))
                                                (let ((_%$%hd245931245969%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e245930245966%_)))
                                                      (_%$%tl245932245971%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e245930245966%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl245932245971%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self245913%_
                                                         _%$%hd245928245961%_))
                                                      (_%$%g245916245937%_
                                                       _%$%g245917245940%_))))
                                              (_%$%g245916245937%_
                                               _%$%g245917245940%_))))
                                      (_%$%g245916245937%_
                                       _%$%g245917245940%_))))
                              (_%$%g245916245937%_ _%$%g245917245940%_))))
                      (_%$%g245916245937%_ _%$%g245917245940%_)))))
          (_%$%g245915245994%_ _%stx245914%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self244878%_ _%stx244879%_)
        (let* ((_%__stx249306249307%_ _%stx244879%_)
               (_%$%g244887245109%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx249306249307%_)))))
          (let ((_%__kont249308249309%_
                 (lambda (_%$%g244889245862%_
                          _%$%g244890245863%_
                          _%$%g244891245864%_
                          _%$%g244892245865%_)
                   (let ((__tmp250444
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self244878%_ 'methods)))
                         (__tmp250443
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g244890245863%_))))
                     (declare (not safe))
                     (hash-put! __tmp250444 __tmp250443 '#t))
                   (for-each
                    (lambda (_%$%g245898245900%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self244878%_ _%$%g245898245900%_)))
                    (let ((__tmp250445
                           (lambda (_%$%g245902245905%_ _%$%g245903245907%_)
                             (cons _%$%g245902245905%_ _%$%g245903245907%_))))
                      (declare (not safe))
                      (foldr__0 __tmp250445 '() _%$%g244889245862%_)))))
                (_%__kont249312249313%_
                 (lambda (_%$%g244932245699%_
                          _%$%g244933245700%_
                          _%$%g244934245701%_
                          _%$%g244935245702%_
                          _%$%g244936245703%_)
                   (let ((__tmp250447
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self244878%_ 'methods)))
                         (__tmp250446
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g244933245700%_))))
                     (declare (not safe))
                     (hash-put! __tmp250447 __tmp250446 '#t))
                   (for-each
                    (lambda (_%$%g245743245745%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self244878%_ _%$%g245743245745%_)))
                    (let ((__tmp250448
                           (lambda (_%$%g245747245750%_ _%$%g245748245752%_)
                             (cons _%$%g245747245750%_ _%$%g245748245752%_))))
                      (declare (not safe))
                      (foldr__0 __tmp250448 '() _%$%g244932245699%_)))))
                (_%__kont249316249317%_
                 (lambda (_%$%g244985245534%_
                          _%$%g244986245535%_
                          _%$%g244987245536%_)
                   (let ((__tmp250450
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self244878%_ 'slots)))
                         (__tmp250449
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g244985245534%_))))
                     (declare (not safe))
                     (hash-put! __tmp250450 __tmp250449 '#t))))
                (_%__kont249318249319%_
                 (lambda (_%$%g245018245411%_
                          _%$%g245019245412%_
                          _%$%g245020245413%_
                          _%$%g245021245414%_)
                   (let ((__tmp250452
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self244878%_ 'slots)))
                         (__tmp250451
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g245019245412%_))))
                     (declare (not safe))
                     (hash-put! __tmp250452 __tmp250451 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self244878%_ _%$%g245018245411%_))))
                (_%__kont249320249321%_
                 (lambda (_%$%g245055245285%_ _%$%g245056245286%_)
                   (let* ((_%accessor245308%_
                           (let ((__tmp250453
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g245056245286%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp250453)))
                          (_%klass245310%_
                           (let ((__tmp250454
                                  (##structure-ref
                                   _%accessor245308%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx244879%_
                              __tmp250454)))
                          (_%slot245312%_
                           (##structure-ref
                            _%accessor245308%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor245308%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass245310%_
                                    _%slot245312%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass245310%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp250456
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self244878%_ 'slots)))
                               (__tmp250455
                                (##structure-ref
                                 _%accessor245308%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp250456 __tmp250455 '#t))))))
                (_%__kont249322249323%_
                 (lambda (_%$%g245078245185%_
                          _%$%g245079245186%_
                          _%$%g245080245187%_)
                   (let* ((_%mutator245214%_
                           (let ((__tmp250457
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g245080245187%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp250457)))
                          (_%klass245216%_
                           (let ((__tmp250458
                                  (##structure-ref
                                   _%mutator245214%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx244879%_
                              __tmp250458)))
                          (_%slot245218%_
                           (##structure-ref
                            _%mutator245214%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator245214%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass245216%_
                                    _%slot245218%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass245216%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp250459
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self244878%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp250459 _%slot245218%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1
                        _%self244878%_
                        _%$%g245078245185%_)))))
                (_%__kont249324249325%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self244878%_ _%stx244879%_)))))
            (let* ((_%__match249805249806%_
                    (lambda (_%$%e245081245121%_
                             _%$%hd245082245124%_
                             _%$%tl245083245126%_
                             _%$%e245084245129%_
                             _%$%hd245085245132%_
                             _%$%tl245086245134%_
                             _%$%e245087245137%_
                             _%$%hd245088245140%_
                             _%$%tl245089245142%_
                             _%$%e245090245145%_
                             _%$%hd245091245148%_
                             _%$%tl245092245150%_
                             _%$%e245093245153%_
                             _%$%hd245094245156%_
                             _%$%tl245095245158%_
                             _%$%e245096245161%_
                             _%$%hd245097245164%_
                             _%$%tl245098245166%_
                             _%$%e245099245169%_
                             _%$%hd245100245172%_
                             _%$%tl245101245174%_
                             _%$%e245102245177%_
                             _%$%hd245103245180%_
                             _%$%tl245104245182%_)
                      (let ((_%$%g245078245185%_ _%$%hd245103245180%_)
                            (_%$%g245079245186%_ _%$%hd245100245172%_)
                            (_%$%g245080245187%_ _%$%hd245091245148%_))
                        (if (and (let ((__tmp250460
                                        (let ((__tmp250461
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g245080245187%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp250461))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp250460
                                    'gxc#!mutator::t))
                                 (let ((__tmp250462
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self244878%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g245079245186%_
                                    __tmp250462)))
                            (_%__kont249322249323%_
                             _%$%g245078245185%_
                             _%$%g245079245186%_
                             _%$%g245080245187%_)
                            (_%__kont249324249325%_)))))
                   (_%__match249803249804%_
                    (lambda (_%$%e245081245121%_
                             _%$%hd245082245124%_
                             _%$%tl245083245126%_
                             _%$%e245084245129%_
                             _%$%hd245085245132%_
                             _%$%tl245086245134%_
                             _%$%e245087245137%_
                             _%$%hd245088245140%_
                             _%$%tl245089245142%_
                             _%$%e245090245145%_
                             _%$%hd245091245148%_
                             _%$%tl245092245150%_
                             _%$%e245093245153%_
                             _%$%hd245094245156%_
                             _%$%tl245095245158%_
                             _%$%e245096245161%_
                             _%$%hd245097245164%_
                             _%$%tl245098245166%_
                             _%$%e245099245169%_
                             _%$%hd245100245172%_
                             _%$%tl245101245174%_
                             _%$%e245102245177%_
                             _%$%hd245103245180%_
                             _%$%tl245104245182%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl245104245182%_))
                          (_%__match249805249806%_
                           _%$%e245081245121%_
                           _%$%hd245082245124%_
                           _%$%tl245083245126%_
                           _%$%e245084245129%_
                           _%$%hd245085245132%_
                           _%$%tl245086245134%_
                           _%$%e245087245137%_
                           _%$%hd245088245140%_
                           _%$%tl245089245142%_
                           _%$%e245090245145%_
                           _%$%hd245091245148%_
                           _%$%tl245092245150%_
                           _%$%e245093245153%_
                           _%$%hd245094245156%_
                           _%$%tl245095245158%_
                           _%$%e245096245161%_
                           _%$%hd245097245164%_
                           _%$%tl245098245166%_
                           _%$%e245099245169%_
                           _%$%hd245100245172%_
                           _%$%tl245101245174%_
                           _%$%e245102245177%_
                           _%$%hd245103245180%_
                           _%$%tl245104245182%_)
                          (_%__kont249324249325%_))))
                   (_%__match249797249798%_
                    (lambda (_%$%e245081245121%_
                             _%$%hd245082245124%_
                             _%$%tl245083245126%_
                             _%$%e245084245129%_
                             _%$%hd245085245132%_
                             _%$%tl245086245134%_
                             _%$%e245087245137%_
                             _%$%hd245088245140%_
                             _%$%tl245089245142%_
                             _%$%e245090245145%_
                             _%$%hd245091245148%_
                             _%$%tl245092245150%_
                             _%$%e245093245153%_
                             _%$%hd245094245156%_
                             _%$%tl245095245158%_
                             _%$%e245096245161%_
                             _%$%hd245097245164%_
                             _%$%tl245098245166%_
                             _%$%e245099245169%_
                             _%$%hd245100245172%_
                             _%$%tl245101245174%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl245095245158%_))
                          (let ((_%$%e245102245177%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl245095245158%_))))
                            (let ((_%$%tl245104245182%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e245102245177%_)))
                                  (_%$%hd245103245180%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e245102245177%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl245104245182%_))
                                  (_%__match249805249806%_
                                   _%$%e245081245121%_
                                   _%$%hd245082245124%_
                                   _%$%tl245083245126%_
                                   _%$%e245084245129%_
                                   _%$%hd245085245132%_
                                   _%$%tl245086245134%_
                                   _%$%e245087245137%_
                                   _%$%hd245088245140%_
                                   _%$%tl245089245142%_
                                   _%$%e245090245145%_
                                   _%$%hd245091245148%_
                                   _%$%tl245092245150%_
                                   _%$%e245093245153%_
                                   _%$%hd245094245156%_
                                   _%$%tl245095245158%_
                                   _%$%e245096245161%_
                                   _%$%hd245097245164%_
                                   _%$%tl245098245166%_
                                   _%$%e245099245169%_
                                   _%$%hd245100245172%_
                                   _%$%tl245101245174%_
                                   _%$%e245102245177%_
                                   _%$%hd245103245180%_
                                   _%$%tl245104245182%_)
                                  (_%__kont249324249325%_))))
                          (_%__kont249324249325%_))))
                   (_%__match249743249744%_
                    (lambda (_%$%e245057245229%_
                             _%$%hd245058245232%_
                             _%$%tl245059245234%_
                             _%$%e245060245237%_
                             _%$%hd245061245240%_
                             _%$%tl245062245242%_
                             _%$%e245063245245%_
                             _%$%hd245064245248%_
                             _%$%tl245065245250%_
                             _%$%e245066245253%_
                             _%$%hd245067245256%_
                             _%$%tl245068245258%_
                             _%$%e245069245261%_
                             _%$%hd245070245264%_
                             _%$%tl245071245266%_
                             _%$%e245072245269%_
                             _%$%hd245073245272%_
                             _%$%tl245074245274%_
                             _%$%e245075245277%_
                             _%$%hd245076245280%_
                             _%$%tl245077245282%_)
                      (let ((_%$%g245055245285%_ _%$%hd245076245280%_)
                            (_%$%g245056245286%_ _%$%hd245067245256%_))
                        (if (and (let ((__tmp250463
                                        (let ((__tmp250464
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g245056245286%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp250464))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp250463
                                    'gxc#!accessor::t))
                                 (let ((__tmp250465
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self244878%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g245055245285%_
                                    __tmp250465)))
                            (_%__kont249320249321%_
                             _%$%g245055245285%_
                             _%$%g245056245286%_)
                            (_%__kont249324249325%_)))))
                   (_%__match249741249742%_
                    (lambda (_%$%e245057245229%_
                             _%$%hd245058245232%_
                             _%$%tl245059245234%_
                             _%$%e245060245237%_
                             _%$%hd245061245240%_
                             _%$%tl245062245242%_
                             _%$%e245063245245%_
                             _%$%hd245064245248%_
                             _%$%tl245065245250%_
                             _%$%e245066245253%_
                             _%$%hd245067245256%_
                             _%$%tl245068245258%_
                             _%$%e245069245261%_
                             _%$%hd245070245264%_
                             _%$%tl245071245266%_
                             _%$%e245072245269%_
                             _%$%hd245073245272%_
                             _%$%tl245074245274%_
                             _%$%e245075245277%_
                             _%$%hd245076245280%_
                             _%$%tl245077245282%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl245071245266%_))
                          (_%__match249743249744%_
                           _%$%e245057245229%_
                           _%$%hd245058245232%_
                           _%$%tl245059245234%_
                           _%$%e245060245237%_
                           _%$%hd245061245240%_
                           _%$%tl245062245242%_
                           _%$%e245063245245%_
                           _%$%hd245064245248%_
                           _%$%tl245065245250%_
                           _%$%e245066245253%_
                           _%$%hd245067245256%_
                           _%$%tl245068245258%_
                           _%$%e245069245261%_
                           _%$%hd245070245264%_
                           _%$%tl245071245266%_
                           _%$%e245072245269%_
                           _%$%hd245073245272%_
                           _%$%tl245074245274%_
                           _%$%e245075245277%_
                           _%$%hd245076245280%_
                           _%$%tl245077245282%_)
                          (_%__match249797249798%_
                           _%$%e245057245229%_
                           _%$%hd245058245232%_
                           _%$%tl245059245234%_
                           _%$%e245060245237%_
                           _%$%hd245061245240%_
                           _%$%tl245062245242%_
                           _%$%e245063245245%_
                           _%$%hd245064245248%_
                           _%$%tl245065245250%_
                           _%$%e245066245253%_
                           _%$%hd245067245256%_
                           _%$%tl245068245258%_
                           _%$%e245069245261%_
                           _%$%hd245070245264%_
                           _%$%tl245071245266%_
                           _%$%e245072245269%_
                           _%$%hd245073245272%_
                           _%$%tl245074245274%_
                           _%$%e245075245277%_
                           _%$%hd245076245280%_
                           _%$%tl245077245282%_))))
                   (_%__match249687249688%_
                    (lambda (_%$%e245022245323%_
                             _%$%hd245023245326%_
                             _%$%tl245024245328%_
                             _%$%e245025245331%_
                             _%$%hd245026245334%_
                             _%$%tl245027245336%_
                             _%$%e245028245339%_
                             _%$%hd245029245342%_
                             _%$%tl245030245344%_
                             _%$%e245031245347%_
                             _%$%hd245032245350%_
                             _%$%tl245033245352%_
                             _%$%e245034245355%_
                             _%$%hd245035245358%_
                             _%$%tl245036245360%_
                             _%$%e245037245363%_
                             _%$%hd245038245366%_
                             _%$%tl245039245368%_
                             _%$%e245040245371%_
                             _%$%hd245041245374%_
                             _%$%tl245042245376%_
                             _%$%e245043245379%_
                             _%$%hd245044245382%_
                             _%$%tl245045245384%_
                             _%$%e245046245387%_
                             _%$%hd245047245390%_
                             _%$%tl245048245392%_
                             _%$%e245049245395%_
                             _%$%hd245050245398%_
                             _%$%tl245051245400%_
                             _%$%e245052245403%_
                             _%$%hd245053245406%_
                             _%$%tl245054245408%_)
                      (let ((_%$%g245018245411%_ _%$%hd245053245406%_)
                            (_%$%g245019245412%_ _%$%hd245050245398%_)
                            (_%$%g245020245413%_ _%$%hd245041245374%_)
                            (_%$%g245021245414%_ _%$%hd245032245350%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g245021245414%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g245021245414%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp250466
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self244878%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g245020245413%_
                                    __tmp250466)))
                            (_%__kont249318249319%_
                             _%$%g245018245411%_
                             _%$%g245019245412%_
                             _%$%g245020245413%_
                             _%$%g245021245414%_)
                            (_%__kont249324249325%_)))))
                   (_%__match249679249680%_
                    (lambda (_%$%e245022245323%_
                             _%$%hd245023245326%_
                             _%$%tl245024245328%_
                             _%$%e245025245331%_
                             _%$%hd245026245334%_
                             _%$%tl245027245336%_
                             _%$%e245028245339%_
                             _%$%hd245029245342%_
                             _%$%tl245030245344%_
                             _%$%e245031245347%_
                             _%$%hd245032245350%_
                             _%$%tl245033245352%_
                             _%$%e245034245355%_
                             _%$%hd245035245358%_
                             _%$%tl245036245360%_
                             _%$%e245037245363%_
                             _%$%hd245038245366%_
                             _%$%tl245039245368%_
                             _%$%e245040245371%_
                             _%$%hd245041245374%_
                             _%$%tl245042245376%_
                             _%$%e245043245379%_
                             _%$%hd245044245382%_
                             _%$%tl245045245384%_
                             _%$%e245046245387%_
                             _%$%hd245047245390%_
                             _%$%tl245048245392%_
                             _%$%e245049245395%_
                             _%$%hd245050245398%_
                             _%$%tl245051245400%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl245045245384%_))
                          (let ((_%$%e245052245403%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl245045245384%_))))
                            (let ((_%$%tl245054245408%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e245052245403%_)))
                                  (_%$%hd245053245406%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e245052245403%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl245054245408%_))
                                  (_%__match249687249688%_
                                   _%$%e245022245323%_
                                   _%$%hd245023245326%_
                                   _%$%tl245024245328%_
                                   _%$%e245025245331%_
                                   _%$%hd245026245334%_
                                   _%$%tl245027245336%_
                                   _%$%e245028245339%_
                                   _%$%hd245029245342%_
                                   _%$%tl245030245344%_
                                   _%$%e245031245347%_
                                   _%$%hd245032245350%_
                                   _%$%tl245033245352%_
                                   _%$%e245034245355%_
                                   _%$%hd245035245358%_
                                   _%$%tl245036245360%_
                                   _%$%e245037245363%_
                                   _%$%hd245038245366%_
                                   _%$%tl245039245368%_
                                   _%$%e245040245371%_
                                   _%$%hd245041245374%_
                                   _%$%tl245042245376%_
                                   _%$%e245043245379%_
                                   _%$%hd245044245382%_
                                   _%$%tl245045245384%_
                                   _%$%e245046245387%_
                                   _%$%hd245047245390%_
                                   _%$%tl245048245392%_
                                   _%$%e245049245395%_
                                   _%$%hd245050245398%_
                                   _%$%tl245051245400%_
                                   _%$%e245052245403%_
                                   _%$%hd245053245406%_
                                   _%$%tl245054245408%_)
                                  (_%__kont249324249325%_))))
                          (_%__match249803249804%_
                           _%$%e245022245323%_
                           _%$%hd245023245326%_
                           _%$%tl245024245328%_
                           _%$%e245025245331%_
                           _%$%hd245026245334%_
                           _%$%tl245027245336%_
                           _%$%e245028245339%_
                           _%$%hd245029245342%_
                           _%$%tl245030245344%_
                           _%$%e245031245347%_
                           _%$%hd245032245350%_
                           _%$%tl245033245352%_
                           _%$%e245034245355%_
                           _%$%hd245035245358%_
                           _%$%tl245036245360%_
                           _%$%e245037245363%_
                           _%$%hd245038245366%_
                           _%$%tl245039245368%_
                           _%$%e245040245371%_
                           _%$%hd245041245374%_
                           _%$%tl245042245376%_
                           _%$%e245043245379%_
                           _%$%hd245044245382%_
                           _%$%tl245045245384%_))))
                   (_%__match249601249602%_
                    (lambda (_%$%e244988245454%_
                             _%$%hd244989245457%_
                             _%$%tl244990245459%_
                             _%$%e244991245462%_
                             _%$%hd244992245465%_
                             _%$%tl244993245467%_
                             _%$%e244994245470%_
                             _%$%hd244995245473%_
                             _%$%tl244996245475%_
                             _%$%e244997245478%_
                             _%$%hd244998245481%_
                             _%$%tl244999245483%_
                             _%$%e245000245486%_
                             _%$%hd245001245489%_
                             _%$%tl245002245491%_
                             _%$%e245003245494%_
                             _%$%hd245004245497%_
                             _%$%tl245005245499%_
                             _%$%e245006245502%_
                             _%$%hd245007245505%_
                             _%$%tl245008245507%_
                             _%$%e245009245510%_
                             _%$%hd245010245513%_
                             _%$%tl245011245515%_
                             _%$%e245012245518%_
                             _%$%hd245013245521%_
                             _%$%tl245014245523%_
                             _%$%e245015245526%_
                             _%$%hd245016245529%_
                             _%$%tl245017245531%_)
                      (let ((_%$%g244985245534%_ _%$%hd245016245529%_)
                            (_%$%g244986245535%_ _%$%hd245007245505%_)
                            (_%$%g244987245536%_ _%$%hd244998245481%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g244987245536%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g244987245536%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp250467
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self244878%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g244986245535%_
                                    __tmp250467)))
                            (_%__kont249316249317%_
                             _%$%g244985245534%_
                             _%$%g244986245535%_
                             _%$%g244987245536%_)
                            (_%__match249805249806%_
                             _%$%e244988245454%_
                             _%$%hd244989245457%_
                             _%$%tl244990245459%_
                             _%$%e244991245462%_
                             _%$%hd244992245465%_
                             _%$%tl244993245467%_
                             _%$%e244994245470%_
                             _%$%hd244995245473%_
                             _%$%tl244996245475%_
                             _%$%e244997245478%_
                             _%$%hd244998245481%_
                             _%$%tl244999245483%_
                             _%$%e245000245486%_
                             _%$%hd245001245489%_
                             _%$%tl245002245491%_
                             _%$%e245003245494%_
                             _%$%hd245004245497%_
                             _%$%tl245005245499%_
                             _%$%e245006245502%_
                             _%$%hd245007245505%_
                             _%$%tl245008245507%_
                             _%$%e245009245510%_
                             _%$%hd245010245513%_
                             _%$%tl245011245515%_)))))
                   (_%__match249599249600%_
                    (lambda (_%$%e244988245454%_
                             _%$%hd244989245457%_
                             _%$%tl244990245459%_
                             _%$%e244991245462%_
                             _%$%hd244992245465%_
                             _%$%tl244993245467%_
                             _%$%e244994245470%_
                             _%$%hd244995245473%_
                             _%$%tl244996245475%_
                             _%$%e244997245478%_
                             _%$%hd244998245481%_
                             _%$%tl244999245483%_
                             _%$%e245000245486%_
                             _%$%hd245001245489%_
                             _%$%tl245002245491%_
                             _%$%e245003245494%_
                             _%$%hd245004245497%_
                             _%$%tl245005245499%_
                             _%$%e245006245502%_
                             _%$%hd245007245505%_
                             _%$%tl245008245507%_
                             _%$%e245009245510%_
                             _%$%hd245010245513%_
                             _%$%tl245011245515%_
                             _%$%e245012245518%_
                             _%$%hd245013245521%_
                             _%$%tl245014245523%_
                             _%$%e245015245526%_
                             _%$%hd245016245529%_
                             _%$%tl245017245531%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl245011245515%_))
                          (_%__match249601249602%_
                           _%$%e244988245454%_
                           _%$%hd244989245457%_
                           _%$%tl244990245459%_
                           _%$%e244991245462%_
                           _%$%hd244992245465%_
                           _%$%tl244993245467%_
                           _%$%e244994245470%_
                           _%$%hd244995245473%_
                           _%$%tl244996245475%_
                           _%$%e244997245478%_
                           _%$%hd244998245481%_
                           _%$%tl244999245483%_
                           _%$%e245000245486%_
                           _%$%hd245001245489%_
                           _%$%tl245002245491%_
                           _%$%e245003245494%_
                           _%$%hd245004245497%_
                           _%$%tl245005245499%_
                           _%$%e245006245502%_
                           _%$%hd245007245505%_
                           _%$%tl245008245507%_
                           _%$%e245009245510%_
                           _%$%hd245010245513%_
                           _%$%tl245011245515%_
                           _%$%e245012245518%_
                           _%$%hd245013245521%_
                           _%$%tl245014245523%_
                           _%$%e245015245526%_
                           _%$%hd245016245529%_
                           _%$%tl245017245531%_)
                          (_%__match249679249680%_
                           _%$%e244988245454%_
                           _%$%hd244989245457%_
                           _%$%tl244990245459%_
                           _%$%e244991245462%_
                           _%$%hd244992245465%_
                           _%$%tl244993245467%_
                           _%$%e244994245470%_
                           _%$%hd244995245473%_
                           _%$%tl244996245475%_
                           _%$%e244997245478%_
                           _%$%hd244998245481%_
                           _%$%tl244999245483%_
                           _%$%e245000245486%_
                           _%$%hd245001245489%_
                           _%$%tl245002245491%_
                           _%$%e245003245494%_
                           _%$%hd245004245497%_
                           _%$%tl245005245499%_
                           _%$%e245006245502%_
                           _%$%hd245007245505%_
                           _%$%tl245008245507%_
                           _%$%e245009245510%_
                           _%$%hd245010245513%_
                           _%$%tl245011245515%_
                           _%$%e245012245518%_
                           _%$%hd245013245521%_
                           _%$%tl245014245523%_
                           _%$%e245015245526%_
                           _%$%hd245016245529%_
                           _%$%tl245017245531%_))))
                   (_%__match249589249590%_
                    (lambda (_%$%e244988245454%_
                             _%$%hd244989245457%_
                             _%$%tl244990245459%_
                             _%$%e244991245462%_
                             _%$%hd244992245465%_
                             _%$%tl244993245467%_
                             _%$%e244994245470%_
                             _%$%hd244995245473%_
                             _%$%tl244996245475%_
                             _%$%e244997245478%_
                             _%$%hd244998245481%_
                             _%$%tl244999245483%_
                             _%$%e245000245486%_
                             _%$%hd245001245489%_
                             _%$%tl245002245491%_
                             _%$%e245003245494%_
                             _%$%hd245004245497%_
                             _%$%tl245005245499%_
                             _%$%e245006245502%_
                             _%$%hd245007245505%_
                             _%$%tl245008245507%_
                             _%$%e245009245510%_
                             _%$%hd245010245513%_
                             _%$%tl245011245515%_
                             _%$%e245012245518%_
                             _%$%hd245013245521%_
                             _%$%tl245014245523%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%$%hd245013245521%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl245014245523%_))
                              (let ((_%$%e245015245526%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl245014245523%_))))
                                (let ((_%$%tl245017245531%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e245015245526%_)))
                                      (_%$%hd245016245529%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e245015245526%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl245017245531%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl245011245515%_))
                                          (_%__match249601249602%_
                                           _%$%e244988245454%_
                                           _%$%hd244989245457%_
                                           _%$%tl244990245459%_
                                           _%$%e244991245462%_
                                           _%$%hd244992245465%_
                                           _%$%tl244993245467%_
                                           _%$%e244994245470%_
                                           _%$%hd244995245473%_
                                           _%$%tl244996245475%_
                                           _%$%e244997245478%_
                                           _%$%hd244998245481%_
                                           _%$%tl244999245483%_
                                           _%$%e245000245486%_
                                           _%$%hd245001245489%_
                                           _%$%tl245002245491%_
                                           _%$%e245003245494%_
                                           _%$%hd245004245497%_
                                           _%$%tl245005245499%_
                                           _%$%e245006245502%_
                                           _%$%hd245007245505%_
                                           _%$%tl245008245507%_
                                           _%$%e245009245510%_
                                           _%$%hd245010245513%_
                                           _%$%tl245011245515%_
                                           _%$%e245012245518%_
                                           _%$%hd245013245521%_
                                           _%$%tl245014245523%_
                                           _%$%e245015245526%_
                                           _%$%hd245016245529%_
                                           _%$%tl245017245531%_)
                                          (_%__match249679249680%_
                                           _%$%e244988245454%_
                                           _%$%hd244989245457%_
                                           _%$%tl244990245459%_
                                           _%$%e244991245462%_
                                           _%$%hd244992245465%_
                                           _%$%tl244993245467%_
                                           _%$%e244994245470%_
                                           _%$%hd244995245473%_
                                           _%$%tl244996245475%_
                                           _%$%e244997245478%_
                                           _%$%hd244998245481%_
                                           _%$%tl244999245483%_
                                           _%$%e245000245486%_
                                           _%$%hd245001245489%_
                                           _%$%tl245002245491%_
                                           _%$%e245003245494%_
                                           _%$%hd245004245497%_
                                           _%$%tl245005245499%_
                                           _%$%e245006245502%_
                                           _%$%hd245007245505%_
                                           _%$%tl245008245507%_
                                           _%$%e245009245510%_
                                           _%$%hd245010245513%_
                                           _%$%tl245011245515%_
                                           _%$%e245012245518%_
                                           _%$%hd245013245521%_
                                           _%$%tl245014245523%_
                                           _%$%e245015245526%_
                                           _%$%hd245016245529%_
                                           _%$%tl245017245531%_))
                                      (_%__match249803249804%_
                                       _%$%e244988245454%_
                                       _%$%hd244989245457%_
                                       _%$%tl244990245459%_
                                       _%$%e244991245462%_
                                       _%$%hd244992245465%_
                                       _%$%tl244993245467%_
                                       _%$%e244994245470%_
                                       _%$%hd244995245473%_
                                       _%$%tl244996245475%_
                                       _%$%e244997245478%_
                                       _%$%hd244998245481%_
                                       _%$%tl244999245483%_
                                       _%$%e245000245486%_
                                       _%$%hd245001245489%_
                                       _%$%tl245002245491%_
                                       _%$%e245003245494%_
                                       _%$%hd245004245497%_
                                       _%$%tl245005245499%_
                                       _%$%e245006245502%_
                                       _%$%hd245007245505%_
                                       _%$%tl245008245507%_
                                       _%$%e245009245510%_
                                       _%$%hd245010245513%_
                                       _%$%tl245011245515%_))))
                              (_%__match249803249804%_
                               _%$%e244988245454%_
                               _%$%hd244989245457%_
                               _%$%tl244990245459%_
                               _%$%e244991245462%_
                               _%$%hd244992245465%_
                               _%$%tl244993245467%_
                               _%$%e244994245470%_
                               _%$%hd244995245473%_
                               _%$%tl244996245475%_
                               _%$%e244997245478%_
                               _%$%hd244998245481%_
                               _%$%tl244999245483%_
                               _%$%e245000245486%_
                               _%$%hd245001245489%_
                               _%$%tl245002245491%_
                               _%$%e245003245494%_
                               _%$%hd245004245497%_
                               _%$%tl245005245499%_
                               _%$%e245006245502%_
                               _%$%hd245007245505%_
                               _%$%tl245008245507%_
                               _%$%e245009245510%_
                               _%$%hd245010245513%_
                               _%$%tl245011245515%_))
                          (_%__match249803249804%_
                           _%$%e244988245454%_
                           _%$%hd244989245457%_
                           _%$%tl244990245459%_
                           _%$%e244991245462%_
                           _%$%hd244992245465%_
                           _%$%tl244993245467%_
                           _%$%e244994245470%_
                           _%$%hd244995245473%_
                           _%$%tl244996245475%_
                           _%$%e244997245478%_
                           _%$%hd244998245481%_
                           _%$%tl244999245483%_
                           _%$%e245000245486%_
                           _%$%hd245001245489%_
                           _%$%tl245002245491%_
                           _%$%e245003245494%_
                           _%$%hd245004245497%_
                           _%$%tl245005245499%_
                           _%$%e245006245502%_
                           _%$%hd245007245505%_
                           _%$%tl245008245507%_
                           _%$%e245009245510%_
                           _%$%hd245010245513%_
                           _%$%tl245011245515%_))))
                   (_%__match249521249522%_
                    (lambda (_%$%e244937245573%_
                             _%$%hd244938245576%_
                             _%$%tl244939245578%_
                             _%$%e244940245581%_
                             _%$%hd244941245584%_
                             _%$%tl244942245586%_
                             _%$%e244943245589%_
                             _%$%hd244944245592%_
                             _%$%tl244945245594%_
                             _%$%e244946245597%_
                             _%$%hd244947245600%_
                             _%$%tl244948245602%_
                             _%$%e244949245605%_
                             _%$%hd244950245608%_
                             _%$%tl244951245610%_
                             _%$%e244952245613%_
                             _%$%hd244953245616%_
                             _%$%tl244954245618%_
                             _%$%e244955245621%_
                             _%$%hd244956245624%_
                             _%$%tl244957245626%_
                             _%$%e244958245629%_
                             _%$%hd244959245632%_
                             _%$%tl244960245634%_
                             _%$%e244961245637%_
                             _%$%hd244962245640%_
                             _%$%tl244963245642%_
                             _%$%e244964245645%_
                             _%$%hd244965245648%_
                             _%$%tl244966245650%_
                             _%$%e244967245653%_
                             _%$%hd244968245656%_
                             _%$%tl244969245658%_
                             _%$%e244970245661%_
                             _%$%hd244971245664%_
                             _%$%tl244972245666%_
                             _%$%e244973245669%_
                             _%$%hd244974245672%_
                             _%$%tl244975245674%_
                             _%__splice249314249315%_
                             _%$%target244976245677%_
                             _%$%tl244978245679%_)
                      (letrec ((_%$%loop244979245682%_
                                (lambda (_%$%hd244977245685%_
                                         _%$%args244983245687%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd244977245685%_))
                                      (let ((_%$%e244980245689%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd244977245685%_))))
                                        (let ((_%$%lp-tl244982245694%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e244980245689%_)))
                                              (_%$%lp-hd244981245692%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e244980245689%_))))
                                          (_%$%loop244979245682%_
                                           _%$%lp-tl244982245694%_
                                           (cons _%$%lp-hd244981245692%_
                                                 _%$%args244983245687%_))))
                                      (let ((_%$%args244984245697%_
                                             (reverse _%$%args244983245687%_)))
                                        (let ((_%$%g244932245699%_
                                               _%$%args244984245697%_)
                                              (_%$%g244933245700%_
                                               _%$%hd244974245672%_)
                                              (_%$%g244934245701%_
                                               _%$%hd244965245648%_)
                                              (_%$%g244935245702%_
                                               _%$%hd244956245624%_)
                                              (_%$%g244936245703%_
                                               _%$%hd244947245600%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g244936245703%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g244935245702%_
                                                      'call-method))
                                                   (let ((__tmp250468
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self244878%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g244934245701%_
                                                      __tmp250468)))
                                              (_%__kont249312249313%_
                                               _%$%g244932245699%_
                                               _%$%g244933245700%_
                                               _%$%g244934245701%_
                                               _%$%g244935245702%_
                                               _%$%g244936245703%_)
                                              (_%__kont249324249325%_))))))))
                        (_%$%loop244979245682%_
                         _%$%target244976245677%_
                         '()))))
                   (_%__match249479249480%_
                    (lambda (_%$%e244937245573%_
                             _%$%hd244938245576%_
                             _%$%tl244939245578%_
                             _%$%e244940245581%_
                             _%$%hd244941245584%_
                             _%$%tl244942245586%_
                             _%$%e244943245589%_
                             _%$%hd244944245592%_
                             _%$%tl244945245594%_
                             _%$%e244946245597%_
                             _%$%hd244947245600%_
                             _%$%tl244948245602%_
                             _%$%e244949245605%_
                             _%$%hd244950245608%_
                             _%$%tl244951245610%_
                             _%$%e244952245613%_
                             _%$%hd244953245616%_
                             _%$%tl244954245618%_
                             _%$%e244955245621%_
                             _%$%hd244956245624%_
                             _%$%tl244957245626%_
                             _%$%e244958245629%_
                             _%$%hd244959245632%_
                             _%$%tl244960245634%_
                             _%$%e244961245637%_
                             _%$%hd244962245640%_
                             _%$%tl244963245642%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%$%hd244962245640%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl244963245642%_))
                              (let ((_%$%e244964245645%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl244963245642%_))))
                                (let ((_%$%tl244966245650%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e244964245645%_)))
                                      (_%$%hd244965245648%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e244964245645%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl244966245650%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl244960245634%_))
                                          (let ((_%$%e244967245653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl244960245634%_))))
                                            (let ((_%$%tl244969245658%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e244967245653%_)))
                                                  (_%$%hd244968245656%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e244967245653%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd244968245656%_))
                                                  (let ((_%$%e244970245661%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd244968245656%_))))
                                                    (let ((_%$%tl244972245666%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e244970245661%_)))
                                                          (_%$%hd244971245664%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e244970245661%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd244971245664%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%$%hd244971245664%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl244972245666%_))
                          (let ((_%$%e244973245669%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl244972245666%_))))
                            (let ((_%$%tl244975245674%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e244973245669%_)))
                                  (_%$%hd244974245672%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e244973245669%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl244975245674%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl244969245658%_))
                                      (let ((_%__splice249314249315%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl244969245658%_
                                                '0))))
                                        (let ((_%$%tl244978245679%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice249314249315%_
                                                  '1)))
                                              (_%$%target244976245677%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice249314249315%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl244978245679%_))
                                              (_%__match249521249522%_
                                               _%$%e244937245573%_
                                               _%$%hd244938245576%_
                                               _%$%tl244939245578%_
                                               _%$%e244940245581%_
                                               _%$%hd244941245584%_
                                               _%$%tl244942245586%_
                                               _%$%e244943245589%_
                                               _%$%hd244944245592%_
                                               _%$%tl244945245594%_
                                               _%$%e244946245597%_
                                               _%$%hd244947245600%_
                                               _%$%tl244948245602%_
                                               _%$%e244949245605%_
                                               _%$%hd244950245608%_
                                               _%$%tl244951245610%_
                                               _%$%e244952245613%_
                                               _%$%hd244953245616%_
                                               _%$%tl244954245618%_
                                               _%$%e244955245621%_
                                               _%$%hd244956245624%_
                                               _%$%tl244957245626%_
                                               _%$%e244958245629%_
                                               _%$%hd244959245632%_
                                               _%$%tl244960245634%_
                                               _%$%e244961245637%_
                                               _%$%hd244962245640%_
                                               _%$%tl244963245642%_
                                               _%$%e244964245645%_
                                               _%$%hd244965245648%_
                                               _%$%tl244966245650%_
                                               _%$%e244967245653%_
                                               _%$%hd244968245656%_
                                               _%$%tl244969245658%_
                                               _%$%e244970245661%_
                                               _%$%hd244971245664%_
                                               _%$%tl244972245666%_
                                               _%$%e244973245669%_
                                               _%$%hd244974245672%_
                                               _%$%tl244975245674%_
                                               _%__splice249314249315%_
                                               _%$%target244976245677%_
                                               _%$%tl244978245679%_)
                                              (_%__kont249324249325%_))))
                                      (_%__kont249324249325%_))
                                  (_%__kont249324249325%_))))
                          (_%__kont249324249325%_))
                      (_%__kont249324249325%_))
                  (_%__kont249324249325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont249324249325%_))))
                                          (_%__match249803249804%_
                                           _%$%e244937245573%_
                                           _%$%hd244938245576%_
                                           _%$%tl244939245578%_
                                           _%$%e244940245581%_
                                           _%$%hd244941245584%_
                                           _%$%tl244942245586%_
                                           _%$%e244943245589%_
                                           _%$%hd244944245592%_
                                           _%$%tl244945245594%_
                                           _%$%e244946245597%_
                                           _%$%hd244947245600%_
                                           _%$%tl244948245602%_
                                           _%$%e244949245605%_
                                           _%$%hd244950245608%_
                                           _%$%tl244951245610%_
                                           _%$%e244952245613%_
                                           _%$%hd244953245616%_
                                           _%$%tl244954245618%_
                                           _%$%e244955245621%_
                                           _%$%hd244956245624%_
                                           _%$%tl244957245626%_
                                           _%$%e244958245629%_
                                           _%$%hd244959245632%_
                                           _%$%tl244960245634%_))
                                      (_%__match249803249804%_
                                       _%$%e244937245573%_
                                       _%$%hd244938245576%_
                                       _%$%tl244939245578%_
                                       _%$%e244940245581%_
                                       _%$%hd244941245584%_
                                       _%$%tl244942245586%_
                                       _%$%e244943245589%_
                                       _%$%hd244944245592%_
                                       _%$%tl244945245594%_
                                       _%$%e244946245597%_
                                       _%$%hd244947245600%_
                                       _%$%tl244948245602%_
                                       _%$%e244949245605%_
                                       _%$%hd244950245608%_
                                       _%$%tl244951245610%_
                                       _%$%e244952245613%_
                                       _%$%hd244953245616%_
                                       _%$%tl244954245618%_
                                       _%$%e244955245621%_
                                       _%$%hd244956245624%_
                                       _%$%tl244957245626%_
                                       _%$%e244958245629%_
                                       _%$%hd244959245632%_
                                       _%$%tl244960245634%_))))
                              (_%__match249803249804%_
                               _%$%e244937245573%_
                               _%$%hd244938245576%_
                               _%$%tl244939245578%_
                               _%$%e244940245581%_
                               _%$%hd244941245584%_
                               _%$%tl244942245586%_
                               _%$%e244943245589%_
                               _%$%hd244944245592%_
                               _%$%tl244945245594%_
                               _%$%e244946245597%_
                               _%$%hd244947245600%_
                               _%$%tl244948245602%_
                               _%$%e244949245605%_
                               _%$%hd244950245608%_
                               _%$%tl244951245610%_
                               _%$%e244952245613%_
                               _%$%hd244953245616%_
                               _%$%tl244954245618%_
                               _%$%e244955245621%_
                               _%$%hd244956245624%_
                               _%$%tl244957245626%_
                               _%$%e244958245629%_
                               _%$%hd244959245632%_
                               _%$%tl244960245634%_))
                          (_%__match249589249590%_
                           _%$%e244937245573%_
                           _%$%hd244938245576%_
                           _%$%tl244939245578%_
                           _%$%e244940245581%_
                           _%$%hd244941245584%_
                           _%$%tl244942245586%_
                           _%$%e244943245589%_
                           _%$%hd244944245592%_
                           _%$%tl244945245594%_
                           _%$%e244946245597%_
                           _%$%hd244947245600%_
                           _%$%tl244948245602%_
                           _%$%e244949245605%_
                           _%$%hd244950245608%_
                           _%$%tl244951245610%_
                           _%$%e244952245613%_
                           _%$%hd244953245616%_
                           _%$%tl244954245618%_
                           _%$%e244955245621%_
                           _%$%hd244956245624%_
                           _%$%tl244957245626%_
                           _%$%e244958245629%_
                           _%$%hd244959245632%_
                           _%$%tl244960245634%_
                           _%$%e244961245637%_
                           _%$%hd244962245640%_
                           _%$%tl244963245642%_))))
                   (_%__match249411249412%_
                    (lambda (_%$%e244893245760%_
                             _%$%hd244894245763%_
                             _%$%tl244895245765%_
                             _%$%e244896245768%_
                             _%$%hd244897245771%_
                             _%$%tl244898245773%_
                             _%$%e244899245776%_
                             _%$%hd244900245779%_
                             _%$%tl244901245781%_
                             _%$%e244902245784%_
                             _%$%hd244903245787%_
                             _%$%tl244904245789%_
                             _%$%e244905245792%_
                             _%$%hd244906245795%_
                             _%$%tl244907245797%_
                             _%$%e244908245800%_
                             _%$%hd244909245803%_
                             _%$%tl244910245805%_
                             _%$%e244911245808%_
                             _%$%hd244912245811%_
                             _%$%tl244913245813%_
                             _%$%e244914245816%_
                             _%$%hd244915245819%_
                             _%$%tl244916245821%_
                             _%$%e244917245824%_
                             _%$%hd244918245827%_
                             _%$%tl244919245829%_
                             _%$%e244920245832%_
                             _%$%hd244921245835%_
                             _%$%tl244922245837%_
                             _%__splice249310249311%_
                             _%$%target244923245840%_
                             _%$%tl244925245842%_)
                      (letrec ((_%$%loop244926245845%_
                                (lambda (_%$%hd244924245848%_
                                         _%$%args244930245850%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd244924245848%_))
                                      (let ((_%$%e244927245852%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd244924245848%_))))
                                        (let ((_%$%lp-tl244929245857%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e244927245852%_)))
                                              (_%$%lp-hd244928245855%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e244927245852%_))))
                                          (_%$%loop244926245845%_
                                           _%$%lp-tl244929245857%_
                                           (cons _%$%lp-hd244928245855%_
                                                 _%$%args244930245850%_))))
                                      (let ((_%$%args244931245860%_
                                             (reverse _%$%args244930245850%_)))
                                        (let ((_%$%g244889245862%_
                                               _%$%args244931245860%_)
                                              (_%$%g244890245863%_
                                               _%$%hd244921245835%_)
                                              (_%$%g244891245864%_
                                               _%$%hd244912245811%_)
                                              (_%$%g244892245865%_
                                               _%$%hd244903245787%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g244892245865%_
                                                      'call-method))
                                                   (let ((__tmp250469
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self244878%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g244891245864%_
                                                      __tmp250469)))
                                              (_%__kont249308249309%_
                                               _%$%g244889245862%_
                                               _%$%g244890245863%_
                                               _%$%g244891245864%_
                                               _%$%g244892245865%_)
                                              (_%__match249599249600%_
                                               _%$%e244893245760%_
                                               _%$%hd244894245763%_
                                               _%$%tl244895245765%_
                                               _%$%e244896245768%_
                                               _%$%hd244897245771%_
                                               _%$%tl244898245773%_
                                               _%$%e244899245776%_
                                               _%$%hd244900245779%_
                                               _%$%tl244901245781%_
                                               _%$%e244902245784%_
                                               _%$%hd244903245787%_
                                               _%$%tl244904245789%_
                                               _%$%e244905245792%_
                                               _%$%hd244906245795%_
                                               _%$%tl244907245797%_
                                               _%$%e244908245800%_
                                               _%$%hd244909245803%_
                                               _%$%tl244910245805%_
                                               _%$%e244911245808%_
                                               _%$%hd244912245811%_
                                               _%$%tl244913245813%_
                                               _%$%e244914245816%_
                                               _%$%hd244915245819%_
                                               _%$%tl244916245821%_
                                               _%$%e244917245824%_
                                               _%$%hd244918245827%_
                                               _%$%tl244919245829%_
                                               _%$%e244920245832%_
                                               _%$%hd244921245835%_
                                               _%$%tl244922245837%_))))))))
                        (_%$%loop244926245845%_
                         _%$%target244923245840%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx249306249307%_))
                  (let ((_%$%e244893245760%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx249306249307%_))))
                    (let ((_%$%tl244895245765%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e244893245760%_)))
                          (_%$%hd244894245763%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e244893245760%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl244895245765%_))
                          (let ((_%$%e244896245768%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl244895245765%_))))
                            (let ((_%$%tl244898245773%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e244896245768%_)))
                                  (_%$%hd244897245771%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e244896245768%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd244897245771%_))
                                  (let ((_%$%e244899245776%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd244897245771%_))))
                                    (let ((_%$%tl244901245781%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e244899245776%_)))
                                          (_%$%hd244900245779%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e244899245776%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd244900245779%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd244900245779%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl244901245781%_))
                                                  (let ((_%$%e244902245784%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl244901245781%_))))
                                                    (let ((_%$%tl244904245789%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e244902245784%_)))
                                                          (_%$%hd244903245787%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e244902245784%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl244904245789%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl244898245773%_))
                      (let ((_%$%e244905245792%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl244898245773%_))))
                        (let ((_%$%tl244907245797%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e244905245792%_)))
                              (_%$%hd244906245795%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e244905245792%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd244906245795%_))
                              (let ((_%$%e244908245800%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd244906245795%_))))
                                (let ((_%$%tl244910245805%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e244908245800%_)))
                                      (_%$%hd244909245803%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e244908245800%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd244909245803%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd244909245803%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl244910245805%_))
                                              (let ((_%$%e244911245808%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl244910245805%_))))
                                                (let ((_%$%tl244913245813%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e244911245808%_)))
                                                      (_%$%hd244912245811%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e244911245808%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl244913245813%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl244907245797%_))
                                                          (let ((_%$%e244914245816%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl244907245797%_))))
                    (let ((_%$%tl244916245821%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e244914245816%_)))
                          (_%$%hd244915245819%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e244914245816%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd244915245819%_))
                          (let ((_%$%e244917245824%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd244915245819%_))))
                            (let ((_%$%tl244919245829%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e244917245824%_)))
                                  (_%$%hd244918245827%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e244917245824%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd244918245827%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd244918245827%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl244919245829%_))
                                          (let ((_%$%e244920245832%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl244919245829%_))))
                                            (let ((_%$%tl244922245837%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e244920245832%_)))
                                                  (_%$%hd244921245835%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e244920245832%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl244922245837%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl244916245821%_))
                                                      (let ((_%__splice249310249311%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl244916245821%_
                        '0))))
                (let ((_%$%tl244925245842%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice249310249311%_ '1)))
                      (_%$%target244923245840%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice249310249311%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl244925245842%_))
                      (_%__match249411249412%_
                       _%$%e244893245760%_
                       _%$%hd244894245763%_
                       _%$%tl244895245765%_
                       _%$%e244896245768%_
                       _%$%hd244897245771%_
                       _%$%tl244898245773%_
                       _%$%e244899245776%_
                       _%$%hd244900245779%_
                       _%$%tl244901245781%_
                       _%$%e244902245784%_
                       _%$%hd244903245787%_
                       _%$%tl244904245789%_
                       _%$%e244905245792%_
                       _%$%hd244906245795%_
                       _%$%tl244907245797%_
                       _%$%e244908245800%_
                       _%$%hd244909245803%_
                       _%$%tl244910245805%_
                       _%$%e244911245808%_
                       _%$%hd244912245811%_
                       _%$%tl244913245813%_
                       _%$%e244914245816%_
                       _%$%hd244915245819%_
                       _%$%tl244916245821%_
                       _%$%e244917245824%_
                       _%$%hd244918245827%_
                       _%$%tl244919245829%_
                       _%$%e244920245832%_
                       _%$%hd244921245835%_
                       _%$%tl244922245837%_
                       _%__splice249310249311%_
                       _%$%target244923245840%_
                       _%$%tl244925245842%_)
                      (_%__match249599249600%_
                       _%$%e244893245760%_
                       _%$%hd244894245763%_
                       _%$%tl244895245765%_
                       _%$%e244896245768%_
                       _%$%hd244897245771%_
                       _%$%tl244898245773%_
                       _%$%e244899245776%_
                       _%$%hd244900245779%_
                       _%$%tl244901245781%_
                       _%$%e244902245784%_
                       _%$%hd244903245787%_
                       _%$%tl244904245789%_
                       _%$%e244905245792%_
                       _%$%hd244906245795%_
                       _%$%tl244907245797%_
                       _%$%e244908245800%_
                       _%$%hd244909245803%_
                       _%$%tl244910245805%_
                       _%$%e244911245808%_
                       _%$%hd244912245811%_
                       _%$%tl244913245813%_
                       _%$%e244914245816%_
                       _%$%hd244915245819%_
                       _%$%tl244916245821%_
                       _%$%e244917245824%_
                       _%$%hd244918245827%_
                       _%$%tl244919245829%_
                       _%$%e244920245832%_
                       _%$%hd244921245835%_
                       _%$%tl244922245837%_))))
              (_%__match249599249600%_
               _%$%e244893245760%_
               _%$%hd244894245763%_
               _%$%tl244895245765%_
               _%$%e244896245768%_
               _%$%hd244897245771%_
               _%$%tl244898245773%_
               _%$%e244899245776%_
               _%$%hd244900245779%_
               _%$%tl244901245781%_
               _%$%e244902245784%_
               _%$%hd244903245787%_
               _%$%tl244904245789%_
               _%$%e244905245792%_
               _%$%hd244906245795%_
               _%$%tl244907245797%_
               _%$%e244908245800%_
               _%$%hd244909245803%_
               _%$%tl244910245805%_
               _%$%e244911245808%_
               _%$%hd244912245811%_
               _%$%tl244913245813%_
               _%$%e244914245816%_
               _%$%hd244915245819%_
               _%$%tl244916245821%_
               _%$%e244917245824%_
               _%$%hd244918245827%_
               _%$%tl244919245829%_
               _%$%e244920245832%_
               _%$%hd244921245835%_
               _%$%tl244922245837%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match249803249804%_
                                                   _%$%e244893245760%_
                                                   _%$%hd244894245763%_
                                                   _%$%tl244895245765%_
                                                   _%$%e244896245768%_
                                                   _%$%hd244897245771%_
                                                   _%$%tl244898245773%_
                                                   _%$%e244899245776%_
                                                   _%$%hd244900245779%_
                                                   _%$%tl244901245781%_
                                                   _%$%e244902245784%_
                                                   _%$%hd244903245787%_
                                                   _%$%tl244904245789%_
                                                   _%$%e244905245792%_
                                                   _%$%hd244906245795%_
                                                   _%$%tl244907245797%_
                                                   _%$%e244908245800%_
                                                   _%$%hd244909245803%_
                                                   _%$%tl244910245805%_
                                                   _%$%e244911245808%_
                                                   _%$%hd244912245811%_
                                                   _%$%tl244913245813%_
                                                   _%$%e244914245816%_
                                                   _%$%hd244915245819%_
                                                   _%$%tl244916245821%_))))
                                          (_%__match249803249804%_
                                           _%$%e244893245760%_
                                           _%$%hd244894245763%_
                                           _%$%tl244895245765%_
                                           _%$%e244896245768%_
                                           _%$%hd244897245771%_
                                           _%$%tl244898245773%_
                                           _%$%e244899245776%_
                                           _%$%hd244900245779%_
                                           _%$%tl244901245781%_
                                           _%$%e244902245784%_
                                           _%$%hd244903245787%_
                                           _%$%tl244904245789%_
                                           _%$%e244905245792%_
                                           _%$%hd244906245795%_
                                           _%$%tl244907245797%_
                                           _%$%e244908245800%_
                                           _%$%hd244909245803%_
                                           _%$%tl244910245805%_
                                           _%$%e244911245808%_
                                           _%$%hd244912245811%_
                                           _%$%tl244913245813%_
                                           _%$%e244914245816%_
                                           _%$%hd244915245819%_
                                           _%$%tl244916245821%_))
                                      (_%__match249479249480%_
                                       _%$%e244893245760%_
                                       _%$%hd244894245763%_
                                       _%$%tl244895245765%_
                                       _%$%e244896245768%_
                                       _%$%hd244897245771%_
                                       _%$%tl244898245773%_
                                       _%$%e244899245776%_
                                       _%$%hd244900245779%_
                                       _%$%tl244901245781%_
                                       _%$%e244902245784%_
                                       _%$%hd244903245787%_
                                       _%$%tl244904245789%_
                                       _%$%e244905245792%_
                                       _%$%hd244906245795%_
                                       _%$%tl244907245797%_
                                       _%$%e244908245800%_
                                       _%$%hd244909245803%_
                                       _%$%tl244910245805%_
                                       _%$%e244911245808%_
                                       _%$%hd244912245811%_
                                       _%$%tl244913245813%_
                                       _%$%e244914245816%_
                                       _%$%hd244915245819%_
                                       _%$%tl244916245821%_
                                       _%$%e244917245824%_
                                       _%$%hd244918245827%_
                                       _%$%tl244919245829%_))
                                  (_%__match249803249804%_
                                   _%$%e244893245760%_
                                   _%$%hd244894245763%_
                                   _%$%tl244895245765%_
                                   _%$%e244896245768%_
                                   _%$%hd244897245771%_
                                   _%$%tl244898245773%_
                                   _%$%e244899245776%_
                                   _%$%hd244900245779%_
                                   _%$%tl244901245781%_
                                   _%$%e244902245784%_
                                   _%$%hd244903245787%_
                                   _%$%tl244904245789%_
                                   _%$%e244905245792%_
                                   _%$%hd244906245795%_
                                   _%$%tl244907245797%_
                                   _%$%e244908245800%_
                                   _%$%hd244909245803%_
                                   _%$%tl244910245805%_
                                   _%$%e244911245808%_
                                   _%$%hd244912245811%_
                                   _%$%tl244913245813%_
                                   _%$%e244914245816%_
                                   _%$%hd244915245819%_
                                   _%$%tl244916245821%_))))
                          (_%__match249803249804%_
                           _%$%e244893245760%_
                           _%$%hd244894245763%_
                           _%$%tl244895245765%_
                           _%$%e244896245768%_
                           _%$%hd244897245771%_
                           _%$%tl244898245773%_
                           _%$%e244899245776%_
                           _%$%hd244900245779%_
                           _%$%tl244901245781%_
                           _%$%e244902245784%_
                           _%$%hd244903245787%_
                           _%$%tl244904245789%_
                           _%$%e244905245792%_
                           _%$%hd244906245795%_
                           _%$%tl244907245797%_
                           _%$%e244908245800%_
                           _%$%hd244909245803%_
                           _%$%tl244910245805%_
                           _%$%e244911245808%_
                           _%$%hd244912245811%_
                           _%$%tl244913245813%_
                           _%$%e244914245816%_
                           _%$%hd244915245819%_
                           _%$%tl244916245821%_))))
                  (_%__match249741249742%_
                   _%$%e244893245760%_
                   _%$%hd244894245763%_
                   _%$%tl244895245765%_
                   _%$%e244896245768%_
                   _%$%hd244897245771%_
                   _%$%tl244898245773%_
                   _%$%e244899245776%_
                   _%$%hd244900245779%_
                   _%$%tl244901245781%_
                   _%$%e244902245784%_
                   _%$%hd244903245787%_
                   _%$%tl244904245789%_
                   _%$%e244905245792%_
                   _%$%hd244906245795%_
                   _%$%tl244907245797%_
                   _%$%e244908245800%_
                   _%$%hd244909245803%_
                   _%$%tl244910245805%_
                   _%$%e244911245808%_
                   _%$%hd244912245811%_
                   _%$%tl244913245813%_))
              (_%__kont249324249325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont249324249325%_))
                                          (_%__kont249324249325%_))
                                      (_%__kont249324249325%_))))
                              (_%__kont249324249325%_))))
                      (_%__kont249324249325%_))
                  (_%__kont249324249325%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont249324249325%_))
                                              (_%__kont249324249325%_))
                                          (_%__kont249324249325%_))))
                                  (_%__kont249324249325%_))))
                          (_%__kont249324249325%_))))
                  (_%__kont249324249325%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self243821%_ _%stx243822%_)
        (letrec ((_%force-e243824%_
                  (lambda (_%target244876%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target244876%_ '()))
                                      '()))))))
          (let* ((_%__stx249808249809%_ _%stx243822%_)
                 (_%$%g243832244054%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx249808249809%_)))))
            (let ((_%__kont249810249811%_
                   (lambda (_%$%g243834244822%_
                            _%$%g243835244823%_
                            _%$%g243836244824%_
                            _%$%g243837244825%_)
                     (let ((_%$method244870%_
                            (let ((__tmp250471
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self243821%_ 'methods)))
                                  (__tmp250470
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g243835244823%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp250471 __tmp250470)))
                           (_%args244871%_
                            (map (lambda (_%$%g244858244860%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self243821%_
                                      _%$%g244858244860%_)))
                                 (let ((__tmp250472
                                        (lambda (_%$%g244862244865%_
                                                 _%$%g244863244867%_)
                                          (cons _%$%g244862244865%_
                                                _%$%g244863244867%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp250472
                                    '()
                                    _%$%g243834244822%_)))))
                       (let ((__tmp250473
                              (cons '%#call
                                    (cons (_%force-e243824%_ _%$method244870%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self243821%_
                                                               'receiver))
                                                            '()))
                                                _%args244871%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp250473 _%stx243822%_)))))
                  (_%__kont249814249815%_
                   (lambda (_%$%g243877244656%_
                            _%$%g243878244657%_
                            _%$%g243879244658%_
                            _%$%g243880244659%_
                            _%$%g243881244660%_)
                     (let ((_%$method244712%_
                            (let ((__tmp250475
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self243821%_ 'methods)))
                                  (__tmp250474
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g243878244657%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp250475 __tmp250474)))
                           (_%args244713%_
                            (map (lambda (_%$%g244700244702%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self243821%_
                                      _%$%g244700244702%_)))
                                 (let ((__tmp250476
                                        (lambda (_%$%g244704244707%_
                                                 _%$%g244705244709%_)
                                          (cons _%$%g244704244707%_
                                                _%$%g244705244709%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp250476
                                    '()
                                    _%$%g243877244656%_)))))
                       (let ((__tmp250477
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e243824%_
                                                 _%$method244712%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self243821%_ 'receiver))
                          '()))
              _%args244713%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp250477 _%stx243822%_)))))
                  (_%__kont249818249819%_
                   (lambda (_%$%g243930244489%_
                            _%$%g243931244490%_
                            _%$%g243932244491%_)
                     (let* ((_%$field244523%_
                             (let ((__tmp250479
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self243821%_ 'slots)))
                                   (__tmp250478
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%g243930244489%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp250479 __tmp250478)))
                            (__tmp250480
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self243821%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field244523%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self243821%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp250480 _%stx243822%_))))
                  (_%__kont249820249821%_
                   (lambda (_%$%g243963244363%_
                            _%$%g243964244364%_
                            _%$%g243965244365%_
                            _%$%g243966244366%_)
                     (let ((_%$field244401%_
                            (let ((__tmp250482
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self243821%_ 'slots)))
                                  (__tmp250481
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g243964244364%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp250482 __tmp250481)))
                           (_%expr244402%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self243821%_
                               _%$%g243963244363%_))))
                       (let ((__tmp250483
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self243821%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field244401%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self243821%_ 'receiver))
                          '()))
              (cons _%expr244402%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp250483 _%stx243822%_)))))
                  (_%__kont249822249823%_
                   (lambda (_%$%g244000244235%_ _%$%g244001244236%_)
                     (let* ((_%accessor244258%_
                             (let ((__tmp250484
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g244001244236%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp250484)))
                            (_%klass244260%_
                             (let ((__tmp250485
                                    (##structure-ref
                                     _%accessor244258%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx243822%_
                                __tmp250485)))
                            (_%slot244262%_
                             (##structure-ref
                              _%accessor244258%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor244258%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass244260%_
                                      _%slot244262%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass244260%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx243822%_
                           (let* ((_%$field244268%_
                                   (let ((__tmp250486
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243821%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp250486 _%slot244262%_)))
                                  (__tmp250487
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self243821%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field244268%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self243821%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp250487
                              _%stx243822%_))))))
                  (_%__kont249824249825%_
                   (lambda (_%$%g244023244130%_
                            _%$%g244024244131%_
                            _%$%g244025244132%_)
                     (let* ((_%mutator244160%_
                             (let ((__tmp250488
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g244025244132%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp250488)))
                            (_%klass244162%_
                             (let ((__tmp250489
                                    (##structure-ref
                                     _%mutator244160%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx243822%_
                                __tmp250489)))
                            (_%slot244164%_
                             (##structure-ref
                              _%mutator244160%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr244166%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self243821%_
                                _%$%g244023244130%_))))
                       (if (if (##structure-ref
                                _%mutator244160%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass244162%_
                                      _%slot244164%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass244162%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp250490
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%$%g244025244132%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g244024244131%_
                                                                '()))
                                                    (cons _%expr244166%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp250490 _%stx243822%_))
                           (let* ((_%$field244172%_
                                   (let ((__tmp250491
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243821%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp250491 _%slot244164%_)))
                                  (__tmp250492
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self243821%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field244172%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self243821%_ 'receiver))
                               '()))
                   (cons _%expr244166%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp250492
                              _%stx243822%_))))))
                  (_%__kont249826249827%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self243821%_ _%stx243822%_)))))
              (let* ((_%__match250307250308%_
                      (lambda (_%$%e244026244066%_
                               _%$%hd244027244069%_
                               _%$%tl244028244071%_
                               _%$%e244029244074%_
                               _%$%hd244030244077%_
                               _%$%tl244031244079%_
                               _%$%e244032244082%_
                               _%$%hd244033244085%_
                               _%$%tl244034244087%_
                               _%$%e244035244090%_
                               _%$%hd244036244093%_
                               _%$%tl244037244095%_
                               _%$%e244038244098%_
                               _%$%hd244039244101%_
                               _%$%tl244040244103%_
                               _%$%e244041244106%_
                               _%$%hd244042244109%_
                               _%$%tl244043244111%_
                               _%$%e244044244114%_
                               _%$%hd244045244117%_
                               _%$%tl244046244119%_
                               _%$%e244047244122%_
                               _%$%hd244048244125%_
                               _%$%tl244049244127%_)
                        (let ((_%$%g244023244130%_ _%$%hd244048244125%_)
                              (_%$%g244024244131%_ _%$%hd244045244117%_)
                              (_%$%g244025244132%_ _%$%hd244036244093%_))
                          (if (and (let ((__tmp250493
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243821%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g244024244131%_
                                      __tmp250493))
                                   (let ((__tmp250494
                                          (let ((__tmp250495
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g244025244132%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp250495))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp250494
                                      'gxc#!mutator::t)))
                              (_%__kont249824249825%_
                               _%$%g244023244130%_
                               _%$%g244024244131%_
                               _%$%g244025244132%_)
                              (_%__kont249826249827%_)))))
                     (_%__match250305250306%_
                      (lambda (_%$%e244026244066%_
                               _%$%hd244027244069%_
                               _%$%tl244028244071%_
                               _%$%e244029244074%_
                               _%$%hd244030244077%_
                               _%$%tl244031244079%_
                               _%$%e244032244082%_
                               _%$%hd244033244085%_
                               _%$%tl244034244087%_
                               _%$%e244035244090%_
                               _%$%hd244036244093%_
                               _%$%tl244037244095%_
                               _%$%e244038244098%_
                               _%$%hd244039244101%_
                               _%$%tl244040244103%_
                               _%$%e244041244106%_
                               _%$%hd244042244109%_
                               _%$%tl244043244111%_
                               _%$%e244044244114%_
                               _%$%hd244045244117%_
                               _%$%tl244046244119%_
                               _%$%e244047244122%_
                               _%$%hd244048244125%_
                               _%$%tl244049244127%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl244049244127%_))
                            (_%__match250307250308%_
                             _%$%e244026244066%_
                             _%$%hd244027244069%_
                             _%$%tl244028244071%_
                             _%$%e244029244074%_
                             _%$%hd244030244077%_
                             _%$%tl244031244079%_
                             _%$%e244032244082%_
                             _%$%hd244033244085%_
                             _%$%tl244034244087%_
                             _%$%e244035244090%_
                             _%$%hd244036244093%_
                             _%$%tl244037244095%_
                             _%$%e244038244098%_
                             _%$%hd244039244101%_
                             _%$%tl244040244103%_
                             _%$%e244041244106%_
                             _%$%hd244042244109%_
                             _%$%tl244043244111%_
                             _%$%e244044244114%_
                             _%$%hd244045244117%_
                             _%$%tl244046244119%_
                             _%$%e244047244122%_
                             _%$%hd244048244125%_
                             _%$%tl244049244127%_)
                            (_%__kont249826249827%_))))
                     (_%__match250299250300%_
                      (lambda (_%$%e244026244066%_
                               _%$%hd244027244069%_
                               _%$%tl244028244071%_
                               _%$%e244029244074%_
                               _%$%hd244030244077%_
                               _%$%tl244031244079%_
                               _%$%e244032244082%_
                               _%$%hd244033244085%_
                               _%$%tl244034244087%_
                               _%$%e244035244090%_
                               _%$%hd244036244093%_
                               _%$%tl244037244095%_
                               _%$%e244038244098%_
                               _%$%hd244039244101%_
                               _%$%tl244040244103%_
                               _%$%e244041244106%_
                               _%$%hd244042244109%_
                               _%$%tl244043244111%_
                               _%$%e244044244114%_
                               _%$%hd244045244117%_
                               _%$%tl244046244119%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl244040244103%_))
                            (let ((_%$%e244047244122%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl244040244103%_))))
                              (let ((_%$%tl244049244127%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e244047244122%_)))
                                    (_%$%hd244048244125%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e244047244122%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl244049244127%_))
                                    (_%__match250307250308%_
                                     _%$%e244026244066%_
                                     _%$%hd244027244069%_
                                     _%$%tl244028244071%_
                                     _%$%e244029244074%_
                                     _%$%hd244030244077%_
                                     _%$%tl244031244079%_
                                     _%$%e244032244082%_
                                     _%$%hd244033244085%_
                                     _%$%tl244034244087%_
                                     _%$%e244035244090%_
                                     _%$%hd244036244093%_
                                     _%$%tl244037244095%_
                                     _%$%e244038244098%_
                                     _%$%hd244039244101%_
                                     _%$%tl244040244103%_
                                     _%$%e244041244106%_
                                     _%$%hd244042244109%_
                                     _%$%tl244043244111%_
                                     _%$%e244044244114%_
                                     _%$%hd244045244117%_
                                     _%$%tl244046244119%_
                                     _%$%e244047244122%_
                                     _%$%hd244048244125%_
                                     _%$%tl244049244127%_)
                                    (_%__kont249826249827%_))))
                            (_%__kont249826249827%_))))
                     (_%__match250245250246%_
                      (lambda (_%$%e244002244179%_
                               _%$%hd244003244182%_
                               _%$%tl244004244184%_
                               _%$%e244005244187%_
                               _%$%hd244006244190%_
                               _%$%tl244007244192%_
                               _%$%e244008244195%_
                               _%$%hd244009244198%_
                               _%$%tl244010244200%_
                               _%$%e244011244203%_
                               _%$%hd244012244206%_
                               _%$%tl244013244208%_
                               _%$%e244014244211%_
                               _%$%hd244015244214%_
                               _%$%tl244016244216%_
                               _%$%e244017244219%_
                               _%$%hd244018244222%_
                               _%$%tl244019244224%_
                               _%$%e244020244227%_
                               _%$%hd244021244230%_
                               _%$%tl244022244232%_)
                        (let ((_%$%g244000244235%_ _%$%hd244021244230%_)
                              (_%$%g244001244236%_ _%$%hd244012244206%_))
                          (if (and (let ((__tmp250496
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243821%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g244000244235%_
                                      __tmp250496))
                                   (let ((__tmp250497
                                          (let ((__tmp250498
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g244001244236%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp250498))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp250497
                                      'gxc#!accessor::t)))
                              (_%__kont249822249823%_
                               _%$%g244000244235%_
                               _%$%g244001244236%_)
                              (_%__kont249826249827%_)))))
                     (_%__match250243250244%_
                      (lambda (_%$%e244002244179%_
                               _%$%hd244003244182%_
                               _%$%tl244004244184%_
                               _%$%e244005244187%_
                               _%$%hd244006244190%_
                               _%$%tl244007244192%_
                               _%$%e244008244195%_
                               _%$%hd244009244198%_
                               _%$%tl244010244200%_
                               _%$%e244011244203%_
                               _%$%hd244012244206%_
                               _%$%tl244013244208%_
                               _%$%e244014244211%_
                               _%$%hd244015244214%_
                               _%$%tl244016244216%_
                               _%$%e244017244219%_
                               _%$%hd244018244222%_
                               _%$%tl244019244224%_
                               _%$%e244020244227%_
                               _%$%hd244021244230%_
                               _%$%tl244022244232%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl244016244216%_))
                            (_%__match250245250246%_
                             _%$%e244002244179%_
                             _%$%hd244003244182%_
                             _%$%tl244004244184%_
                             _%$%e244005244187%_
                             _%$%hd244006244190%_
                             _%$%tl244007244192%_
                             _%$%e244008244195%_
                             _%$%hd244009244198%_
                             _%$%tl244010244200%_
                             _%$%e244011244203%_
                             _%$%hd244012244206%_
                             _%$%tl244013244208%_
                             _%$%e244014244211%_
                             _%$%hd244015244214%_
                             _%$%tl244016244216%_
                             _%$%e244017244219%_
                             _%$%hd244018244222%_
                             _%$%tl244019244224%_
                             _%$%e244020244227%_
                             _%$%hd244021244230%_
                             _%$%tl244022244232%_)
                            (_%__match250299250300%_
                             _%$%e244002244179%_
                             _%$%hd244003244182%_
                             _%$%tl244004244184%_
                             _%$%e244005244187%_
                             _%$%hd244006244190%_
                             _%$%tl244007244192%_
                             _%$%e244008244195%_
                             _%$%hd244009244198%_
                             _%$%tl244010244200%_
                             _%$%e244011244203%_
                             _%$%hd244012244206%_
                             _%$%tl244013244208%_
                             _%$%e244014244211%_
                             _%$%hd244015244214%_
                             _%$%tl244016244216%_
                             _%$%e244017244219%_
                             _%$%hd244018244222%_
                             _%$%tl244019244224%_
                             _%$%e244020244227%_
                             _%$%hd244021244230%_
                             _%$%tl244022244232%_))))
                     (_%__match250189250190%_
                      (lambda (_%$%e243967244275%_
                               _%$%hd243968244278%_
                               _%$%tl243969244280%_
                               _%$%e243970244283%_
                               _%$%hd243971244286%_
                               _%$%tl243972244288%_
                               _%$%e243973244291%_
                               _%$%hd243974244294%_
                               _%$%tl243975244296%_
                               _%$%e243976244299%_
                               _%$%hd243977244302%_
                               _%$%tl243978244304%_
                               _%$%e243979244307%_
                               _%$%hd243980244310%_
                               _%$%tl243981244312%_
                               _%$%e243982244315%_
                               _%$%hd243983244318%_
                               _%$%tl243984244320%_
                               _%$%e243985244323%_
                               _%$%hd243986244326%_
                               _%$%tl243987244328%_
                               _%$%e243988244331%_
                               _%$%hd243989244334%_
                               _%$%tl243990244336%_
                               _%$%e243991244339%_
                               _%$%hd243992244342%_
                               _%$%tl243993244344%_
                               _%$%e243994244347%_
                               _%$%hd243995244350%_
                               _%$%tl243996244352%_
                               _%$%e243997244355%_
                               _%$%hd243998244358%_
                               _%$%tl243999244360%_)
                        (let ((_%$%g243963244363%_ _%$%hd243998244358%_)
                              (_%$%g243964244364%_ _%$%hd243995244350%_)
                              (_%$%g243965244365%_ _%$%hd243986244326%_)
                              (_%$%g243966244366%_ _%$%hd243977244302%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g243966244366%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g243966244366%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp250499
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243821%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g243965244365%_
                                      __tmp250499)))
                              (_%__kont249820249821%_
                               _%$%g243963244363%_
                               _%$%g243964244364%_
                               _%$%g243965244365%_
                               _%$%g243966244366%_)
                              (_%__kont249826249827%_)))))
                     (_%__match250181250182%_
                      (lambda (_%$%e243967244275%_
                               _%$%hd243968244278%_
                               _%$%tl243969244280%_
                               _%$%e243970244283%_
                               _%$%hd243971244286%_
                               _%$%tl243972244288%_
                               _%$%e243973244291%_
                               _%$%hd243974244294%_
                               _%$%tl243975244296%_
                               _%$%e243976244299%_
                               _%$%hd243977244302%_
                               _%$%tl243978244304%_
                               _%$%e243979244307%_
                               _%$%hd243980244310%_
                               _%$%tl243981244312%_
                               _%$%e243982244315%_
                               _%$%hd243983244318%_
                               _%$%tl243984244320%_
                               _%$%e243985244323%_
                               _%$%hd243986244326%_
                               _%$%tl243987244328%_
                               _%$%e243988244331%_
                               _%$%hd243989244334%_
                               _%$%tl243990244336%_
                               _%$%e243991244339%_
                               _%$%hd243992244342%_
                               _%$%tl243993244344%_
                               _%$%e243994244347%_
                               _%$%hd243995244350%_
                               _%$%tl243996244352%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl243990244336%_))
                            (let ((_%$%e243997244355%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl243990244336%_))))
                              (let ((_%$%tl243999244360%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e243997244355%_)))
                                    (_%$%hd243998244358%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e243997244355%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl243999244360%_))
                                    (_%__match250189250190%_
                                     _%$%e243967244275%_
                                     _%$%hd243968244278%_
                                     _%$%tl243969244280%_
                                     _%$%e243970244283%_
                                     _%$%hd243971244286%_
                                     _%$%tl243972244288%_
                                     _%$%e243973244291%_
                                     _%$%hd243974244294%_
                                     _%$%tl243975244296%_
                                     _%$%e243976244299%_
                                     _%$%hd243977244302%_
                                     _%$%tl243978244304%_
                                     _%$%e243979244307%_
                                     _%$%hd243980244310%_
                                     _%$%tl243981244312%_
                                     _%$%e243982244315%_
                                     _%$%hd243983244318%_
                                     _%$%tl243984244320%_
                                     _%$%e243985244323%_
                                     _%$%hd243986244326%_
                                     _%$%tl243987244328%_
                                     _%$%e243988244331%_
                                     _%$%hd243989244334%_
                                     _%$%tl243990244336%_
                                     _%$%e243991244339%_
                                     _%$%hd243992244342%_
                                     _%$%tl243993244344%_
                                     _%$%e243994244347%_
                                     _%$%hd243995244350%_
                                     _%$%tl243996244352%_
                                     _%$%e243997244355%_
                                     _%$%hd243998244358%_
                                     _%$%tl243999244360%_)
                                    (_%__kont249826249827%_))))
                            (_%__match250305250306%_
                             _%$%e243967244275%_
                             _%$%hd243968244278%_
                             _%$%tl243969244280%_
                             _%$%e243970244283%_
                             _%$%hd243971244286%_
                             _%$%tl243972244288%_
                             _%$%e243973244291%_
                             _%$%hd243974244294%_
                             _%$%tl243975244296%_
                             _%$%e243976244299%_
                             _%$%hd243977244302%_
                             _%$%tl243978244304%_
                             _%$%e243979244307%_
                             _%$%hd243980244310%_
                             _%$%tl243981244312%_
                             _%$%e243982244315%_
                             _%$%hd243983244318%_
                             _%$%tl243984244320%_
                             _%$%e243985244323%_
                             _%$%hd243986244326%_
                             _%$%tl243987244328%_
                             _%$%e243988244331%_
                             _%$%hd243989244334%_
                             _%$%tl243990244336%_))))
                     (_%__match250103250104%_
                      (lambda (_%$%e243933244409%_
                               _%$%hd243934244412%_
                               _%$%tl243935244414%_
                               _%$%e243936244417%_
                               _%$%hd243937244420%_
                               _%$%tl243938244422%_
                               _%$%e243939244425%_
                               _%$%hd243940244428%_
                               _%$%tl243941244430%_
                               _%$%e243942244433%_
                               _%$%hd243943244436%_
                               _%$%tl243944244438%_
                               _%$%e243945244441%_
                               _%$%hd243946244444%_
                               _%$%tl243947244446%_
                               _%$%e243948244449%_
                               _%$%hd243949244452%_
                               _%$%tl243950244454%_
                               _%$%e243951244457%_
                               _%$%hd243952244460%_
                               _%$%tl243953244462%_
                               _%$%e243954244465%_
                               _%$%hd243955244468%_
                               _%$%tl243956244470%_
                               _%$%e243957244473%_
                               _%$%hd243958244476%_
                               _%$%tl243959244478%_
                               _%$%e243960244481%_
                               _%$%hd243961244484%_
                               _%$%tl243962244486%_)
                        (let ((_%$%g243930244489%_ _%$%hd243961244484%_)
                              (_%$%g243931244490%_ _%$%hd243952244460%_)
                              (_%$%g243932244491%_ _%$%hd243943244436%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g243932244491%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g243932244491%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp250500
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243821%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g243931244490%_
                                      __tmp250500)))
                              (_%__kont249818249819%_
                               _%$%g243930244489%_
                               _%$%g243931244490%_
                               _%$%g243932244491%_)
                              (_%__match250307250308%_
                               _%$%e243933244409%_
                               _%$%hd243934244412%_
                               _%$%tl243935244414%_
                               _%$%e243936244417%_
                               _%$%hd243937244420%_
                               _%$%tl243938244422%_
                               _%$%e243939244425%_
                               _%$%hd243940244428%_
                               _%$%tl243941244430%_
                               _%$%e243942244433%_
                               _%$%hd243943244436%_
                               _%$%tl243944244438%_
                               _%$%e243945244441%_
                               _%$%hd243946244444%_
                               _%$%tl243947244446%_
                               _%$%e243948244449%_
                               _%$%hd243949244452%_
                               _%$%tl243950244454%_
                               _%$%e243951244457%_
                               _%$%hd243952244460%_
                               _%$%tl243953244462%_
                               _%$%e243954244465%_
                               _%$%hd243955244468%_
                               _%$%tl243956244470%_)))))
                     (_%__match250101250102%_
                      (lambda (_%$%e243933244409%_
                               _%$%hd243934244412%_
                               _%$%tl243935244414%_
                               _%$%e243936244417%_
                               _%$%hd243937244420%_
                               _%$%tl243938244422%_
                               _%$%e243939244425%_
                               _%$%hd243940244428%_
                               _%$%tl243941244430%_
                               _%$%e243942244433%_
                               _%$%hd243943244436%_
                               _%$%tl243944244438%_
                               _%$%e243945244441%_
                               _%$%hd243946244444%_
                               _%$%tl243947244446%_
                               _%$%e243948244449%_
                               _%$%hd243949244452%_
                               _%$%tl243950244454%_
                               _%$%e243951244457%_
                               _%$%hd243952244460%_
                               _%$%tl243953244462%_
                               _%$%e243954244465%_
                               _%$%hd243955244468%_
                               _%$%tl243956244470%_
                               _%$%e243957244473%_
                               _%$%hd243958244476%_
                               _%$%tl243959244478%_
                               _%$%e243960244481%_
                               _%$%hd243961244484%_
                               _%$%tl243962244486%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl243956244470%_))
                            (_%__match250103250104%_
                             _%$%e243933244409%_
                             _%$%hd243934244412%_
                             _%$%tl243935244414%_
                             _%$%e243936244417%_
                             _%$%hd243937244420%_
                             _%$%tl243938244422%_
                             _%$%e243939244425%_
                             _%$%hd243940244428%_
                             _%$%tl243941244430%_
                             _%$%e243942244433%_
                             _%$%hd243943244436%_
                             _%$%tl243944244438%_
                             _%$%e243945244441%_
                             _%$%hd243946244444%_
                             _%$%tl243947244446%_
                             _%$%e243948244449%_
                             _%$%hd243949244452%_
                             _%$%tl243950244454%_
                             _%$%e243951244457%_
                             _%$%hd243952244460%_
                             _%$%tl243953244462%_
                             _%$%e243954244465%_
                             _%$%hd243955244468%_
                             _%$%tl243956244470%_
                             _%$%e243957244473%_
                             _%$%hd243958244476%_
                             _%$%tl243959244478%_
                             _%$%e243960244481%_
                             _%$%hd243961244484%_
                             _%$%tl243962244486%_)
                            (_%__match250181250182%_
                             _%$%e243933244409%_
                             _%$%hd243934244412%_
                             _%$%tl243935244414%_
                             _%$%e243936244417%_
                             _%$%hd243937244420%_
                             _%$%tl243938244422%_
                             _%$%e243939244425%_
                             _%$%hd243940244428%_
                             _%$%tl243941244430%_
                             _%$%e243942244433%_
                             _%$%hd243943244436%_
                             _%$%tl243944244438%_
                             _%$%e243945244441%_
                             _%$%hd243946244444%_
                             _%$%tl243947244446%_
                             _%$%e243948244449%_
                             _%$%hd243949244452%_
                             _%$%tl243950244454%_
                             _%$%e243951244457%_
                             _%$%hd243952244460%_
                             _%$%tl243953244462%_
                             _%$%e243954244465%_
                             _%$%hd243955244468%_
                             _%$%tl243956244470%_
                             _%$%e243957244473%_
                             _%$%hd243958244476%_
                             _%$%tl243959244478%_
                             _%$%e243960244481%_
                             _%$%hd243961244484%_
                             _%$%tl243962244486%_))))
                     (_%__match250091250092%_
                      (lambda (_%$%e243933244409%_
                               _%$%hd243934244412%_
                               _%$%tl243935244414%_
                               _%$%e243936244417%_
                               _%$%hd243937244420%_
                               _%$%tl243938244422%_
                               _%$%e243939244425%_
                               _%$%hd243940244428%_
                               _%$%tl243941244430%_
                               _%$%e243942244433%_
                               _%$%hd243943244436%_
                               _%$%tl243944244438%_
                               _%$%e243945244441%_
                               _%$%hd243946244444%_
                               _%$%tl243947244446%_
                               _%$%e243948244449%_
                               _%$%hd243949244452%_
                               _%$%tl243950244454%_
                               _%$%e243951244457%_
                               _%$%hd243952244460%_
                               _%$%tl243953244462%_
                               _%$%e243954244465%_
                               _%$%hd243955244468%_
                               _%$%tl243956244470%_
                               _%$%e243957244473%_
                               _%$%hd243958244476%_
                               _%$%tl243959244478%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%$%hd243958244476%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl243959244478%_))
                                (let ((_%$%e243960244481%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl243959244478%_))))
                                  (let ((_%$%tl243962244486%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e243960244481%_)))
                                        (_%$%hd243961244484%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e243960244481%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl243962244486%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl243956244470%_))
                                            (_%__match250103250104%_
                                             _%$%e243933244409%_
                                             _%$%hd243934244412%_
                                             _%$%tl243935244414%_
                                             _%$%e243936244417%_
                                             _%$%hd243937244420%_
                                             _%$%tl243938244422%_
                                             _%$%e243939244425%_
                                             _%$%hd243940244428%_
                                             _%$%tl243941244430%_
                                             _%$%e243942244433%_
                                             _%$%hd243943244436%_
                                             _%$%tl243944244438%_
                                             _%$%e243945244441%_
                                             _%$%hd243946244444%_
                                             _%$%tl243947244446%_
                                             _%$%e243948244449%_
                                             _%$%hd243949244452%_
                                             _%$%tl243950244454%_
                                             _%$%e243951244457%_
                                             _%$%hd243952244460%_
                                             _%$%tl243953244462%_
                                             _%$%e243954244465%_
                                             _%$%hd243955244468%_
                                             _%$%tl243956244470%_
                                             _%$%e243957244473%_
                                             _%$%hd243958244476%_
                                             _%$%tl243959244478%_
                                             _%$%e243960244481%_
                                             _%$%hd243961244484%_
                                             _%$%tl243962244486%_)
                                            (_%__match250181250182%_
                                             _%$%e243933244409%_
                                             _%$%hd243934244412%_
                                             _%$%tl243935244414%_
                                             _%$%e243936244417%_
                                             _%$%hd243937244420%_
                                             _%$%tl243938244422%_
                                             _%$%e243939244425%_
                                             _%$%hd243940244428%_
                                             _%$%tl243941244430%_
                                             _%$%e243942244433%_
                                             _%$%hd243943244436%_
                                             _%$%tl243944244438%_
                                             _%$%e243945244441%_
                                             _%$%hd243946244444%_
                                             _%$%tl243947244446%_
                                             _%$%e243948244449%_
                                             _%$%hd243949244452%_
                                             _%$%tl243950244454%_
                                             _%$%e243951244457%_
                                             _%$%hd243952244460%_
                                             _%$%tl243953244462%_
                                             _%$%e243954244465%_
                                             _%$%hd243955244468%_
                                             _%$%tl243956244470%_
                                             _%$%e243957244473%_
                                             _%$%hd243958244476%_
                                             _%$%tl243959244478%_
                                             _%$%e243960244481%_
                                             _%$%hd243961244484%_
                                             _%$%tl243962244486%_))
                                        (_%__match250305250306%_
                                         _%$%e243933244409%_
                                         _%$%hd243934244412%_
                                         _%$%tl243935244414%_
                                         _%$%e243936244417%_
                                         _%$%hd243937244420%_
                                         _%$%tl243938244422%_
                                         _%$%e243939244425%_
                                         _%$%hd243940244428%_
                                         _%$%tl243941244430%_
                                         _%$%e243942244433%_
                                         _%$%hd243943244436%_
                                         _%$%tl243944244438%_
                                         _%$%e243945244441%_
                                         _%$%hd243946244444%_
                                         _%$%tl243947244446%_
                                         _%$%e243948244449%_
                                         _%$%hd243949244452%_
                                         _%$%tl243950244454%_
                                         _%$%e243951244457%_
                                         _%$%hd243952244460%_
                                         _%$%tl243953244462%_
                                         _%$%e243954244465%_
                                         _%$%hd243955244468%_
                                         _%$%tl243956244470%_))))
                                (_%__match250305250306%_
                                 _%$%e243933244409%_
                                 _%$%hd243934244412%_
                                 _%$%tl243935244414%_
                                 _%$%e243936244417%_
                                 _%$%hd243937244420%_
                                 _%$%tl243938244422%_
                                 _%$%e243939244425%_
                                 _%$%hd243940244428%_
                                 _%$%tl243941244430%_
                                 _%$%e243942244433%_
                                 _%$%hd243943244436%_
                                 _%$%tl243944244438%_
                                 _%$%e243945244441%_
                                 _%$%hd243946244444%_
                                 _%$%tl243947244446%_
                                 _%$%e243948244449%_
                                 _%$%hd243949244452%_
                                 _%$%tl243950244454%_
                                 _%$%e243951244457%_
                                 _%$%hd243952244460%_
                                 _%$%tl243953244462%_
                                 _%$%e243954244465%_
                                 _%$%hd243955244468%_
                                 _%$%tl243956244470%_))
                            (_%__match250305250306%_
                             _%$%e243933244409%_
                             _%$%hd243934244412%_
                             _%$%tl243935244414%_
                             _%$%e243936244417%_
                             _%$%hd243937244420%_
                             _%$%tl243938244422%_
                             _%$%e243939244425%_
                             _%$%hd243940244428%_
                             _%$%tl243941244430%_
                             _%$%e243942244433%_
                             _%$%hd243943244436%_
                             _%$%tl243944244438%_
                             _%$%e243945244441%_
                             _%$%hd243946244444%_
                             _%$%tl243947244446%_
                             _%$%e243948244449%_
                             _%$%hd243949244452%_
                             _%$%tl243950244454%_
                             _%$%e243951244457%_
                             _%$%hd243952244460%_
                             _%$%tl243953244462%_
                             _%$%e243954244465%_
                             _%$%hd243955244468%_
                             _%$%tl243956244470%_))))
                     (_%__match250023250024%_
                      (lambda (_%$%e243882244530%_
                               _%$%hd243883244533%_
                               _%$%tl243884244535%_
                               _%$%e243885244538%_
                               _%$%hd243886244541%_
                               _%$%tl243887244543%_
                               _%$%e243888244546%_
                               _%$%hd243889244549%_
                               _%$%tl243890244551%_
                               _%$%e243891244554%_
                               _%$%hd243892244557%_
                               _%$%tl243893244559%_
                               _%$%e243894244562%_
                               _%$%hd243895244565%_
                               _%$%tl243896244567%_
                               _%$%e243897244570%_
                               _%$%hd243898244573%_
                               _%$%tl243899244575%_
                               _%$%e243900244578%_
                               _%$%hd243901244581%_
                               _%$%tl243902244583%_
                               _%$%e243903244586%_
                               _%$%hd243904244589%_
                               _%$%tl243905244591%_
                               _%$%e243906244594%_
                               _%$%hd243907244597%_
                               _%$%tl243908244599%_
                               _%$%e243909244602%_
                               _%$%hd243910244605%_
                               _%$%tl243911244607%_
                               _%$%e243912244610%_
                               _%$%hd243913244613%_
                               _%$%tl243914244615%_
                               _%$%e243915244618%_
                               _%$%hd243916244621%_
                               _%$%tl243917244623%_
                               _%$%e243918244626%_
                               _%$%hd243919244629%_
                               _%$%tl243920244631%_
                               _%__splice249816249817%_
                               _%$%target243921244634%_
                               _%$%tl243923244636%_)
                        (letrec ((_%$%loop243924244639%_
                                  (lambda (_%$%hd243922244642%_
                                           _%$%args243928244644%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd243922244642%_))
                                        (let ((_%$%e243925244646%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd243922244642%_))))
                                          (let ((_%$%lp-tl243927244651%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e243925244646%_)))
                                                (_%$%lp-hd243926244649%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e243925244646%_))))
                                            (_%$%loop243924244639%_
                                             _%$%lp-tl243927244651%_
                                             (cons _%$%lp-hd243926244649%_
                                                   _%$%args243928244644%_))))
                                        (let ((_%$%args243929244654%_
                                               (reverse _%$%args243928244644%_)))
                                          (let ((_%$%g243877244656%_
                                                 _%$%args243929244654%_)
                                                (_%$%g243878244657%_
                                                 _%$%hd243919244629%_)
                                                (_%$%g243879244658%_
                                                 _%$%hd243910244605%_)
                                                (_%$%g243880244659%_
                                                 _%$%hd243901244581%_)
                                                (_%$%g243881244660%_
                                                 _%$%hd243892244557%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g243881244660%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g243880244659%_
                                                        'call-method))
                                                     (let ((__tmp250501
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self243821%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g243879244658%_
                                                        __tmp250501)))
                                                (_%__kont249814249815%_
                                                 _%$%g243877244656%_
                                                 _%$%g243878244657%_
                                                 _%$%g243879244658%_
                                                 _%$%g243880244659%_
                                                 _%$%g243881244660%_)
                                                (_%__kont249826249827%_))))))))
                          (_%$%loop243924244639%_
                           _%$%target243921244634%_
                           '()))))
                     (_%__match249981249982%_
                      (lambda (_%$%e243882244530%_
                               _%$%hd243883244533%_
                               _%$%tl243884244535%_
                               _%$%e243885244538%_
                               _%$%hd243886244541%_
                               _%$%tl243887244543%_
                               _%$%e243888244546%_
                               _%$%hd243889244549%_
                               _%$%tl243890244551%_
                               _%$%e243891244554%_
                               _%$%hd243892244557%_
                               _%$%tl243893244559%_
                               _%$%e243894244562%_
                               _%$%hd243895244565%_
                               _%$%tl243896244567%_
                               _%$%e243897244570%_
                               _%$%hd243898244573%_
                               _%$%tl243899244575%_
                               _%$%e243900244578%_
                               _%$%hd243901244581%_
                               _%$%tl243902244583%_
                               _%$%e243903244586%_
                               _%$%hd243904244589%_
                               _%$%tl243905244591%_
                               _%$%e243906244594%_
                               _%$%hd243907244597%_
                               _%$%tl243908244599%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%$%hd243907244597%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl243908244599%_))
                                (let ((_%$%e243909244602%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl243908244599%_))))
                                  (let ((_%$%tl243911244607%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e243909244602%_)))
                                        (_%$%hd243910244605%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e243909244602%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl243911244607%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl243905244591%_))
                                            (let ((_%$%e243912244610%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl243905244591%_))))
                                              (let ((_%$%tl243914244615%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e243912244610%_)))
                                                    (_%$%hd243913244613%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e243912244610%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd243913244613%_))
                                                    (let ((_%$%e243915244618%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd243913244613%_))))
                                                      (let ((_%$%tl243917244623%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e243915244618%_)))
                    (_%$%hd243916244621%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e243915244618%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd243916244621%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%$%hd243916244621%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl243917244623%_))
                            (let ((_%$%e243918244626%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl243917244623%_))))
                              (let ((_%$%tl243920244631%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e243918244626%_)))
                                    (_%$%hd243919244629%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e243918244626%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl243920244631%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl243914244615%_))
                                        (let ((_%__splice249816249817%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl243914244615%_
                                                  '0))))
                                          (let ((_%$%tl243923244636%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice249816249817%_
                                                    '1)))
                                                (_%$%target243921244634%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice249816249817%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl243923244636%_))
                                                (_%__match250023250024%_
                                                 _%$%e243882244530%_
                                                 _%$%hd243883244533%_
                                                 _%$%tl243884244535%_
                                                 _%$%e243885244538%_
                                                 _%$%hd243886244541%_
                                                 _%$%tl243887244543%_
                                                 _%$%e243888244546%_
                                                 _%$%hd243889244549%_
                                                 _%$%tl243890244551%_
                                                 _%$%e243891244554%_
                                                 _%$%hd243892244557%_
                                                 _%$%tl243893244559%_
                                                 _%$%e243894244562%_
                                                 _%$%hd243895244565%_
                                                 _%$%tl243896244567%_
                                                 _%$%e243897244570%_
                                                 _%$%hd243898244573%_
                                                 _%$%tl243899244575%_
                                                 _%$%e243900244578%_
                                                 _%$%hd243901244581%_
                                                 _%$%tl243902244583%_
                                                 _%$%e243903244586%_
                                                 _%$%hd243904244589%_
                                                 _%$%tl243905244591%_
                                                 _%$%e243906244594%_
                                                 _%$%hd243907244597%_
                                                 _%$%tl243908244599%_
                                                 _%$%e243909244602%_
                                                 _%$%hd243910244605%_
                                                 _%$%tl243911244607%_
                                                 _%$%e243912244610%_
                                                 _%$%hd243913244613%_
                                                 _%$%tl243914244615%_
                                                 _%$%e243915244618%_
                                                 _%$%hd243916244621%_
                                                 _%$%tl243917244623%_
                                                 _%$%e243918244626%_
                                                 _%$%hd243919244629%_
                                                 _%$%tl243920244631%_
                                                 _%__splice249816249817%_
                                                 _%$%target243921244634%_
                                                 _%$%tl243923244636%_)
                                                (_%__kont249826249827%_))))
                                        (_%__kont249826249827%_))
                                    (_%__kont249826249827%_))))
                            (_%__kont249826249827%_))
                        (_%__kont249826249827%_))
                    (_%__kont249826249827%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont249826249827%_))))
                                            (_%__match250305250306%_
                                             _%$%e243882244530%_
                                             _%$%hd243883244533%_
                                             _%$%tl243884244535%_
                                             _%$%e243885244538%_
                                             _%$%hd243886244541%_
                                             _%$%tl243887244543%_
                                             _%$%e243888244546%_
                                             _%$%hd243889244549%_
                                             _%$%tl243890244551%_
                                             _%$%e243891244554%_
                                             _%$%hd243892244557%_
                                             _%$%tl243893244559%_
                                             _%$%e243894244562%_
                                             _%$%hd243895244565%_
                                             _%$%tl243896244567%_
                                             _%$%e243897244570%_
                                             _%$%hd243898244573%_
                                             _%$%tl243899244575%_
                                             _%$%e243900244578%_
                                             _%$%hd243901244581%_
                                             _%$%tl243902244583%_
                                             _%$%e243903244586%_
                                             _%$%hd243904244589%_
                                             _%$%tl243905244591%_))
                                        (_%__match250305250306%_
                                         _%$%e243882244530%_
                                         _%$%hd243883244533%_
                                         _%$%tl243884244535%_
                                         _%$%e243885244538%_
                                         _%$%hd243886244541%_
                                         _%$%tl243887244543%_
                                         _%$%e243888244546%_
                                         _%$%hd243889244549%_
                                         _%$%tl243890244551%_
                                         _%$%e243891244554%_
                                         _%$%hd243892244557%_
                                         _%$%tl243893244559%_
                                         _%$%e243894244562%_
                                         _%$%hd243895244565%_
                                         _%$%tl243896244567%_
                                         _%$%e243897244570%_
                                         _%$%hd243898244573%_
                                         _%$%tl243899244575%_
                                         _%$%e243900244578%_
                                         _%$%hd243901244581%_
                                         _%$%tl243902244583%_
                                         _%$%e243903244586%_
                                         _%$%hd243904244589%_
                                         _%$%tl243905244591%_))))
                                (_%__match250305250306%_
                                 _%$%e243882244530%_
                                 _%$%hd243883244533%_
                                 _%$%tl243884244535%_
                                 _%$%e243885244538%_
                                 _%$%hd243886244541%_
                                 _%$%tl243887244543%_
                                 _%$%e243888244546%_
                                 _%$%hd243889244549%_
                                 _%$%tl243890244551%_
                                 _%$%e243891244554%_
                                 _%$%hd243892244557%_
                                 _%$%tl243893244559%_
                                 _%$%e243894244562%_
                                 _%$%hd243895244565%_
                                 _%$%tl243896244567%_
                                 _%$%e243897244570%_
                                 _%$%hd243898244573%_
                                 _%$%tl243899244575%_
                                 _%$%e243900244578%_
                                 _%$%hd243901244581%_
                                 _%$%tl243902244583%_
                                 _%$%e243903244586%_
                                 _%$%hd243904244589%_
                                 _%$%tl243905244591%_))
                            (_%__match250091250092%_
                             _%$%e243882244530%_
                             _%$%hd243883244533%_
                             _%$%tl243884244535%_
                             _%$%e243885244538%_
                             _%$%hd243886244541%_
                             _%$%tl243887244543%_
                             _%$%e243888244546%_
                             _%$%hd243889244549%_
                             _%$%tl243890244551%_
                             _%$%e243891244554%_
                             _%$%hd243892244557%_
                             _%$%tl243893244559%_
                             _%$%e243894244562%_
                             _%$%hd243895244565%_
                             _%$%tl243896244567%_
                             _%$%e243897244570%_
                             _%$%hd243898244573%_
                             _%$%tl243899244575%_
                             _%$%e243900244578%_
                             _%$%hd243901244581%_
                             _%$%tl243902244583%_
                             _%$%e243903244586%_
                             _%$%hd243904244589%_
                             _%$%tl243905244591%_
                             _%$%e243906244594%_
                             _%$%hd243907244597%_
                             _%$%tl243908244599%_))))
                     (_%__match249913249914%_
                      (lambda (_%$%e243838244720%_
                               _%$%hd243839244723%_
                               _%$%tl243840244725%_
                               _%$%e243841244728%_
                               _%$%hd243842244731%_
                               _%$%tl243843244733%_
                               _%$%e243844244736%_
                               _%$%hd243845244739%_
                               _%$%tl243846244741%_
                               _%$%e243847244744%_
                               _%$%hd243848244747%_
                               _%$%tl243849244749%_
                               _%$%e243850244752%_
                               _%$%hd243851244755%_
                               _%$%tl243852244757%_
                               _%$%e243853244760%_
                               _%$%hd243854244763%_
                               _%$%tl243855244765%_
                               _%$%e243856244768%_
                               _%$%hd243857244771%_
                               _%$%tl243858244773%_
                               _%$%e243859244776%_
                               _%$%hd243860244779%_
                               _%$%tl243861244781%_
                               _%$%e243862244784%_
                               _%$%hd243863244787%_
                               _%$%tl243864244789%_
                               _%$%e243865244792%_
                               _%$%hd243866244795%_
                               _%$%tl243867244797%_
                               _%__splice249812249813%_
                               _%$%target243868244800%_
                               _%$%tl243870244802%_)
                        (letrec ((_%$%loop243871244805%_
                                  (lambda (_%$%hd243869244808%_
                                           _%$%args243875244810%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd243869244808%_))
                                        (let ((_%$%e243872244812%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd243869244808%_))))
                                          (let ((_%$%lp-tl243874244817%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e243872244812%_)))
                                                (_%$%lp-hd243873244815%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e243872244812%_))))
                                            (_%$%loop243871244805%_
                                             _%$%lp-tl243874244817%_
                                             (cons _%$%lp-hd243873244815%_
                                                   _%$%args243875244810%_))))
                                        (let ((_%$%args243876244820%_
                                               (reverse _%$%args243875244810%_)))
                                          (let ((_%$%g243834244822%_
                                                 _%$%args243876244820%_)
                                                (_%$%g243835244823%_
                                                 _%$%hd243866244795%_)
                                                (_%$%g243836244824%_
                                                 _%$%hd243857244771%_)
                                                (_%$%g243837244825%_
                                                 _%$%hd243848244747%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g243837244825%_
                                                        'call-method))
                                                     (let ((__tmp250502
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self243821%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g243836244824%_
                                                        __tmp250502)))
                                                (_%__kont249810249811%_
                                                 _%$%g243834244822%_
                                                 _%$%g243835244823%_
                                                 _%$%g243836244824%_
                                                 _%$%g243837244825%_)
                                                (_%__match250101250102%_
                                                 _%$%e243838244720%_
                                                 _%$%hd243839244723%_
                                                 _%$%tl243840244725%_
                                                 _%$%e243841244728%_
                                                 _%$%hd243842244731%_
                                                 _%$%tl243843244733%_
                                                 _%$%e243844244736%_
                                                 _%$%hd243845244739%_
                                                 _%$%tl243846244741%_
                                                 _%$%e243847244744%_
                                                 _%$%hd243848244747%_
                                                 _%$%tl243849244749%_
                                                 _%$%e243850244752%_
                                                 _%$%hd243851244755%_
                                                 _%$%tl243852244757%_
                                                 _%$%e243853244760%_
                                                 _%$%hd243854244763%_
                                                 _%$%tl243855244765%_
                                                 _%$%e243856244768%_
                                                 _%$%hd243857244771%_
                                                 _%$%tl243858244773%_
                                                 _%$%e243859244776%_
                                                 _%$%hd243860244779%_
                                                 _%$%tl243861244781%_
                                                 _%$%e243862244784%_
                                                 _%$%hd243863244787%_
                                                 _%$%tl243864244789%_
                                                 _%$%e243865244792%_
                                                 _%$%hd243866244795%_
                                                 _%$%tl243867244797%_))))))))
                          (_%$%loop243871244805%_
                           _%$%target243868244800%_
                           '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx249808249809%_))
                    (let ((_%$%e243838244720%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx249808249809%_))))
                      (let ((_%$%tl243840244725%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e243838244720%_)))
                            (_%$%hd243839244723%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e243838244720%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl243840244725%_))
                            (let ((_%$%e243841244728%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl243840244725%_))))
                              (let ((_%$%tl243843244733%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e243841244728%_)))
                                    (_%$%hd243842244731%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e243841244728%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd243842244731%_))
                                    (let ((_%$%e243844244736%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd243842244731%_))))
                                      (let ((_%$%tl243846244741%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e243844244736%_)))
                                            (_%$%hd243845244739%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e243844244736%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd243845244739%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd243845244739%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl243846244741%_))
                                                    (let ((_%$%e243847244744%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl243846244741%_))))
                                                      (let ((_%$%tl243849244749%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e243847244744%_)))
                    (_%$%hd243848244747%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e243847244744%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl243849244749%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl243843244733%_))
                        (let ((_%$%e243850244752%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl243843244733%_))))
                          (let ((_%$%tl243852244757%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e243850244752%_)))
                                (_%$%hd243851244755%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e243850244752%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd243851244755%_))
                                (let ((_%$%e243853244760%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd243851244755%_))))
                                  (let ((_%$%tl243855244765%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e243853244760%_)))
                                        (_%$%hd243854244763%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e243853244760%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd243854244763%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%$%hd243854244763%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl243855244765%_))
                                                (let ((_%$%e243856244768%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl243855244765%_))))
                                                  (let ((_%$%tl243858244773%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e243856244768%_)))
                                                        (_%$%hd243857244771%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e243856244768%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl243858244773%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl243852244757%_))
                                                            (let ((_%$%e243859244776%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl243852244757%_))))
                      (let ((_%$%tl243861244781%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e243859244776%_)))
                            (_%$%hd243860244779%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e243859244776%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd243860244779%_))
                            (let ((_%$%e243862244784%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd243860244779%_))))
                              (let ((_%$%tl243864244789%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e243862244784%_)))
                                    (_%$%hd243863244787%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e243862244784%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd243863244787%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd243863244787%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl243864244789%_))
                                            (let ((_%$%e243865244792%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl243864244789%_))))
                                              (let ((_%$%tl243867244797%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e243865244792%_)))
                                                    (_%$%hd243866244795%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e243865244792%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl243867244797%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl243861244781%_))
                                                        (let ((_%__splice249812249813%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl243861244781%_
                          '0))))
                  (let ((_%$%tl243870244802%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice249812249813%_ '1)))
                        (_%$%target243868244800%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice249812249813%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl243870244802%_))
                        (_%__match249913249914%_
                         _%$%e243838244720%_
                         _%$%hd243839244723%_
                         _%$%tl243840244725%_
                         _%$%e243841244728%_
                         _%$%hd243842244731%_
                         _%$%tl243843244733%_
                         _%$%e243844244736%_
                         _%$%hd243845244739%_
                         _%$%tl243846244741%_
                         _%$%e243847244744%_
                         _%$%hd243848244747%_
                         _%$%tl243849244749%_
                         _%$%e243850244752%_
                         _%$%hd243851244755%_
                         _%$%tl243852244757%_
                         _%$%e243853244760%_
                         _%$%hd243854244763%_
                         _%$%tl243855244765%_
                         _%$%e243856244768%_
                         _%$%hd243857244771%_
                         _%$%tl243858244773%_
                         _%$%e243859244776%_
                         _%$%hd243860244779%_
                         _%$%tl243861244781%_
                         _%$%e243862244784%_
                         _%$%hd243863244787%_
                         _%$%tl243864244789%_
                         _%$%e243865244792%_
                         _%$%hd243866244795%_
                         _%$%tl243867244797%_
                         _%__splice249812249813%_
                         _%$%target243868244800%_
                         _%$%tl243870244802%_)
                        (_%__match250101250102%_
                         _%$%e243838244720%_
                         _%$%hd243839244723%_
                         _%$%tl243840244725%_
                         _%$%e243841244728%_
                         _%$%hd243842244731%_
                         _%$%tl243843244733%_
                         _%$%e243844244736%_
                         _%$%hd243845244739%_
                         _%$%tl243846244741%_
                         _%$%e243847244744%_
                         _%$%hd243848244747%_
                         _%$%tl243849244749%_
                         _%$%e243850244752%_
                         _%$%hd243851244755%_
                         _%$%tl243852244757%_
                         _%$%e243853244760%_
                         _%$%hd243854244763%_
                         _%$%tl243855244765%_
                         _%$%e243856244768%_
                         _%$%hd243857244771%_
                         _%$%tl243858244773%_
                         _%$%e243859244776%_
                         _%$%hd243860244779%_
                         _%$%tl243861244781%_
                         _%$%e243862244784%_
                         _%$%hd243863244787%_
                         _%$%tl243864244789%_
                         _%$%e243865244792%_
                         _%$%hd243866244795%_
                         _%$%tl243867244797%_))))
                (_%__match250101250102%_
                 _%$%e243838244720%_
                 _%$%hd243839244723%_
                 _%$%tl243840244725%_
                 _%$%e243841244728%_
                 _%$%hd243842244731%_
                 _%$%tl243843244733%_
                 _%$%e243844244736%_
                 _%$%hd243845244739%_
                 _%$%tl243846244741%_
                 _%$%e243847244744%_
                 _%$%hd243848244747%_
                 _%$%tl243849244749%_
                 _%$%e243850244752%_
                 _%$%hd243851244755%_
                 _%$%tl243852244757%_
                 _%$%e243853244760%_
                 _%$%hd243854244763%_
                 _%$%tl243855244765%_
                 _%$%e243856244768%_
                 _%$%hd243857244771%_
                 _%$%tl243858244773%_
                 _%$%e243859244776%_
                 _%$%hd243860244779%_
                 _%$%tl243861244781%_
                 _%$%e243862244784%_
                 _%$%hd243863244787%_
                 _%$%tl243864244789%_
                 _%$%e243865244792%_
                 _%$%hd243866244795%_
                 _%$%tl243867244797%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match250305250306%_
                                                     _%$%e243838244720%_
                                                     _%$%hd243839244723%_
                                                     _%$%tl243840244725%_
                                                     _%$%e243841244728%_
                                                     _%$%hd243842244731%_
                                                     _%$%tl243843244733%_
                                                     _%$%e243844244736%_
                                                     _%$%hd243845244739%_
                                                     _%$%tl243846244741%_
                                                     _%$%e243847244744%_
                                                     _%$%hd243848244747%_
                                                     _%$%tl243849244749%_
                                                     _%$%e243850244752%_
                                                     _%$%hd243851244755%_
                                                     _%$%tl243852244757%_
                                                     _%$%e243853244760%_
                                                     _%$%hd243854244763%_
                                                     _%$%tl243855244765%_
                                                     _%$%e243856244768%_
                                                     _%$%hd243857244771%_
                                                     _%$%tl243858244773%_
                                                     _%$%e243859244776%_
                                                     _%$%hd243860244779%_
                                                     _%$%tl243861244781%_))))
                                            (_%__match250305250306%_
                                             _%$%e243838244720%_
                                             _%$%hd243839244723%_
                                             _%$%tl243840244725%_
                                             _%$%e243841244728%_
                                             _%$%hd243842244731%_
                                             _%$%tl243843244733%_
                                             _%$%e243844244736%_
                                             _%$%hd243845244739%_
                                             _%$%tl243846244741%_
                                             _%$%e243847244744%_
                                             _%$%hd243848244747%_
                                             _%$%tl243849244749%_
                                             _%$%e243850244752%_
                                             _%$%hd243851244755%_
                                             _%$%tl243852244757%_
                                             _%$%e243853244760%_
                                             _%$%hd243854244763%_
                                             _%$%tl243855244765%_
                                             _%$%e243856244768%_
                                             _%$%hd243857244771%_
                                             _%$%tl243858244773%_
                                             _%$%e243859244776%_
                                             _%$%hd243860244779%_
                                             _%$%tl243861244781%_))
                                        (_%__match249981249982%_
                                         _%$%e243838244720%_
                                         _%$%hd243839244723%_
                                         _%$%tl243840244725%_
                                         _%$%e243841244728%_
                                         _%$%hd243842244731%_
                                         _%$%tl243843244733%_
                                         _%$%e243844244736%_
                                         _%$%hd243845244739%_
                                         _%$%tl243846244741%_
                                         _%$%e243847244744%_
                                         _%$%hd243848244747%_
                                         _%$%tl243849244749%_
                                         _%$%e243850244752%_
                                         _%$%hd243851244755%_
                                         _%$%tl243852244757%_
                                         _%$%e243853244760%_
                                         _%$%hd243854244763%_
                                         _%$%tl243855244765%_
                                         _%$%e243856244768%_
                                         _%$%hd243857244771%_
                                         _%$%tl243858244773%_
                                         _%$%e243859244776%_
                                         _%$%hd243860244779%_
                                         _%$%tl243861244781%_
                                         _%$%e243862244784%_
                                         _%$%hd243863244787%_
                                         _%$%tl243864244789%_))
                                    (_%__match250305250306%_
                                     _%$%e243838244720%_
                                     _%$%hd243839244723%_
                                     _%$%tl243840244725%_
                                     _%$%e243841244728%_
                                     _%$%hd243842244731%_
                                     _%$%tl243843244733%_
                                     _%$%e243844244736%_
                                     _%$%hd243845244739%_
                                     _%$%tl243846244741%_
                                     _%$%e243847244744%_
                                     _%$%hd243848244747%_
                                     _%$%tl243849244749%_
                                     _%$%e243850244752%_
                                     _%$%hd243851244755%_
                                     _%$%tl243852244757%_
                                     _%$%e243853244760%_
                                     _%$%hd243854244763%_
                                     _%$%tl243855244765%_
                                     _%$%e243856244768%_
                                     _%$%hd243857244771%_
                                     _%$%tl243858244773%_
                                     _%$%e243859244776%_
                                     _%$%hd243860244779%_
                                     _%$%tl243861244781%_))))
                            (_%__match250305250306%_
                             _%$%e243838244720%_
                             _%$%hd243839244723%_
                             _%$%tl243840244725%_
                             _%$%e243841244728%_
                             _%$%hd243842244731%_
                             _%$%tl243843244733%_
                             _%$%e243844244736%_
                             _%$%hd243845244739%_
                             _%$%tl243846244741%_
                             _%$%e243847244744%_
                             _%$%hd243848244747%_
                             _%$%tl243849244749%_
                             _%$%e243850244752%_
                             _%$%hd243851244755%_
                             _%$%tl243852244757%_
                             _%$%e243853244760%_
                             _%$%hd243854244763%_
                             _%$%tl243855244765%_
                             _%$%e243856244768%_
                             _%$%hd243857244771%_
                             _%$%tl243858244773%_
                             _%$%e243859244776%_
                             _%$%hd243860244779%_
                             _%$%tl243861244781%_))))
                    (_%__match250243250244%_
                     _%$%e243838244720%_
                     _%$%hd243839244723%_
                     _%$%tl243840244725%_
                     _%$%e243841244728%_
                     _%$%hd243842244731%_
                     _%$%tl243843244733%_
                     _%$%e243844244736%_
                     _%$%hd243845244739%_
                     _%$%tl243846244741%_
                     _%$%e243847244744%_
                     _%$%hd243848244747%_
                     _%$%tl243849244749%_
                     _%$%e243850244752%_
                     _%$%hd243851244755%_
                     _%$%tl243852244757%_
                     _%$%e243853244760%_
                     _%$%hd243854244763%_
                     _%$%tl243855244765%_
                     _%$%e243856244768%_
                     _%$%hd243857244771%_
                     _%$%tl243858244773%_))
                (_%__kont249826249827%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont249826249827%_))
                                            (_%__kont249826249827%_))
                                        (_%__kont249826249827%_))))
                                (_%__kont249826249827%_))))
                        (_%__kont249826249827%_))
                    (_%__kont249826249827%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont249826249827%_))
                                                (_%__kont249826249827%_))
                                            (_%__kont249826249827%_))))
                                    (_%__kont249826249827%_))))
                            (_%__kont249826249827%_))))
                    (_%__kont249826249827%_))))))))))
