(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1784758129)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp248312 (list gxc#::identity::t))
            (__tmp248311 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp248312
         '()
         __tmp248311
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args247109%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args247109%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp248313
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
        (__make-atomic-promise __tmp248313)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx247101%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self247104%_
                (let ((__obj248304
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj248304))
               (__tmp248314
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self247104%_ _%stx247101%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp248314
           gxc#current-compile-method
           _%self247104%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp248316 (list gxc#::false::t))
            (__tmp248315 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp248316
         '()
         __tmp248315
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args247098%_
        (apply make-instance gxc#::extract-receiver::t _%$args247098%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp248317
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
        (__make-atomic-promise __tmp248317)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx247090%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self247093%_
                (let ((__obj248306
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj248306))
               (__tmp248318
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self247093%_ _%stx247090%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp248318
           gxc#current-compile-method
           _%self247093%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp248320 (list gxc#::void::t))
            (__tmp248319 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp248320
         '(receiver methods slots)
         __tmp248319
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args247087%_
        (apply make-instance gxc#::collect-object-refs::t _%$args247087%_)))
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
      (let ((__tmp248321
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
        (__make-atomic-promise __tmp248321)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords247056%_
               _%$%receiver247051247057%_
               _%$%methods247052247058%_
               _%$%slots247053247059%_
               _%stx247060%_)
        (let* ((_%receiver247063%_
                (if (eq? _%$%receiver247051247057%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver247051247057%_))
               (_%methods247065%_
                (if (eq? _%$%methods247052247058%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods247052247058%_))
               (_%slots247067%_
                (if (eq? _%$%slots247053247059%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots247053247059%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self247069%_
                  (let ((__obj248308
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
                       __obj248308
                       _%receiver247063%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj248308
                       _%methods247065%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj248308
                       _%slots247067%_
                       '3
                       '#f
                       '#f))
                    __obj248308))
                 (__tmp248322
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self247069%_ _%stx247060%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp248322
             gxc#current-compile-method
             _%self247069%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords247076%_ . _%args247077%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords247076%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247076%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247076%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247076%_
                  'slots:
                  absent-value))
               _%args247077%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%$%args247054247083%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%$%args247054247083%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp248324 (list gxc#::basic-xform-expression::t))
            (__tmp248323 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp248324
         '(receiver klass methods slots)
         __tmp248323
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args247047%_
        (apply make-instance gxc#::subst-object-refs::t _%$args247047%_)))
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
      (let ((__tmp248325
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
        (__make-atomic-promise __tmp248325)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords247013%_
               _%$%receiver247007247014%_
               _%$%klass247008247015%_
               _%$%methods247009247016%_
               _%$%slots247010247017%_
               _%stx247018%_)
        (let* ((_%receiver247021%_
                (if (eq? _%$%receiver247007247014%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver247007247014%_))
               (_%klass247023%_
                (if (eq? _%$%klass247008247015%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%$%klass247008247015%_))
               (_%methods247025%_
                (if (eq? _%$%methods247009247016%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods247009247016%_))
               (_%slots247027%_
                (if (eq? _%$%slots247010247017%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots247010247017%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self247029%_
                  (let ((__obj248310
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
                       __obj248310
                       _%receiver247021%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj248310
                       _%klass247023%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj248310
                       _%methods247025%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj248310
                       _%slots247027%_
                       '4
                       '#f
                       '#f))
                    __obj248310))
                 (__tmp248326
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self247029%_ _%stx247018%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp248326
             gxc#current-compile-method
             _%self247029%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords247036%_ . _%args247037%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords247036%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247036%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247036%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247036%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247036%_
                  'slots:
                  absent-value))
               _%args247037%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%$%args247011247043%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%$%args247011247043%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self244138%_ _%stx244139%_)
        (letrec ((_%generate-method-bind244141%_
                  (lambda (_%$klass246999%_
                           _%$method-table247000%_
                           _%id247001%_
                           _%$id247002%_)
                    (let ((_%$tmp247004%_
                           (let ((__tmp248327
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp248327))))
                      (cons (cons _%$id247002%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp247004%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table247000%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id247001%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp247004%_ '()))
                    (cons (cons '%#ref (cons _%$tmp247004%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id247001%_
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
                 (_%generate-slot-bind244142%_
                  (lambda (_%$klass246993%_ _%id246994%_ _%$id246995%_)
                    (let ((_%$tmp246997%_
                           (let ((__tmp248328
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp248328))))
                      (cons (cons _%$id246995%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp246997%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass246993%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id246994%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp246997%_ '()))
                        (cons (cons '%#ref (cons _%$tmp246997%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id246994%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl244143%_
                  (lambda (_%$klass246987%_
                           _%$method-table246988%_
                           _%methods-bind246989%_
                           _%slots-bind246990%_
                           _%specializer-impl246991%_)
                    (let ((__tmp248329
                           (cons '%#lambda
                                 (cons (cons _%$klass246987%_
                                             (cons _%$method-table246988%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (append _%methods-bind246989%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%slots-bind246990%_)
                 (cons _%specializer-impl246991%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp248329 _%stx244139%_))))
                 (_%generate-specializer-def244144%_
                  (lambda (_%id246983%_
                           _%specializer-id246984%_
                           _%specializer-impl246985%_)
                    (let ((__tmp248330
                           (cons '%#begin
                                 (cons _%stx244139%_
                                       (cons (let ((__tmp248331
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id246984%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl246985%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp248331
                                                _%stx244139%_))
                                             (cons (let ((__tmp248332
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id246983%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id246984%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp248332
                                                      _%stx244139%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp248330 _%stx244139%_)))))
          (let* ((_%__stx247198247199%_ _%stx244139%_)
                 (_%$%g244147244167%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx247198247199%_)))))
            (let ((_%__kont247200247201%_
                   (lambda (_%$%g244149244211%_ _%$%g244150244212%_)
                     (let ((_%method-calls244231%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs244232%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty244233%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?244235%_
                                 (lambda ()
                                   (if (let ((__tmp248333
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls244231%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp248333))
                                       (let ((__tmp248334
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs244232%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp248334))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%$%g244149244211%_))
                             (let* ((_%__stx247112247113%_ _%$%g244149244211%_)
                                    (_%$%g244619244637%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx247112247113%_)))))
                               (let ((_%__kont247114247115%_
                                      (lambda (_%$%g244621244673%_
                                               _%$%g244622244674%_
                                               _%$%g244623244675%_)
                                        (let ((_%receiver244695%_
                                               (let ((_%$e244692%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%g244621244673%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e244692%_
                                                     _%$e244692%_
                                                     _%$%g244623244675%_))))
                                          (for-each
                                           (lambda (_%$%g244696244698%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver244695%_
                                              _%method-calls244231%_
                                              _%slot-refs244232%_
                                              _%$%g244696244698%_))
                                           _%$%g244621244673%_)
                                          (if (_%no-specializer?244235%_)
                                              _%stx244139%_
                                              (let* ((_%specializer-id244707%_
                                                      (let* ((_%id244701%_
                                                              (let ((__tmp248335
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g244150244212%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp248335 '"::specialize")))
                     (_%specializer-id244704%_
                      (let ((__tmp248336
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx244139%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id244701%_ __tmp248336))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id244704%_))
                _%specializer-id244704%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass244709%_
                                                      (let ((__tmp248337
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp248337)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table244711%_
                                                      (let ((__tmp248338
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp248338)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods244713%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls244231%_)))
                                                     (_%$methods244717%_
                                                      (let ((__tmp248339
                                                             (lambda (_%id244715%_)
                                                               (let ((__tmp248340
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id244715%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp248340)))))
                (declare (not safe))
                (##map __tmp248339 _%methods244713%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_244726%_
                                                      (let ((__tmp248341
                                                             (lambda (_%$%g244718244721%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g244719244723%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls244231%_
                          _%$%g244718244721%_
                          _%$%g244719244723%_)))))
                (declare (not safe))
                (##for-each __tmp248341 _%methods244713%_ _%$methods244717%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind244736%_
                                                      (let ((__tmp248342
                                                             (lambda (_%$%g244728244731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g244729244733%_)
                       (_%generate-method-bind244141%_
                        _%$klass244709%_
                        _%$method-table244711%_
                        _%$%g244728244731%_
                        _%$%g244729244733%_))))
                (declare (not safe))
                (##map __tmp248342 _%methods244713%_ _%$methods244717%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots244738%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs244232%_)))
                                                     (_%$slots244742%_
                                                      (let ((__tmp248343
                                                             (lambda (_%id244740%_)
                                                               (let ((__tmp248344
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id244740%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp248344)))))
                (declare (not safe))
                (##map __tmp248343 _%slots244738%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_244751%_
                                                      (let ((__tmp248345
                                                             (lambda (_%$%g244743244746%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g244744244748%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs244232%_
                          _%$%g244743244746%_
                          _%$%g244744244748%_)))))
                (declare (not safe))
                (##for-each __tmp248345 _%slots244738%_ _%$slots244742%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind244760%_
                                                      (let ((__tmp248346
                                                             (lambda (_%$%g244752244755%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g244753244757%_)
                       (_%generate-slot-bind244142%_
                        _%$klass244709%_
                        _%$%g244752244755%_
                        _%$%g244753244757%_))))
                (declare (not safe))
                (##map __tmp248346 _%slots244738%_ _%$slots244742%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body244766%_
                                                      (map (lambda (_%$%g244761244763%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver244695%_
                                                              _%$klass244709%_
                                                              _%method-calls244231%_
                                                              _%slot-refs244232%_
                                                              _%$%g244761244763%_))
                                                           _%$%g244621244673%_))
                                                     (_%specializer-impl244768%_
                                                      (let ((__tmp248347
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%$%g244623244675%_ _%$%g244622244674%_)
                                 _%specializer-body244766%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp248347 _%stx244139%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl244770%_
                                                      (_%generate-specializer-impl244143%_
                                                       _%$klass244709%_
                                                       _%$method-table244711%_
                                                       _%methods-bind244736%_
                                                       _%slots-bind244760%_
                                                       _%specializer-impl244768%_)))
                                                (let ((__tmp248349
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g244150244212%_)))
                                                      (__tmp248348
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id244707%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp248349
                                                   '" => "
                                                   __tmp248348))
                                                (_%generate-specializer-def244144%_
                                                 _%$%g244150244212%_
                                                 _%specializer-id244707%_
                                                 _%specializer-impl244770%_))))))
                                     (_%__kont247116247117%_
                                      (lambda () _%stx244139%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx247112247113%_))
                                     (let ((_%$%e244624244649%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx247112247113%_))))
                                       (let ((_%$%tl244626244654%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e244624244649%_)))
                                             (_%$%hd244625244652%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e244624244649%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl244626244654%_))
                                             (let ((_%$%e244627244657%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl244626244654%_))))
                                               (let ((_%$%tl244629244662%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e244627244657%_)))
                                                     (_%$%hd244628244660%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e244627244657%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%hd244628244660%_))
                                                     (let ((_%$%e244630244665%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%hd244628244660%_))))
                                                       (let ((_%$%tl244632244670%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e244630244665%_)))
                     (_%$%hd244631244668%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e244630244665%_))))
                 (_%__kont247114247115%_
                  _%$%tl244629244662%_
                  _%$%tl244632244670%_
                  _%$%hd244631244668%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont247116247117%_))))
                                             (_%__kont247116247117%_))))
                                     (_%__kont247116247117%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%$%g244149244211%_))
                                 (let* ((_%$%g244777244796%_
                                         (lambda (_%$%g244778244793%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g244778244793%_))))
                                        (_%$%g244776245092%_
                                         (lambda (_%$%g244778244799%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%g244778244799%_))
                                               (let ((_%$%e244780244801%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g244778244799%_))))
                                                 (let ((_%$%hd244781244804%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e244780244801%_)))
                                                       (_%$%tl244782244806%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e244780244801%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%$%tl244782244806%_))
                                                       (let ((_g248350_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%$%tl244782244806%_ '0))))
                 (begin
                   (let ((_g248351_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g248350_)
                                (##values-length _g248350_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g248351_ 2)))
                         (error "Context expects 2 values" _g248351_)))
                   (let ((_%$%target244783244809%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g248350_ 0)))
                         (_%$%tl244785244811%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g248350_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl244785244811%_))
                         (letrec ((_%$%loop244786244814%_
                                   (lambda (_%$%hd244784244817%_
                                            _%$%clause244790244819%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd244784244817%_))
                                         (let ((_%$%e244787244821%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd244784244817%_))))
                                           (let ((_%$%lp-hd244788244824%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e244787244821%_)))
                                                 (_%$%lp-tl244789244826%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e244787244821%_))))
                                             (_%$%loop244786244814%_
                                              _%$%lp-tl244789244826%_
                                              (cons _%$%lp-hd244788244824%_
                                                    _%$%clause244790244819%_))))
                                         (let ((_%$%clause244791244829%_
                                                (reverse _%$%clause244790244819%_)))
                                           (for-each
                                            (lambda (_%clause244845%_)
                                              (let* ((_%__stx247138247139%_
                                                      _%clause244845%_)
                                                     (_%$%g244848244863%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx247138247139%_)))))
                                                (let ((_%__kont247140247141%_
                                                       (lambda (_%$%g244850244891%_
                                                                _%$%g244851244892%_
                                                                _%$%g244852244893%_)
                                                         (let ((_%receiver244912%_
                                                                (let ((_%$e244909%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gxc#apply-extract-receiver
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f '%#begin))
                                      _%$%g244850244891%_))))
                          (if _%$e244909%_ _%$e244909%_ _%$%g244852244893%_))))
                   (for-each
                    (lambda (_%$%g244913244915%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver244912%_
                       _%method-calls244231%_
                       _%slot-refs244232%_
                       _%$%g244913244915%_))
                    _%$%g244850244891%_))))
              (_%__kont247142247143%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx247138247139%_))
                                                      (let ((_%$%e244853244875%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx247138247139%_))))
                (let ((_%$%tl244855244880%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e244853244875%_)))
                      (_%$%hd244854244878%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e244853244875%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd244854244878%_))
                      (let ((_%$%e244856244883%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd244854244878%_))))
                        (let ((_%$%tl244858244888%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e244856244883%_)))
                              (_%$%hd244857244886%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e244856244883%_))))
                          (_%__kont247140247141%_
                           _%$%tl244855244880%_
                           _%$%tl244858244888%_
                           _%$%hd244857244886%_)))
                      '#!void)))
              '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((__tmp248352
                                                   (lambda (_%$%g244920244923%_
                                                            _%$%g244921244925%_)
                                                     (cons _%$%g244920244923%_
                                                           _%$%g244921244925%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp248352
                                               '()
                                               _%$%clause244791244829%_)))
                                           (if (_%no-specializer?244235%_)
                                               _%stx244139%_
                                               (let* ((_%specializer-id244934%_
                                                       (let* ((_%id244928%_
                                                               (let ((__tmp248353
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g244150244212%_))))
                         (declare (not safe))
                         (make-symbol__1 __tmp248353 '"::specialize")))
                      (_%specializer-id244931%_
                       (let ((__tmp248354
                              (let ()
                                (declare (not safe))
                                (gx#stx-source _%stx244139%_))))
                         (declare (not safe))
                         (gx#core-quote-syntax__1 _%id244928%_ __tmp248354))))
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _%specializer-id244931%_))
                 _%specializer-id244931%_))
              (_%$klass244936%_
               (let ((__tmp248355
                      (let () (declare (not safe)) (##gensym '__klass))))
                 (declare (not safe))
                 (make-symbol__0 __tmp248355)))
              (_%$method-table244938%_
               (let ((__tmp248356
                      (let ()
                        (declare (not safe))
                        (##gensym '__method-table))))
                 (declare (not safe))
                 (make-symbol__0 __tmp248356)))
              (_%methods244940%_
               (let ()
                 (declare (not safe))
                 (__hash-keys _%method-calls244231%_)))
              (_%$methods244944%_
               (let ((__tmp248357
                      (lambda (_%id244942%_)
                        (let ((__tmp248358 (gensym _%id244942%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp248358)))))
                 (declare (not safe))
                 (##map __tmp248357 _%methods244940%_)))
              (_%_244953%_
               (let ((__tmp248359
                      (lambda (_%$%g244945244948%_ _%$%g244946244950%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%method-calls244231%_
                           _%$%g244945244948%_
                           _%$%g244946244950%_)))))
                 (declare (not safe))
                 (##for-each
                  __tmp248359
                  _%methods244940%_
                  _%$methods244944%_)))
              (_%methods-bind244963%_
               (let ((__tmp248360
                      (lambda (_%$%g244955244958%_ _%$%g244956244960%_)
                        (_%generate-method-bind244141%_
                         _%$klass244936%_
                         _%$method-table244938%_
                         _%$%g244955244958%_
                         _%$%g244956244960%_))))
                 (declare (not safe))
                 (##map __tmp248360 _%methods244940%_ _%$methods244944%_)))
              (_%slots244965%_
               (let () (declare (not safe)) (__hash-keys _%slot-refs244232%_)))
              (_%$slots244969%_
               (let ((__tmp248361
                      (lambda (_%id244967%_)
                        (let ((__tmp248362 (gensym _%id244967%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp248362)))))
                 (declare (not safe))
                 (##map __tmp248361 _%slots244965%_)))
              (_%_244978%_
               (let ((__tmp248363
                      (lambda (_%$%g244970244973%_ _%$%g244971244975%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%slot-refs244232%_
                           _%$%g244970244973%_
                           _%$%g244971244975%_)))))
                 (declare (not safe))
                 (##for-each __tmp248363 _%slots244965%_ _%$slots244969%_)))
              (_%slots-bind244987%_
               (let ((__tmp248364
                      (lambda (_%$%g244979244982%_ _%$%g244980244984%_)
                        (_%generate-slot-bind244142%_
                         _%$klass244936%_
                         _%$%g244979244982%_
                         _%$%g244980244984%_))))
                 (declare (not safe))
                 (##map __tmp248364 _%slots244965%_ _%$slots244969%_)))
              (_%specializer-clauses245085%_
               (map (lambda (_%clause244989%_)
                      (let* ((_%__stx247158247159%_ _%clause244989%_)
                             (_%$%g244992245007%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx247158247159%_)))))
                        (let ((_%__kont247160247161%_
                               (lambda (_%$%g244994245035%_
                                        _%$%g244995245036%_
                                        _%$%g244996245037%_)
                                 (let* ((_%receiver245066%_
                                         (let ((_%$e245063%_
                                                (gxc#apply-extract-receiver
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#begin))
                                                       _%$%g244994245035%_))))
                                           (if _%$e245063%_
                                               _%$e245063%_
                                               _%$%g244996245037%_)))
                                        (_%body245072%_
                                         (map (lambda (_%$%g245067245069%_)
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%receiver245066%_
                                                 _%$klass244936%_
                                                 _%method-calls244231%_
                                                 _%slot-refs244232%_
                                                 _%$%g245067245069%_))
                                              _%$%g244994245035%_)))
                                   (cons (cons _%$%g244996245037%_
                                               _%$%g244995245036%_)
                                         _%body245072%_))))
                              (_%__kont247162247163%_
                               (lambda () _%clause244989%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx247158247159%_))
                              (let ((_%$%e244997245019%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx247158247159%_))))
                                (let ((_%$%tl244999245024%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e244997245019%_)))
                                      (_%$%hd244998245022%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e244997245019%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd244998245022%_))
                                      (let ((_%$%e245000245027%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd244998245022%_))))
                                        (let ((_%$%tl245002245032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e245000245027%_)))
                                              (_%$%hd245001245030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e245000245027%_))))
                                          (_%__kont247160247161%_
                                           _%$%tl244999245024%_
                                           _%$%tl245002245032%_
                                           _%$%hd245001245030%_)))
                                      (_%__kont247162247163%_))))
                              (_%__kont247162247163%_)))))
                    (let ((__tmp248365
                           (lambda (_%$%g245077245080%_ _%$%g245078245082%_)
                             (cons _%$%g245077245080%_ _%$%g245078245082%_))))
                      (declare (not safe))
                      (foldr__0 __tmp248365 '() _%$%clause244791244829%_))))
              (_%specializer-impl245087%_
               (let ((__tmp248366
                      (cons '%#case-lambda _%specializer-clauses245085%_)))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp248366 _%stx244139%_)))
              (_%specializer-impl245089%_
               (_%generate-specializer-impl244143%_
                _%$klass244936%_
                _%$method-table244938%_
                _%methods-bind244963%_
                _%slots-bind244987%_
                _%specializer-impl245087%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp248368
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g244150244212%_)))
                                                       (__tmp248367
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%specializer-id244934%_))))
                                                   (declare (not safe))
                                                   (gxc#verbose
                                                    '"generate method specializer "
                                                    __tmp248368
                                                    '" => "
                                                    __tmp248367))
                                                 (_%generate-specializer-def244144%_
                                                  _%$%g244150244212%_
                                                  _%specializer-id244934%_
                                                  _%specializer-impl245089%_))))))))
                           (_%$%loop244786244814%_
                            _%$%target244783244809%_
                            '()))
                         (_%$%g244777244796%_ _%$%g244778244799%_)))))
               (_%$%g244777244796%_ _%$%g244778244799%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g244777244796%_
                                                _%$%g244778244799%_)))))
                                   (_%$%g244776245092%_ _%$%g244149244211%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%$%g244149244211%_))
                                     (let* ((_%$%g245096245126%_
                                             (lambda (_%$%g245097245123%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g245097245123%_))))
                                            (_%$%g245095245753%_
                                             (lambda (_%$%g245097245129%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g245097245129%_))
                                                   (let ((_%$%e245101245131%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%g245097245129%_))))
                                                     (let ((_%$%hd245102245134%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e245101245131%_)))
                                                           (_%$%tl245103245136%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e245101245131%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl245103245136%_))
                                                           (let ((_%$%e245104245139%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl245103245136%_))))
                     (let ((_%$%hd245105245142%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e245104245139%_)))
                           (_%$%tl245106245144%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e245104245139%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd245105245142%_))
                           (let ((_%$%e245107245147%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd245105245142%_))))
                             (let ((_%$%hd245108245150%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e245107245147%_)))
                                   (_%$%tl245109245152%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e245107245147%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd245108245150%_))
                                   (let ((_%$%e245110245155%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd245108245150%_))))
                                     (let ((_%$%hd245111245158%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e245110245155%_)))
                                           (_%$%tl245112245160%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e245110245155%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd245111245158%_))
                                           (let ((_%$%e245113245163%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd245111245158%_))))
                                             (let ((_%$%hd245114245166%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e245113245163%_)))
                                                   (_%$%tl245115245168%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e245113245163%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl245115245168%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl245112245160%_))
                                                       (let ((_%$%e245116245171%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl245112245160%_))))
                 (let ((_%$%hd245117245174%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e245116245171%_)))
                       (_%$%tl245118245176%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e245116245171%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl245118245176%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl245109245152%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl245106245144%_))
                               (let ((_%$%e245119245179%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl245106245144%_))))
                                 (let ((_%$%hd245120245182%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e245119245179%_)))
                                       (_%$%tl245121245184%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e245119245179%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl245121245184%_))
                                       (let ()
                                         (let* ((_%$%g245213245231%_
                                                 (lambda (_%$%g245214245228%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g245214245228%_))))
                                                (_%$%g245212245287%_
                                                 (lambda (_%$%g245214245234%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g245214245234%_))
                                                       (let ((_%$%e245218245236%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g245214245234%_))))
                 (let ((_%$%hd245219245239%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e245218245236%_)))
                       (_%$%tl245220245241%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e245218245236%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl245220245241%_))
                       (let ((_%$%e245221245244%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl245220245241%_))))
                         (let ((_%$%hd245222245247%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e245221245244%_)))
                               (_%$%tl245223245249%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e245221245244%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd245222245247%_))
                               (let ((_%$%e245224245252%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%hd245222245247%_))))
                                 (let ((_%$%hd245225245255%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e245224245252%_)))
                                       (_%$%tl245226245257%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e245224245252%_))))
                                   (let ((_%receiver245281%_
                                          (let ((_%$e245278%_
                                                 (gxc#apply-extract-receiver
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#begin))
                                                        _%$%tl245223245249%_))))
                                            (if _%$e245278%_
                                                _%$e245278%_
                                                _%$%hd245225245255%_))))
                                     (for-each
                                      (lambda (_%$%g245282245284%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver245281%_
                                         _%method-calls244231%_
                                         _%slot-refs244232%_
                                         _%$%g245282245284%_))
                                      _%$%tl245223245249%_))))
                               (_%$%g245213245231%_ _%$%g245214245234%_))))
                       (_%$%g245213245231%_ _%$%g245214245234%_))))
               (_%$%g245213245231%_ _%$%g245214245234%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g245212245287%_
                                            _%$%hd245117245174%_))
                                         (let* ((_%$%g245290245309%_
                                                 (lambda (_%$%g245291245306%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g245291245306%_))))
                                                (_%$%g245289245431%_
                                                 (lambda (_%$%g245291245312%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g245291245312%_))
                                                       (let ((_%$%e245293245314%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g245291245312%_))))
                 (let ((_%$%hd245294245317%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e245293245314%_)))
                       (_%$%tl245295245319%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e245293245314%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? _%$%tl245295245319%_))
                       (let ((_g248369_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 _%$%tl245295245319%_
                                 '0))))
                         (begin
                           (let ((_g248370_
                                  (let ()
                                    (declare (not safe))
                                    (if (##values? _g248369_)
                                        (##values-length _g248369_)
                                        1))))
                             (if (not (let ()
                                        (declare (not safe))
                                        (##fx= _g248370_ 2)))
                                 (error "Context expects 2 values" _g248370_)))
                           (let ((_%$%target245296245322%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g248369_ 0)))
                                 (_%$%tl245298245324%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g248369_ 1))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl245298245324%_))
                                 (letrec ((_%$%loop245299245327%_
                                           (lambda (_%$%hd245297245330%_
                                                    _%$%clause245303245332%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd245297245330%_))
                                                 (let ((_%$%e245300245334%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd245297245330%_))))
                                                   (let ((_%$%lp-hd245301245337%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e245300245334%_)))
                                                         (_%$%lp-tl245302245339%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e245300245334%_))))
                                                     (_%$%loop245299245327%_
                                                      _%$%lp-tl245302245339%_
                                                      (cons _%$%lp-hd245301245337%_
                                                            _%$%clause245303245332%_))))
                                                 (let ((_%$%clause245304245342%_
                                                        (reverse _%$%clause245303245332%_)))
                                                   (for-each
                                                    (lambda (_%clause245357%_)
                                                      (let* ((_%$%g245359245374%_
                                                              (lambda (_%$%g245360245371%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g245360245371%_))))
                     (_%$%g245358245421%_
                      (lambda (_%$%g245360245377%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%g245360245377%_))
                            (let ((_%$%e245364245379%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g245360245377%_))))
                              (let ((_%$%hd245365245382%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e245364245379%_)))
                                    (_%$%tl245366245384%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e245364245379%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd245365245382%_))
                                    (let ((_%$%e245367245387%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd245365245382%_))))
                                      (let ((_%$%hd245368245390%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e245367245387%_)))
                                            (_%$%tl245369245392%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e245367245387%_))))
                                        (let ((_%receiver245415%_
                                               (let ((_%$e245412%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%tl245366245384%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e245412%_
                                                     _%$e245412%_
                                                     _%$%hd245368245390%_))))
                                          (for-each
                                           (lambda (_%$%g245416245418%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver245415%_
                                              _%method-calls244231%_
                                              _%slot-refs244232%_
                                              _%$%g245416245418%_))
                                           _%$%tl245366245384%_))))
                                    (_%$%g245359245374%_
                                     _%$%g245360245377%_))))
                            (_%$%g245359245374%_ _%$%g245360245377%_)))))
                (_%$%g245358245421%_ _%clause245357%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp248371
                                                           (lambda (_%$%g245423245426%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g245424245428%_)
                     (cons _%$%g245423245426%_ _%$%g245424245428%_))))
              (declare (not safe))
              (foldr__0 __tmp248371 '() _%$%clause245304245342%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%loop245299245327%_
                                    _%$%target245296245322%_
                                    '()))
                                 (_%$%g245290245309%_ _%$%g245291245312%_)))))
                       (_%$%g245290245309%_ _%$%g245291245312%_))))
               (_%$%g245290245309%_ _%$%g245291245312%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g245289245431%_
                                            _%$%hd245120245182%_))
                                         (if (_%no-specializer?244235%_)
                                             _%stx244139%_
                                             (let* ((_%specializer-id245440%_
                                                     (let* ((_%id245434%_
                                                             (let ((__tmp248372
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g244150244212%_))))
                       (declare (not safe))
                       (make-symbol__1 __tmp248372 '"::specialize")))
                    (_%specializer-id245437%_
                     (let ((__tmp248373
                            (let ()
                              (declare (not safe))
                              (gx#stx-source _%stx244139%_))))
                       (declare (not safe))
                       (gx#core-quote-syntax__1 _%id245434%_ __tmp248373))))
               (let ()
                 (declare (not safe))
                 (gx#core-bind-runtime!__0 _%specializer-id245437%_))
               _%specializer-id245437%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$klass245442%_
                                                     (let ((__tmp248374
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__klass))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp248374)))
                                                    (_%$method-table245444%_
                                                     (let ((__tmp248375
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__method-table))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp248375)))
                                                    (_%methods245446%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%method-calls244231%_)))
                                                    (_%$methods245450%_
                                                     (let ((__tmp248376
                                                            (lambda (_%id245448%_)
                                                              (let ((__tmp248377
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id245448%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp248377)))))
               (declare (not safe))
               (##map __tmp248376 _%methods245446%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_245459%_
                                                     (let ((__tmp248378
                                                            (lambda (_%$%g245451245454%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g245452245456%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%method-calls244231%_
                         _%$%g245451245454%_
                         _%$%g245452245456%_)))))
               (declare (not safe))
               (##for-each __tmp248378 _%methods245446%_ _%$methods245450%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%methods-bind245469%_
                                                     (let ((__tmp248379
                                                            (lambda (_%$%g245461245464%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g245462245466%_)
                      (_%generate-method-bind244141%_
                       _%$klass245442%_
                       _%$method-table245444%_
                       _%$%g245461245464%_
                       _%$%g245462245466%_))))
               (declare (not safe))
               (##map __tmp248379 _%methods245446%_ _%$methods245450%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots245471%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%slot-refs244232%_)))
                                                    (_%$slots245475%_
                                                     (let ((__tmp248380
                                                            (lambda (_%id245473%_)
                                                              (let ((__tmp248381
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id245473%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp248381)))))
               (declare (not safe))
               (##map __tmp248380 _%slots245471%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_245484%_
                                                     (let ((__tmp248382
                                                            (lambda (_%$%g245476245479%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g245477245481%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%slot-refs244232%_
                         _%$%g245476245479%_
                         _%$%g245477245481%_)))))
               (declare (not safe))
               (##for-each __tmp248382 _%slots245471%_ _%$slots245475%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots-bind245493%_
                                                     (let ((__tmp248383
                                                            (lambda (_%$%g245485245488%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g245486245490%_)
                      (_%generate-slot-bind244142%_
                       _%$klass245442%_
                       _%$%g245485245488%_
                       _%$%g245486245490%_))))
               (declare (not safe))
               (##map __tmp248383 _%slots245471%_ _%$slots245475%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-lambda-expr245585%_
                                                     (let* ((_%$%g245495245513%_
                                                             (lambda (_%$%g245496245510%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g245496245510%_))))
                    (_%$%g245494245582%_
                     (lambda (_%$%g245496245516%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g245496245516%_))
                           (let ((_%$%e245500245518%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g245496245516%_))))
                             (let ((_%$%hd245501245521%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e245500245518%_)))
                                   (_%$%tl245502245523%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e245500245518%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl245502245523%_))
                                   (let ((_%$%e245503245526%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl245502245523%_))))
                                     (let ((_%$%hd245504245529%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e245503245526%_)))
                                           (_%$%tl245505245531%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e245503245526%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd245504245529%_))
                                           (let ((_%$%e245506245534%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd245504245529%_))))
                                             (let ((_%$%hd245507245537%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e245506245534%_)))
                                                   (_%$%tl245508245539%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e245506245534%_))))
                                               (let* ((_%receiver245573%_
                                                       (let ((_%$e245570%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%tl245505245531%_))))
                 (if _%$e245570%_ _%$e245570%_ _%$%hd245507245537%_)))
              (_%body245579%_
               (map (lambda (_%$%g245574245576%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver245573%_
                       _%$klass245442%_
                       _%method-calls244231%_
                       _%slot-refs244232%_
                       _%$%g245574245576%_))
                    _%$%tl245505245531%_))
              (__tmp248384
               (cons '%#lambda
                     (cons (cons _%$%hd245507245537%_ _%$%tl245508245539%_)
                           _%body245579%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp248384
                                                  _%$%hd245117245174%_))))
                                           (_%$%g245495245513%_
                                            _%$%g245496245516%_))))
                                   (_%$%g245495245513%_ _%$%g245496245516%_))))
                           (_%$%g245495245513%_ _%$%g245496245516%_)))))
               (_%$%g245494245582%_ _%$%hd245117245174%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-case-lambda-expr245746%_
                                                     (let* ((_%$%g245587245606%_
                                                             (lambda (_%$%g245588245603%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g245588245603%_))))
                    (_%$%g245586245743%_
                     (lambda (_%$%g245588245609%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g245588245609%_))
                           (let ((_%$%e245590245611%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g245588245609%_))))
                             (let ((_%$%hd245591245614%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e245590245611%_)))
                                   (_%$%tl245592245616%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e245590245611%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair/null? _%$%tl245592245616%_))
                                   (let ((_g248385_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-split-splice
                                             _%$%tl245592245616%_
                                             '0))))
                                     (begin
                                       (let ((_g248386_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g248385_)
                                                    (##values-length _g248385_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g248386_ 2)))
                                             (error "Context expects 2 values"
                                                    _g248386_)))
                                       (let ((_%$%target245593245619%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g248385_ 0)))
                                             (_%$%tl245595245621%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g248385_ 1))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%$%tl245595245621%_))
                                             (letrec ((_%$%loop245596245624%_
                                                       (lambda (_%$%hd245594245627%_
                                                                _%$%clause245600245629%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%hd245594245627%_))
                     (let ((_%$%e245597245631%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%hd245594245627%_))))
                       (let ((_%$%lp-hd245598245634%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e245597245631%_)))
                             (_%$%lp-tl245599245636%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e245597245631%_))))
                         (_%$%loop245596245624%_
                          _%$%lp-tl245599245636%_
                          (cons _%$%lp-hd245598245634%_
                                _%$%clause245600245629%_))))
                     (let* ((_%$%clause245601245639%_
                             (reverse _%$%clause245600245629%_))
                            (_%clauses245741%_
                             (map (lambda (_%clause245655%_)
                                    (let* ((_%__stx247178247179%_
                                            _%clause245655%_)
                                           (_%$%g245658245673%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%__stx247178247179%_)))))
                                      (let ((_%__kont247180247181%_
                                             (lambda (_%$%g245660245701%_
                                                      _%$%g245661245702%_
                                                      _%$%g245662245703%_)
                                               (let* ((_%receiver245722%_
                                                       (let ((_%$e245719%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%g245660245701%_))))
                 (if _%$e245719%_ _%$e245719%_ _%$%g245662245703%_)))
              (_%body245728%_
               (map (lambda (_%$%g245723245725%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver245722%_
                       _%$klass245442%_
                       _%method-calls244231%_
                       _%slot-refs244232%_
                       _%$%g245723245725%_))
                    _%$%g245660245701%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g245662245703%_
                                                             _%$%g245661245702%_)
                                                       _%body245728%_))))
                                            (_%__kont247182247183%_
                                             (lambda () _%clause245655%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%__stx247178247179%_))
                                            (let ((_%$%e245663245685%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%__stx247178247179%_))))
                                              (let ((_%$%tl245665245690%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e245663245685%_)))
                                                    (_%$%hd245664245688%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e245663245685%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd245664245688%_))
                                                    (let ((_%$%e245666245693%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd245664245688%_))))
                                                      (let ((_%$%tl245668245698%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e245666245693%_)))
                    (_%$%hd245667245696%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e245666245693%_))))
                (_%__kont247180247181%_
                 _%$%tl245665245690%_
                 _%$%tl245668245698%_
                 _%$%hd245667245696%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont247182247183%_))))
                                            (_%__kont247182247183%_)))))
                                  (let ((__tmp248387
                                         (lambda (_%$%g245733245736%_
                                                  _%$%g245734245738%_)
                                           (cons _%$%g245733245736%_
                                                 _%$%g245734245738%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp248387
                                     '()
                                     _%$%clause245601245639%_))))
                            (__tmp248388
                             (cons '%#case-lambda _%clauses245741%_)))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp248388
                        _%$%hd245120245182%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop245596245624%_
                                                _%$%target245593245619%_
                                                '()))
                                             (_%$%g245587245606%_
                                              _%$%g245588245609%_)))))
                                   (_%$%g245587245606%_ _%$%g245588245609%_))))
                           (_%$%g245587245606%_ _%$%g245588245609%_)))))
               (_%$%g245586245743%_ _%$%hd245120245182%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl245748%_
                                                     (let ((__tmp248389
                                                            (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _%$%hd245114245166%_ '())
                                            (cons _%specializer-lambda-expr245585%_
                                                  '()))
                                      '())
                                (cons _%specializer-case-lambda-expr245746%_
                                      '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp248389 _%stx244139%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl245750%_
                                                     (_%generate-specializer-impl244143%_
                                                      _%$klass245442%_
                                                      _%$method-table245444%_
                                                      _%methods-bind245469%_
                                                      _%slots-bind245493%_
                                                      _%specializer-impl245748%_)))
                                               (let ((__tmp248391
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g244150244212%_)))
                                                     (__tmp248390
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%specializer-id245440%_))))
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"generate method specializer "
                                                  __tmp248391
                                                  '" => "
                                                  __tmp248390))
                                               (_%generate-specializer-def244144%_
                                                _%$%g244150244212%_
                                                _%specializer-id245440%_
                                                _%specializer-impl245750%_))))
                                       (_%$%g245096245126%_
                                        _%$%g245097245129%_))))
                               (_%$%g245096245126%_ _%$%g245097245129%_))
                           (_%$%g245096245126%_ _%$%g245097245129%_))
                       (_%$%g245096245126%_ _%$%g245097245129%_))))
               (_%$%g245096245126%_ _%$%g245097245129%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g245096245126%_
                                                    _%$%g245097245129%_))))
                                           (_%$%g245096245126%_
                                            _%$%g245097245129%_))))
                                   (_%$%g245096245126%_ _%$%g245097245129%_))))
                           (_%$%g245096245126%_ _%$%g245097245129%_))))
                   (_%$%g245096245126%_ _%$%g245097245129%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g245096245126%_
                                                    _%$%g245097245129%_)))))
                                       (_%$%g245095245753%_
                                        _%$%g244149244211%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%$%g244149244211%_))
                                         (let* ((_%$%g245757245810%_
                                                 (lambda (_%$%g245758245807%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g245758245807%_))))
                                                (_%$%g245756246975%_
                                                 (lambda (_%$%g245758245813%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g245758245813%_))
                                                       (let ((_%$%e245764245815%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g245758245813%_))))
                 (let ((_%$%hd245765245818%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e245764245815%_)))
                       (_%$%tl245766245820%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e245764245815%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%$%hd245765245818%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%$%hd245765245818%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl245766245820%_))
                               (let ((_%$%e245767245823%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl245766245820%_))))
                                 (let ((_%$%hd245768245826%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e245767245823%_)))
                                       (_%$%tl245769245828%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e245767245823%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd245768245826%_))
                                       (let ((_%$%e245770245831%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd245768245826%_))))
                                         (let ((_%$%hd245771245834%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e245770245831%_)))
                                               (_%$%tl245772245836%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e245770245831%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd245771245834%_))
                                               (let ((_%$%e245773245839%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd245771245834%_))))
                                                 (let ((_%$%hd245774245842%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e245773245839%_)))
                                                       (_%$%tl245775245844%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e245773245839%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%hd245774245842%_))
                                                       (let ((_%$%e245776245847%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%hd245774245842%_))))
                 (let ((_%$%hd245777245850%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e245776245847%_)))
                       (_%$%tl245778245852%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e245776245847%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl245778245852%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl245775245844%_))
                           (let ((_%$%e245779245855%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl245775245844%_))))
                             (let ((_%$%hd245780245858%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e245779245855%_)))
                                   (_%$%tl245781245860%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e245779245855%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd245780245858%_))
                                   (let ((_%$%e245782245863%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd245780245858%_))))
                                     (let ((_%$%hd245783245866%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e245782245863%_)))
                                           (_%$%tl245784245868%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e245782245863%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd245783245866%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%$%hd245783245866%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl245784245868%_))
                                                   (let ((_%$%e245785245871%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl245784245868%_))))
                                                     (let ((_%$%hd245786245874%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e245785245871%_)))
                                                           (_%$%tl245787245876%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e245785245871%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd245786245874%_))
                                                           (let ((_%$%e245788245879%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd245786245874%_))))
                     (let ((_%$%hd245789245882%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e245788245879%_)))
                           (_%$%tl245790245884%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e245788245879%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd245789245882%_))
                           (let ((_%$%e245791245887%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd245789245882%_))))
                             (let ((_%$%hd245792245890%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e245791245887%_)))
                                   (_%$%tl245793245892%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e245791245887%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd245792245890%_))
                                   (let ((_%$%e245794245895%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd245792245890%_))))
                                     (let ((_%$%hd245795245898%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e245794245895%_)))
                                           (_%$%tl245796245900%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e245794245895%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl245796245900%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl245793245892%_))
                                               (let ((_%$%e245797245903%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl245793245892%_))))
                                                 (let ((_%$%hd245798245906%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e245797245903%_)))
                                                       (_%$%tl245799245908%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e245797245903%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl245799245908%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl245790245884%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl245787245876%_))
                       (let ((_%$%e245800245911%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl245787245876%_))))
                         (let ((_%$%hd245801245914%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e245800245911%_)))
                               (_%$%tl245802245916%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e245800245911%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl245802245916%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl245781245860%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl245772245836%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl245769245828%_))
                                           (let ((_%$%e245803245919%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl245769245828%_))))
                                             (let ((_%$%hd245804245922%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e245803245919%_)))
                                                   (_%$%tl245805245924%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e245803245919%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl245805245924%_))
                                                   (let* ((_%$%g245971246033%_
                                                           (lambda (_%$%g245972246030%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g245972246030%_))))
                  (_%$%g245970246972%_
                   (lambda (_%$%g245972246036%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g245972246036%_))
                         (let ((_%$%e245978246038%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g245972246036%_))))
                           (let ((_%$%hd245979246041%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e245978246038%_)))
                                 (_%$%tl245980246043%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e245978246038%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd245979246041%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#lambda
                                        _%$%hd245979246041%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl245980246043%_))
                                         (let ((_%$%e245981246046%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl245980246043%_))))
                                           (let ((_%$%hd245982246049%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e245981246046%_)))
                                                 (_%$%tl245983246051%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e245981246046%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl245983246051%_))
                                                 (let ((_%$%e245984246054%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl245983246051%_))))
                                                   (let ((_%$%hd245985246057%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e245984246054%_)))
                                                         (_%$%tl245986246059%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e245984246054%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%hd245985246057%_))
                                                         (let ((_%$%e245987246062%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd245985246057%_))))
                   (let ((_%$%hd245988246065%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e245987246062%_)))
                         (_%$%tl245989246067%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e245987246062%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%$%hd245988246065%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#call _%$%hd245988246065%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl245989246067%_))
                                 (let ((_%$%e245990246070%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl245989246067%_))))
                                   (let ((_%$%hd245991246073%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e245990246070%_)))
                                         (_%$%tl245992246075%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e245990246070%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd245991246073%_))
                                         (let ((_%$%e245993246078%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd245991246073%_))))
                                           (let ((_%$%hd245994246081%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e245993246078%_)))
                                                 (_%$%tl245995246083%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e245993246078%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd245994246081%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%$%hd245994246081%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl245995246083%_))
                                                         (let ((_%$%e245996246086%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl245995246083%_))))
                   (let ((_%$%hd245997246089%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e245996246086%_)))
                         (_%$%tl245998246091%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e245996246086%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl245998246091%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl245992246075%_))
                             (let ((_%$%e245999246094%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl245992246075%_))))
                               (let ((_%$%hd246000246097%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e245999246094%_)))
                                     (_%$%tl246001246099%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e245999246094%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd246000246097%_))
                                     (let ((_%$%e246002246102%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd246000246097%_))))
                                       (let ((_%$%hd246003246105%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e246002246102%_)))
                                             (_%$%tl246004246107%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e246002246102%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%hd246003246105%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#ref
                                                    _%$%hd246003246105%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl246004246107%_))
                                                     (let ((_%$%e246005246110%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl246004246107%_))))
                                                       (let ((_%$%hd246006246113%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e246005246110%_)))
                     (_%$%tl246007246115%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e246005246110%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl246007246115%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl246001246099%_))
                         (let ((_%$%e246008246118%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl246001246099%_))))
                           (let ((_%$%hd246009246121%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e246008246118%_)))
                                 (_%$%tl246010246123%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e246008246118%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd246009246121%_))
                                 (let ((_%$%e246011246126%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd246009246121%_))))
                                   (let ((_%$%hd246012246129%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e246011246126%_)))
                                         (_%$%tl246013246131%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e246011246126%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier?
                                            _%$%hd246012246129%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%$%hd246012246129%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl246013246131%_))
                                                 (let ((_%$%e246014246134%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl246013246131%_))))
                                                   (let ((_%$%hd246015246137%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e246014246134%_)))
                                                         (_%$%tl246016246139%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e246014246134%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl246016246139%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair/null? _%$%tl246010246123%_))
                     (if (let ((__tmp248392
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-length _%$%tl246010246123%_))))
                           (declare (not safe))
                           (##fx>= __tmp248392 '1))
                         (let ((_g248393_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-split-splice
                                   _%$%tl246010246123%_
                                   '1))))
                           (begin
                             (let ((_g248394_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g248393_)
                                          (##values-length _g248393_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g248394_ 2)))
                                   (error "Context expects 2 values"
                                          _g248394_)))
                             (let ((_%$%target246017246142%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g248393_ 0)))
                                   (_%$%tl246019246144%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g248393_ 1))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl246019246144%_))
                                   (let ((_%$%e246026246147%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl246019246144%_))))
                                     (let ((_%$%hd246027246150%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e246026246147%_)))
                                           (_%$%tl246028246152%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e246026246147%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl246028246152%_))
                                           (letrec ((_%$%loop246020246155%_
                                                     (lambda (_%$%hd246018246158%_
                                                              _%$%kw-ref246024246160%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd246018246158%_))
                                                           (let ((_%$%e246021246162%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd246018246158%_))))
                     (let ((_%$%lp-hd246022246165%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e246021246162%_)))
                           (_%$%lp-tl246023246167%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e246021246162%_))))
                       (_%$%loop246020246155%_
                        _%$%lp-tl246023246167%_
                        (cons _%$%lp-hd246022246165%_
                              _%$%kw-ref246024246160%_))))
                   (let ((_%$%kw-ref246025246170%_
                          (reverse _%$%kw-ref246024246160%_)))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl245986246059%_))
                         (let* ((_%kw-count246227%_
                                 (length (let ((__tmp248395
                                                (lambda (_%$%g246219246222%_
                                                         _%$%g246220246224%_)
                                                  (cons _%$%g246219246222%_
                                                        _%$%g246220246224%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp248395
                                            '()
                                            _%$%kw-ref246025246170%_))))
                                (_%self-index246229%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%kw-count246227%_ '1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#lambda-expr? _%$%hd245798245906%_))
                               (let* ((_%$%g246233246247%_
                                       (lambda (_%$%g246234246244%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g246234246244%_))))
                                      (_%$%g246232246370%_
                                       (lambda (_%$%g246234246250%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%g246234246250%_))
                                             (let ((_%$%e246237246252%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g246234246250%_))))
                                               (let ((_%$%hd246238246255%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e246237246252%_)))
                                                     (_%$%tl246239246257%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e246237246252%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl246239246257%_))
                                                     (let ((_%$%e246240246260%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl246239246257%_))))
                                                       (let ((_%$%hd246241246263%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e246240246260%_)))
                     (_%$%tl246242246265%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e246240246260%_))))
                 (let* ((_%self246286%_
                         (list-ref _%$%hd246241246263%_ _%self-index246229%_))
                        (_%receiver246291%_
                         (let ((_%$e246288%_
                                (gxc#apply-extract-receiver
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '%#begin))
                                       _%$%tl246242246265%_))))
                           (if _%$e246288%_ _%$e246288%_ _%self246286%_))))
                   (for-each
                    (lambda (_%$%g246293246295%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver246291%_
                       _%method-calls244231%_
                       _%slot-refs244232%_
                       _%$%g246293246295%_))
                    _%$%tl246242246265%_)
                   (if (_%no-specializer?244235%_)
                       _%stx244139%_
                       (let* ((_%specializer-id246304%_
                               (let* ((_%id246298%_
                                       (let ((__tmp248396
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%g244150244212%_))))
                                         (declare (not safe))
                                         (make-symbol__1
                                          __tmp248396
                                          '"::specialize")))
                                      (_%specializer-id246301%_
                                       (let ((__tmp248397
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-source
                                                 _%stx244139%_))))
                                         (declare (not safe))
                                         (gx#core-quote-syntax__1
                                          _%id246298%_
                                          __tmp248397))))
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-bind-runtime!__0
                                    _%specializer-id246301%_))
                                 _%specializer-id246301%_))
                              (_%$klass246306%_
                               (let ((__tmp248398
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__klass))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp248398)))
                              (_%$method-table246308%_
                               (let ((__tmp248399
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__method-table))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp248399)))
                              (_%methods246310%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%method-calls244231%_)))
                              (_%$methods246314%_
                               (let ((__tmp248400
                                      (lambda (_%id246312%_)
                                        (let ((__tmp248401
                                               (gensym _%id246312%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp248401)))))
                                 (declare (not safe))
                                 (##map __tmp248400 _%methods246310%_)))
                              (_%_246323%_
                               (let ((__tmp248402
                                      (lambda (_%$%g246315246318%_
                                               _%$%g246316246320%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%method-calls244231%_
                                           _%$%g246315246318%_
                                           _%$%g246316246320%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp248402
                                  _%methods246310%_
                                  _%$methods246314%_)))
                              (_%methods-bind246333%_
                               (let ((__tmp248403
                                      (lambda (_%$%g246325246328%_
                                               _%$%g246326246330%_)
                                        (_%generate-method-bind244141%_
                                         _%$klass246306%_
                                         _%$method-table246308%_
                                         _%$%g246325246328%_
                                         _%$%g246326246330%_))))
                                 (declare (not safe))
                                 (##map __tmp248403
                                        _%methods246310%_
                                        _%$methods246314%_)))
                              (_%slots246335%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%slot-refs244232%_)))
                              (_%$slots246339%_
                               (let ((__tmp248404
                                      (lambda (_%id246337%_)
                                        (let ((__tmp248405
                                               (gensym _%id246337%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp248405)))))
                                 (declare (not safe))
                                 (##map __tmp248404 _%slots246335%_)))
                              (_%_246348%_
                               (let ((__tmp248406
                                      (lambda (_%$%g246340246343%_
                                               _%$%g246341246345%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%slot-refs244232%_
                                           _%$%g246340246343%_
                                           _%$%g246341246345%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp248406
                                  _%slots246335%_
                                  _%$slots246339%_)))
                              (_%slots-bind246357%_
                               (let ((__tmp248407
                                      (lambda (_%$%g246349246352%_
                                               _%$%g246350246354%_)
                                        (_%generate-slot-bind244142%_
                                         _%$klass246306%_
                                         _%$%g246349246352%_
                                         _%$%g246350246354%_))))
                                 (declare (not safe))
                                 (##map __tmp248407
                                        _%slots246335%_
                                        _%$slots246339%_)))
                              (_%specializer-impl246365%_
                               (let* ((_%specializer-body246363%_
                                       (map (lambda (_%$%g246358246360%_)
                                              (gxc#apply-subst-object-refs__%
                                               '#f
                                               _%receiver246291%_
                                               _%$klass246306%_
                                               _%method-calls244231%_
                                               _%slot-refs244232%_
                                               _%$%g246358246360%_))
                                            _%$%tl246242246265%_))
                                      (__tmp248408
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _%$%hd245777245850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#let-values
                                   (cons (cons (cons (cons _%$%hd245795245898%_
                                                           '())
                                                     (cons (let ((__tmp248409
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#lambda
                                (cons _%$%hd246241246263%_
                                      _%specializer-body246363%_))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp248409 _%$%hd245798245906%_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%$%hd245801245914%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%$%hd245804245922%_
                                                         '())))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp248408
                                  _%stx244139%_)))
                              (_%specializer-impl246367%_
                               (_%generate-specializer-impl244143%_
                                _%$klass246306%_
                                _%$method-table246308%_
                                _%methods-bind246333%_
                                _%slots-bind246357%_
                                _%specializer-impl246365%_)))
                         (let ((__tmp248411
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g244150244212%_)))
                               (__tmp248410
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%specializer-id246304%_))))
                           (declare (not safe))
                           (gxc#verbose
                            '"generate method specializer "
                            __tmp248411
                            '" => "
                            __tmp248410))
                         (_%generate-specializer-def244144%_
                          _%$%g244150244212%_
                          _%specializer-id246304%_
                          _%specializer-impl246367%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246233246247%_
                                                      _%$%g246234246250%_))))
                                             (_%$%g246233246247%_
                                              _%$%g246234246250%_)))))
                                 (_%$%g246232246370%_ _%$%hd245798245906%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr?
                                      _%$%hd245798245906%_))
                                   (let* ((_%$%g246374246404%_
                                           (lambda (_%$%g246375246401%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g246375246401%_))))
                                          (_%$%g246373246968%_
                                           (lambda (_%$%g246375246407%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%g246375246407%_))
                                                 (let ((_%$%e246379246409%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g246375246407%_))))
                                                   (let ((_%$%hd246380246412%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e246379246409%_)))
                                                         (_%$%tl246381246414%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e246379246409%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl246381246414%_))
                                                         (let ((_%$%e246382246417%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl246381246414%_))))
                   (let ((_%$%hd246383246420%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e246382246417%_)))
                         (_%$%tl246384246422%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e246382246417%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd246383246420%_))
                         (let ((_%$%e246385246425%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd246383246420%_))))
                           (let ((_%$%hd246386246428%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e246385246425%_)))
                                 (_%$%tl246387246430%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e246385246425%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd246386246428%_))
                                 (let ((_%$%e246388246433%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd246386246428%_))))
                                   (let ((_%$%hd246389246436%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e246388246433%_)))
                                         (_%$%tl246390246438%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e246388246433%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd246389246436%_))
                                         (let ((_%$%e246391246441%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd246389246436%_))))
                                           (let ((_%$%hd246392246444%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e246391246441%_)))
                                                 (_%$%tl246393246446%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e246391246441%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl246393246446%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl246390246438%_))
                                                     (let ((_%$%e246394246449%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl246390246438%_))))
                                                       (let ((_%$%hd246395246452%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e246394246449%_)))
                     (_%$%tl246396246454%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e246394246449%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl246396246454%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl246387246430%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl246384246422%_))
                             (let ((_%$%e246397246457%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl246384246422%_))))
                               (let ((_%$%hd246398246460%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e246397246457%_)))
                                     (_%$%tl246399246462%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e246397246457%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl246399246462%_))
                                     (let ()
                                       (let* ((_%$%g246491246505%_
                                               (lambda (_%$%g246492246502%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g246492246502%_))))
                                              (_%$%g246490246552%_
                                               (lambda (_%$%g246492246508%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g246492246508%_))
                                                     (let ((_%$%e246495246510%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g246492246508%_))))
                                                       (let ((_%$%hd246496246513%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e246495246510%_)))
                     (_%$%tl246497246515%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e246495246510%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl246497246515%_))
                     (let ((_%$%e246498246518%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl246497246515%_))))
                       (let ((_%$%hd246499246521%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e246498246518%_)))
                             (_%$%tl246500246523%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e246498246518%_))))
                         (let* ((_%self246540%_
                                 (list-ref
                                  _%$%hd246499246521%_
                                  _%self-index246229%_))
                                (_%receiver246545%_
                                 (let ((_%$e246542%_
                                        (gxc#apply-extract-receiver
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin))
                                               _%$%tl246500246523%_))))
                                   (if _%$e246542%_
                                       _%$e246542%_
                                       _%self246540%_))))
                           (for-each
                            (lambda (_%$%g246547246549%_)
                              (gxc#apply-collect-object-refs__%
                               '#f
                               _%receiver246545%_
                               _%method-calls244231%_
                               _%slot-refs244232%_
                               _%$%g246547246549%_))
                            _%$%tl246500246523%_))))
                     (_%$%g246491246505%_ _%$%g246492246508%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246491246505%_
                                                      _%$%g246492246508%_)))))
                                         (_%$%g246490246552%_
                                          _%$%hd246395246452%_))
                                       (let* ((_%$%g246555246574%_
                                               (lambda (_%$%g246556246571%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g246556246571%_))))
                                              (_%$%g246554246683%_
                                               (lambda (_%$%g246556246577%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g246556246577%_))
                                                     (let ((_%$%e246558246579%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g246556246577%_))))
                                                       (let ((_%$%hd246559246582%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e246558246579%_)))
                     (_%$%tl246560246584%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e246558246579%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair/null? _%$%tl246560246584%_))
                     (let ((_g248412_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-split-splice
                               _%$%tl246560246584%_
                               '0))))
                       (begin
                         (let ((_g248413_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g248412_)
                                      (##values-length _g248412_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g248413_ 2)))
                               (error "Context expects 2 values" _g248413_)))
                         (let ((_%$%target246561246587%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g248412_ 0)))
                               (_%$%tl246563246589%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g248412_ 1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl246563246589%_))
                               (letrec ((_%$%loop246564246592%_
                                         (lambda (_%$%hd246562246595%_
                                                  _%$%clause246568246597%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd246562246595%_))
                                               (let ((_%$%e246565246599%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd246562246595%_))))
                                                 (let ((_%$%lp-hd246566246602%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e246565246599%_)))
                                                       (_%$%lp-tl246567246604%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e246565246599%_))))
                                                   (_%$%loop246564246592%_
                                                    _%$%lp-tl246567246604%_
                                                    (cons _%$%lp-hd246566246602%_
                                                          _%$%clause246568246597%_))))
                                               (let ((_%$%clause246569246607%_
                                                      (reverse _%$%clause246568246597%_)))
                                                 (for-each
                                                  (lambda (_%clause246622%_)
                                                    (let* ((_%$%g246624246635%_
                                                            (lambda (_%$%g246625246632%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g246625246632%_))))
                   (_%$%g246623246673%_
                    (lambda (_%$%g246625246638%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g246625246638%_))
                          (let ((_%$%e246628246640%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g246625246638%_))))
                            (let ((_%$%hd246629246643%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e246628246640%_)))
                                  (_%$%tl246630246645%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e246628246640%_))))
                              (let* ((_%self246661%_
                                      (list-ref
                                       _%$%hd246629246643%_
                                       _%self-index246229%_))
                                     (_%receiver246666%_
                                      (let ((_%$e246663%_
                                             (gxc#apply-extract-receiver
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#begin))
                                                    _%$%tl246630246645%_))))
                                        (if _%$e246663%_
                                            _%$e246663%_
                                            _%self246661%_))))
                                (for-each
                                 (lambda (_%$%g246668246670%_)
                                   (gxc#apply-collect-object-refs__%
                                    '#f
                                    _%receiver246666%_
                                    _%method-calls244231%_
                                    _%slot-refs244232%_
                                    _%$%g246668246670%_))
                                 _%$%tl246630246645%_))))
                          (_%$%g246624246635%_ _%$%g246625246638%_)))))
              (_%$%g246623246673%_ _%clause246622%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp248414
                                                         (lambda (_%$%g246675246678%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g246676246680%_)
                   (cons _%$%g246675246678%_ _%$%g246676246680%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp248414
                                                     '()
                                                     _%$%clause246569246607%_))))))))
                                 (_%$%loop246564246592%_
                                  _%$%target246561246587%_
                                  '()))
                               (_%$%g246555246574%_ _%$%g246556246577%_)))))
                     (_%$%g246555246574%_ _%$%g246556246577%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246555246574%_
                                                      _%$%g246556246577%_)))))
                                         (_%$%g246554246683%_
                                          _%$%hd246398246460%_))
                                       (if (_%no-specializer?244235%_)
                                           _%stx244139%_
                                           (let* ((_%specializer-id246692%_
                                                   (let* ((_%id246686%_
                                                           (let ((__tmp248415
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g244150244212%_))))
                     (declare (not safe))
                     (make-symbol__1 __tmp248415 '"::specialize")))
                  (_%specializer-id246689%_
                   (let ((__tmp248416
                          (let ()
                            (declare (not safe))
                            (gx#stx-source _%stx244139%_))))
                     (declare (not safe))
                     (gx#core-quote-syntax__1 _%id246686%_ __tmp248416))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#core-bind-runtime!__0
                                                        _%specializer-id246689%_))
                                                     _%specializer-id246689%_))
                                                  (_%$klass246694%_
                                                   (let ((__tmp248417
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__klass))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp248417)))
                                                  (_%$method-table246696%_
                                                   (let ((__tmp248418
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__method-table))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp248418)))
                                                  (_%methods246698%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%method-calls244231%_)))
                                                  (_%$methods246702%_
                                                   (let ((__tmp248419
                                                          (lambda (_%id246700%_)
                                                            (let ((__tmp248420
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id246700%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp248420)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp248419
                                                            _%methods246698%_)))
                                                  (_%_246711%_
                                                   (let ((__tmp248421
                                                          (lambda (_%$%g246703246706%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g246704246708%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%method-calls244231%_
                       _%$%g246703246706%_
                       _%$%g246704246708%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp248421
                                                      _%methods246698%_
                                                      _%$methods246702%_)))
                                                  (_%methods-bind246721%_
                                                   (let ((__tmp248422
                                                          (lambda (_%$%g246713246716%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g246714246718%_)
                    (_%generate-method-bind244141%_
                     _%$klass246694%_
                     _%$method-table246696%_
                     _%$%g246713246716%_
                     _%$%g246714246718%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp248422
                                                            _%methods246698%_
                                                            _%$methods246702%_)))
                                                  (_%slots246723%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%slot-refs244232%_)))
                                                  (_%$slots246727%_
                                                   (let ((__tmp248423
                                                          (lambda (_%id246725%_)
                                                            (let ((__tmp248424
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id246725%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp248424)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp248423
                                                            _%slots246723%_)))
                                                  (_%_246736%_
                                                   (let ((__tmp248425
                                                          (lambda (_%$%g246728246731%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g246729246733%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%slot-refs244232%_
                       _%$%g246728246731%_
                       _%$%g246729246733%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp248425
                                                      _%slots246723%_
                                                      _%$slots246727%_)))
                                                  (_%slots-bind246745%_
                                                   (let ((__tmp248426
                                                          (lambda (_%$%g246737246740%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g246738246742%_)
                    (_%generate-slot-bind244142%_
                     _%$klass246694%_
                     _%$%g246737246740%_
                     _%$%g246738246742%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp248426
                                                            _%slots246723%_
                                                            _%$slots246727%_)))
                                                  (_%specializer-lambda-expr246823%_
                                                   (let* ((_%$%g246747246761%_
                                                           (lambda (_%$%g246748246758%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g246748246758%_))))
                  (_%$%g246746246820%_
                   (lambda (_%$%g246748246764%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g246748246764%_))
                         (let ((_%$%e246751246766%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g246748246764%_))))
                           (let ((_%$%hd246752246769%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e246751246766%_)))
                                 (_%$%tl246753246771%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e246751246766%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl246753246771%_))
                                 (let ((_%$%e246754246774%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl246753246771%_))))
                                   (let ((_%$%hd246755246777%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e246754246774%_)))
                                         (_%$%tl246756246779%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e246754246774%_))))
                                     (let* ((_%self246806%_
                                             (list-ref
                                              _%$%hd246755246777%_
                                              _%self-index246229%_))
                                            (_%receiver246811%_
                                             (let ((_%$e246808%_
                                                    (gxc#apply-extract-receiver
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%$%tl246756246779%_))))
                                               (if _%$e246808%_
                                                   _%$e246808%_
                                                   _%self246806%_)))
                                            (_%body246817%_
                                             (map (lambda (_%$%g246812246814%_)
                                                    (gxc#apply-subst-object-refs__%
                                                     '#f
                                                     _%receiver246811%_
                                                     _%$klass246694%_
                                                     _%method-calls244231%_
                                                     _%slot-refs244232%_
                                                     _%$%g246812246814%_))
                                                  _%$%tl246756246779%_))
                                            (__tmp248427
                                             (cons '%#lambda
                                                   (cons _%$%hd246755246777%_
                                                         _%body246817%_))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp248427
                                        _%$%hd246395246452%_))))
                                 (_%$%g246747246761%_ _%$%g246748246764%_))))
                         (_%$%g246747246761%_ _%$%g246748246764%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246746246820%_
                                                      _%$%hd246395246452%_)))
                                                  (_%specializer-case-lambda-expr246961%_
                                                   (let* ((_%$%g246825246844%_
                                                           (lambda (_%$%g246826246841%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g246826246841%_))))
                  (_%$%g246824246958%_
                   (lambda (_%$%g246826246847%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g246826246847%_))
                         (let ((_%$%e246828246849%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g246826246847%_))))
                           (let ((_%$%hd246829246852%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e246828246849%_)))
                                 (_%$%tl246830246854%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e246828246849%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair/null? _%$%tl246830246854%_))
                                 (let ((_g248428_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-split-splice
                                           _%$%tl246830246854%_
                                           '0))))
                                   (begin
                                     (let ((_g248429_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g248428_)
                                                  (##values-length _g248428_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g248429_ 2)))
                                           (error "Context expects 2 values"
                                                  _g248429_)))
                                     (let ((_%$%target246831246857%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g248428_ 0)))
                                           (_%$%tl246833246859%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g248428_ 1))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl246833246859%_))
                                           (letrec ((_%$%loop246834246862%_
                                                     (lambda (_%$%hd246832246865%_
                                                              _%$%clause246838246867%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd246832246865%_))
                                                           (let ((_%$%e246835246869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd246832246865%_))))
                     (let ((_%$%lp-hd246836246872%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e246835246869%_)))
                           (_%$%lp-tl246837246874%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e246835246869%_))))
                       (_%$%loop246834246862%_
                        _%$%lp-tl246837246874%_
                        (cons _%$%lp-hd246836246872%_
                              _%$%clause246838246867%_))))
                   (let* ((_%$%clause246839246877%_
                           (reverse _%$%clause246838246867%_))
                          (_%clauses246956%_
                           (map (lambda (_%clause246893%_)
                                  (let* ((_%$%g246895246906%_
                                          (lambda (_%$%g246896246903%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g246896246903%_))))
                                         (_%$%g246894246946%_
                                          (lambda (_%$%g246896246909%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g246896246909%_))
                                                (let ((_%$%e246899246911%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g246896246909%_))))
                                                  (let ((_%$%hd246900246914%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e246899246911%_)))
                                                        (_%$%tl246901246916%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e246899246911%_))))
                                                    (let* ((_%self246932%_
                                                            (list-ref
                                                             _%$%hd246900246914%_
                                                             _%self-index246229%_))
                                                           (_%receiver246937%_
                                                            (let ((_%$e246934%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-extract-receiver
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#begin))
                                  _%$%tl246901246916%_))))
                      (if _%$e246934%_ _%$e246934%_ _%self246932%_)))
                   (_%body246943%_
                    (map (lambda (_%$%g246938246940%_)
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%receiver246937%_
                            _%$klass246694%_
                            _%method-calls244231%_
                            _%slot-refs244232%_
                            _%$%g246938246940%_))
                         _%$%tl246901246916%_)))
              (cons _%$%hd246900246914%_ _%body246943%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g246895246906%_
                                                 _%$%g246896246909%_)))))
                                    (_%$%g246894246946%_ _%clause246893%_)))
                                (let ((__tmp248430
                                       (lambda (_%$%g246948246951%_
                                                _%$%g246949246953%_)
                                         (cons _%$%g246948246951%_
                                               _%$%g246949246953%_))))
                                  (declare (not safe))
                                  (foldr__0
                                   __tmp248430
                                   '()
                                   _%$%clause246839246877%_))))
                          (__tmp248431
                           (cons '%#case-lambda _%clauses246956%_)))
                     (declare (not safe))
                     (gxc#xform-wrap-source
                      __tmp248431
                      _%$%hd246398246460%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop246834246862%_
                                              _%$%target246831246857%_
                                              '()))
                                           (_%$%g246825246844%_
                                            _%$%g246826246847%_)))))
                                 (_%$%g246825246844%_ _%$%g246826246847%_))))
                         (_%$%g246825246844%_ _%$%g246826246847%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246824246958%_
                                                      _%$%hd246398246460%_)))
                                                  (_%specializer-impl246963%_
                                                   (let ((__tmp248432
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$%hd245777245850%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons (cons '%#let-values
                                                      (cons (cons (cons (cons _%$%hd245795245898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (let ((__tmp248433
                                             (cons '%#let-values
                                                   (cons (cons (cons (cons _%$%hd246392246444%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons _%specializer-lambda-expr246823%_ '()))
                       '())
                 (cons _%specializer-case-lambda-expr246961%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp248433
                                         _%stx244139%_))
                                      '()))
                          '())
                    (cons _%$%hd245801245914%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())
                              (cons _%$%hd245804245922%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp248432
                                                      _%stx244139%_)))
                                                  (_%specializer-impl246965%_
                                                   (_%generate-specializer-impl244143%_
                                                    _%$klass246694%_
                                                    _%$method-table246696%_
                                                    _%methods-bind246721%_
                                                    _%slots-bind246745%_
                                                    _%specializer-impl246963%_)))
                                             (let ((__tmp248435
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g244150244212%_)))
                                                   (__tmp248434
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%specializer-id246692%_))))
                                               (declare (not safe))
                                               (gxc#verbose
                                                '"generate method specializer "
                                                __tmp248435
                                                '" => "
                                                __tmp248434))
                                             (_%generate-specializer-def244144%_
                                              _%$%g244150244212%_
                                              _%specializer-id246692%_
                                              _%specializer-impl246965%_))))
                                     (_%$%g246374246404%_
                                      _%$%g246375246407%_))))
                             (_%$%g246374246404%_ _%$%g246375246407%_))
                         (_%$%g246374246404%_ _%$%g246375246407%_))
                     (_%$%g246374246404%_ _%$%g246375246407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246374246404%_
                                                      _%$%g246375246407%_))
                                                 (_%$%g246374246404%_
                                                  _%$%g246375246407%_))))
                                         (_%$%g246374246404%_
                                          _%$%g246375246407%_))))
                                 (_%$%g246374246404%_ _%$%g246375246407%_))))
                         (_%$%g246374246404%_ _%$%g246375246407%_))))
                 (_%$%g246374246404%_ _%$%g246375246407%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g246374246404%_
                                                  _%$%g246375246407%_)))))
                                     (_%$%g246373246968%_
                                      _%$%hd245798245906%_))
                                   _%stx244139%_)))
                         (_%$%g245971246033%_ _%$%g245972246036%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop246020246155%_
                                              _%$%target246017246142%_
                                              '()))
                                           (_%$%g245971246033%_
                                            _%$%g245972246036%_))))
                                   (_%$%g245971246033%_
                                    _%$%g245972246036%_)))))
                         (_%$%g245971246033%_ _%$%g245972246036%_))
                     (_%$%g245971246033%_ _%$%g245972246036%_))
                 (_%$%g245971246033%_ _%$%g245972246036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g245971246033%_
                                                  _%$%g245972246036%_))
                                             (_%$%g245971246033%_
                                              _%$%g245972246036%_))
                                         (_%$%g245971246033%_
                                          _%$%g245972246036%_))))
                                 (_%$%g245971246033%_ _%$%g245972246036%_))))
                         (_%$%g245971246033%_ _%$%g245972246036%_))
                     (_%$%g245971246033%_ _%$%g245972246036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g245971246033%_
                                                      _%$%g245972246036%_))
                                                 (_%$%g245971246033%_
                                                  _%$%g245972246036%_))
                                             (_%$%g245971246033%_
                                              _%$%g245972246036%_))))
                                     (_%$%g245971246033%_
                                      _%$%g245972246036%_))))
                             (_%$%g245971246033%_ _%$%g245972246036%_))
                         (_%$%g245971246033%_ _%$%g245972246036%_))))
                 (_%$%g245971246033%_ _%$%g245972246036%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g245971246033%_
                                                      _%$%g245972246036%_))
                                                 (_%$%g245971246033%_
                                                  _%$%g245972246036%_))))
                                         (_%$%g245971246033%_
                                          _%$%g245972246036%_))))
                                 (_%$%g245971246033%_ _%$%g245972246036%_))
                             (_%$%g245971246033%_ _%$%g245972246036%_))
                         (_%$%g245971246033%_ _%$%g245972246036%_))))
                 (_%$%g245971246033%_ _%$%g245972246036%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g245971246033%_
                                                  _%$%g245972246036%_))))
                                         (_%$%g245971246033%_
                                          _%$%g245972246036%_))
                                     (_%$%g245971246033%_ _%$%g245972246036%_))
                                 (_%$%g245971246033%_ _%$%g245972246036%_))))
                         (_%$%g245971246033%_ _%$%g245972246036%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g245970246972%_
                                                      _%$%hd245801245914%_))
                                                   (_%$%g245757245810%_
                                                    _%$%g245758245813%_))))
                                           (_%$%g245757245810%_
                                            _%$%g245758245813%_))
                                       (_%$%g245757245810%_
                                        _%$%g245758245813%_))
                                   (_%$%g245757245810%_ _%$%g245758245813%_))
                               (_%$%g245757245810%_ _%$%g245758245813%_))))
                       (_%$%g245757245810%_ _%$%g245758245813%_))
                   (_%$%g245757245810%_ _%$%g245758245813%_))
               (_%$%g245757245810%_ _%$%g245758245813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g245757245810%_
                                                _%$%g245758245813%_))
                                           (_%$%g245757245810%_
                                            _%$%g245758245813%_))))
                                   (_%$%g245757245810%_ _%$%g245758245813%_))))
                           (_%$%g245757245810%_ _%$%g245758245813%_))))
                   (_%$%g245757245810%_ _%$%g245758245813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g245757245810%_
                                                    _%$%g245758245813%_))
                                               (_%$%g245757245810%_
                                                _%$%g245758245813%_))
                                           (_%$%g245757245810%_
                                            _%$%g245758245813%_))))
                                   (_%$%g245757245810%_ _%$%g245758245813%_))))
                           (_%$%g245757245810%_ _%$%g245758245813%_))
                       (_%$%g245757245810%_ _%$%g245758245813%_))))
               (_%$%g245757245810%_ _%$%g245758245813%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g245757245810%_
                                                _%$%g245758245813%_))))
                                       (_%$%g245757245810%_
                                        _%$%g245758245813%_))))
                               (_%$%g245757245810%_ _%$%g245758245813%_))
                           (_%$%g245757245810%_ _%$%g245758245813%_))
                       (_%$%g245757245810%_ _%$%g245758245813%_))))
               (_%$%g245757245810%_ _%$%g245758245813%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g245756246975%_
                                            _%$%g244149244211%_))
                                         _%stx244139%_))))))))
                  (_%__kont247202247203%_ (lambda () _%stx244139%_)))
              (let ((_%__match247231247232%_
                     (lambda (_%$%e244151244179%_
                              _%$%hd244152244182%_
                              _%$%tl244153244184%_
                              _%$%e244154244187%_
                              _%$%hd244155244190%_
                              _%$%tl244156244192%_
                              _%$%e244157244195%_
                              _%$%hd244158244198%_
                              _%$%tl244159244200%_
                              _%$%e244160244203%_
                              _%$%hd244161244206%_
                              _%$%tl244162244208%_)
                       (let ((_%$%g244149244211%_ _%$%hd244161244206%_)
                             (_%$%g244150244212%_ _%$%hd244158244198%_))
                         (if (let ((__tmp248436
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g244150244212%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp248436))
                             (_%__kont247200247201%_
                              _%$%g244149244211%_
                              _%$%g244150244212%_)
                             (_%__kont247202247203%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx247198247199%_))
                    (let ((_%$%e244151244179%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx247198247199%_))))
                      (let ((_%$%tl244153244184%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e244151244179%_)))
                            (_%$%hd244152244182%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e244151244179%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl244153244184%_))
                            (let ((_%$%e244154244187%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl244153244184%_))))
                              (let ((_%$%tl244156244192%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e244154244187%_)))
                                    (_%$%hd244155244190%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e244154244187%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd244155244190%_))
                                    (let ((_%$%e244157244195%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd244155244190%_))))
                                      (let ((_%$%tl244159244200%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e244157244195%_)))
                                            (_%$%hd244158244198%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e244157244195%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl244159244200%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl244156244192%_))
                                                (let ((_%$%e244160244203%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl244156244192%_))))
                                                  (let ((_%$%tl244162244208%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e244160244203%_)))
                                                        (_%$%hd244161244206%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e244160244203%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl244162244208%_))
                                                        (_%__match247231247232%_
                                                         _%$%e244151244179%_
                                                         _%$%hd244152244182%_
                                                         _%$%tl244153244184%_
                                                         _%$%e244154244187%_
                                                         _%$%hd244155244190%_
                                                         _%$%tl244156244192%_
                                                         _%$%e244157244195%_
                                                         _%$%hd244158244198%_
                                                         _%$%tl244159244200%_
                                                         _%$%e244160244203%_
                                                         _%$%hd244161244206%_
                                                         _%$%tl244162244208%_)
                                                        (_%__kont247202247203%_))))
                                                (_%__kont247202247203%_))
                                            (_%__kont247202247203%_))))
                                    (_%__kont247202247203%_))))
                            (_%__kont247202247203%_))))
                    (_%__kont247202247203%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self243991%_ _%stx243992%_)
        (let* ((_%__stx247234247235%_ _%stx243992%_)
               (_%$%g243995244028%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx247234247235%_)))))
          (let ((_%__kont247236247237%_
                 (lambda (_%$%g243997244118%_) _%$%g243997244118%_))
                (_%__kont247238247239%_
                 (lambda (_%$%g244013244057%_ _%$%g244014244058%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self243991%_ _%$%g244013244057%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx247234247235%_))
                (let ((_%$%e243998244078%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx247234247235%_))))
                  (let ((_%$%tl244000244083%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e243998244078%_)))
                        (_%$%hd243999244081%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e243998244078%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl244000244083%_))
                        (let ((_%$%e244001244086%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl244000244083%_))))
                          (let ((_%$%tl244003244091%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e244001244086%_)))
                                (_%$%hd244002244089%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e244001244086%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd244002244089%_))
                                (let ((_%$%e244004244094%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd244002244089%_))))
                                  (let ((_%$%tl244006244099%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e244004244094%_)))
                                        (_%$%hd244005244097%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e244004244094%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd244005244097%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%$%hd244005244097%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl244006244099%_))
                                                (let ((_%$%e244007244102%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl244006244099%_))))
                                                  (let ((_%$%tl244009244107%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e244007244102%_)))
                                                        (_%$%hd244008244105%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e244007244102%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl244009244107%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl244003244091%_))
                                                            (let ((_%$%e244010244110%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl244003244091%_))))
                      (let ((_%$%tl244012244115%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e244010244110%_)))
                            (_%$%hd244011244113%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e244010244110%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl244012244115%_))
                            (_%__kont247236247237%_ _%$%hd244008244105%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g243995244028%_)))))
                    (let () (declare (not safe)) (_%$%g243995244028%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl244003244091%_))
                    (let ((_%$%e244021244049%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl244003244091%_))))
                      (let ((_%$%tl244023244054%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e244021244049%_)))
                            (_%$%hd244022244052%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e244021244049%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl244023244054%_))
                            (_%__kont247238247239%_
                             _%$%hd244022244052%_
                             _%$%hd244002244089%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g243995244028%_)))))
                    (let () (declare (not safe)) (_%$%g243995244028%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl244003244091%_))
                                                    (let ((_%$%e244021244049%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl244003244091%_))))
                                                      (let ((_%$%tl244023244054%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e244021244049%_)))
                    (_%$%hd244022244052%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e244021244049%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl244023244054%_))
                    (_%__kont247238247239%_
                     _%$%hd244022244052%_
                     _%$%hd244002244089%_)
                    (let () (declare (not safe)) (_%$%g243995244028%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g243995244028%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl244003244091%_))
                                                (let ((_%$%e244021244049%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl244003244091%_))))
                                                  (let ((_%$%tl244023244054%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e244021244049%_)))
                                                        (_%$%hd244022244052%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e244021244049%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl244023244054%_))
                                                        (_%__kont247238247239%_
                                                         _%$%hd244022244052%_
                                                         _%$%hd244002244089%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g243995244028%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g243995244028%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl244003244091%_))
                                            (let ((_%$%e244021244049%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl244003244091%_))))
                                              (let ((_%$%tl244023244054%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e244021244049%_)))
                                                    (_%$%hd244022244052%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e244021244049%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl244023244054%_))
                                                    (_%__kont247238247239%_
                                                     _%$%hd244022244052%_
                                                     _%$%hd244002244089%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g243995244028%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g243995244028%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl244003244091%_))
                                    (let ((_%$%e244021244049%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl244003244091%_))))
                                      (let ((_%$%tl244023244054%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e244021244049%_)))
                                            (_%$%hd244022244052%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e244021244049%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl244023244054%_))
                                            (_%__kont247238247239%_
                                             _%$%hd244022244052%_
                                             _%$%hd244002244089%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g243995244028%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g243995244028%_))))))
                        (let () (declare (not safe)) (_%$%g243995244028%_)))))
                (let () (declare (not safe)) (_%$%g243995244028%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self243907%_ _%stx243908%_)
        (let* ((_%$%g243910243931%_
                (lambda (_%$%g243911243928%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g243911243928%_))))
               (_%$%g243909243988%_
                (lambda (_%$%g243911243934%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g243911243934%_))
                      (let ((_%$%e243915243936%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g243911243934%_))))
                        (let ((_%$%hd243916243939%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e243915243936%_)))
                              (_%$%tl243917243941%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e243915243936%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl243917243941%_))
                              (let ((_%$%e243918243944%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl243917243941%_))))
                                (let ((_%$%hd243919243947%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e243918243944%_)))
                                      (_%$%tl243920243949%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e243918243944%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl243920243949%_))
                                      (let ((_%$%e243921243952%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl243920243949%_))))
                                        (let ((_%$%hd243922243955%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e243921243952%_)))
                                              (_%$%tl243923243957%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e243921243952%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl243923243957%_))
                                              (let ((_%$%e243924243960%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl243923243957%_))))
                                                (let ((_%$%hd243925243963%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e243924243960%_)))
                                                      (_%$%tl243926243965%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e243924243960%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl243926243965%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self243907%_
                                                         _%$%hd243922243955%_))
                                                      (_%$%g243910243931%_
                                                       _%$%g243911243934%_))))
                                              (_%$%g243910243931%_
                                               _%$%g243911243934%_))))
                                      (_%$%g243910243931%_
                                       _%$%g243911243934%_))))
                              (_%$%g243910243931%_ _%$%g243911243934%_))))
                      (_%$%g243910243931%_ _%$%g243911243934%_)))))
          (_%$%g243909243988%_ _%stx243908%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self242872%_ _%stx242873%_)
        (let* ((_%__stx247300247301%_ _%stx242873%_)
               (_%$%g242881243103%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx247300247301%_)))))
          (let ((_%__kont247302247303%_
                 (lambda (_%$%g242883243856%_
                          _%$%g242884243857%_
                          _%$%g242885243858%_
                          _%$%g242886243859%_)
                   (let ((__tmp248438
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self242872%_ 'methods)))
                         (__tmp248437
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g242884243857%_))))
                     (declare (not safe))
                     (hash-put! __tmp248438 __tmp248437 '#t))
                   (for-each
                    (lambda (_%$%g243892243894%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self242872%_ _%$%g243892243894%_)))
                    (let ((__tmp248439
                           (lambda (_%$%g243896243899%_ _%$%g243897243901%_)
                             (cons _%$%g243896243899%_ _%$%g243897243901%_))))
                      (declare (not safe))
                      (foldr__0 __tmp248439 '() _%$%g242883243856%_)))))
                (_%__kont247306247307%_
                 (lambda (_%$%g242926243693%_
                          _%$%g242927243694%_
                          _%$%g242928243695%_
                          _%$%g242929243696%_
                          _%$%g242930243697%_)
                   (let ((__tmp248441
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self242872%_ 'methods)))
                         (__tmp248440
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g242927243694%_))))
                     (declare (not safe))
                     (hash-put! __tmp248441 __tmp248440 '#t))
                   (for-each
                    (lambda (_%$%g243737243739%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self242872%_ _%$%g243737243739%_)))
                    (let ((__tmp248442
                           (lambda (_%$%g243741243744%_ _%$%g243742243746%_)
                             (cons _%$%g243741243744%_ _%$%g243742243746%_))))
                      (declare (not safe))
                      (foldr__0 __tmp248442 '() _%$%g242926243693%_)))))
                (_%__kont247310247311%_
                 (lambda (_%$%g242979243528%_
                          _%$%g242980243529%_
                          _%$%g242981243530%_)
                   (let ((__tmp248444
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self242872%_ 'slots)))
                         (__tmp248443
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g242979243528%_))))
                     (declare (not safe))
                     (hash-put! __tmp248444 __tmp248443 '#t))))
                (_%__kont247312247313%_
                 (lambda (_%$%g243012243405%_
                          _%$%g243013243406%_
                          _%$%g243014243407%_
                          _%$%g243015243408%_)
                   (let ((__tmp248446
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self242872%_ 'slots)))
                         (__tmp248445
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g243013243406%_))))
                     (declare (not safe))
                     (hash-put! __tmp248446 __tmp248445 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self242872%_ _%$%g243012243405%_))))
                (_%__kont247314247315%_
                 (lambda (_%$%g243049243279%_ _%$%g243050243280%_)
                   (let* ((_%accessor243302%_
                           (let ((__tmp248447
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g243050243280%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp248447)))
                          (_%klass243304%_
                           (let ((__tmp248448
                                  (##structure-ref
                                   _%accessor243302%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx242873%_
                              __tmp248448)))
                          (_%slot243306%_
                           (##structure-ref
                            _%accessor243302%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor243302%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass243304%_
                                    _%slot243306%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass243304%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp248450
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self242872%_ 'slots)))
                               (__tmp248449
                                (##structure-ref
                                 _%accessor243302%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp248450 __tmp248449 '#t))))))
                (_%__kont247316247317%_
                 (lambda (_%$%g243072243179%_
                          _%$%g243073243180%_
                          _%$%g243074243181%_)
                   (let* ((_%mutator243208%_
                           (let ((__tmp248451
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g243074243181%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp248451)))
                          (_%klass243210%_
                           (let ((__tmp248452
                                  (##structure-ref
                                   _%mutator243208%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx242873%_
                              __tmp248452)))
                          (_%slot243212%_
                           (##structure-ref
                            _%mutator243208%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator243208%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass243210%_
                                    _%slot243212%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass243210%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp248453
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self242872%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp248453 _%slot243212%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1
                        _%self242872%_
                        _%$%g243072243179%_)))))
                (_%__kont247318247319%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self242872%_ _%stx242873%_)))))
            (let* ((_%__match247799247800%_
                    (lambda (_%$%e243075243115%_
                             _%$%hd243076243118%_
                             _%$%tl243077243120%_
                             _%$%e243078243123%_
                             _%$%hd243079243126%_
                             _%$%tl243080243128%_
                             _%$%e243081243131%_
                             _%$%hd243082243134%_
                             _%$%tl243083243136%_
                             _%$%e243084243139%_
                             _%$%hd243085243142%_
                             _%$%tl243086243144%_
                             _%$%e243087243147%_
                             _%$%hd243088243150%_
                             _%$%tl243089243152%_
                             _%$%e243090243155%_
                             _%$%hd243091243158%_
                             _%$%tl243092243160%_
                             _%$%e243093243163%_
                             _%$%hd243094243166%_
                             _%$%tl243095243168%_
                             _%$%e243096243171%_
                             _%$%hd243097243174%_
                             _%$%tl243098243176%_)
                      (let ((_%$%g243072243179%_ _%$%hd243097243174%_)
                            (_%$%g243073243180%_ _%$%hd243094243166%_)
                            (_%$%g243074243181%_ _%$%hd243085243142%_))
                        (if (and (let ((__tmp248454
                                        (let ((__tmp248455
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g243074243181%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp248455))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp248454
                                    'gxc#!mutator::t))
                                 (let ((__tmp248456
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self242872%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g243073243180%_
                                    __tmp248456)))
                            (_%__kont247316247317%_
                             _%$%g243072243179%_
                             _%$%g243073243180%_
                             _%$%g243074243181%_)
                            (_%__kont247318247319%_)))))
                   (_%__match247797247798%_
                    (lambda (_%$%e243075243115%_
                             _%$%hd243076243118%_
                             _%$%tl243077243120%_
                             _%$%e243078243123%_
                             _%$%hd243079243126%_
                             _%$%tl243080243128%_
                             _%$%e243081243131%_
                             _%$%hd243082243134%_
                             _%$%tl243083243136%_
                             _%$%e243084243139%_
                             _%$%hd243085243142%_
                             _%$%tl243086243144%_
                             _%$%e243087243147%_
                             _%$%hd243088243150%_
                             _%$%tl243089243152%_
                             _%$%e243090243155%_
                             _%$%hd243091243158%_
                             _%$%tl243092243160%_
                             _%$%e243093243163%_
                             _%$%hd243094243166%_
                             _%$%tl243095243168%_
                             _%$%e243096243171%_
                             _%$%hd243097243174%_
                             _%$%tl243098243176%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl243098243176%_))
                          (_%__match247799247800%_
                           _%$%e243075243115%_
                           _%$%hd243076243118%_
                           _%$%tl243077243120%_
                           _%$%e243078243123%_
                           _%$%hd243079243126%_
                           _%$%tl243080243128%_
                           _%$%e243081243131%_
                           _%$%hd243082243134%_
                           _%$%tl243083243136%_
                           _%$%e243084243139%_
                           _%$%hd243085243142%_
                           _%$%tl243086243144%_
                           _%$%e243087243147%_
                           _%$%hd243088243150%_
                           _%$%tl243089243152%_
                           _%$%e243090243155%_
                           _%$%hd243091243158%_
                           _%$%tl243092243160%_
                           _%$%e243093243163%_
                           _%$%hd243094243166%_
                           _%$%tl243095243168%_
                           _%$%e243096243171%_
                           _%$%hd243097243174%_
                           _%$%tl243098243176%_)
                          (_%__kont247318247319%_))))
                   (_%__match247791247792%_
                    (lambda (_%$%e243075243115%_
                             _%$%hd243076243118%_
                             _%$%tl243077243120%_
                             _%$%e243078243123%_
                             _%$%hd243079243126%_
                             _%$%tl243080243128%_
                             _%$%e243081243131%_
                             _%$%hd243082243134%_
                             _%$%tl243083243136%_
                             _%$%e243084243139%_
                             _%$%hd243085243142%_
                             _%$%tl243086243144%_
                             _%$%e243087243147%_
                             _%$%hd243088243150%_
                             _%$%tl243089243152%_
                             _%$%e243090243155%_
                             _%$%hd243091243158%_
                             _%$%tl243092243160%_
                             _%$%e243093243163%_
                             _%$%hd243094243166%_
                             _%$%tl243095243168%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl243089243152%_))
                          (let ((_%$%e243096243171%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl243089243152%_))))
                            (let ((_%$%tl243098243176%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e243096243171%_)))
                                  (_%$%hd243097243174%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e243096243171%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl243098243176%_))
                                  (_%__match247799247800%_
                                   _%$%e243075243115%_
                                   _%$%hd243076243118%_
                                   _%$%tl243077243120%_
                                   _%$%e243078243123%_
                                   _%$%hd243079243126%_
                                   _%$%tl243080243128%_
                                   _%$%e243081243131%_
                                   _%$%hd243082243134%_
                                   _%$%tl243083243136%_
                                   _%$%e243084243139%_
                                   _%$%hd243085243142%_
                                   _%$%tl243086243144%_
                                   _%$%e243087243147%_
                                   _%$%hd243088243150%_
                                   _%$%tl243089243152%_
                                   _%$%e243090243155%_
                                   _%$%hd243091243158%_
                                   _%$%tl243092243160%_
                                   _%$%e243093243163%_
                                   _%$%hd243094243166%_
                                   _%$%tl243095243168%_
                                   _%$%e243096243171%_
                                   _%$%hd243097243174%_
                                   _%$%tl243098243176%_)
                                  (_%__kont247318247319%_))))
                          (_%__kont247318247319%_))))
                   (_%__match247737247738%_
                    (lambda (_%$%e243051243223%_
                             _%$%hd243052243226%_
                             _%$%tl243053243228%_
                             _%$%e243054243231%_
                             _%$%hd243055243234%_
                             _%$%tl243056243236%_
                             _%$%e243057243239%_
                             _%$%hd243058243242%_
                             _%$%tl243059243244%_
                             _%$%e243060243247%_
                             _%$%hd243061243250%_
                             _%$%tl243062243252%_
                             _%$%e243063243255%_
                             _%$%hd243064243258%_
                             _%$%tl243065243260%_
                             _%$%e243066243263%_
                             _%$%hd243067243266%_
                             _%$%tl243068243268%_
                             _%$%e243069243271%_
                             _%$%hd243070243274%_
                             _%$%tl243071243276%_)
                      (let ((_%$%g243049243279%_ _%$%hd243070243274%_)
                            (_%$%g243050243280%_ _%$%hd243061243250%_))
                        (if (and (let ((__tmp248457
                                        (let ((__tmp248458
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g243050243280%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp248458))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp248457
                                    'gxc#!accessor::t))
                                 (let ((__tmp248459
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self242872%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g243049243279%_
                                    __tmp248459)))
                            (_%__kont247314247315%_
                             _%$%g243049243279%_
                             _%$%g243050243280%_)
                            (_%__kont247318247319%_)))))
                   (_%__match247735247736%_
                    (lambda (_%$%e243051243223%_
                             _%$%hd243052243226%_
                             _%$%tl243053243228%_
                             _%$%e243054243231%_
                             _%$%hd243055243234%_
                             _%$%tl243056243236%_
                             _%$%e243057243239%_
                             _%$%hd243058243242%_
                             _%$%tl243059243244%_
                             _%$%e243060243247%_
                             _%$%hd243061243250%_
                             _%$%tl243062243252%_
                             _%$%e243063243255%_
                             _%$%hd243064243258%_
                             _%$%tl243065243260%_
                             _%$%e243066243263%_
                             _%$%hd243067243266%_
                             _%$%tl243068243268%_
                             _%$%e243069243271%_
                             _%$%hd243070243274%_
                             _%$%tl243071243276%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl243065243260%_))
                          (_%__match247737247738%_
                           _%$%e243051243223%_
                           _%$%hd243052243226%_
                           _%$%tl243053243228%_
                           _%$%e243054243231%_
                           _%$%hd243055243234%_
                           _%$%tl243056243236%_
                           _%$%e243057243239%_
                           _%$%hd243058243242%_
                           _%$%tl243059243244%_
                           _%$%e243060243247%_
                           _%$%hd243061243250%_
                           _%$%tl243062243252%_
                           _%$%e243063243255%_
                           _%$%hd243064243258%_
                           _%$%tl243065243260%_
                           _%$%e243066243263%_
                           _%$%hd243067243266%_
                           _%$%tl243068243268%_
                           _%$%e243069243271%_
                           _%$%hd243070243274%_
                           _%$%tl243071243276%_)
                          (_%__match247791247792%_
                           _%$%e243051243223%_
                           _%$%hd243052243226%_
                           _%$%tl243053243228%_
                           _%$%e243054243231%_
                           _%$%hd243055243234%_
                           _%$%tl243056243236%_
                           _%$%e243057243239%_
                           _%$%hd243058243242%_
                           _%$%tl243059243244%_
                           _%$%e243060243247%_
                           _%$%hd243061243250%_
                           _%$%tl243062243252%_
                           _%$%e243063243255%_
                           _%$%hd243064243258%_
                           _%$%tl243065243260%_
                           _%$%e243066243263%_
                           _%$%hd243067243266%_
                           _%$%tl243068243268%_
                           _%$%e243069243271%_
                           _%$%hd243070243274%_
                           _%$%tl243071243276%_))))
                   (_%__match247681247682%_
                    (lambda (_%$%e243016243317%_
                             _%$%hd243017243320%_
                             _%$%tl243018243322%_
                             _%$%e243019243325%_
                             _%$%hd243020243328%_
                             _%$%tl243021243330%_
                             _%$%e243022243333%_
                             _%$%hd243023243336%_
                             _%$%tl243024243338%_
                             _%$%e243025243341%_
                             _%$%hd243026243344%_
                             _%$%tl243027243346%_
                             _%$%e243028243349%_
                             _%$%hd243029243352%_
                             _%$%tl243030243354%_
                             _%$%e243031243357%_
                             _%$%hd243032243360%_
                             _%$%tl243033243362%_
                             _%$%e243034243365%_
                             _%$%hd243035243368%_
                             _%$%tl243036243370%_
                             _%$%e243037243373%_
                             _%$%hd243038243376%_
                             _%$%tl243039243378%_
                             _%$%e243040243381%_
                             _%$%hd243041243384%_
                             _%$%tl243042243386%_
                             _%$%e243043243389%_
                             _%$%hd243044243392%_
                             _%$%tl243045243394%_
                             _%$%e243046243397%_
                             _%$%hd243047243400%_
                             _%$%tl243048243402%_)
                      (let ((_%$%g243012243405%_ _%$%hd243047243400%_)
                            (_%$%g243013243406%_ _%$%hd243044243392%_)
                            (_%$%g243014243407%_ _%$%hd243035243368%_)
                            (_%$%g243015243408%_ _%$%hd243026243344%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g243015243408%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g243015243408%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp248460
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self242872%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g243014243407%_
                                    __tmp248460)))
                            (_%__kont247312247313%_
                             _%$%g243012243405%_
                             _%$%g243013243406%_
                             _%$%g243014243407%_
                             _%$%g243015243408%_)
                            (_%__kont247318247319%_)))))
                   (_%__match247673247674%_
                    (lambda (_%$%e243016243317%_
                             _%$%hd243017243320%_
                             _%$%tl243018243322%_
                             _%$%e243019243325%_
                             _%$%hd243020243328%_
                             _%$%tl243021243330%_
                             _%$%e243022243333%_
                             _%$%hd243023243336%_
                             _%$%tl243024243338%_
                             _%$%e243025243341%_
                             _%$%hd243026243344%_
                             _%$%tl243027243346%_
                             _%$%e243028243349%_
                             _%$%hd243029243352%_
                             _%$%tl243030243354%_
                             _%$%e243031243357%_
                             _%$%hd243032243360%_
                             _%$%tl243033243362%_
                             _%$%e243034243365%_
                             _%$%hd243035243368%_
                             _%$%tl243036243370%_
                             _%$%e243037243373%_
                             _%$%hd243038243376%_
                             _%$%tl243039243378%_
                             _%$%e243040243381%_
                             _%$%hd243041243384%_
                             _%$%tl243042243386%_
                             _%$%e243043243389%_
                             _%$%hd243044243392%_
                             _%$%tl243045243394%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl243039243378%_))
                          (let ((_%$%e243046243397%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl243039243378%_))))
                            (let ((_%$%tl243048243402%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e243046243397%_)))
                                  (_%$%hd243047243400%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e243046243397%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl243048243402%_))
                                  (_%__match247681247682%_
                                   _%$%e243016243317%_
                                   _%$%hd243017243320%_
                                   _%$%tl243018243322%_
                                   _%$%e243019243325%_
                                   _%$%hd243020243328%_
                                   _%$%tl243021243330%_
                                   _%$%e243022243333%_
                                   _%$%hd243023243336%_
                                   _%$%tl243024243338%_
                                   _%$%e243025243341%_
                                   _%$%hd243026243344%_
                                   _%$%tl243027243346%_
                                   _%$%e243028243349%_
                                   _%$%hd243029243352%_
                                   _%$%tl243030243354%_
                                   _%$%e243031243357%_
                                   _%$%hd243032243360%_
                                   _%$%tl243033243362%_
                                   _%$%e243034243365%_
                                   _%$%hd243035243368%_
                                   _%$%tl243036243370%_
                                   _%$%e243037243373%_
                                   _%$%hd243038243376%_
                                   _%$%tl243039243378%_
                                   _%$%e243040243381%_
                                   _%$%hd243041243384%_
                                   _%$%tl243042243386%_
                                   _%$%e243043243389%_
                                   _%$%hd243044243392%_
                                   _%$%tl243045243394%_
                                   _%$%e243046243397%_
                                   _%$%hd243047243400%_
                                   _%$%tl243048243402%_)
                                  (_%__kont247318247319%_))))
                          (_%__match247797247798%_
                           _%$%e243016243317%_
                           _%$%hd243017243320%_
                           _%$%tl243018243322%_
                           _%$%e243019243325%_
                           _%$%hd243020243328%_
                           _%$%tl243021243330%_
                           _%$%e243022243333%_
                           _%$%hd243023243336%_
                           _%$%tl243024243338%_
                           _%$%e243025243341%_
                           _%$%hd243026243344%_
                           _%$%tl243027243346%_
                           _%$%e243028243349%_
                           _%$%hd243029243352%_
                           _%$%tl243030243354%_
                           _%$%e243031243357%_
                           _%$%hd243032243360%_
                           _%$%tl243033243362%_
                           _%$%e243034243365%_
                           _%$%hd243035243368%_
                           _%$%tl243036243370%_
                           _%$%e243037243373%_
                           _%$%hd243038243376%_
                           _%$%tl243039243378%_))))
                   (_%__match247595247596%_
                    (lambda (_%$%e242982243448%_
                             _%$%hd242983243451%_
                             _%$%tl242984243453%_
                             _%$%e242985243456%_
                             _%$%hd242986243459%_
                             _%$%tl242987243461%_
                             _%$%e242988243464%_
                             _%$%hd242989243467%_
                             _%$%tl242990243469%_
                             _%$%e242991243472%_
                             _%$%hd242992243475%_
                             _%$%tl242993243477%_
                             _%$%e242994243480%_
                             _%$%hd242995243483%_
                             _%$%tl242996243485%_
                             _%$%e242997243488%_
                             _%$%hd242998243491%_
                             _%$%tl242999243493%_
                             _%$%e243000243496%_
                             _%$%hd243001243499%_
                             _%$%tl243002243501%_
                             _%$%e243003243504%_
                             _%$%hd243004243507%_
                             _%$%tl243005243509%_
                             _%$%e243006243512%_
                             _%$%hd243007243515%_
                             _%$%tl243008243517%_
                             _%$%e243009243520%_
                             _%$%hd243010243523%_
                             _%$%tl243011243525%_)
                      (let ((_%$%g242979243528%_ _%$%hd243010243523%_)
                            (_%$%g242980243529%_ _%$%hd243001243499%_)
                            (_%$%g242981243530%_ _%$%hd242992243475%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g242981243530%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g242981243530%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp248461
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self242872%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g242980243529%_
                                    __tmp248461)))
                            (_%__kont247310247311%_
                             _%$%g242979243528%_
                             _%$%g242980243529%_
                             _%$%g242981243530%_)
                            (_%__match247799247800%_
                             _%$%e242982243448%_
                             _%$%hd242983243451%_
                             _%$%tl242984243453%_
                             _%$%e242985243456%_
                             _%$%hd242986243459%_
                             _%$%tl242987243461%_
                             _%$%e242988243464%_
                             _%$%hd242989243467%_
                             _%$%tl242990243469%_
                             _%$%e242991243472%_
                             _%$%hd242992243475%_
                             _%$%tl242993243477%_
                             _%$%e242994243480%_
                             _%$%hd242995243483%_
                             _%$%tl242996243485%_
                             _%$%e242997243488%_
                             _%$%hd242998243491%_
                             _%$%tl242999243493%_
                             _%$%e243000243496%_
                             _%$%hd243001243499%_
                             _%$%tl243002243501%_
                             _%$%e243003243504%_
                             _%$%hd243004243507%_
                             _%$%tl243005243509%_)))))
                   (_%__match247593247594%_
                    (lambda (_%$%e242982243448%_
                             _%$%hd242983243451%_
                             _%$%tl242984243453%_
                             _%$%e242985243456%_
                             _%$%hd242986243459%_
                             _%$%tl242987243461%_
                             _%$%e242988243464%_
                             _%$%hd242989243467%_
                             _%$%tl242990243469%_
                             _%$%e242991243472%_
                             _%$%hd242992243475%_
                             _%$%tl242993243477%_
                             _%$%e242994243480%_
                             _%$%hd242995243483%_
                             _%$%tl242996243485%_
                             _%$%e242997243488%_
                             _%$%hd242998243491%_
                             _%$%tl242999243493%_
                             _%$%e243000243496%_
                             _%$%hd243001243499%_
                             _%$%tl243002243501%_
                             _%$%e243003243504%_
                             _%$%hd243004243507%_
                             _%$%tl243005243509%_
                             _%$%e243006243512%_
                             _%$%hd243007243515%_
                             _%$%tl243008243517%_
                             _%$%e243009243520%_
                             _%$%hd243010243523%_
                             _%$%tl243011243525%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl243005243509%_))
                          (_%__match247595247596%_
                           _%$%e242982243448%_
                           _%$%hd242983243451%_
                           _%$%tl242984243453%_
                           _%$%e242985243456%_
                           _%$%hd242986243459%_
                           _%$%tl242987243461%_
                           _%$%e242988243464%_
                           _%$%hd242989243467%_
                           _%$%tl242990243469%_
                           _%$%e242991243472%_
                           _%$%hd242992243475%_
                           _%$%tl242993243477%_
                           _%$%e242994243480%_
                           _%$%hd242995243483%_
                           _%$%tl242996243485%_
                           _%$%e242997243488%_
                           _%$%hd242998243491%_
                           _%$%tl242999243493%_
                           _%$%e243000243496%_
                           _%$%hd243001243499%_
                           _%$%tl243002243501%_
                           _%$%e243003243504%_
                           _%$%hd243004243507%_
                           _%$%tl243005243509%_
                           _%$%e243006243512%_
                           _%$%hd243007243515%_
                           _%$%tl243008243517%_
                           _%$%e243009243520%_
                           _%$%hd243010243523%_
                           _%$%tl243011243525%_)
                          (_%__match247673247674%_
                           _%$%e242982243448%_
                           _%$%hd242983243451%_
                           _%$%tl242984243453%_
                           _%$%e242985243456%_
                           _%$%hd242986243459%_
                           _%$%tl242987243461%_
                           _%$%e242988243464%_
                           _%$%hd242989243467%_
                           _%$%tl242990243469%_
                           _%$%e242991243472%_
                           _%$%hd242992243475%_
                           _%$%tl242993243477%_
                           _%$%e242994243480%_
                           _%$%hd242995243483%_
                           _%$%tl242996243485%_
                           _%$%e242997243488%_
                           _%$%hd242998243491%_
                           _%$%tl242999243493%_
                           _%$%e243000243496%_
                           _%$%hd243001243499%_
                           _%$%tl243002243501%_
                           _%$%e243003243504%_
                           _%$%hd243004243507%_
                           _%$%tl243005243509%_
                           _%$%e243006243512%_
                           _%$%hd243007243515%_
                           _%$%tl243008243517%_
                           _%$%e243009243520%_
                           _%$%hd243010243523%_
                           _%$%tl243011243525%_))))
                   (_%__match247583247584%_
                    (lambda (_%$%e242982243448%_
                             _%$%hd242983243451%_
                             _%$%tl242984243453%_
                             _%$%e242985243456%_
                             _%$%hd242986243459%_
                             _%$%tl242987243461%_
                             _%$%e242988243464%_
                             _%$%hd242989243467%_
                             _%$%tl242990243469%_
                             _%$%e242991243472%_
                             _%$%hd242992243475%_
                             _%$%tl242993243477%_
                             _%$%e242994243480%_
                             _%$%hd242995243483%_
                             _%$%tl242996243485%_
                             _%$%e242997243488%_
                             _%$%hd242998243491%_
                             _%$%tl242999243493%_
                             _%$%e243000243496%_
                             _%$%hd243001243499%_
                             _%$%tl243002243501%_
                             _%$%e243003243504%_
                             _%$%hd243004243507%_
                             _%$%tl243005243509%_
                             _%$%e243006243512%_
                             _%$%hd243007243515%_
                             _%$%tl243008243517%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%$%hd243007243515%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl243008243517%_))
                              (let ((_%$%e243009243520%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl243008243517%_))))
                                (let ((_%$%tl243011243525%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e243009243520%_)))
                                      (_%$%hd243010243523%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e243009243520%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl243011243525%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl243005243509%_))
                                          (_%__match247595247596%_
                                           _%$%e242982243448%_
                                           _%$%hd242983243451%_
                                           _%$%tl242984243453%_
                                           _%$%e242985243456%_
                                           _%$%hd242986243459%_
                                           _%$%tl242987243461%_
                                           _%$%e242988243464%_
                                           _%$%hd242989243467%_
                                           _%$%tl242990243469%_
                                           _%$%e242991243472%_
                                           _%$%hd242992243475%_
                                           _%$%tl242993243477%_
                                           _%$%e242994243480%_
                                           _%$%hd242995243483%_
                                           _%$%tl242996243485%_
                                           _%$%e242997243488%_
                                           _%$%hd242998243491%_
                                           _%$%tl242999243493%_
                                           _%$%e243000243496%_
                                           _%$%hd243001243499%_
                                           _%$%tl243002243501%_
                                           _%$%e243003243504%_
                                           _%$%hd243004243507%_
                                           _%$%tl243005243509%_
                                           _%$%e243006243512%_
                                           _%$%hd243007243515%_
                                           _%$%tl243008243517%_
                                           _%$%e243009243520%_
                                           _%$%hd243010243523%_
                                           _%$%tl243011243525%_)
                                          (_%__match247673247674%_
                                           _%$%e242982243448%_
                                           _%$%hd242983243451%_
                                           _%$%tl242984243453%_
                                           _%$%e242985243456%_
                                           _%$%hd242986243459%_
                                           _%$%tl242987243461%_
                                           _%$%e242988243464%_
                                           _%$%hd242989243467%_
                                           _%$%tl242990243469%_
                                           _%$%e242991243472%_
                                           _%$%hd242992243475%_
                                           _%$%tl242993243477%_
                                           _%$%e242994243480%_
                                           _%$%hd242995243483%_
                                           _%$%tl242996243485%_
                                           _%$%e242997243488%_
                                           _%$%hd242998243491%_
                                           _%$%tl242999243493%_
                                           _%$%e243000243496%_
                                           _%$%hd243001243499%_
                                           _%$%tl243002243501%_
                                           _%$%e243003243504%_
                                           _%$%hd243004243507%_
                                           _%$%tl243005243509%_
                                           _%$%e243006243512%_
                                           _%$%hd243007243515%_
                                           _%$%tl243008243517%_
                                           _%$%e243009243520%_
                                           _%$%hd243010243523%_
                                           _%$%tl243011243525%_))
                                      (_%__match247797247798%_
                                       _%$%e242982243448%_
                                       _%$%hd242983243451%_
                                       _%$%tl242984243453%_
                                       _%$%e242985243456%_
                                       _%$%hd242986243459%_
                                       _%$%tl242987243461%_
                                       _%$%e242988243464%_
                                       _%$%hd242989243467%_
                                       _%$%tl242990243469%_
                                       _%$%e242991243472%_
                                       _%$%hd242992243475%_
                                       _%$%tl242993243477%_
                                       _%$%e242994243480%_
                                       _%$%hd242995243483%_
                                       _%$%tl242996243485%_
                                       _%$%e242997243488%_
                                       _%$%hd242998243491%_
                                       _%$%tl242999243493%_
                                       _%$%e243000243496%_
                                       _%$%hd243001243499%_
                                       _%$%tl243002243501%_
                                       _%$%e243003243504%_
                                       _%$%hd243004243507%_
                                       _%$%tl243005243509%_))))
                              (_%__match247797247798%_
                               _%$%e242982243448%_
                               _%$%hd242983243451%_
                               _%$%tl242984243453%_
                               _%$%e242985243456%_
                               _%$%hd242986243459%_
                               _%$%tl242987243461%_
                               _%$%e242988243464%_
                               _%$%hd242989243467%_
                               _%$%tl242990243469%_
                               _%$%e242991243472%_
                               _%$%hd242992243475%_
                               _%$%tl242993243477%_
                               _%$%e242994243480%_
                               _%$%hd242995243483%_
                               _%$%tl242996243485%_
                               _%$%e242997243488%_
                               _%$%hd242998243491%_
                               _%$%tl242999243493%_
                               _%$%e243000243496%_
                               _%$%hd243001243499%_
                               _%$%tl243002243501%_
                               _%$%e243003243504%_
                               _%$%hd243004243507%_
                               _%$%tl243005243509%_))
                          (_%__match247797247798%_
                           _%$%e242982243448%_
                           _%$%hd242983243451%_
                           _%$%tl242984243453%_
                           _%$%e242985243456%_
                           _%$%hd242986243459%_
                           _%$%tl242987243461%_
                           _%$%e242988243464%_
                           _%$%hd242989243467%_
                           _%$%tl242990243469%_
                           _%$%e242991243472%_
                           _%$%hd242992243475%_
                           _%$%tl242993243477%_
                           _%$%e242994243480%_
                           _%$%hd242995243483%_
                           _%$%tl242996243485%_
                           _%$%e242997243488%_
                           _%$%hd242998243491%_
                           _%$%tl242999243493%_
                           _%$%e243000243496%_
                           _%$%hd243001243499%_
                           _%$%tl243002243501%_
                           _%$%e243003243504%_
                           _%$%hd243004243507%_
                           _%$%tl243005243509%_))))
                   (_%__match247515247516%_
                    (lambda (_%$%e242931243567%_
                             _%$%hd242932243570%_
                             _%$%tl242933243572%_
                             _%$%e242934243575%_
                             _%$%hd242935243578%_
                             _%$%tl242936243580%_
                             _%$%e242937243583%_
                             _%$%hd242938243586%_
                             _%$%tl242939243588%_
                             _%$%e242940243591%_
                             _%$%hd242941243594%_
                             _%$%tl242942243596%_
                             _%$%e242943243599%_
                             _%$%hd242944243602%_
                             _%$%tl242945243604%_
                             _%$%e242946243607%_
                             _%$%hd242947243610%_
                             _%$%tl242948243612%_
                             _%$%e242949243615%_
                             _%$%hd242950243618%_
                             _%$%tl242951243620%_
                             _%$%e242952243623%_
                             _%$%hd242953243626%_
                             _%$%tl242954243628%_
                             _%$%e242955243631%_
                             _%$%hd242956243634%_
                             _%$%tl242957243636%_
                             _%$%e242958243639%_
                             _%$%hd242959243642%_
                             _%$%tl242960243644%_
                             _%$%e242961243647%_
                             _%$%hd242962243650%_
                             _%$%tl242963243652%_
                             _%$%e242964243655%_
                             _%$%hd242965243658%_
                             _%$%tl242966243660%_
                             _%$%e242967243663%_
                             _%$%hd242968243666%_
                             _%$%tl242969243668%_
                             _%__splice247308247309%_
                             _%$%target242970243671%_
                             _%$%tl242972243673%_)
                      (letrec ((_%$%loop242973243676%_
                                (lambda (_%$%hd242971243679%_
                                         _%$%args242977243681%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd242971243679%_))
                                      (let ((_%$%e242974243683%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd242971243679%_))))
                                        (let ((_%$%lp-tl242976243688%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e242974243683%_)))
                                              (_%$%lp-hd242975243686%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e242974243683%_))))
                                          (_%$%loop242973243676%_
                                           _%$%lp-tl242976243688%_
                                           (cons _%$%lp-hd242975243686%_
                                                 _%$%args242977243681%_))))
                                      (let ((_%$%args242978243691%_
                                             (reverse _%$%args242977243681%_)))
                                        (let ((_%$%g242926243693%_
                                               _%$%args242978243691%_)
                                              (_%$%g242927243694%_
                                               _%$%hd242968243666%_)
                                              (_%$%g242928243695%_
                                               _%$%hd242959243642%_)
                                              (_%$%g242929243696%_
                                               _%$%hd242950243618%_)
                                              (_%$%g242930243697%_
                                               _%$%hd242941243594%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g242930243697%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g242929243696%_
                                                      'call-method))
                                                   (let ((__tmp248462
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self242872%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g242928243695%_
                                                      __tmp248462)))
                                              (_%__kont247306247307%_
                                               _%$%g242926243693%_
                                               _%$%g242927243694%_
                                               _%$%g242928243695%_
                                               _%$%g242929243696%_
                                               _%$%g242930243697%_)
                                              (_%__kont247318247319%_))))))))
                        (_%$%loop242973243676%_
                         _%$%target242970243671%_
                         '()))))
                   (_%__match247473247474%_
                    (lambda (_%$%e242931243567%_
                             _%$%hd242932243570%_
                             _%$%tl242933243572%_
                             _%$%e242934243575%_
                             _%$%hd242935243578%_
                             _%$%tl242936243580%_
                             _%$%e242937243583%_
                             _%$%hd242938243586%_
                             _%$%tl242939243588%_
                             _%$%e242940243591%_
                             _%$%hd242941243594%_
                             _%$%tl242942243596%_
                             _%$%e242943243599%_
                             _%$%hd242944243602%_
                             _%$%tl242945243604%_
                             _%$%e242946243607%_
                             _%$%hd242947243610%_
                             _%$%tl242948243612%_
                             _%$%e242949243615%_
                             _%$%hd242950243618%_
                             _%$%tl242951243620%_
                             _%$%e242952243623%_
                             _%$%hd242953243626%_
                             _%$%tl242954243628%_
                             _%$%e242955243631%_
                             _%$%hd242956243634%_
                             _%$%tl242957243636%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%$%hd242956243634%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl242957243636%_))
                              (let ((_%$%e242958243639%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl242957243636%_))))
                                (let ((_%$%tl242960243644%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e242958243639%_)))
                                      (_%$%hd242959243642%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e242958243639%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl242960243644%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl242954243628%_))
                                          (let ((_%$%e242961243647%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl242954243628%_))))
                                            (let ((_%$%tl242963243652%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e242961243647%_)))
                                                  (_%$%hd242962243650%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e242961243647%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd242962243650%_))
                                                  (let ((_%$%e242964243655%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd242962243650%_))))
                                                    (let ((_%$%tl242966243660%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e242964243655%_)))
                                                          (_%$%hd242965243658%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e242964243655%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd242965243658%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%$%hd242965243658%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl242966243660%_))
                          (let ((_%$%e242967243663%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl242966243660%_))))
                            (let ((_%$%tl242969243668%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e242967243663%_)))
                                  (_%$%hd242968243666%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e242967243663%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl242969243668%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl242963243652%_))
                                      (let ((_%__splice247308247309%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl242963243652%_
                                                '0))))
                                        (let ((_%$%tl242972243673%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice247308247309%_
                                                  '1)))
                                              (_%$%target242970243671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice247308247309%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl242972243673%_))
                                              (_%__match247515247516%_
                                               _%$%e242931243567%_
                                               _%$%hd242932243570%_
                                               _%$%tl242933243572%_
                                               _%$%e242934243575%_
                                               _%$%hd242935243578%_
                                               _%$%tl242936243580%_
                                               _%$%e242937243583%_
                                               _%$%hd242938243586%_
                                               _%$%tl242939243588%_
                                               _%$%e242940243591%_
                                               _%$%hd242941243594%_
                                               _%$%tl242942243596%_
                                               _%$%e242943243599%_
                                               _%$%hd242944243602%_
                                               _%$%tl242945243604%_
                                               _%$%e242946243607%_
                                               _%$%hd242947243610%_
                                               _%$%tl242948243612%_
                                               _%$%e242949243615%_
                                               _%$%hd242950243618%_
                                               _%$%tl242951243620%_
                                               _%$%e242952243623%_
                                               _%$%hd242953243626%_
                                               _%$%tl242954243628%_
                                               _%$%e242955243631%_
                                               _%$%hd242956243634%_
                                               _%$%tl242957243636%_
                                               _%$%e242958243639%_
                                               _%$%hd242959243642%_
                                               _%$%tl242960243644%_
                                               _%$%e242961243647%_
                                               _%$%hd242962243650%_
                                               _%$%tl242963243652%_
                                               _%$%e242964243655%_
                                               _%$%hd242965243658%_
                                               _%$%tl242966243660%_
                                               _%$%e242967243663%_
                                               _%$%hd242968243666%_
                                               _%$%tl242969243668%_
                                               _%__splice247308247309%_
                                               _%$%target242970243671%_
                                               _%$%tl242972243673%_)
                                              (_%__kont247318247319%_))))
                                      (_%__kont247318247319%_))
                                  (_%__kont247318247319%_))))
                          (_%__kont247318247319%_))
                      (_%__kont247318247319%_))
                  (_%__kont247318247319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont247318247319%_))))
                                          (_%__match247797247798%_
                                           _%$%e242931243567%_
                                           _%$%hd242932243570%_
                                           _%$%tl242933243572%_
                                           _%$%e242934243575%_
                                           _%$%hd242935243578%_
                                           _%$%tl242936243580%_
                                           _%$%e242937243583%_
                                           _%$%hd242938243586%_
                                           _%$%tl242939243588%_
                                           _%$%e242940243591%_
                                           _%$%hd242941243594%_
                                           _%$%tl242942243596%_
                                           _%$%e242943243599%_
                                           _%$%hd242944243602%_
                                           _%$%tl242945243604%_
                                           _%$%e242946243607%_
                                           _%$%hd242947243610%_
                                           _%$%tl242948243612%_
                                           _%$%e242949243615%_
                                           _%$%hd242950243618%_
                                           _%$%tl242951243620%_
                                           _%$%e242952243623%_
                                           _%$%hd242953243626%_
                                           _%$%tl242954243628%_))
                                      (_%__match247797247798%_
                                       _%$%e242931243567%_
                                       _%$%hd242932243570%_
                                       _%$%tl242933243572%_
                                       _%$%e242934243575%_
                                       _%$%hd242935243578%_
                                       _%$%tl242936243580%_
                                       _%$%e242937243583%_
                                       _%$%hd242938243586%_
                                       _%$%tl242939243588%_
                                       _%$%e242940243591%_
                                       _%$%hd242941243594%_
                                       _%$%tl242942243596%_
                                       _%$%e242943243599%_
                                       _%$%hd242944243602%_
                                       _%$%tl242945243604%_
                                       _%$%e242946243607%_
                                       _%$%hd242947243610%_
                                       _%$%tl242948243612%_
                                       _%$%e242949243615%_
                                       _%$%hd242950243618%_
                                       _%$%tl242951243620%_
                                       _%$%e242952243623%_
                                       _%$%hd242953243626%_
                                       _%$%tl242954243628%_))))
                              (_%__match247797247798%_
                               _%$%e242931243567%_
                               _%$%hd242932243570%_
                               _%$%tl242933243572%_
                               _%$%e242934243575%_
                               _%$%hd242935243578%_
                               _%$%tl242936243580%_
                               _%$%e242937243583%_
                               _%$%hd242938243586%_
                               _%$%tl242939243588%_
                               _%$%e242940243591%_
                               _%$%hd242941243594%_
                               _%$%tl242942243596%_
                               _%$%e242943243599%_
                               _%$%hd242944243602%_
                               _%$%tl242945243604%_
                               _%$%e242946243607%_
                               _%$%hd242947243610%_
                               _%$%tl242948243612%_
                               _%$%e242949243615%_
                               _%$%hd242950243618%_
                               _%$%tl242951243620%_
                               _%$%e242952243623%_
                               _%$%hd242953243626%_
                               _%$%tl242954243628%_))
                          (_%__match247583247584%_
                           _%$%e242931243567%_
                           _%$%hd242932243570%_
                           _%$%tl242933243572%_
                           _%$%e242934243575%_
                           _%$%hd242935243578%_
                           _%$%tl242936243580%_
                           _%$%e242937243583%_
                           _%$%hd242938243586%_
                           _%$%tl242939243588%_
                           _%$%e242940243591%_
                           _%$%hd242941243594%_
                           _%$%tl242942243596%_
                           _%$%e242943243599%_
                           _%$%hd242944243602%_
                           _%$%tl242945243604%_
                           _%$%e242946243607%_
                           _%$%hd242947243610%_
                           _%$%tl242948243612%_
                           _%$%e242949243615%_
                           _%$%hd242950243618%_
                           _%$%tl242951243620%_
                           _%$%e242952243623%_
                           _%$%hd242953243626%_
                           _%$%tl242954243628%_
                           _%$%e242955243631%_
                           _%$%hd242956243634%_
                           _%$%tl242957243636%_))))
                   (_%__match247405247406%_
                    (lambda (_%$%e242887243754%_
                             _%$%hd242888243757%_
                             _%$%tl242889243759%_
                             _%$%e242890243762%_
                             _%$%hd242891243765%_
                             _%$%tl242892243767%_
                             _%$%e242893243770%_
                             _%$%hd242894243773%_
                             _%$%tl242895243775%_
                             _%$%e242896243778%_
                             _%$%hd242897243781%_
                             _%$%tl242898243783%_
                             _%$%e242899243786%_
                             _%$%hd242900243789%_
                             _%$%tl242901243791%_
                             _%$%e242902243794%_
                             _%$%hd242903243797%_
                             _%$%tl242904243799%_
                             _%$%e242905243802%_
                             _%$%hd242906243805%_
                             _%$%tl242907243807%_
                             _%$%e242908243810%_
                             _%$%hd242909243813%_
                             _%$%tl242910243815%_
                             _%$%e242911243818%_
                             _%$%hd242912243821%_
                             _%$%tl242913243823%_
                             _%$%e242914243826%_
                             _%$%hd242915243829%_
                             _%$%tl242916243831%_
                             _%__splice247304247305%_
                             _%$%target242917243834%_
                             _%$%tl242919243836%_)
                      (letrec ((_%$%loop242920243839%_
                                (lambda (_%$%hd242918243842%_
                                         _%$%args242924243844%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd242918243842%_))
                                      (let ((_%$%e242921243846%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd242918243842%_))))
                                        (let ((_%$%lp-tl242923243851%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e242921243846%_)))
                                              (_%$%lp-hd242922243849%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e242921243846%_))))
                                          (_%$%loop242920243839%_
                                           _%$%lp-tl242923243851%_
                                           (cons _%$%lp-hd242922243849%_
                                                 _%$%args242924243844%_))))
                                      (let ((_%$%args242925243854%_
                                             (reverse _%$%args242924243844%_)))
                                        (let ((_%$%g242883243856%_
                                               _%$%args242925243854%_)
                                              (_%$%g242884243857%_
                                               _%$%hd242915243829%_)
                                              (_%$%g242885243858%_
                                               _%$%hd242906243805%_)
                                              (_%$%g242886243859%_
                                               _%$%hd242897243781%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g242886243859%_
                                                      'call-method))
                                                   (let ((__tmp248463
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self242872%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g242885243858%_
                                                      __tmp248463)))
                                              (_%__kont247302247303%_
                                               _%$%g242883243856%_
                                               _%$%g242884243857%_
                                               _%$%g242885243858%_
                                               _%$%g242886243859%_)
                                              (_%__match247593247594%_
                                               _%$%e242887243754%_
                                               _%$%hd242888243757%_
                                               _%$%tl242889243759%_
                                               _%$%e242890243762%_
                                               _%$%hd242891243765%_
                                               _%$%tl242892243767%_
                                               _%$%e242893243770%_
                                               _%$%hd242894243773%_
                                               _%$%tl242895243775%_
                                               _%$%e242896243778%_
                                               _%$%hd242897243781%_
                                               _%$%tl242898243783%_
                                               _%$%e242899243786%_
                                               _%$%hd242900243789%_
                                               _%$%tl242901243791%_
                                               _%$%e242902243794%_
                                               _%$%hd242903243797%_
                                               _%$%tl242904243799%_
                                               _%$%e242905243802%_
                                               _%$%hd242906243805%_
                                               _%$%tl242907243807%_
                                               _%$%e242908243810%_
                                               _%$%hd242909243813%_
                                               _%$%tl242910243815%_
                                               _%$%e242911243818%_
                                               _%$%hd242912243821%_
                                               _%$%tl242913243823%_
                                               _%$%e242914243826%_
                                               _%$%hd242915243829%_
                                               _%$%tl242916243831%_))))))))
                        (_%$%loop242920243839%_
                         _%$%target242917243834%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx247300247301%_))
                  (let ((_%$%e242887243754%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx247300247301%_))))
                    (let ((_%$%tl242889243759%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e242887243754%_)))
                          (_%$%hd242888243757%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e242887243754%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl242889243759%_))
                          (let ((_%$%e242890243762%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl242889243759%_))))
                            (let ((_%$%tl242892243767%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e242890243762%_)))
                                  (_%$%hd242891243765%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e242890243762%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd242891243765%_))
                                  (let ((_%$%e242893243770%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd242891243765%_))))
                                    (let ((_%$%tl242895243775%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e242893243770%_)))
                                          (_%$%hd242894243773%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e242893243770%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd242894243773%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd242894243773%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl242895243775%_))
                                                  (let ((_%$%e242896243778%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl242895243775%_))))
                                                    (let ((_%$%tl242898243783%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e242896243778%_)))
                                                          (_%$%hd242897243781%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e242896243778%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl242898243783%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl242892243767%_))
                      (let ((_%$%e242899243786%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl242892243767%_))))
                        (let ((_%$%tl242901243791%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e242899243786%_)))
                              (_%$%hd242900243789%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e242899243786%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd242900243789%_))
                              (let ((_%$%e242902243794%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd242900243789%_))))
                                (let ((_%$%tl242904243799%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e242902243794%_)))
                                      (_%$%hd242903243797%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e242902243794%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd242903243797%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd242903243797%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl242904243799%_))
                                              (let ((_%$%e242905243802%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl242904243799%_))))
                                                (let ((_%$%tl242907243807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e242905243802%_)))
                                                      (_%$%hd242906243805%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e242905243802%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl242907243807%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl242901243791%_))
                                                          (let ((_%$%e242908243810%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl242901243791%_))))
                    (let ((_%$%tl242910243815%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e242908243810%_)))
                          (_%$%hd242909243813%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e242908243810%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd242909243813%_))
                          (let ((_%$%e242911243818%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd242909243813%_))))
                            (let ((_%$%tl242913243823%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e242911243818%_)))
                                  (_%$%hd242912243821%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e242911243818%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd242912243821%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd242912243821%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl242913243823%_))
                                          (let ((_%$%e242914243826%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl242913243823%_))))
                                            (let ((_%$%tl242916243831%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e242914243826%_)))
                                                  (_%$%hd242915243829%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e242914243826%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl242916243831%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl242910243815%_))
                                                      (let ((_%__splice247304247305%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl242910243815%_
                        '0))))
                (let ((_%$%tl242919243836%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice247304247305%_ '1)))
                      (_%$%target242917243834%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice247304247305%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl242919243836%_))
                      (_%__match247405247406%_
                       _%$%e242887243754%_
                       _%$%hd242888243757%_
                       _%$%tl242889243759%_
                       _%$%e242890243762%_
                       _%$%hd242891243765%_
                       _%$%tl242892243767%_
                       _%$%e242893243770%_
                       _%$%hd242894243773%_
                       _%$%tl242895243775%_
                       _%$%e242896243778%_
                       _%$%hd242897243781%_
                       _%$%tl242898243783%_
                       _%$%e242899243786%_
                       _%$%hd242900243789%_
                       _%$%tl242901243791%_
                       _%$%e242902243794%_
                       _%$%hd242903243797%_
                       _%$%tl242904243799%_
                       _%$%e242905243802%_
                       _%$%hd242906243805%_
                       _%$%tl242907243807%_
                       _%$%e242908243810%_
                       _%$%hd242909243813%_
                       _%$%tl242910243815%_
                       _%$%e242911243818%_
                       _%$%hd242912243821%_
                       _%$%tl242913243823%_
                       _%$%e242914243826%_
                       _%$%hd242915243829%_
                       _%$%tl242916243831%_
                       _%__splice247304247305%_
                       _%$%target242917243834%_
                       _%$%tl242919243836%_)
                      (_%__match247593247594%_
                       _%$%e242887243754%_
                       _%$%hd242888243757%_
                       _%$%tl242889243759%_
                       _%$%e242890243762%_
                       _%$%hd242891243765%_
                       _%$%tl242892243767%_
                       _%$%e242893243770%_
                       _%$%hd242894243773%_
                       _%$%tl242895243775%_
                       _%$%e242896243778%_
                       _%$%hd242897243781%_
                       _%$%tl242898243783%_
                       _%$%e242899243786%_
                       _%$%hd242900243789%_
                       _%$%tl242901243791%_
                       _%$%e242902243794%_
                       _%$%hd242903243797%_
                       _%$%tl242904243799%_
                       _%$%e242905243802%_
                       _%$%hd242906243805%_
                       _%$%tl242907243807%_
                       _%$%e242908243810%_
                       _%$%hd242909243813%_
                       _%$%tl242910243815%_
                       _%$%e242911243818%_
                       _%$%hd242912243821%_
                       _%$%tl242913243823%_
                       _%$%e242914243826%_
                       _%$%hd242915243829%_
                       _%$%tl242916243831%_))))
              (_%__match247593247594%_
               _%$%e242887243754%_
               _%$%hd242888243757%_
               _%$%tl242889243759%_
               _%$%e242890243762%_
               _%$%hd242891243765%_
               _%$%tl242892243767%_
               _%$%e242893243770%_
               _%$%hd242894243773%_
               _%$%tl242895243775%_
               _%$%e242896243778%_
               _%$%hd242897243781%_
               _%$%tl242898243783%_
               _%$%e242899243786%_
               _%$%hd242900243789%_
               _%$%tl242901243791%_
               _%$%e242902243794%_
               _%$%hd242903243797%_
               _%$%tl242904243799%_
               _%$%e242905243802%_
               _%$%hd242906243805%_
               _%$%tl242907243807%_
               _%$%e242908243810%_
               _%$%hd242909243813%_
               _%$%tl242910243815%_
               _%$%e242911243818%_
               _%$%hd242912243821%_
               _%$%tl242913243823%_
               _%$%e242914243826%_
               _%$%hd242915243829%_
               _%$%tl242916243831%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match247797247798%_
                                                   _%$%e242887243754%_
                                                   _%$%hd242888243757%_
                                                   _%$%tl242889243759%_
                                                   _%$%e242890243762%_
                                                   _%$%hd242891243765%_
                                                   _%$%tl242892243767%_
                                                   _%$%e242893243770%_
                                                   _%$%hd242894243773%_
                                                   _%$%tl242895243775%_
                                                   _%$%e242896243778%_
                                                   _%$%hd242897243781%_
                                                   _%$%tl242898243783%_
                                                   _%$%e242899243786%_
                                                   _%$%hd242900243789%_
                                                   _%$%tl242901243791%_
                                                   _%$%e242902243794%_
                                                   _%$%hd242903243797%_
                                                   _%$%tl242904243799%_
                                                   _%$%e242905243802%_
                                                   _%$%hd242906243805%_
                                                   _%$%tl242907243807%_
                                                   _%$%e242908243810%_
                                                   _%$%hd242909243813%_
                                                   _%$%tl242910243815%_))))
                                          (_%__match247797247798%_
                                           _%$%e242887243754%_
                                           _%$%hd242888243757%_
                                           _%$%tl242889243759%_
                                           _%$%e242890243762%_
                                           _%$%hd242891243765%_
                                           _%$%tl242892243767%_
                                           _%$%e242893243770%_
                                           _%$%hd242894243773%_
                                           _%$%tl242895243775%_
                                           _%$%e242896243778%_
                                           _%$%hd242897243781%_
                                           _%$%tl242898243783%_
                                           _%$%e242899243786%_
                                           _%$%hd242900243789%_
                                           _%$%tl242901243791%_
                                           _%$%e242902243794%_
                                           _%$%hd242903243797%_
                                           _%$%tl242904243799%_
                                           _%$%e242905243802%_
                                           _%$%hd242906243805%_
                                           _%$%tl242907243807%_
                                           _%$%e242908243810%_
                                           _%$%hd242909243813%_
                                           _%$%tl242910243815%_))
                                      (_%__match247473247474%_
                                       _%$%e242887243754%_
                                       _%$%hd242888243757%_
                                       _%$%tl242889243759%_
                                       _%$%e242890243762%_
                                       _%$%hd242891243765%_
                                       _%$%tl242892243767%_
                                       _%$%e242893243770%_
                                       _%$%hd242894243773%_
                                       _%$%tl242895243775%_
                                       _%$%e242896243778%_
                                       _%$%hd242897243781%_
                                       _%$%tl242898243783%_
                                       _%$%e242899243786%_
                                       _%$%hd242900243789%_
                                       _%$%tl242901243791%_
                                       _%$%e242902243794%_
                                       _%$%hd242903243797%_
                                       _%$%tl242904243799%_
                                       _%$%e242905243802%_
                                       _%$%hd242906243805%_
                                       _%$%tl242907243807%_
                                       _%$%e242908243810%_
                                       _%$%hd242909243813%_
                                       _%$%tl242910243815%_
                                       _%$%e242911243818%_
                                       _%$%hd242912243821%_
                                       _%$%tl242913243823%_))
                                  (_%__match247797247798%_
                                   _%$%e242887243754%_
                                   _%$%hd242888243757%_
                                   _%$%tl242889243759%_
                                   _%$%e242890243762%_
                                   _%$%hd242891243765%_
                                   _%$%tl242892243767%_
                                   _%$%e242893243770%_
                                   _%$%hd242894243773%_
                                   _%$%tl242895243775%_
                                   _%$%e242896243778%_
                                   _%$%hd242897243781%_
                                   _%$%tl242898243783%_
                                   _%$%e242899243786%_
                                   _%$%hd242900243789%_
                                   _%$%tl242901243791%_
                                   _%$%e242902243794%_
                                   _%$%hd242903243797%_
                                   _%$%tl242904243799%_
                                   _%$%e242905243802%_
                                   _%$%hd242906243805%_
                                   _%$%tl242907243807%_
                                   _%$%e242908243810%_
                                   _%$%hd242909243813%_
                                   _%$%tl242910243815%_))))
                          (_%__match247797247798%_
                           _%$%e242887243754%_
                           _%$%hd242888243757%_
                           _%$%tl242889243759%_
                           _%$%e242890243762%_
                           _%$%hd242891243765%_
                           _%$%tl242892243767%_
                           _%$%e242893243770%_
                           _%$%hd242894243773%_
                           _%$%tl242895243775%_
                           _%$%e242896243778%_
                           _%$%hd242897243781%_
                           _%$%tl242898243783%_
                           _%$%e242899243786%_
                           _%$%hd242900243789%_
                           _%$%tl242901243791%_
                           _%$%e242902243794%_
                           _%$%hd242903243797%_
                           _%$%tl242904243799%_
                           _%$%e242905243802%_
                           _%$%hd242906243805%_
                           _%$%tl242907243807%_
                           _%$%e242908243810%_
                           _%$%hd242909243813%_
                           _%$%tl242910243815%_))))
                  (_%__match247735247736%_
                   _%$%e242887243754%_
                   _%$%hd242888243757%_
                   _%$%tl242889243759%_
                   _%$%e242890243762%_
                   _%$%hd242891243765%_
                   _%$%tl242892243767%_
                   _%$%e242893243770%_
                   _%$%hd242894243773%_
                   _%$%tl242895243775%_
                   _%$%e242896243778%_
                   _%$%hd242897243781%_
                   _%$%tl242898243783%_
                   _%$%e242899243786%_
                   _%$%hd242900243789%_
                   _%$%tl242901243791%_
                   _%$%e242902243794%_
                   _%$%hd242903243797%_
                   _%$%tl242904243799%_
                   _%$%e242905243802%_
                   _%$%hd242906243805%_
                   _%$%tl242907243807%_))
              (_%__kont247318247319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont247318247319%_))
                                          (_%__kont247318247319%_))
                                      (_%__kont247318247319%_))))
                              (_%__kont247318247319%_))))
                      (_%__kont247318247319%_))
                  (_%__kont247318247319%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont247318247319%_))
                                              (_%__kont247318247319%_))
                                          (_%__kont247318247319%_))))
                                  (_%__kont247318247319%_))))
                          (_%__kont247318247319%_))))
                  (_%__kont247318247319%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self241815%_ _%stx241816%_)
        (letrec ((_%force-e241818%_
                  (lambda (_%target242870%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target242870%_ '()))
                                      '()))))))
          (let* ((_%__stx247802247803%_ _%stx241816%_)
                 (_%$%g241826242048%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx247802247803%_)))))
            (let ((_%__kont247804247805%_
                   (lambda (_%$%g241828242816%_
                            _%$%g241829242817%_
                            _%$%g241830242818%_
                            _%$%g241831242819%_)
                     (let ((_%$method242864%_
                            (let ((__tmp248465
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self241815%_ 'methods)))
                                  (__tmp248464
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g241829242817%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp248465 __tmp248464)))
                           (_%args242865%_
                            (map (lambda (_%$%g242852242854%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self241815%_
                                      _%$%g242852242854%_)))
                                 (let ((__tmp248466
                                        (lambda (_%$%g242856242859%_
                                                 _%$%g242857242861%_)
                                          (cons _%$%g242856242859%_
                                                _%$%g242857242861%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp248466
                                    '()
                                    _%$%g241828242816%_)))))
                       (let ((__tmp248467
                              (cons '%#call
                                    (cons (_%force-e241818%_ _%$method242864%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self241815%_
                                                               'receiver))
                                                            '()))
                                                _%args242865%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248467 _%stx241816%_)))))
                  (_%__kont247808247809%_
                   (lambda (_%$%g241871242650%_
                            _%$%g241872242651%_
                            _%$%g241873242652%_
                            _%$%g241874242653%_
                            _%$%g241875242654%_)
                     (let ((_%$method242706%_
                            (let ((__tmp248469
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self241815%_ 'methods)))
                                  (__tmp248468
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g241872242651%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp248469 __tmp248468)))
                           (_%args242707%_
                            (map (lambda (_%$%g242694242696%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self241815%_
                                      _%$%g242694242696%_)))
                                 (let ((__tmp248470
                                        (lambda (_%$%g242698242701%_
                                                 _%$%g242699242703%_)
                                          (cons _%$%g242698242701%_
                                                _%$%g242699242703%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp248470
                                    '()
                                    _%$%g241871242650%_)))))
                       (let ((__tmp248471
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e241818%_
                                                 _%$method242706%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self241815%_ 'receiver))
                          '()))
              _%args242707%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248471 _%stx241816%_)))))
                  (_%__kont247812247813%_
                   (lambda (_%$%g241924242483%_
                            _%$%g241925242484%_
                            _%$%g241926242485%_)
                     (let* ((_%$field242517%_
                             (let ((__tmp248473
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self241815%_ 'slots)))
                                   (__tmp248472
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%g241924242483%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp248473 __tmp248472)))
                            (__tmp248474
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self241815%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field242517%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self241815%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp248474 _%stx241816%_))))
                  (_%__kont247814247815%_
                   (lambda (_%$%g241957242357%_
                            _%$%g241958242358%_
                            _%$%g241959242359%_
                            _%$%g241960242360%_)
                     (let ((_%$field242395%_
                            (let ((__tmp248476
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self241815%_ 'slots)))
                                  (__tmp248475
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g241958242358%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp248476 __tmp248475)))
                           (_%expr242396%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self241815%_
                               _%$%g241957242357%_))))
                       (let ((__tmp248477
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self241815%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field242395%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self241815%_ 'receiver))
                          '()))
              (cons _%expr242396%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248477 _%stx241816%_)))))
                  (_%__kont247816247817%_
                   (lambda (_%$%g241994242229%_ _%$%g241995242230%_)
                     (let* ((_%accessor242252%_
                             (let ((__tmp248478
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g241995242230%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp248478)))
                            (_%klass242254%_
                             (let ((__tmp248479
                                    (##structure-ref
                                     _%accessor242252%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx241816%_
                                __tmp248479)))
                            (_%slot242256%_
                             (##structure-ref
                              _%accessor242252%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor242252%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass242254%_
                                      _%slot242256%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass242254%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx241816%_
                           (let* ((_%$field242262%_
                                   (let ((__tmp248480
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241815%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp248480 _%slot242256%_)))
                                  (__tmp248481
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self241815%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field242262%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self241815%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp248481
                              _%stx241816%_))))))
                  (_%__kont247818247819%_
                   (lambda (_%$%g242017242124%_
                            _%$%g242018242125%_
                            _%$%g242019242126%_)
                     (let* ((_%mutator242154%_
                             (let ((__tmp248482
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g242019242126%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp248482)))
                            (_%klass242156%_
                             (let ((__tmp248483
                                    (##structure-ref
                                     _%mutator242154%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx241816%_
                                __tmp248483)))
                            (_%slot242158%_
                             (##structure-ref
                              _%mutator242154%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr242160%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self241815%_
                                _%$%g242017242124%_))))
                       (if (if (##structure-ref
                                _%mutator242154%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass242156%_
                                      _%slot242158%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass242156%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp248484
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%$%g242019242126%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g242018242125%_
                                                                '()))
                                                    (cons _%expr242160%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp248484 _%stx241816%_))
                           (let* ((_%$field242166%_
                                   (let ((__tmp248485
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241815%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp248485 _%slot242158%_)))
                                  (__tmp248486
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self241815%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field242166%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self241815%_ 'receiver))
                               '()))
                   (cons _%expr242160%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp248486
                              _%stx241816%_))))))
                  (_%__kont247820247821%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self241815%_ _%stx241816%_)))))
              (let* ((_%__match248301248302%_
                      (lambda (_%$%e242020242060%_
                               _%$%hd242021242063%_
                               _%$%tl242022242065%_
                               _%$%e242023242068%_
                               _%$%hd242024242071%_
                               _%$%tl242025242073%_
                               _%$%e242026242076%_
                               _%$%hd242027242079%_
                               _%$%tl242028242081%_
                               _%$%e242029242084%_
                               _%$%hd242030242087%_
                               _%$%tl242031242089%_
                               _%$%e242032242092%_
                               _%$%hd242033242095%_
                               _%$%tl242034242097%_
                               _%$%e242035242100%_
                               _%$%hd242036242103%_
                               _%$%tl242037242105%_
                               _%$%e242038242108%_
                               _%$%hd242039242111%_
                               _%$%tl242040242113%_
                               _%$%e242041242116%_
                               _%$%hd242042242119%_
                               _%$%tl242043242121%_)
                        (let ((_%$%g242017242124%_ _%$%hd242042242119%_)
                              (_%$%g242018242125%_ _%$%hd242039242111%_)
                              (_%$%g242019242126%_ _%$%hd242030242087%_))
                          (if (and (let ((__tmp248487
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241815%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g242018242125%_
                                      __tmp248487))
                                   (let ((__tmp248488
                                          (let ((__tmp248489
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g242019242126%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp248489))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp248488
                                      'gxc#!mutator::t)))
                              (_%__kont247818247819%_
                               _%$%g242017242124%_
                               _%$%g242018242125%_
                               _%$%g242019242126%_)
                              (_%__kont247820247821%_)))))
                     (_%__match248299248300%_
                      (lambda (_%$%e242020242060%_
                               _%$%hd242021242063%_
                               _%$%tl242022242065%_
                               _%$%e242023242068%_
                               _%$%hd242024242071%_
                               _%$%tl242025242073%_
                               _%$%e242026242076%_
                               _%$%hd242027242079%_
                               _%$%tl242028242081%_
                               _%$%e242029242084%_
                               _%$%hd242030242087%_
                               _%$%tl242031242089%_
                               _%$%e242032242092%_
                               _%$%hd242033242095%_
                               _%$%tl242034242097%_
                               _%$%e242035242100%_
                               _%$%hd242036242103%_
                               _%$%tl242037242105%_
                               _%$%e242038242108%_
                               _%$%hd242039242111%_
                               _%$%tl242040242113%_
                               _%$%e242041242116%_
                               _%$%hd242042242119%_
                               _%$%tl242043242121%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl242043242121%_))
                            (_%__match248301248302%_
                             _%$%e242020242060%_
                             _%$%hd242021242063%_
                             _%$%tl242022242065%_
                             _%$%e242023242068%_
                             _%$%hd242024242071%_
                             _%$%tl242025242073%_
                             _%$%e242026242076%_
                             _%$%hd242027242079%_
                             _%$%tl242028242081%_
                             _%$%e242029242084%_
                             _%$%hd242030242087%_
                             _%$%tl242031242089%_
                             _%$%e242032242092%_
                             _%$%hd242033242095%_
                             _%$%tl242034242097%_
                             _%$%e242035242100%_
                             _%$%hd242036242103%_
                             _%$%tl242037242105%_
                             _%$%e242038242108%_
                             _%$%hd242039242111%_
                             _%$%tl242040242113%_
                             _%$%e242041242116%_
                             _%$%hd242042242119%_
                             _%$%tl242043242121%_)
                            (_%__kont247820247821%_))))
                     (_%__match248293248294%_
                      (lambda (_%$%e242020242060%_
                               _%$%hd242021242063%_
                               _%$%tl242022242065%_
                               _%$%e242023242068%_
                               _%$%hd242024242071%_
                               _%$%tl242025242073%_
                               _%$%e242026242076%_
                               _%$%hd242027242079%_
                               _%$%tl242028242081%_
                               _%$%e242029242084%_
                               _%$%hd242030242087%_
                               _%$%tl242031242089%_
                               _%$%e242032242092%_
                               _%$%hd242033242095%_
                               _%$%tl242034242097%_
                               _%$%e242035242100%_
                               _%$%hd242036242103%_
                               _%$%tl242037242105%_
                               _%$%e242038242108%_
                               _%$%hd242039242111%_
                               _%$%tl242040242113%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl242034242097%_))
                            (let ((_%$%e242041242116%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl242034242097%_))))
                              (let ((_%$%tl242043242121%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e242041242116%_)))
                                    (_%$%hd242042242119%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e242041242116%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl242043242121%_))
                                    (_%__match248301248302%_
                                     _%$%e242020242060%_
                                     _%$%hd242021242063%_
                                     _%$%tl242022242065%_
                                     _%$%e242023242068%_
                                     _%$%hd242024242071%_
                                     _%$%tl242025242073%_
                                     _%$%e242026242076%_
                                     _%$%hd242027242079%_
                                     _%$%tl242028242081%_
                                     _%$%e242029242084%_
                                     _%$%hd242030242087%_
                                     _%$%tl242031242089%_
                                     _%$%e242032242092%_
                                     _%$%hd242033242095%_
                                     _%$%tl242034242097%_
                                     _%$%e242035242100%_
                                     _%$%hd242036242103%_
                                     _%$%tl242037242105%_
                                     _%$%e242038242108%_
                                     _%$%hd242039242111%_
                                     _%$%tl242040242113%_
                                     _%$%e242041242116%_
                                     _%$%hd242042242119%_
                                     _%$%tl242043242121%_)
                                    (_%__kont247820247821%_))))
                            (_%__kont247820247821%_))))
                     (_%__match248239248240%_
                      (lambda (_%$%e241996242173%_
                               _%$%hd241997242176%_
                               _%$%tl241998242178%_
                               _%$%e241999242181%_
                               _%$%hd242000242184%_
                               _%$%tl242001242186%_
                               _%$%e242002242189%_
                               _%$%hd242003242192%_
                               _%$%tl242004242194%_
                               _%$%e242005242197%_
                               _%$%hd242006242200%_
                               _%$%tl242007242202%_
                               _%$%e242008242205%_
                               _%$%hd242009242208%_
                               _%$%tl242010242210%_
                               _%$%e242011242213%_
                               _%$%hd242012242216%_
                               _%$%tl242013242218%_
                               _%$%e242014242221%_
                               _%$%hd242015242224%_
                               _%$%tl242016242226%_)
                        (let ((_%$%g241994242229%_ _%$%hd242015242224%_)
                              (_%$%g241995242230%_ _%$%hd242006242200%_))
                          (if (and (let ((__tmp248490
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241815%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g241994242229%_
                                      __tmp248490))
                                   (let ((__tmp248491
                                          (let ((__tmp248492
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g241995242230%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp248492))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp248491
                                      'gxc#!accessor::t)))
                              (_%__kont247816247817%_
                               _%$%g241994242229%_
                               _%$%g241995242230%_)
                              (_%__kont247820247821%_)))))
                     (_%__match248237248238%_
                      (lambda (_%$%e241996242173%_
                               _%$%hd241997242176%_
                               _%$%tl241998242178%_
                               _%$%e241999242181%_
                               _%$%hd242000242184%_
                               _%$%tl242001242186%_
                               _%$%e242002242189%_
                               _%$%hd242003242192%_
                               _%$%tl242004242194%_
                               _%$%e242005242197%_
                               _%$%hd242006242200%_
                               _%$%tl242007242202%_
                               _%$%e242008242205%_
                               _%$%hd242009242208%_
                               _%$%tl242010242210%_
                               _%$%e242011242213%_
                               _%$%hd242012242216%_
                               _%$%tl242013242218%_
                               _%$%e242014242221%_
                               _%$%hd242015242224%_
                               _%$%tl242016242226%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl242010242210%_))
                            (_%__match248239248240%_
                             _%$%e241996242173%_
                             _%$%hd241997242176%_
                             _%$%tl241998242178%_
                             _%$%e241999242181%_
                             _%$%hd242000242184%_
                             _%$%tl242001242186%_
                             _%$%e242002242189%_
                             _%$%hd242003242192%_
                             _%$%tl242004242194%_
                             _%$%e242005242197%_
                             _%$%hd242006242200%_
                             _%$%tl242007242202%_
                             _%$%e242008242205%_
                             _%$%hd242009242208%_
                             _%$%tl242010242210%_
                             _%$%e242011242213%_
                             _%$%hd242012242216%_
                             _%$%tl242013242218%_
                             _%$%e242014242221%_
                             _%$%hd242015242224%_
                             _%$%tl242016242226%_)
                            (_%__match248293248294%_
                             _%$%e241996242173%_
                             _%$%hd241997242176%_
                             _%$%tl241998242178%_
                             _%$%e241999242181%_
                             _%$%hd242000242184%_
                             _%$%tl242001242186%_
                             _%$%e242002242189%_
                             _%$%hd242003242192%_
                             _%$%tl242004242194%_
                             _%$%e242005242197%_
                             _%$%hd242006242200%_
                             _%$%tl242007242202%_
                             _%$%e242008242205%_
                             _%$%hd242009242208%_
                             _%$%tl242010242210%_
                             _%$%e242011242213%_
                             _%$%hd242012242216%_
                             _%$%tl242013242218%_
                             _%$%e242014242221%_
                             _%$%hd242015242224%_
                             _%$%tl242016242226%_))))
                     (_%__match248183248184%_
                      (lambda (_%$%e241961242269%_
                               _%$%hd241962242272%_
                               _%$%tl241963242274%_
                               _%$%e241964242277%_
                               _%$%hd241965242280%_
                               _%$%tl241966242282%_
                               _%$%e241967242285%_
                               _%$%hd241968242288%_
                               _%$%tl241969242290%_
                               _%$%e241970242293%_
                               _%$%hd241971242296%_
                               _%$%tl241972242298%_
                               _%$%e241973242301%_
                               _%$%hd241974242304%_
                               _%$%tl241975242306%_
                               _%$%e241976242309%_
                               _%$%hd241977242312%_
                               _%$%tl241978242314%_
                               _%$%e241979242317%_
                               _%$%hd241980242320%_
                               _%$%tl241981242322%_
                               _%$%e241982242325%_
                               _%$%hd241983242328%_
                               _%$%tl241984242330%_
                               _%$%e241985242333%_
                               _%$%hd241986242336%_
                               _%$%tl241987242338%_
                               _%$%e241988242341%_
                               _%$%hd241989242344%_
                               _%$%tl241990242346%_
                               _%$%e241991242349%_
                               _%$%hd241992242352%_
                               _%$%tl241993242354%_)
                        (let ((_%$%g241957242357%_ _%$%hd241992242352%_)
                              (_%$%g241958242358%_ _%$%hd241989242344%_)
                              (_%$%g241959242359%_ _%$%hd241980242320%_)
                              (_%$%g241960242360%_ _%$%hd241971242296%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g241960242360%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g241960242360%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp248493
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241815%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g241959242359%_
                                      __tmp248493)))
                              (_%__kont247814247815%_
                               _%$%g241957242357%_
                               _%$%g241958242358%_
                               _%$%g241959242359%_
                               _%$%g241960242360%_)
                              (_%__kont247820247821%_)))))
                     (_%__match248175248176%_
                      (lambda (_%$%e241961242269%_
                               _%$%hd241962242272%_
                               _%$%tl241963242274%_
                               _%$%e241964242277%_
                               _%$%hd241965242280%_
                               _%$%tl241966242282%_
                               _%$%e241967242285%_
                               _%$%hd241968242288%_
                               _%$%tl241969242290%_
                               _%$%e241970242293%_
                               _%$%hd241971242296%_
                               _%$%tl241972242298%_
                               _%$%e241973242301%_
                               _%$%hd241974242304%_
                               _%$%tl241975242306%_
                               _%$%e241976242309%_
                               _%$%hd241977242312%_
                               _%$%tl241978242314%_
                               _%$%e241979242317%_
                               _%$%hd241980242320%_
                               _%$%tl241981242322%_
                               _%$%e241982242325%_
                               _%$%hd241983242328%_
                               _%$%tl241984242330%_
                               _%$%e241985242333%_
                               _%$%hd241986242336%_
                               _%$%tl241987242338%_
                               _%$%e241988242341%_
                               _%$%hd241989242344%_
                               _%$%tl241990242346%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl241984242330%_))
                            (let ((_%$%e241991242349%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl241984242330%_))))
                              (let ((_%$%tl241993242354%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e241991242349%_)))
                                    (_%$%hd241992242352%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e241991242349%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl241993242354%_))
                                    (_%__match248183248184%_
                                     _%$%e241961242269%_
                                     _%$%hd241962242272%_
                                     _%$%tl241963242274%_
                                     _%$%e241964242277%_
                                     _%$%hd241965242280%_
                                     _%$%tl241966242282%_
                                     _%$%e241967242285%_
                                     _%$%hd241968242288%_
                                     _%$%tl241969242290%_
                                     _%$%e241970242293%_
                                     _%$%hd241971242296%_
                                     _%$%tl241972242298%_
                                     _%$%e241973242301%_
                                     _%$%hd241974242304%_
                                     _%$%tl241975242306%_
                                     _%$%e241976242309%_
                                     _%$%hd241977242312%_
                                     _%$%tl241978242314%_
                                     _%$%e241979242317%_
                                     _%$%hd241980242320%_
                                     _%$%tl241981242322%_
                                     _%$%e241982242325%_
                                     _%$%hd241983242328%_
                                     _%$%tl241984242330%_
                                     _%$%e241985242333%_
                                     _%$%hd241986242336%_
                                     _%$%tl241987242338%_
                                     _%$%e241988242341%_
                                     _%$%hd241989242344%_
                                     _%$%tl241990242346%_
                                     _%$%e241991242349%_
                                     _%$%hd241992242352%_
                                     _%$%tl241993242354%_)
                                    (_%__kont247820247821%_))))
                            (_%__match248299248300%_
                             _%$%e241961242269%_
                             _%$%hd241962242272%_
                             _%$%tl241963242274%_
                             _%$%e241964242277%_
                             _%$%hd241965242280%_
                             _%$%tl241966242282%_
                             _%$%e241967242285%_
                             _%$%hd241968242288%_
                             _%$%tl241969242290%_
                             _%$%e241970242293%_
                             _%$%hd241971242296%_
                             _%$%tl241972242298%_
                             _%$%e241973242301%_
                             _%$%hd241974242304%_
                             _%$%tl241975242306%_
                             _%$%e241976242309%_
                             _%$%hd241977242312%_
                             _%$%tl241978242314%_
                             _%$%e241979242317%_
                             _%$%hd241980242320%_
                             _%$%tl241981242322%_
                             _%$%e241982242325%_
                             _%$%hd241983242328%_
                             _%$%tl241984242330%_))))
                     (_%__match248097248098%_
                      (lambda (_%$%e241927242403%_
                               _%$%hd241928242406%_
                               _%$%tl241929242408%_
                               _%$%e241930242411%_
                               _%$%hd241931242414%_
                               _%$%tl241932242416%_
                               _%$%e241933242419%_
                               _%$%hd241934242422%_
                               _%$%tl241935242424%_
                               _%$%e241936242427%_
                               _%$%hd241937242430%_
                               _%$%tl241938242432%_
                               _%$%e241939242435%_
                               _%$%hd241940242438%_
                               _%$%tl241941242440%_
                               _%$%e241942242443%_
                               _%$%hd241943242446%_
                               _%$%tl241944242448%_
                               _%$%e241945242451%_
                               _%$%hd241946242454%_
                               _%$%tl241947242456%_
                               _%$%e241948242459%_
                               _%$%hd241949242462%_
                               _%$%tl241950242464%_
                               _%$%e241951242467%_
                               _%$%hd241952242470%_
                               _%$%tl241953242472%_
                               _%$%e241954242475%_
                               _%$%hd241955242478%_
                               _%$%tl241956242480%_)
                        (let ((_%$%g241924242483%_ _%$%hd241955242478%_)
                              (_%$%g241925242484%_ _%$%hd241946242454%_)
                              (_%$%g241926242485%_ _%$%hd241937242430%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g241926242485%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g241926242485%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp248494
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241815%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g241925242484%_
                                      __tmp248494)))
                              (_%__kont247812247813%_
                               _%$%g241924242483%_
                               _%$%g241925242484%_
                               _%$%g241926242485%_)
                              (_%__match248301248302%_
                               _%$%e241927242403%_
                               _%$%hd241928242406%_
                               _%$%tl241929242408%_
                               _%$%e241930242411%_
                               _%$%hd241931242414%_
                               _%$%tl241932242416%_
                               _%$%e241933242419%_
                               _%$%hd241934242422%_
                               _%$%tl241935242424%_
                               _%$%e241936242427%_
                               _%$%hd241937242430%_
                               _%$%tl241938242432%_
                               _%$%e241939242435%_
                               _%$%hd241940242438%_
                               _%$%tl241941242440%_
                               _%$%e241942242443%_
                               _%$%hd241943242446%_
                               _%$%tl241944242448%_
                               _%$%e241945242451%_
                               _%$%hd241946242454%_
                               _%$%tl241947242456%_
                               _%$%e241948242459%_
                               _%$%hd241949242462%_
                               _%$%tl241950242464%_)))))
                     (_%__match248095248096%_
                      (lambda (_%$%e241927242403%_
                               _%$%hd241928242406%_
                               _%$%tl241929242408%_
                               _%$%e241930242411%_
                               _%$%hd241931242414%_
                               _%$%tl241932242416%_
                               _%$%e241933242419%_
                               _%$%hd241934242422%_
                               _%$%tl241935242424%_
                               _%$%e241936242427%_
                               _%$%hd241937242430%_
                               _%$%tl241938242432%_
                               _%$%e241939242435%_
                               _%$%hd241940242438%_
                               _%$%tl241941242440%_
                               _%$%e241942242443%_
                               _%$%hd241943242446%_
                               _%$%tl241944242448%_
                               _%$%e241945242451%_
                               _%$%hd241946242454%_
                               _%$%tl241947242456%_
                               _%$%e241948242459%_
                               _%$%hd241949242462%_
                               _%$%tl241950242464%_
                               _%$%e241951242467%_
                               _%$%hd241952242470%_
                               _%$%tl241953242472%_
                               _%$%e241954242475%_
                               _%$%hd241955242478%_
                               _%$%tl241956242480%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl241950242464%_))
                            (_%__match248097248098%_
                             _%$%e241927242403%_
                             _%$%hd241928242406%_
                             _%$%tl241929242408%_
                             _%$%e241930242411%_
                             _%$%hd241931242414%_
                             _%$%tl241932242416%_
                             _%$%e241933242419%_
                             _%$%hd241934242422%_
                             _%$%tl241935242424%_
                             _%$%e241936242427%_
                             _%$%hd241937242430%_
                             _%$%tl241938242432%_
                             _%$%e241939242435%_
                             _%$%hd241940242438%_
                             _%$%tl241941242440%_
                             _%$%e241942242443%_
                             _%$%hd241943242446%_
                             _%$%tl241944242448%_
                             _%$%e241945242451%_
                             _%$%hd241946242454%_
                             _%$%tl241947242456%_
                             _%$%e241948242459%_
                             _%$%hd241949242462%_
                             _%$%tl241950242464%_
                             _%$%e241951242467%_
                             _%$%hd241952242470%_
                             _%$%tl241953242472%_
                             _%$%e241954242475%_
                             _%$%hd241955242478%_
                             _%$%tl241956242480%_)
                            (_%__match248175248176%_
                             _%$%e241927242403%_
                             _%$%hd241928242406%_
                             _%$%tl241929242408%_
                             _%$%e241930242411%_
                             _%$%hd241931242414%_
                             _%$%tl241932242416%_
                             _%$%e241933242419%_
                             _%$%hd241934242422%_
                             _%$%tl241935242424%_
                             _%$%e241936242427%_
                             _%$%hd241937242430%_
                             _%$%tl241938242432%_
                             _%$%e241939242435%_
                             _%$%hd241940242438%_
                             _%$%tl241941242440%_
                             _%$%e241942242443%_
                             _%$%hd241943242446%_
                             _%$%tl241944242448%_
                             _%$%e241945242451%_
                             _%$%hd241946242454%_
                             _%$%tl241947242456%_
                             _%$%e241948242459%_
                             _%$%hd241949242462%_
                             _%$%tl241950242464%_
                             _%$%e241951242467%_
                             _%$%hd241952242470%_
                             _%$%tl241953242472%_
                             _%$%e241954242475%_
                             _%$%hd241955242478%_
                             _%$%tl241956242480%_))))
                     (_%__match248085248086%_
                      (lambda (_%$%e241927242403%_
                               _%$%hd241928242406%_
                               _%$%tl241929242408%_
                               _%$%e241930242411%_
                               _%$%hd241931242414%_
                               _%$%tl241932242416%_
                               _%$%e241933242419%_
                               _%$%hd241934242422%_
                               _%$%tl241935242424%_
                               _%$%e241936242427%_
                               _%$%hd241937242430%_
                               _%$%tl241938242432%_
                               _%$%e241939242435%_
                               _%$%hd241940242438%_
                               _%$%tl241941242440%_
                               _%$%e241942242443%_
                               _%$%hd241943242446%_
                               _%$%tl241944242448%_
                               _%$%e241945242451%_
                               _%$%hd241946242454%_
                               _%$%tl241947242456%_
                               _%$%e241948242459%_
                               _%$%hd241949242462%_
                               _%$%tl241950242464%_
                               _%$%e241951242467%_
                               _%$%hd241952242470%_
                               _%$%tl241953242472%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%$%hd241952242470%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl241953242472%_))
                                (let ((_%$%e241954242475%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl241953242472%_))))
                                  (let ((_%$%tl241956242480%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e241954242475%_)))
                                        (_%$%hd241955242478%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e241954242475%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl241956242480%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl241950242464%_))
                                            (_%__match248097248098%_
                                             _%$%e241927242403%_
                                             _%$%hd241928242406%_
                                             _%$%tl241929242408%_
                                             _%$%e241930242411%_
                                             _%$%hd241931242414%_
                                             _%$%tl241932242416%_
                                             _%$%e241933242419%_
                                             _%$%hd241934242422%_
                                             _%$%tl241935242424%_
                                             _%$%e241936242427%_
                                             _%$%hd241937242430%_
                                             _%$%tl241938242432%_
                                             _%$%e241939242435%_
                                             _%$%hd241940242438%_
                                             _%$%tl241941242440%_
                                             _%$%e241942242443%_
                                             _%$%hd241943242446%_
                                             _%$%tl241944242448%_
                                             _%$%e241945242451%_
                                             _%$%hd241946242454%_
                                             _%$%tl241947242456%_
                                             _%$%e241948242459%_
                                             _%$%hd241949242462%_
                                             _%$%tl241950242464%_
                                             _%$%e241951242467%_
                                             _%$%hd241952242470%_
                                             _%$%tl241953242472%_
                                             _%$%e241954242475%_
                                             _%$%hd241955242478%_
                                             _%$%tl241956242480%_)
                                            (_%__match248175248176%_
                                             _%$%e241927242403%_
                                             _%$%hd241928242406%_
                                             _%$%tl241929242408%_
                                             _%$%e241930242411%_
                                             _%$%hd241931242414%_
                                             _%$%tl241932242416%_
                                             _%$%e241933242419%_
                                             _%$%hd241934242422%_
                                             _%$%tl241935242424%_
                                             _%$%e241936242427%_
                                             _%$%hd241937242430%_
                                             _%$%tl241938242432%_
                                             _%$%e241939242435%_
                                             _%$%hd241940242438%_
                                             _%$%tl241941242440%_
                                             _%$%e241942242443%_
                                             _%$%hd241943242446%_
                                             _%$%tl241944242448%_
                                             _%$%e241945242451%_
                                             _%$%hd241946242454%_
                                             _%$%tl241947242456%_
                                             _%$%e241948242459%_
                                             _%$%hd241949242462%_
                                             _%$%tl241950242464%_
                                             _%$%e241951242467%_
                                             _%$%hd241952242470%_
                                             _%$%tl241953242472%_
                                             _%$%e241954242475%_
                                             _%$%hd241955242478%_
                                             _%$%tl241956242480%_))
                                        (_%__match248299248300%_
                                         _%$%e241927242403%_
                                         _%$%hd241928242406%_
                                         _%$%tl241929242408%_
                                         _%$%e241930242411%_
                                         _%$%hd241931242414%_
                                         _%$%tl241932242416%_
                                         _%$%e241933242419%_
                                         _%$%hd241934242422%_
                                         _%$%tl241935242424%_
                                         _%$%e241936242427%_
                                         _%$%hd241937242430%_
                                         _%$%tl241938242432%_
                                         _%$%e241939242435%_
                                         _%$%hd241940242438%_
                                         _%$%tl241941242440%_
                                         _%$%e241942242443%_
                                         _%$%hd241943242446%_
                                         _%$%tl241944242448%_
                                         _%$%e241945242451%_
                                         _%$%hd241946242454%_
                                         _%$%tl241947242456%_
                                         _%$%e241948242459%_
                                         _%$%hd241949242462%_
                                         _%$%tl241950242464%_))))
                                (_%__match248299248300%_
                                 _%$%e241927242403%_
                                 _%$%hd241928242406%_
                                 _%$%tl241929242408%_
                                 _%$%e241930242411%_
                                 _%$%hd241931242414%_
                                 _%$%tl241932242416%_
                                 _%$%e241933242419%_
                                 _%$%hd241934242422%_
                                 _%$%tl241935242424%_
                                 _%$%e241936242427%_
                                 _%$%hd241937242430%_
                                 _%$%tl241938242432%_
                                 _%$%e241939242435%_
                                 _%$%hd241940242438%_
                                 _%$%tl241941242440%_
                                 _%$%e241942242443%_
                                 _%$%hd241943242446%_
                                 _%$%tl241944242448%_
                                 _%$%e241945242451%_
                                 _%$%hd241946242454%_
                                 _%$%tl241947242456%_
                                 _%$%e241948242459%_
                                 _%$%hd241949242462%_
                                 _%$%tl241950242464%_))
                            (_%__match248299248300%_
                             _%$%e241927242403%_
                             _%$%hd241928242406%_
                             _%$%tl241929242408%_
                             _%$%e241930242411%_
                             _%$%hd241931242414%_
                             _%$%tl241932242416%_
                             _%$%e241933242419%_
                             _%$%hd241934242422%_
                             _%$%tl241935242424%_
                             _%$%e241936242427%_
                             _%$%hd241937242430%_
                             _%$%tl241938242432%_
                             _%$%e241939242435%_
                             _%$%hd241940242438%_
                             _%$%tl241941242440%_
                             _%$%e241942242443%_
                             _%$%hd241943242446%_
                             _%$%tl241944242448%_
                             _%$%e241945242451%_
                             _%$%hd241946242454%_
                             _%$%tl241947242456%_
                             _%$%e241948242459%_
                             _%$%hd241949242462%_
                             _%$%tl241950242464%_))))
                     (_%__match248017248018%_
                      (lambda (_%$%e241876242524%_
                               _%$%hd241877242527%_
                               _%$%tl241878242529%_
                               _%$%e241879242532%_
                               _%$%hd241880242535%_
                               _%$%tl241881242537%_
                               _%$%e241882242540%_
                               _%$%hd241883242543%_
                               _%$%tl241884242545%_
                               _%$%e241885242548%_
                               _%$%hd241886242551%_
                               _%$%tl241887242553%_
                               _%$%e241888242556%_
                               _%$%hd241889242559%_
                               _%$%tl241890242561%_
                               _%$%e241891242564%_
                               _%$%hd241892242567%_
                               _%$%tl241893242569%_
                               _%$%e241894242572%_
                               _%$%hd241895242575%_
                               _%$%tl241896242577%_
                               _%$%e241897242580%_
                               _%$%hd241898242583%_
                               _%$%tl241899242585%_
                               _%$%e241900242588%_
                               _%$%hd241901242591%_
                               _%$%tl241902242593%_
                               _%$%e241903242596%_
                               _%$%hd241904242599%_
                               _%$%tl241905242601%_
                               _%$%e241906242604%_
                               _%$%hd241907242607%_
                               _%$%tl241908242609%_
                               _%$%e241909242612%_
                               _%$%hd241910242615%_
                               _%$%tl241911242617%_
                               _%$%e241912242620%_
                               _%$%hd241913242623%_
                               _%$%tl241914242625%_
                               _%__splice247810247811%_
                               _%$%target241915242628%_
                               _%$%tl241917242630%_)
                        (letrec ((_%$%loop241918242633%_
                                  (lambda (_%$%hd241916242636%_
                                           _%$%args241922242638%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd241916242636%_))
                                        (let ((_%$%e241919242640%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd241916242636%_))))
                                          (let ((_%$%lp-tl241921242645%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e241919242640%_)))
                                                (_%$%lp-hd241920242643%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e241919242640%_))))
                                            (_%$%loop241918242633%_
                                             _%$%lp-tl241921242645%_
                                             (cons _%$%lp-hd241920242643%_
                                                   _%$%args241922242638%_))))
                                        (let ((_%$%args241923242648%_
                                               (reverse _%$%args241922242638%_)))
                                          (let ((_%$%g241871242650%_
                                                 _%$%args241923242648%_)
                                                (_%$%g241872242651%_
                                                 _%$%hd241913242623%_)
                                                (_%$%g241873242652%_
                                                 _%$%hd241904242599%_)
                                                (_%$%g241874242653%_
                                                 _%$%hd241895242575%_)
                                                (_%$%g241875242654%_
                                                 _%$%hd241886242551%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g241875242654%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g241874242653%_
                                                        'call-method))
                                                     (let ((__tmp248495
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self241815%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g241873242652%_
                                                        __tmp248495)))
                                                (_%__kont247808247809%_
                                                 _%$%g241871242650%_
                                                 _%$%g241872242651%_
                                                 _%$%g241873242652%_
                                                 _%$%g241874242653%_
                                                 _%$%g241875242654%_)
                                                (_%__kont247820247821%_))))))))
                          (_%$%loop241918242633%_
                           _%$%target241915242628%_
                           '()))))
                     (_%__match247975247976%_
                      (lambda (_%$%e241876242524%_
                               _%$%hd241877242527%_
                               _%$%tl241878242529%_
                               _%$%e241879242532%_
                               _%$%hd241880242535%_
                               _%$%tl241881242537%_
                               _%$%e241882242540%_
                               _%$%hd241883242543%_
                               _%$%tl241884242545%_
                               _%$%e241885242548%_
                               _%$%hd241886242551%_
                               _%$%tl241887242553%_
                               _%$%e241888242556%_
                               _%$%hd241889242559%_
                               _%$%tl241890242561%_
                               _%$%e241891242564%_
                               _%$%hd241892242567%_
                               _%$%tl241893242569%_
                               _%$%e241894242572%_
                               _%$%hd241895242575%_
                               _%$%tl241896242577%_
                               _%$%e241897242580%_
                               _%$%hd241898242583%_
                               _%$%tl241899242585%_
                               _%$%e241900242588%_
                               _%$%hd241901242591%_
                               _%$%tl241902242593%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%$%hd241901242591%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl241902242593%_))
                                (let ((_%$%e241903242596%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl241902242593%_))))
                                  (let ((_%$%tl241905242601%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e241903242596%_)))
                                        (_%$%hd241904242599%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e241903242596%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl241905242601%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl241899242585%_))
                                            (let ((_%$%e241906242604%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl241899242585%_))))
                                              (let ((_%$%tl241908242609%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e241906242604%_)))
                                                    (_%$%hd241907242607%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e241906242604%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd241907242607%_))
                                                    (let ((_%$%e241909242612%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd241907242607%_))))
                                                      (let ((_%$%tl241911242617%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e241909242612%_)))
                    (_%$%hd241910242615%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e241909242612%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd241910242615%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%$%hd241910242615%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl241911242617%_))
                            (let ((_%$%e241912242620%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl241911242617%_))))
                              (let ((_%$%tl241914242625%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e241912242620%_)))
                                    (_%$%hd241913242623%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e241912242620%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl241914242625%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl241908242609%_))
                                        (let ((_%__splice247810247811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl241908242609%_
                                                  '0))))
                                          (let ((_%$%tl241917242630%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice247810247811%_
                                                    '1)))
                                                (_%$%target241915242628%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice247810247811%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl241917242630%_))
                                                (_%__match248017248018%_
                                                 _%$%e241876242524%_
                                                 _%$%hd241877242527%_
                                                 _%$%tl241878242529%_
                                                 _%$%e241879242532%_
                                                 _%$%hd241880242535%_
                                                 _%$%tl241881242537%_
                                                 _%$%e241882242540%_
                                                 _%$%hd241883242543%_
                                                 _%$%tl241884242545%_
                                                 _%$%e241885242548%_
                                                 _%$%hd241886242551%_
                                                 _%$%tl241887242553%_
                                                 _%$%e241888242556%_
                                                 _%$%hd241889242559%_
                                                 _%$%tl241890242561%_
                                                 _%$%e241891242564%_
                                                 _%$%hd241892242567%_
                                                 _%$%tl241893242569%_
                                                 _%$%e241894242572%_
                                                 _%$%hd241895242575%_
                                                 _%$%tl241896242577%_
                                                 _%$%e241897242580%_
                                                 _%$%hd241898242583%_
                                                 _%$%tl241899242585%_
                                                 _%$%e241900242588%_
                                                 _%$%hd241901242591%_
                                                 _%$%tl241902242593%_
                                                 _%$%e241903242596%_
                                                 _%$%hd241904242599%_
                                                 _%$%tl241905242601%_
                                                 _%$%e241906242604%_
                                                 _%$%hd241907242607%_
                                                 _%$%tl241908242609%_
                                                 _%$%e241909242612%_
                                                 _%$%hd241910242615%_
                                                 _%$%tl241911242617%_
                                                 _%$%e241912242620%_
                                                 _%$%hd241913242623%_
                                                 _%$%tl241914242625%_
                                                 _%__splice247810247811%_
                                                 _%$%target241915242628%_
                                                 _%$%tl241917242630%_)
                                                (_%__kont247820247821%_))))
                                        (_%__kont247820247821%_))
                                    (_%__kont247820247821%_))))
                            (_%__kont247820247821%_))
                        (_%__kont247820247821%_))
                    (_%__kont247820247821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont247820247821%_))))
                                            (_%__match248299248300%_
                                             _%$%e241876242524%_
                                             _%$%hd241877242527%_
                                             _%$%tl241878242529%_
                                             _%$%e241879242532%_
                                             _%$%hd241880242535%_
                                             _%$%tl241881242537%_
                                             _%$%e241882242540%_
                                             _%$%hd241883242543%_
                                             _%$%tl241884242545%_
                                             _%$%e241885242548%_
                                             _%$%hd241886242551%_
                                             _%$%tl241887242553%_
                                             _%$%e241888242556%_
                                             _%$%hd241889242559%_
                                             _%$%tl241890242561%_
                                             _%$%e241891242564%_
                                             _%$%hd241892242567%_
                                             _%$%tl241893242569%_
                                             _%$%e241894242572%_
                                             _%$%hd241895242575%_
                                             _%$%tl241896242577%_
                                             _%$%e241897242580%_
                                             _%$%hd241898242583%_
                                             _%$%tl241899242585%_))
                                        (_%__match248299248300%_
                                         _%$%e241876242524%_
                                         _%$%hd241877242527%_
                                         _%$%tl241878242529%_
                                         _%$%e241879242532%_
                                         _%$%hd241880242535%_
                                         _%$%tl241881242537%_
                                         _%$%e241882242540%_
                                         _%$%hd241883242543%_
                                         _%$%tl241884242545%_
                                         _%$%e241885242548%_
                                         _%$%hd241886242551%_
                                         _%$%tl241887242553%_
                                         _%$%e241888242556%_
                                         _%$%hd241889242559%_
                                         _%$%tl241890242561%_
                                         _%$%e241891242564%_
                                         _%$%hd241892242567%_
                                         _%$%tl241893242569%_
                                         _%$%e241894242572%_
                                         _%$%hd241895242575%_
                                         _%$%tl241896242577%_
                                         _%$%e241897242580%_
                                         _%$%hd241898242583%_
                                         _%$%tl241899242585%_))))
                                (_%__match248299248300%_
                                 _%$%e241876242524%_
                                 _%$%hd241877242527%_
                                 _%$%tl241878242529%_
                                 _%$%e241879242532%_
                                 _%$%hd241880242535%_
                                 _%$%tl241881242537%_
                                 _%$%e241882242540%_
                                 _%$%hd241883242543%_
                                 _%$%tl241884242545%_
                                 _%$%e241885242548%_
                                 _%$%hd241886242551%_
                                 _%$%tl241887242553%_
                                 _%$%e241888242556%_
                                 _%$%hd241889242559%_
                                 _%$%tl241890242561%_
                                 _%$%e241891242564%_
                                 _%$%hd241892242567%_
                                 _%$%tl241893242569%_
                                 _%$%e241894242572%_
                                 _%$%hd241895242575%_
                                 _%$%tl241896242577%_
                                 _%$%e241897242580%_
                                 _%$%hd241898242583%_
                                 _%$%tl241899242585%_))
                            (_%__match248085248086%_
                             _%$%e241876242524%_
                             _%$%hd241877242527%_
                             _%$%tl241878242529%_
                             _%$%e241879242532%_
                             _%$%hd241880242535%_
                             _%$%tl241881242537%_
                             _%$%e241882242540%_
                             _%$%hd241883242543%_
                             _%$%tl241884242545%_
                             _%$%e241885242548%_
                             _%$%hd241886242551%_
                             _%$%tl241887242553%_
                             _%$%e241888242556%_
                             _%$%hd241889242559%_
                             _%$%tl241890242561%_
                             _%$%e241891242564%_
                             _%$%hd241892242567%_
                             _%$%tl241893242569%_
                             _%$%e241894242572%_
                             _%$%hd241895242575%_
                             _%$%tl241896242577%_
                             _%$%e241897242580%_
                             _%$%hd241898242583%_
                             _%$%tl241899242585%_
                             _%$%e241900242588%_
                             _%$%hd241901242591%_
                             _%$%tl241902242593%_))))
                     (_%__match247907247908%_
                      (lambda (_%$%e241832242714%_
                               _%$%hd241833242717%_
                               _%$%tl241834242719%_
                               _%$%e241835242722%_
                               _%$%hd241836242725%_
                               _%$%tl241837242727%_
                               _%$%e241838242730%_
                               _%$%hd241839242733%_
                               _%$%tl241840242735%_
                               _%$%e241841242738%_
                               _%$%hd241842242741%_
                               _%$%tl241843242743%_
                               _%$%e241844242746%_
                               _%$%hd241845242749%_
                               _%$%tl241846242751%_
                               _%$%e241847242754%_
                               _%$%hd241848242757%_
                               _%$%tl241849242759%_
                               _%$%e241850242762%_
                               _%$%hd241851242765%_
                               _%$%tl241852242767%_
                               _%$%e241853242770%_
                               _%$%hd241854242773%_
                               _%$%tl241855242775%_
                               _%$%e241856242778%_
                               _%$%hd241857242781%_
                               _%$%tl241858242783%_
                               _%$%e241859242786%_
                               _%$%hd241860242789%_
                               _%$%tl241861242791%_
                               _%__splice247806247807%_
                               _%$%target241862242794%_
                               _%$%tl241864242796%_)
                        (letrec ((_%$%loop241865242799%_
                                  (lambda (_%$%hd241863242802%_
                                           _%$%args241869242804%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd241863242802%_))
                                        (let ((_%$%e241866242806%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd241863242802%_))))
                                          (let ((_%$%lp-tl241868242811%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e241866242806%_)))
                                                (_%$%lp-hd241867242809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e241866242806%_))))
                                            (_%$%loop241865242799%_
                                             _%$%lp-tl241868242811%_
                                             (cons _%$%lp-hd241867242809%_
                                                   _%$%args241869242804%_))))
                                        (let ((_%$%args241870242814%_
                                               (reverse _%$%args241869242804%_)))
                                          (let ((_%$%g241828242816%_
                                                 _%$%args241870242814%_)
                                                (_%$%g241829242817%_
                                                 _%$%hd241860242789%_)
                                                (_%$%g241830242818%_
                                                 _%$%hd241851242765%_)
                                                (_%$%g241831242819%_
                                                 _%$%hd241842242741%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g241831242819%_
                                                        'call-method))
                                                     (let ((__tmp248496
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self241815%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g241830242818%_
                                                        __tmp248496)))
                                                (_%__kont247804247805%_
                                                 _%$%g241828242816%_
                                                 _%$%g241829242817%_
                                                 _%$%g241830242818%_
                                                 _%$%g241831242819%_)
                                                (_%__match248095248096%_
                                                 _%$%e241832242714%_
                                                 _%$%hd241833242717%_
                                                 _%$%tl241834242719%_
                                                 _%$%e241835242722%_
                                                 _%$%hd241836242725%_
                                                 _%$%tl241837242727%_
                                                 _%$%e241838242730%_
                                                 _%$%hd241839242733%_
                                                 _%$%tl241840242735%_
                                                 _%$%e241841242738%_
                                                 _%$%hd241842242741%_
                                                 _%$%tl241843242743%_
                                                 _%$%e241844242746%_
                                                 _%$%hd241845242749%_
                                                 _%$%tl241846242751%_
                                                 _%$%e241847242754%_
                                                 _%$%hd241848242757%_
                                                 _%$%tl241849242759%_
                                                 _%$%e241850242762%_
                                                 _%$%hd241851242765%_
                                                 _%$%tl241852242767%_
                                                 _%$%e241853242770%_
                                                 _%$%hd241854242773%_
                                                 _%$%tl241855242775%_
                                                 _%$%e241856242778%_
                                                 _%$%hd241857242781%_
                                                 _%$%tl241858242783%_
                                                 _%$%e241859242786%_
                                                 _%$%hd241860242789%_
                                                 _%$%tl241861242791%_))))))))
                          (_%$%loop241865242799%_
                           _%$%target241862242794%_
                           '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx247802247803%_))
                    (let ((_%$%e241832242714%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx247802247803%_))))
                      (let ((_%$%tl241834242719%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e241832242714%_)))
                            (_%$%hd241833242717%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e241832242714%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl241834242719%_))
                            (let ((_%$%e241835242722%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl241834242719%_))))
                              (let ((_%$%tl241837242727%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e241835242722%_)))
                                    (_%$%hd241836242725%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e241835242722%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd241836242725%_))
                                    (let ((_%$%e241838242730%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd241836242725%_))))
                                      (let ((_%$%tl241840242735%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e241838242730%_)))
                                            (_%$%hd241839242733%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e241838242730%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd241839242733%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd241839242733%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl241840242735%_))
                                                    (let ((_%$%e241841242738%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl241840242735%_))))
                                                      (let ((_%$%tl241843242743%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e241841242738%_)))
                    (_%$%hd241842242741%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e241841242738%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl241843242743%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl241837242727%_))
                        (let ((_%$%e241844242746%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl241837242727%_))))
                          (let ((_%$%tl241846242751%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e241844242746%_)))
                                (_%$%hd241845242749%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e241844242746%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd241845242749%_))
                                (let ((_%$%e241847242754%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd241845242749%_))))
                                  (let ((_%$%tl241849242759%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e241847242754%_)))
                                        (_%$%hd241848242757%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e241847242754%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd241848242757%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%$%hd241848242757%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl241849242759%_))
                                                (let ((_%$%e241850242762%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl241849242759%_))))
                                                  (let ((_%$%tl241852242767%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e241850242762%_)))
                                                        (_%$%hd241851242765%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e241850242762%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl241852242767%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl241846242751%_))
                                                            (let ((_%$%e241853242770%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl241846242751%_))))
                      (let ((_%$%tl241855242775%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e241853242770%_)))
                            (_%$%hd241854242773%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e241853242770%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd241854242773%_))
                            (let ((_%$%e241856242778%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd241854242773%_))))
                              (let ((_%$%tl241858242783%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e241856242778%_)))
                                    (_%$%hd241857242781%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e241856242778%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd241857242781%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd241857242781%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl241858242783%_))
                                            (let ((_%$%e241859242786%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl241858242783%_))))
                                              (let ((_%$%tl241861242791%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e241859242786%_)))
                                                    (_%$%hd241860242789%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e241859242786%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl241861242791%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl241855242775%_))
                                                        (let ((_%__splice247806247807%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl241855242775%_
                          '0))))
                  (let ((_%$%tl241864242796%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice247806247807%_ '1)))
                        (_%$%target241862242794%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice247806247807%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl241864242796%_))
                        (_%__match247907247908%_
                         _%$%e241832242714%_
                         _%$%hd241833242717%_
                         _%$%tl241834242719%_
                         _%$%e241835242722%_
                         _%$%hd241836242725%_
                         _%$%tl241837242727%_
                         _%$%e241838242730%_
                         _%$%hd241839242733%_
                         _%$%tl241840242735%_
                         _%$%e241841242738%_
                         _%$%hd241842242741%_
                         _%$%tl241843242743%_
                         _%$%e241844242746%_
                         _%$%hd241845242749%_
                         _%$%tl241846242751%_
                         _%$%e241847242754%_
                         _%$%hd241848242757%_
                         _%$%tl241849242759%_
                         _%$%e241850242762%_
                         _%$%hd241851242765%_
                         _%$%tl241852242767%_
                         _%$%e241853242770%_
                         _%$%hd241854242773%_
                         _%$%tl241855242775%_
                         _%$%e241856242778%_
                         _%$%hd241857242781%_
                         _%$%tl241858242783%_
                         _%$%e241859242786%_
                         _%$%hd241860242789%_
                         _%$%tl241861242791%_
                         _%__splice247806247807%_
                         _%$%target241862242794%_
                         _%$%tl241864242796%_)
                        (_%__match248095248096%_
                         _%$%e241832242714%_
                         _%$%hd241833242717%_
                         _%$%tl241834242719%_
                         _%$%e241835242722%_
                         _%$%hd241836242725%_
                         _%$%tl241837242727%_
                         _%$%e241838242730%_
                         _%$%hd241839242733%_
                         _%$%tl241840242735%_
                         _%$%e241841242738%_
                         _%$%hd241842242741%_
                         _%$%tl241843242743%_
                         _%$%e241844242746%_
                         _%$%hd241845242749%_
                         _%$%tl241846242751%_
                         _%$%e241847242754%_
                         _%$%hd241848242757%_
                         _%$%tl241849242759%_
                         _%$%e241850242762%_
                         _%$%hd241851242765%_
                         _%$%tl241852242767%_
                         _%$%e241853242770%_
                         _%$%hd241854242773%_
                         _%$%tl241855242775%_
                         _%$%e241856242778%_
                         _%$%hd241857242781%_
                         _%$%tl241858242783%_
                         _%$%e241859242786%_
                         _%$%hd241860242789%_
                         _%$%tl241861242791%_))))
                (_%__match248095248096%_
                 _%$%e241832242714%_
                 _%$%hd241833242717%_
                 _%$%tl241834242719%_
                 _%$%e241835242722%_
                 _%$%hd241836242725%_
                 _%$%tl241837242727%_
                 _%$%e241838242730%_
                 _%$%hd241839242733%_
                 _%$%tl241840242735%_
                 _%$%e241841242738%_
                 _%$%hd241842242741%_
                 _%$%tl241843242743%_
                 _%$%e241844242746%_
                 _%$%hd241845242749%_
                 _%$%tl241846242751%_
                 _%$%e241847242754%_
                 _%$%hd241848242757%_
                 _%$%tl241849242759%_
                 _%$%e241850242762%_
                 _%$%hd241851242765%_
                 _%$%tl241852242767%_
                 _%$%e241853242770%_
                 _%$%hd241854242773%_
                 _%$%tl241855242775%_
                 _%$%e241856242778%_
                 _%$%hd241857242781%_
                 _%$%tl241858242783%_
                 _%$%e241859242786%_
                 _%$%hd241860242789%_
                 _%$%tl241861242791%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match248299248300%_
                                                     _%$%e241832242714%_
                                                     _%$%hd241833242717%_
                                                     _%$%tl241834242719%_
                                                     _%$%e241835242722%_
                                                     _%$%hd241836242725%_
                                                     _%$%tl241837242727%_
                                                     _%$%e241838242730%_
                                                     _%$%hd241839242733%_
                                                     _%$%tl241840242735%_
                                                     _%$%e241841242738%_
                                                     _%$%hd241842242741%_
                                                     _%$%tl241843242743%_
                                                     _%$%e241844242746%_
                                                     _%$%hd241845242749%_
                                                     _%$%tl241846242751%_
                                                     _%$%e241847242754%_
                                                     _%$%hd241848242757%_
                                                     _%$%tl241849242759%_
                                                     _%$%e241850242762%_
                                                     _%$%hd241851242765%_
                                                     _%$%tl241852242767%_
                                                     _%$%e241853242770%_
                                                     _%$%hd241854242773%_
                                                     _%$%tl241855242775%_))))
                                            (_%__match248299248300%_
                                             _%$%e241832242714%_
                                             _%$%hd241833242717%_
                                             _%$%tl241834242719%_
                                             _%$%e241835242722%_
                                             _%$%hd241836242725%_
                                             _%$%tl241837242727%_
                                             _%$%e241838242730%_
                                             _%$%hd241839242733%_
                                             _%$%tl241840242735%_
                                             _%$%e241841242738%_
                                             _%$%hd241842242741%_
                                             _%$%tl241843242743%_
                                             _%$%e241844242746%_
                                             _%$%hd241845242749%_
                                             _%$%tl241846242751%_
                                             _%$%e241847242754%_
                                             _%$%hd241848242757%_
                                             _%$%tl241849242759%_
                                             _%$%e241850242762%_
                                             _%$%hd241851242765%_
                                             _%$%tl241852242767%_
                                             _%$%e241853242770%_
                                             _%$%hd241854242773%_
                                             _%$%tl241855242775%_))
                                        (_%__match247975247976%_
                                         _%$%e241832242714%_
                                         _%$%hd241833242717%_
                                         _%$%tl241834242719%_
                                         _%$%e241835242722%_
                                         _%$%hd241836242725%_
                                         _%$%tl241837242727%_
                                         _%$%e241838242730%_
                                         _%$%hd241839242733%_
                                         _%$%tl241840242735%_
                                         _%$%e241841242738%_
                                         _%$%hd241842242741%_
                                         _%$%tl241843242743%_
                                         _%$%e241844242746%_
                                         _%$%hd241845242749%_
                                         _%$%tl241846242751%_
                                         _%$%e241847242754%_
                                         _%$%hd241848242757%_
                                         _%$%tl241849242759%_
                                         _%$%e241850242762%_
                                         _%$%hd241851242765%_
                                         _%$%tl241852242767%_
                                         _%$%e241853242770%_
                                         _%$%hd241854242773%_
                                         _%$%tl241855242775%_
                                         _%$%e241856242778%_
                                         _%$%hd241857242781%_
                                         _%$%tl241858242783%_))
                                    (_%__match248299248300%_
                                     _%$%e241832242714%_
                                     _%$%hd241833242717%_
                                     _%$%tl241834242719%_
                                     _%$%e241835242722%_
                                     _%$%hd241836242725%_
                                     _%$%tl241837242727%_
                                     _%$%e241838242730%_
                                     _%$%hd241839242733%_
                                     _%$%tl241840242735%_
                                     _%$%e241841242738%_
                                     _%$%hd241842242741%_
                                     _%$%tl241843242743%_
                                     _%$%e241844242746%_
                                     _%$%hd241845242749%_
                                     _%$%tl241846242751%_
                                     _%$%e241847242754%_
                                     _%$%hd241848242757%_
                                     _%$%tl241849242759%_
                                     _%$%e241850242762%_
                                     _%$%hd241851242765%_
                                     _%$%tl241852242767%_
                                     _%$%e241853242770%_
                                     _%$%hd241854242773%_
                                     _%$%tl241855242775%_))))
                            (_%__match248299248300%_
                             _%$%e241832242714%_
                             _%$%hd241833242717%_
                             _%$%tl241834242719%_
                             _%$%e241835242722%_
                             _%$%hd241836242725%_
                             _%$%tl241837242727%_
                             _%$%e241838242730%_
                             _%$%hd241839242733%_
                             _%$%tl241840242735%_
                             _%$%e241841242738%_
                             _%$%hd241842242741%_
                             _%$%tl241843242743%_
                             _%$%e241844242746%_
                             _%$%hd241845242749%_
                             _%$%tl241846242751%_
                             _%$%e241847242754%_
                             _%$%hd241848242757%_
                             _%$%tl241849242759%_
                             _%$%e241850242762%_
                             _%$%hd241851242765%_
                             _%$%tl241852242767%_
                             _%$%e241853242770%_
                             _%$%hd241854242773%_
                             _%$%tl241855242775%_))))
                    (_%__match248237248238%_
                     _%$%e241832242714%_
                     _%$%hd241833242717%_
                     _%$%tl241834242719%_
                     _%$%e241835242722%_
                     _%$%hd241836242725%_
                     _%$%tl241837242727%_
                     _%$%e241838242730%_
                     _%$%hd241839242733%_
                     _%$%tl241840242735%_
                     _%$%e241841242738%_
                     _%$%hd241842242741%_
                     _%$%tl241843242743%_
                     _%$%e241844242746%_
                     _%$%hd241845242749%_
                     _%$%tl241846242751%_
                     _%$%e241847242754%_
                     _%$%hd241848242757%_
                     _%$%tl241849242759%_
                     _%$%e241850242762%_
                     _%$%hd241851242765%_
                     _%$%tl241852242767%_))
                (_%__kont247820247821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont247820247821%_))
                                            (_%__kont247820247821%_))
                                        (_%__kont247820247821%_))))
                                (_%__kont247820247821%_))))
                        (_%__kont247820247821%_))
                    (_%__kont247820247821%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont247820247821%_))
                                                (_%__kont247820247821%_))
                                            (_%__kont247820247821%_))))
                                    (_%__kont247820247821%_))))
                            (_%__kont247820247821%_))))
                    (_%__kont247820247821%_))))))))))
