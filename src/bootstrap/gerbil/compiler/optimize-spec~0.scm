(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1789371540)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp250071 (list gxc#::identity::t))
            (__tmp250070 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp250071
         '()
         __tmp250070
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args248868%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args248868%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp250072
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
        (__make-atomic-promise __tmp250072)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx248860%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self248863%_
                (let ((__obj250063
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj250063))
               (__tmp250073
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self248863%_ _%stx248860%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp250073
           gxc#current-compile-method
           _%self248863%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp250075 (list gxc#::false::t))
            (__tmp250074 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp250075
         '()
         __tmp250074
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args248857%_
        (apply make-instance gxc#::extract-receiver::t _%$args248857%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp250076
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
        (__make-atomic-promise __tmp250076)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx248849%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self248852%_
                (let ((__obj250065
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj250065))
               (__tmp250077
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self248852%_ _%stx248849%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp250077
           gxc#current-compile-method
           _%self248852%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp250079 (list gxc#::void::t))
            (__tmp250078 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp250079
         '(receiver methods slots)
         __tmp250078
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args248846%_
        (apply make-instance gxc#::collect-object-refs::t _%$args248846%_)))
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
      (let ((__tmp250080
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
        (__make-atomic-promise __tmp250080)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords248815%_
               _%$%receiver248810248816%_
               _%$%methods248811248817%_
               _%$%slots248812248818%_
               _%stx248819%_)
        (let* ((_%receiver248822%_
                (if (eq? _%$%receiver248810248816%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver248810248816%_))
               (_%methods248824%_
                (if (eq? _%$%methods248811248817%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods248811248817%_))
               (_%slots248826%_
                (if (eq? _%$%slots248812248818%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots248812248818%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self248828%_
                  (let ((__obj250067
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
                       __obj250067
                       _%receiver248822%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250067
                       _%methods248824%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250067
                       _%slots248826%_
                       '3
                       '#f
                       '#f))
                    __obj250067))
                 (__tmp250081
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self248828%_ _%stx248819%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp250081
             gxc#current-compile-method
             _%self248828%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords248835%_ . _%args248836%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords248835%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords248835%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords248835%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords248835%_
                  'slots:
                  absent-value))
               _%args248836%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%$%args248813248842%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%$%args248813248842%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp250083 (list gxc#::basic-xform-expression::t))
            (__tmp250082 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp250083
         '(receiver klass methods slots)
         __tmp250082
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args248806%_
        (apply make-instance gxc#::subst-object-refs::t _%$args248806%_)))
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
      (let ((__tmp250084
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
        (__make-atomic-promise __tmp250084)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords248772%_
               _%$%receiver248766248773%_
               _%$%klass248767248774%_
               _%$%methods248768248775%_
               _%$%slots248769248776%_
               _%stx248777%_)
        (let* ((_%receiver248780%_
                (if (eq? _%$%receiver248766248773%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver248766248773%_))
               (_%klass248782%_
                (if (eq? _%$%klass248767248774%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%$%klass248767248774%_))
               (_%methods248784%_
                (if (eq? _%$%methods248768248775%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods248768248775%_))
               (_%slots248786%_
                (if (eq? _%$%slots248769248776%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots248769248776%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self248788%_
                  (let ((__obj250069
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
                       __obj250069
                       _%receiver248780%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250069
                       _%klass248782%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250069
                       _%methods248784%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250069
                       _%slots248786%_
                       '4
                       '#f
                       '#f))
                    __obj250069))
                 (__tmp250085
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self248788%_ _%stx248777%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp250085
             gxc#current-compile-method
             _%self248788%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords248795%_ . _%args248796%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords248795%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords248795%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords248795%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords248795%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords248795%_
                  'slots:
                  absent-value))
               _%args248796%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%$%args248770248802%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%$%args248770248802%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self245897%_ _%stx245898%_)
        (letrec ((_%generate-method-bind245900%_
                  (lambda (_%$klass248758%_
                           _%$method-table248759%_
                           _%id248760%_
                           _%$id248761%_)
                    (let ((_%$tmp248763%_
                           (let ((__tmp250086
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp250086))))
                      (cons (cons _%$id248761%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp248763%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table248759%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id248760%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp248763%_ '()))
                    (cons (cons '%#ref (cons _%$tmp248763%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id248760%_
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
                 (_%generate-slot-bind245901%_
                  (lambda (_%$klass248752%_ _%id248753%_ _%$id248754%_)
                    (let ((_%$tmp248756%_
                           (let ((__tmp250087
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp250087))))
                      (cons (cons _%$id248754%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp248756%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass248752%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id248753%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp248756%_ '()))
                        (cons (cons '%#ref (cons _%$tmp248756%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id248753%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl245902%_
                  (lambda (_%$klass248746%_
                           _%$method-table248747%_
                           _%methods-bind248748%_
                           _%slots-bind248749%_
                           _%specializer-impl248750%_)
                    (let ((__tmp250088
                           (cons '%#lambda
                                 (cons (cons _%$klass248746%_
                                             (cons _%$method-table248747%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (append _%methods-bind248748%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%slots-bind248749%_)
                 (cons _%specializer-impl248750%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp250088 _%stx245898%_))))
                 (_%generate-specializer-def245903%_
                  (lambda (_%id248742%_
                           _%specializer-id248743%_
                           _%specializer-impl248744%_)
                    (let ((__tmp250089
                           (cons '%#begin
                                 (cons _%stx245898%_
                                       (cons (let ((__tmp250090
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id248743%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl248744%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp250090
                                                _%stx245898%_))
                                             (cons (let ((__tmp250091
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id248742%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id248743%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp250091
                                                      _%stx245898%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp250089 _%stx245898%_)))))
          (let* ((_%__stx248957248958%_ _%stx245898%_)
                 (_%$%g245906245926%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx248957248958%_)))))
            (let ((_%__kont248959248960%_
                   (lambda (_%$%g245908245970%_ _%$%g245909245971%_)
                     (let ((_%method-calls245990%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs245991%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty245992%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?245994%_
                                 (lambda ()
                                   (if (let ((__tmp250092
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls245990%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp250092))
                                       (let ((__tmp250093
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs245991%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp250093))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%$%g245908245970%_))
                             (let* ((_%__stx248871248872%_ _%$%g245908245970%_)
                                    (_%$%g246378246396%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx248871248872%_)))))
                               (let ((_%__kont248873248874%_
                                      (lambda (_%$%g246380246432%_
                                               _%$%g246381246433%_
                                               _%$%g246382246434%_)
                                        (let ((_%receiver246454%_
                                               (let ((_%$e246451%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%g246380246432%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e246451%_
                                                     _%$e246451%_
                                                     _%$%g246382246434%_))))
                                          (for-each
                                           (lambda (_%$%g246455246457%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver246454%_
                                              _%method-calls245990%_
                                              _%slot-refs245991%_
                                              _%$%g246455246457%_))
                                           _%$%g246380246432%_)
                                          (if (_%no-specializer?245994%_)
                                              _%stx245898%_
                                              (let* ((_%specializer-id246466%_
                                                      (let* ((_%id246460%_
                                                              (let ((__tmp250094
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g245909245971%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp250094 '"::specialize")))
                     (_%specializer-id246463%_
                      (let ((__tmp250095
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx245898%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id246460%_ __tmp250095))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id246463%_))
                _%specializer-id246463%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass246468%_
                                                      (let ((__tmp250096
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp250096)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table246470%_
                                                      (let ((__tmp250097
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp250097)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods246472%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls245990%_)))
                                                     (_%$methods246476%_
                                                      (let ((__tmp250098
                                                             (lambda (_%id246474%_)
                                                               (let ((__tmp250099
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id246474%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp250099)))))
                (declare (not safe))
                (##map __tmp250098 _%methods246472%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_246485%_
                                                      (let ((__tmp250100
                                                             (lambda (_%$%g246477246480%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g246478246482%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls245990%_
                          _%$%g246477246480%_
                          _%$%g246478246482%_)))))
                (declare (not safe))
                (##for-each __tmp250100 _%methods246472%_ _%$methods246476%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind246495%_
                                                      (let ((__tmp250101
                                                             (lambda (_%$%g246487246490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g246488246492%_)
                       (_%generate-method-bind245900%_
                        _%$klass246468%_
                        _%$method-table246470%_
                        _%$%g246487246490%_
                        _%$%g246488246492%_))))
                (declare (not safe))
                (##map __tmp250101 _%methods246472%_ _%$methods246476%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots246497%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs245991%_)))
                                                     (_%$slots246501%_
                                                      (let ((__tmp250102
                                                             (lambda (_%id246499%_)
                                                               (let ((__tmp250103
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id246499%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp250103)))))
                (declare (not safe))
                (##map __tmp250102 _%slots246497%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_246510%_
                                                      (let ((__tmp250104
                                                             (lambda (_%$%g246502246505%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g246503246507%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs245991%_
                          _%$%g246502246505%_
                          _%$%g246503246507%_)))))
                (declare (not safe))
                (##for-each __tmp250104 _%slots246497%_ _%$slots246501%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind246519%_
                                                      (let ((__tmp250105
                                                             (lambda (_%$%g246511246514%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g246512246516%_)
                       (_%generate-slot-bind245901%_
                        _%$klass246468%_
                        _%$%g246511246514%_
                        _%$%g246512246516%_))))
                (declare (not safe))
                (##map __tmp250105 _%slots246497%_ _%$slots246501%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body246525%_
                                                      (map (lambda (_%$%g246520246522%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver246454%_
                                                              _%$klass246468%_
                                                              _%method-calls245990%_
                                                              _%slot-refs245991%_
                                                              _%$%g246520246522%_))
                                                           _%$%g246380246432%_))
                                                     (_%specializer-impl246527%_
                                                      (let ((__tmp250106
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%$%g246382246434%_ _%$%g246381246433%_)
                                 _%specializer-body246525%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp250106 _%stx245898%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl246529%_
                                                      (_%generate-specializer-impl245902%_
                                                       _%$klass246468%_
                                                       _%$method-table246470%_
                                                       _%methods-bind246495%_
                                                       _%slots-bind246519%_
                                                       _%specializer-impl246527%_)))
                                                (let ((__tmp250108
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g245909245971%_)))
                                                      (__tmp250107
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id246466%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp250108
                                                   '" => "
                                                   __tmp250107))
                                                (_%generate-specializer-def245903%_
                                                 _%$%g245909245971%_
                                                 _%specializer-id246466%_
                                                 _%specializer-impl246529%_))))))
                                     (_%__kont248875248876%_
                                      (lambda () _%stx245898%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx248871248872%_))
                                     (let ((_%$%e246383246408%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx248871248872%_))))
                                       (let ((_%$%tl246385246413%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e246383246408%_)))
                                             (_%$%hd246384246411%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e246383246408%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl246385246413%_))
                                             (let ((_%$%e246386246416%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl246385246413%_))))
                                               (let ((_%$%tl246388246421%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e246386246416%_)))
                                                     (_%$%hd246387246419%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e246386246416%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%hd246387246419%_))
                                                     (let ((_%$%e246389246424%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%hd246387246419%_))))
                                                       (let ((_%$%tl246391246429%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e246389246424%_)))
                     (_%$%hd246390246427%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e246389246424%_))))
                 (_%__kont248873248874%_
                  _%$%tl246388246421%_
                  _%$%tl246391246429%_
                  _%$%hd246390246427%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont248875248876%_))))
                                             (_%__kont248875248876%_))))
                                     (_%__kont248875248876%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%$%g245908245970%_))
                                 (let* ((_%$%g246536246555%_
                                         (lambda (_%$%g246537246552%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g246537246552%_))))
                                        (_%$%g246535246851%_
                                         (lambda (_%$%g246537246558%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%g246537246558%_))
                                               (let ((_%$%e246539246560%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g246537246558%_))))
                                                 (let ((_%$%hd246540246563%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e246539246560%_)))
                                                       (_%$%tl246541246565%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e246539246560%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%$%tl246541246565%_))
                                                       (let ((_g250109_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%$%tl246541246565%_ '0))))
                 (begin
                   (let ((_g250110_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g250109_)
                                (##values-length _g250109_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g250110_ 2)))
                         (error "Context expects 2 values" _g250110_)))
                   (let ((_%$%target246542246568%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g250109_ 0)))
                         (_%$%tl246544246570%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g250109_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl246544246570%_))
                         (letrec ((_%$%loop246545246573%_
                                   (lambda (_%$%hd246543246576%_
                                            _%$%clause246549246578%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd246543246576%_))
                                         (let ((_%$%e246546246580%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd246543246576%_))))
                                           (let ((_%$%lp-hd246547246583%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e246546246580%_)))
                                                 (_%$%lp-tl246548246585%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e246546246580%_))))
                                             (_%$%loop246545246573%_
                                              _%$%lp-tl246548246585%_
                                              (cons _%$%lp-hd246547246583%_
                                                    _%$%clause246549246578%_))))
                                         (let ((_%$%clause246550246588%_
                                                (reverse _%$%clause246549246578%_)))
                                           (for-each
                                            (lambda (_%clause246604%_)
                                              (let* ((_%__stx248897248898%_
                                                      _%clause246604%_)
                                                     (_%$%g246607246622%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx248897248898%_)))))
                                                (let ((_%__kont248899248900%_
                                                       (lambda (_%$%g246609246650%_
                                                                _%$%g246610246651%_
                                                                _%$%g246611246652%_)
                                                         (let ((_%receiver246671%_
                                                                (let ((_%$e246668%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gxc#apply-extract-receiver
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f '%#begin))
                                      _%$%g246609246650%_))))
                          (if _%$e246668%_ _%$e246668%_ _%$%g246611246652%_))))
                   (for-each
                    (lambda (_%$%g246672246674%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver246671%_
                       _%method-calls245990%_
                       _%slot-refs245991%_
                       _%$%g246672246674%_))
                    _%$%g246609246650%_))))
              (_%__kont248901248902%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx248897248898%_))
                                                      (let ((_%$%e246612246634%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx248897248898%_))))
                (let ((_%$%tl246614246639%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e246612246634%_)))
                      (_%$%hd246613246637%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e246612246634%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd246613246637%_))
                      (let ((_%$%e246615246642%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd246613246637%_))))
                        (let ((_%$%tl246617246647%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e246615246642%_)))
                              (_%$%hd246616246645%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e246615246642%_))))
                          (_%__kont248899248900%_
                           _%$%tl246614246639%_
                           _%$%tl246617246647%_
                           _%$%hd246616246645%_)))
                      '#!void)))
              '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((__tmp250111
                                                   (lambda (_%$%g246679246682%_
                                                            _%$%g246680246684%_)
                                                     (cons _%$%g246679246682%_
                                                           _%$%g246680246684%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp250111
                                               '()
                                               _%$%clause246550246588%_)))
                                           (if (_%no-specializer?245994%_)
                                               _%stx245898%_
                                               (let* ((_%specializer-id246693%_
                                                       (let* ((_%id246687%_
                                                               (let ((__tmp250112
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g245909245971%_))))
                         (declare (not safe))
                         (make-symbol__1 __tmp250112 '"::specialize")))
                      (_%specializer-id246690%_
                       (let ((__tmp250113
                              (let ()
                                (declare (not safe))
                                (gx#stx-source _%stx245898%_))))
                         (declare (not safe))
                         (gx#core-quote-syntax__1 _%id246687%_ __tmp250113))))
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _%specializer-id246690%_))
                 _%specializer-id246690%_))
              (_%$klass246695%_
               (let ((__tmp250114
                      (let () (declare (not safe)) (##gensym '__klass))))
                 (declare (not safe))
                 (make-symbol__0 __tmp250114)))
              (_%$method-table246697%_
               (let ((__tmp250115
                      (let ()
                        (declare (not safe))
                        (##gensym '__method-table))))
                 (declare (not safe))
                 (make-symbol__0 __tmp250115)))
              (_%methods246699%_
               (let ()
                 (declare (not safe))
                 (__hash-keys _%method-calls245990%_)))
              (_%$methods246703%_
               (let ((__tmp250116
                      (lambda (_%id246701%_)
                        (let ((__tmp250117 (gensym _%id246701%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp250117)))))
                 (declare (not safe))
                 (##map __tmp250116 _%methods246699%_)))
              (_%_246712%_
               (let ((__tmp250118
                      (lambda (_%$%g246704246707%_ _%$%g246705246709%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%method-calls245990%_
                           _%$%g246704246707%_
                           _%$%g246705246709%_)))))
                 (declare (not safe))
                 (##for-each
                  __tmp250118
                  _%methods246699%_
                  _%$methods246703%_)))
              (_%methods-bind246722%_
               (let ((__tmp250119
                      (lambda (_%$%g246714246717%_ _%$%g246715246719%_)
                        (_%generate-method-bind245900%_
                         _%$klass246695%_
                         _%$method-table246697%_
                         _%$%g246714246717%_
                         _%$%g246715246719%_))))
                 (declare (not safe))
                 (##map __tmp250119 _%methods246699%_ _%$methods246703%_)))
              (_%slots246724%_
               (let () (declare (not safe)) (__hash-keys _%slot-refs245991%_)))
              (_%$slots246728%_
               (let ((__tmp250120
                      (lambda (_%id246726%_)
                        (let ((__tmp250121 (gensym _%id246726%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp250121)))))
                 (declare (not safe))
                 (##map __tmp250120 _%slots246724%_)))
              (_%_246737%_
               (let ((__tmp250122
                      (lambda (_%$%g246729246732%_ _%$%g246730246734%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%slot-refs245991%_
                           _%$%g246729246732%_
                           _%$%g246730246734%_)))))
                 (declare (not safe))
                 (##for-each __tmp250122 _%slots246724%_ _%$slots246728%_)))
              (_%slots-bind246746%_
               (let ((__tmp250123
                      (lambda (_%$%g246738246741%_ _%$%g246739246743%_)
                        (_%generate-slot-bind245901%_
                         _%$klass246695%_
                         _%$%g246738246741%_
                         _%$%g246739246743%_))))
                 (declare (not safe))
                 (##map __tmp250123 _%slots246724%_ _%$slots246728%_)))
              (_%specializer-clauses246844%_
               (map (lambda (_%clause246748%_)
                      (let* ((_%__stx248917248918%_ _%clause246748%_)
                             (_%$%g246751246766%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx248917248918%_)))))
                        (let ((_%__kont248919248920%_
                               (lambda (_%$%g246753246794%_
                                        _%$%g246754246795%_
                                        _%$%g246755246796%_)
                                 (let* ((_%receiver246825%_
                                         (let ((_%$e246822%_
                                                (gxc#apply-extract-receiver
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#begin))
                                                       _%$%g246753246794%_))))
                                           (if _%$e246822%_
                                               _%$e246822%_
                                               _%$%g246755246796%_)))
                                        (_%body246831%_
                                         (map (lambda (_%$%g246826246828%_)
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%receiver246825%_
                                                 _%$klass246695%_
                                                 _%method-calls245990%_
                                                 _%slot-refs245991%_
                                                 _%$%g246826246828%_))
                                              _%$%g246753246794%_)))
                                   (cons (cons _%$%g246755246796%_
                                               _%$%g246754246795%_)
                                         _%body246831%_))))
                              (_%__kont248921248922%_
                               (lambda () _%clause246748%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx248917248918%_))
                              (let ((_%$%e246756246778%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx248917248918%_))))
                                (let ((_%$%tl246758246783%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e246756246778%_)))
                                      (_%$%hd246757246781%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e246756246778%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd246757246781%_))
                                      (let ((_%$%e246759246786%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd246757246781%_))))
                                        (let ((_%$%tl246761246791%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e246759246786%_)))
                                              (_%$%hd246760246789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e246759246786%_))))
                                          (_%__kont248919248920%_
                                           _%$%tl246758246783%_
                                           _%$%tl246761246791%_
                                           _%$%hd246760246789%_)))
                                      (_%__kont248921248922%_))))
                              (_%__kont248921248922%_)))))
                    (let ((__tmp250124
                           (lambda (_%$%g246836246839%_ _%$%g246837246841%_)
                             (cons _%$%g246836246839%_ _%$%g246837246841%_))))
                      (declare (not safe))
                      (foldr__0 __tmp250124 '() _%$%clause246550246588%_))))
              (_%specializer-impl246846%_
               (let ((__tmp250125
                      (cons '%#case-lambda _%specializer-clauses246844%_)))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp250125 _%stx245898%_)))
              (_%specializer-impl246848%_
               (_%generate-specializer-impl245902%_
                _%$klass246695%_
                _%$method-table246697%_
                _%methods-bind246722%_
                _%slots-bind246746%_
                _%specializer-impl246846%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp250127
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g245909245971%_)))
                                                       (__tmp250126
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%specializer-id246693%_))))
                                                   (declare (not safe))
                                                   (gxc#verbose
                                                    '"generate method specializer "
                                                    __tmp250127
                                                    '" => "
                                                    __tmp250126))
                                                 (_%generate-specializer-def245903%_
                                                  _%$%g245909245971%_
                                                  _%specializer-id246693%_
                                                  _%specializer-impl246848%_))))))))
                           (_%$%loop246545246573%_
                            _%$%target246542246568%_
                            '()))
                         (_%$%g246536246555%_ _%$%g246537246558%_)))))
               (_%$%g246536246555%_ _%$%g246537246558%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g246536246555%_
                                                _%$%g246537246558%_)))))
                                   (_%$%g246535246851%_ _%$%g245908245970%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%$%g245908245970%_))
                                     (let* ((_%$%g246855246885%_
                                             (lambda (_%$%g246856246882%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g246856246882%_))))
                                            (_%$%g246854247512%_
                                             (lambda (_%$%g246856246888%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g246856246888%_))
                                                   (let ((_%$%e246860246890%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%g246856246888%_))))
                                                     (let ((_%$%hd246861246893%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e246860246890%_)))
                                                           (_%$%tl246862246895%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e246860246890%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl246862246895%_))
                                                           (let ((_%$%e246863246898%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl246862246895%_))))
                     (let ((_%$%hd246864246901%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e246863246898%_)))
                           (_%$%tl246865246903%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e246863246898%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd246864246901%_))
                           (let ((_%$%e246866246906%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd246864246901%_))))
                             (let ((_%$%hd246867246909%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e246866246906%_)))
                                   (_%$%tl246868246911%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e246866246906%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd246867246909%_))
                                   (let ((_%$%e246869246914%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd246867246909%_))))
                                     (let ((_%$%hd246870246917%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e246869246914%_)))
                                           (_%$%tl246871246919%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e246869246914%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd246870246917%_))
                                           (let ((_%$%e246872246922%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd246870246917%_))))
                                             (let ((_%$%hd246873246925%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e246872246922%_)))
                                                   (_%$%tl246874246927%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e246872246922%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl246874246927%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl246871246919%_))
                                                       (let ((_%$%e246875246930%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl246871246919%_))))
                 (let ((_%$%hd246876246933%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e246875246930%_)))
                       (_%$%tl246877246935%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e246875246930%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl246877246935%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl246868246911%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl246865246903%_))
                               (let ((_%$%e246878246938%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl246865246903%_))))
                                 (let ((_%$%hd246879246941%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e246878246938%_)))
                                       (_%$%tl246880246943%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e246878246938%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl246880246943%_))
                                       (let ()
                                         (let* ((_%$%g246972246990%_
                                                 (lambda (_%$%g246973246987%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g246973246987%_))))
                                                (_%$%g246971247046%_
                                                 (lambda (_%$%g246973246993%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g246973246993%_))
                                                       (let ((_%$%e246977246995%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g246973246993%_))))
                 (let ((_%$%hd246978246998%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e246977246995%_)))
                       (_%$%tl246979247000%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e246977246995%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl246979247000%_))
                       (let ((_%$%e246980247003%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl246979247000%_))))
                         (let ((_%$%hd246981247006%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e246980247003%_)))
                               (_%$%tl246982247008%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e246980247003%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd246981247006%_))
                               (let ((_%$%e246983247011%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%hd246981247006%_))))
                                 (let ((_%$%hd246984247014%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e246983247011%_)))
                                       (_%$%tl246985247016%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e246983247011%_))))
                                   (let ((_%receiver247040%_
                                          (let ((_%$e247037%_
                                                 (gxc#apply-extract-receiver
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#begin))
                                                        _%$%tl246982247008%_))))
                                            (if _%$e247037%_
                                                _%$e247037%_
                                                _%$%hd246984247014%_))))
                                     (for-each
                                      (lambda (_%$%g247041247043%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver247040%_
                                         _%method-calls245990%_
                                         _%slot-refs245991%_
                                         _%$%g247041247043%_))
                                      _%$%tl246982247008%_))))
                               (_%$%g246972246990%_ _%$%g246973246993%_))))
                       (_%$%g246972246990%_ _%$%g246973246993%_))))
               (_%$%g246972246990%_ _%$%g246973246993%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g246971247046%_
                                            _%$%hd246876246933%_))
                                         (let* ((_%$%g247049247068%_
                                                 (lambda (_%$%g247050247065%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g247050247065%_))))
                                                (_%$%g247048247190%_
                                                 (lambda (_%$%g247050247071%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g247050247071%_))
                                                       (let ((_%$%e247052247073%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g247050247071%_))))
                 (let ((_%$%hd247053247076%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e247052247073%_)))
                       (_%$%tl247054247078%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e247052247073%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? _%$%tl247054247078%_))
                       (let ((_g250128_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 _%$%tl247054247078%_
                                 '0))))
                         (begin
                           (let ((_g250129_
                                  (let ()
                                    (declare (not safe))
                                    (if (##values? _g250128_)
                                        (##values-length _g250128_)
                                        1))))
                             (if (not (let ()
                                        (declare (not safe))
                                        (##fx= _g250129_ 2)))
                                 (error "Context expects 2 values" _g250129_)))
                           (let ((_%$%target247055247081%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g250128_ 0)))
                                 (_%$%tl247057247083%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g250128_ 1))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl247057247083%_))
                                 (letrec ((_%$%loop247058247086%_
                                           (lambda (_%$%hd247056247089%_
                                                    _%$%clause247062247091%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd247056247089%_))
                                                 (let ((_%$%e247059247093%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd247056247089%_))))
                                                   (let ((_%$%lp-hd247060247096%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e247059247093%_)))
                                                         (_%$%lp-tl247061247098%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e247059247093%_))))
                                                     (_%$%loop247058247086%_
                                                      _%$%lp-tl247061247098%_
                                                      (cons _%$%lp-hd247060247096%_
                                                            _%$%clause247062247091%_))))
                                                 (let ((_%$%clause247063247101%_
                                                        (reverse _%$%clause247062247091%_)))
                                                   (for-each
                                                    (lambda (_%clause247116%_)
                                                      (let* ((_%$%g247118247133%_
                                                              (lambda (_%$%g247119247130%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g247119247130%_))))
                     (_%$%g247117247180%_
                      (lambda (_%$%g247119247136%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%g247119247136%_))
                            (let ((_%$%e247123247138%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g247119247136%_))))
                              (let ((_%$%hd247124247141%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e247123247138%_)))
                                    (_%$%tl247125247143%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e247123247138%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd247124247141%_))
                                    (let ((_%$%e247126247146%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd247124247141%_))))
                                      (let ((_%$%hd247127247149%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e247126247146%_)))
                                            (_%$%tl247128247151%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e247126247146%_))))
                                        (let ((_%receiver247174%_
                                               (let ((_%$e247171%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%tl247125247143%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e247171%_
                                                     _%$e247171%_
                                                     _%$%hd247127247149%_))))
                                          (for-each
                                           (lambda (_%$%g247175247177%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver247174%_
                                              _%method-calls245990%_
                                              _%slot-refs245991%_
                                              _%$%g247175247177%_))
                                           _%$%tl247125247143%_))))
                                    (_%$%g247118247133%_
                                     _%$%g247119247136%_))))
                            (_%$%g247118247133%_ _%$%g247119247136%_)))))
                (_%$%g247117247180%_ _%clause247116%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp250130
                                                           (lambda (_%$%g247182247185%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g247183247187%_)
                     (cons _%$%g247182247185%_ _%$%g247183247187%_))))
              (declare (not safe))
              (foldr__0 __tmp250130 '() _%$%clause247063247101%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%loop247058247086%_
                                    _%$%target247055247081%_
                                    '()))
                                 (_%$%g247049247068%_ _%$%g247050247071%_)))))
                       (_%$%g247049247068%_ _%$%g247050247071%_))))
               (_%$%g247049247068%_ _%$%g247050247071%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g247048247190%_
                                            _%$%hd246879246941%_))
                                         (if (_%no-specializer?245994%_)
                                             _%stx245898%_
                                             (let* ((_%specializer-id247199%_
                                                     (let* ((_%id247193%_
                                                             (let ((__tmp250131
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g245909245971%_))))
                       (declare (not safe))
                       (make-symbol__1 __tmp250131 '"::specialize")))
                    (_%specializer-id247196%_
                     (let ((__tmp250132
                            (let ()
                              (declare (not safe))
                              (gx#stx-source _%stx245898%_))))
                       (declare (not safe))
                       (gx#core-quote-syntax__1 _%id247193%_ __tmp250132))))
               (let ()
                 (declare (not safe))
                 (gx#core-bind-runtime!__0 _%specializer-id247196%_))
               _%specializer-id247196%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$klass247201%_
                                                     (let ((__tmp250133
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__klass))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp250133)))
                                                    (_%$method-table247203%_
                                                     (let ((__tmp250134
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__method-table))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp250134)))
                                                    (_%methods247205%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%method-calls245990%_)))
                                                    (_%$methods247209%_
                                                     (let ((__tmp250135
                                                            (lambda (_%id247207%_)
                                                              (let ((__tmp250136
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id247207%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp250136)))))
               (declare (not safe))
               (##map __tmp250135 _%methods247205%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_247218%_
                                                     (let ((__tmp250137
                                                            (lambda (_%$%g247210247213%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g247211247215%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%method-calls245990%_
                         _%$%g247210247213%_
                         _%$%g247211247215%_)))))
               (declare (not safe))
               (##for-each __tmp250137 _%methods247205%_ _%$methods247209%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%methods-bind247228%_
                                                     (let ((__tmp250138
                                                            (lambda (_%$%g247220247223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g247221247225%_)
                      (_%generate-method-bind245900%_
                       _%$klass247201%_
                       _%$method-table247203%_
                       _%$%g247220247223%_
                       _%$%g247221247225%_))))
               (declare (not safe))
               (##map __tmp250138 _%methods247205%_ _%$methods247209%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots247230%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%slot-refs245991%_)))
                                                    (_%$slots247234%_
                                                     (let ((__tmp250139
                                                            (lambda (_%id247232%_)
                                                              (let ((__tmp250140
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id247232%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp250140)))))
               (declare (not safe))
               (##map __tmp250139 _%slots247230%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_247243%_
                                                     (let ((__tmp250141
                                                            (lambda (_%$%g247235247238%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g247236247240%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%slot-refs245991%_
                         _%$%g247235247238%_
                         _%$%g247236247240%_)))))
               (declare (not safe))
               (##for-each __tmp250141 _%slots247230%_ _%$slots247234%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots-bind247252%_
                                                     (let ((__tmp250142
                                                            (lambda (_%$%g247244247247%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g247245247249%_)
                      (_%generate-slot-bind245901%_
                       _%$klass247201%_
                       _%$%g247244247247%_
                       _%$%g247245247249%_))))
               (declare (not safe))
               (##map __tmp250142 _%slots247230%_ _%$slots247234%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-lambda-expr247344%_
                                                     (let* ((_%$%g247254247272%_
                                                             (lambda (_%$%g247255247269%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g247255247269%_))))
                    (_%$%g247253247341%_
                     (lambda (_%$%g247255247275%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g247255247275%_))
                           (let ((_%$%e247259247277%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g247255247275%_))))
                             (let ((_%$%hd247260247280%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e247259247277%_)))
                                   (_%$%tl247261247282%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e247259247277%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl247261247282%_))
                                   (let ((_%$%e247262247285%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl247261247282%_))))
                                     (let ((_%$%hd247263247288%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e247262247285%_)))
                                           (_%$%tl247264247290%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e247262247285%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd247263247288%_))
                                           (let ((_%$%e247265247293%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd247263247288%_))))
                                             (let ((_%$%hd247266247296%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e247265247293%_)))
                                                   (_%$%tl247267247298%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e247265247293%_))))
                                               (let* ((_%receiver247332%_
                                                       (let ((_%$e247329%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%tl247264247290%_))))
                 (if _%$e247329%_ _%$e247329%_ _%$%hd247266247296%_)))
              (_%body247338%_
               (map (lambda (_%$%g247333247335%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver247332%_
                       _%$klass247201%_
                       _%method-calls245990%_
                       _%slot-refs245991%_
                       _%$%g247333247335%_))
                    _%$%tl247264247290%_))
              (__tmp250143
               (cons '%#lambda
                     (cons (cons _%$%hd247266247296%_ _%$%tl247267247298%_)
                           _%body247338%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp250143
                                                  _%$%hd246876246933%_))))
                                           (_%$%g247254247272%_
                                            _%$%g247255247275%_))))
                                   (_%$%g247254247272%_ _%$%g247255247275%_))))
                           (_%$%g247254247272%_ _%$%g247255247275%_)))))
               (_%$%g247253247341%_ _%$%hd246876246933%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-case-lambda-expr247505%_
                                                     (let* ((_%$%g247346247365%_
                                                             (lambda (_%$%g247347247362%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g247347247362%_))))
                    (_%$%g247345247502%_
                     (lambda (_%$%g247347247368%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g247347247368%_))
                           (let ((_%$%e247349247370%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g247347247368%_))))
                             (let ((_%$%hd247350247373%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e247349247370%_)))
                                   (_%$%tl247351247375%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e247349247370%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair/null? _%$%tl247351247375%_))
                                   (let ((_g250144_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-split-splice
                                             _%$%tl247351247375%_
                                             '0))))
                                     (begin
                                       (let ((_g250145_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g250144_)
                                                    (##values-length _g250144_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g250145_ 2)))
                                             (error "Context expects 2 values"
                                                    _g250145_)))
                                       (let ((_%$%target247352247378%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g250144_ 0)))
                                             (_%$%tl247354247380%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g250144_ 1))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%$%tl247354247380%_))
                                             (letrec ((_%$%loop247355247383%_
                                                       (lambda (_%$%hd247353247386%_
                                                                _%$%clause247359247388%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%hd247353247386%_))
                     (let ((_%$%e247356247390%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%hd247353247386%_))))
                       (let ((_%$%lp-hd247357247393%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e247356247390%_)))
                             (_%$%lp-tl247358247395%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e247356247390%_))))
                         (_%$%loop247355247383%_
                          _%$%lp-tl247358247395%_
                          (cons _%$%lp-hd247357247393%_
                                _%$%clause247359247388%_))))
                     (let* ((_%$%clause247360247398%_
                             (reverse _%$%clause247359247388%_))
                            (_%clauses247500%_
                             (map (lambda (_%clause247414%_)
                                    (let* ((_%__stx248937248938%_
                                            _%clause247414%_)
                                           (_%$%g247417247432%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%__stx248937248938%_)))))
                                      (let ((_%__kont248939248940%_
                                             (lambda (_%$%g247419247460%_
                                                      _%$%g247420247461%_
                                                      _%$%g247421247462%_)
                                               (let* ((_%receiver247481%_
                                                       (let ((_%$e247478%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%g247419247460%_))))
                 (if _%$e247478%_ _%$e247478%_ _%$%g247421247462%_)))
              (_%body247487%_
               (map (lambda (_%$%g247482247484%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver247481%_
                       _%$klass247201%_
                       _%method-calls245990%_
                       _%slot-refs245991%_
                       _%$%g247482247484%_))
                    _%$%g247419247460%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g247421247462%_
                                                             _%$%g247420247461%_)
                                                       _%body247487%_))))
                                            (_%__kont248941248942%_
                                             (lambda () _%clause247414%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%__stx248937248938%_))
                                            (let ((_%$%e247422247444%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%__stx248937248938%_))))
                                              (let ((_%$%tl247424247449%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e247422247444%_)))
                                                    (_%$%hd247423247447%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e247422247444%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd247423247447%_))
                                                    (let ((_%$%e247425247452%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd247423247447%_))))
                                                      (let ((_%$%tl247427247457%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e247425247452%_)))
                    (_%$%hd247426247455%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e247425247452%_))))
                (_%__kont248939248940%_
                 _%$%tl247424247449%_
                 _%$%tl247427247457%_
                 _%$%hd247426247455%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont248941248942%_))))
                                            (_%__kont248941248942%_)))))
                                  (let ((__tmp250146
                                         (lambda (_%$%g247492247495%_
                                                  _%$%g247493247497%_)
                                           (cons _%$%g247492247495%_
                                                 _%$%g247493247497%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp250146
                                     '()
                                     _%$%clause247360247398%_))))
                            (__tmp250147
                             (cons '%#case-lambda _%clauses247500%_)))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp250147
                        _%$%hd246879246941%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop247355247383%_
                                                _%$%target247352247378%_
                                                '()))
                                             (_%$%g247346247365%_
                                              _%$%g247347247368%_)))))
                                   (_%$%g247346247365%_ _%$%g247347247368%_))))
                           (_%$%g247346247365%_ _%$%g247347247368%_)))))
               (_%$%g247345247502%_ _%$%hd246879246941%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl247507%_
                                                     (let ((__tmp250148
                                                            (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _%$%hd246873246925%_ '())
                                            (cons _%specializer-lambda-expr247344%_
                                                  '()))
                                      '())
                                (cons _%specializer-case-lambda-expr247505%_
                                      '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp250148 _%stx245898%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl247509%_
                                                     (_%generate-specializer-impl245902%_
                                                      _%$klass247201%_
                                                      _%$method-table247203%_
                                                      _%methods-bind247228%_
                                                      _%slots-bind247252%_
                                                      _%specializer-impl247507%_)))
                                               (let ((__tmp250150
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g245909245971%_)))
                                                     (__tmp250149
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%specializer-id247199%_))))
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"generate method specializer "
                                                  __tmp250150
                                                  '" => "
                                                  __tmp250149))
                                               (_%generate-specializer-def245903%_
                                                _%$%g245909245971%_
                                                _%specializer-id247199%_
                                                _%specializer-impl247509%_))))
                                       (_%$%g246855246885%_
                                        _%$%g246856246888%_))))
                               (_%$%g246855246885%_ _%$%g246856246888%_))
                           (_%$%g246855246885%_ _%$%g246856246888%_))
                       (_%$%g246855246885%_ _%$%g246856246888%_))))
               (_%$%g246855246885%_ _%$%g246856246888%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g246855246885%_
                                                    _%$%g246856246888%_))))
                                           (_%$%g246855246885%_
                                            _%$%g246856246888%_))))
                                   (_%$%g246855246885%_ _%$%g246856246888%_))))
                           (_%$%g246855246885%_ _%$%g246856246888%_))))
                   (_%$%g246855246885%_ _%$%g246856246888%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g246855246885%_
                                                    _%$%g246856246888%_)))))
                                       (_%$%g246854247512%_
                                        _%$%g245908245970%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%$%g245908245970%_))
                                         (let* ((_%$%g247516247569%_
                                                 (lambda (_%$%g247517247566%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g247517247566%_))))
                                                (_%$%g247515248734%_
                                                 (lambda (_%$%g247517247572%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g247517247572%_))
                                                       (let ((_%$%e247523247574%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g247517247572%_))))
                 (let ((_%$%hd247524247577%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e247523247574%_)))
                       (_%$%tl247525247579%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e247523247574%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%$%hd247524247577%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%$%hd247524247577%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl247525247579%_))
                               (let ((_%$%e247526247582%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl247525247579%_))))
                                 (let ((_%$%hd247527247585%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e247526247582%_)))
                                       (_%$%tl247528247587%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e247526247582%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd247527247585%_))
                                       (let ((_%$%e247529247590%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd247527247585%_))))
                                         (let ((_%$%hd247530247593%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e247529247590%_)))
                                               (_%$%tl247531247595%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e247529247590%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd247530247593%_))
                                               (let ((_%$%e247532247598%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd247530247593%_))))
                                                 (let ((_%$%hd247533247601%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e247532247598%_)))
                                                       (_%$%tl247534247603%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e247532247598%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%hd247533247601%_))
                                                       (let ((_%$%e247535247606%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%hd247533247601%_))))
                 (let ((_%$%hd247536247609%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e247535247606%_)))
                       (_%$%tl247537247611%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e247535247606%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl247537247611%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl247534247603%_))
                           (let ((_%$%e247538247614%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl247534247603%_))))
                             (let ((_%$%hd247539247617%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e247538247614%_)))
                                   (_%$%tl247540247619%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e247538247614%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd247539247617%_))
                                   (let ((_%$%e247541247622%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd247539247617%_))))
                                     (let ((_%$%hd247542247625%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e247541247622%_)))
                                           (_%$%tl247543247627%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e247541247622%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd247542247625%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%$%hd247542247625%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl247543247627%_))
                                                   (let ((_%$%e247544247630%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl247543247627%_))))
                                                     (let ((_%$%hd247545247633%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e247544247630%_)))
                                                           (_%$%tl247546247635%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e247544247630%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd247545247633%_))
                                                           (let ((_%$%e247547247638%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd247545247633%_))))
                     (let ((_%$%hd247548247641%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e247547247638%_)))
                           (_%$%tl247549247643%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e247547247638%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd247548247641%_))
                           (let ((_%$%e247550247646%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd247548247641%_))))
                             (let ((_%$%hd247551247649%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e247550247646%_)))
                                   (_%$%tl247552247651%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e247550247646%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd247551247649%_))
                                   (let ((_%$%e247553247654%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd247551247649%_))))
                                     (let ((_%$%hd247554247657%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e247553247654%_)))
                                           (_%$%tl247555247659%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e247553247654%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl247555247659%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl247552247651%_))
                                               (let ((_%$%e247556247662%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl247552247651%_))))
                                                 (let ((_%$%hd247557247665%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e247556247662%_)))
                                                       (_%$%tl247558247667%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e247556247662%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl247558247667%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl247549247643%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl247546247635%_))
                       (let ((_%$%e247559247670%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl247546247635%_))))
                         (let ((_%$%hd247560247673%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e247559247670%_)))
                               (_%$%tl247561247675%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e247559247670%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl247561247675%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl247540247619%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl247531247595%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl247528247587%_))
                                           (let ((_%$%e247562247678%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl247528247587%_))))
                                             (let ((_%$%hd247563247681%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e247562247678%_)))
                                                   (_%$%tl247564247683%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e247562247678%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl247564247683%_))
                                                   (let* ((_%$%g247730247792%_
                                                           (lambda (_%$%g247731247789%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g247731247789%_))))
                  (_%$%g247729248731%_
                   (lambda (_%$%g247731247795%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g247731247795%_))
                         (let ((_%$%e247737247797%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g247731247795%_))))
                           (let ((_%$%hd247738247800%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e247737247797%_)))
                                 (_%$%tl247739247802%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e247737247797%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd247738247800%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#lambda
                                        _%$%hd247738247800%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl247739247802%_))
                                         (let ((_%$%e247740247805%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl247739247802%_))))
                                           (let ((_%$%hd247741247808%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e247740247805%_)))
                                                 (_%$%tl247742247810%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e247740247805%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl247742247810%_))
                                                 (let ((_%$%e247743247813%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl247742247810%_))))
                                                   (let ((_%$%hd247744247816%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e247743247813%_)))
                                                         (_%$%tl247745247818%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e247743247813%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%hd247744247816%_))
                                                         (let ((_%$%e247746247821%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd247744247816%_))))
                   (let ((_%$%hd247747247824%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e247746247821%_)))
                         (_%$%tl247748247826%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e247746247821%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%$%hd247747247824%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#call _%$%hd247747247824%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl247748247826%_))
                                 (let ((_%$%e247749247829%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl247748247826%_))))
                                   (let ((_%$%hd247750247832%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e247749247829%_)))
                                         (_%$%tl247751247834%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e247749247829%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd247750247832%_))
                                         (let ((_%$%e247752247837%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd247750247832%_))))
                                           (let ((_%$%hd247753247840%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e247752247837%_)))
                                                 (_%$%tl247754247842%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e247752247837%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd247753247840%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%$%hd247753247840%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl247754247842%_))
                                                         (let ((_%$%e247755247845%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl247754247842%_))))
                   (let ((_%$%hd247756247848%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e247755247845%_)))
                         (_%$%tl247757247850%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e247755247845%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl247757247850%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl247751247834%_))
                             (let ((_%$%e247758247853%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl247751247834%_))))
                               (let ((_%$%hd247759247856%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e247758247853%_)))
                                     (_%$%tl247760247858%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e247758247853%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd247759247856%_))
                                     (let ((_%$%e247761247861%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd247759247856%_))))
                                       (let ((_%$%hd247762247864%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e247761247861%_)))
                                             (_%$%tl247763247866%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e247761247861%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%hd247762247864%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#ref
                                                    _%$%hd247762247864%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl247763247866%_))
                                                     (let ((_%$%e247764247869%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl247763247866%_))))
                                                       (let ((_%$%hd247765247872%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e247764247869%_)))
                     (_%$%tl247766247874%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e247764247869%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl247766247874%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl247760247858%_))
                         (let ((_%$%e247767247877%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl247760247858%_))))
                           (let ((_%$%hd247768247880%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e247767247877%_)))
                                 (_%$%tl247769247882%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e247767247877%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd247768247880%_))
                                 (let ((_%$%e247770247885%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd247768247880%_))))
                                   (let ((_%$%hd247771247888%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e247770247885%_)))
                                         (_%$%tl247772247890%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e247770247885%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier?
                                            _%$%hd247771247888%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%$%hd247771247888%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl247772247890%_))
                                                 (let ((_%$%e247773247893%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl247772247890%_))))
                                                   (let ((_%$%hd247774247896%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e247773247893%_)))
                                                         (_%$%tl247775247898%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e247773247893%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl247775247898%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair/null? _%$%tl247769247882%_))
                     (if (let ((__tmp250151
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-length _%$%tl247769247882%_))))
                           (declare (not safe))
                           (##fx>= __tmp250151 '1))
                         (let ((_g250152_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-split-splice
                                   _%$%tl247769247882%_
                                   '1))))
                           (begin
                             (let ((_g250153_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g250152_)
                                          (##values-length _g250152_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g250153_ 2)))
                                   (error "Context expects 2 values"
                                          _g250153_)))
                             (let ((_%$%target247776247901%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g250152_ 0)))
                                   (_%$%tl247778247903%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g250152_ 1))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl247778247903%_))
                                   (let ((_%$%e247785247906%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl247778247903%_))))
                                     (let ((_%$%hd247786247909%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e247785247906%_)))
                                           (_%$%tl247787247911%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e247785247906%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl247787247911%_))
                                           (letrec ((_%$%loop247779247914%_
                                                     (lambda (_%$%hd247777247917%_
                                                              _%$%kw-ref247783247919%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd247777247917%_))
                                                           (let ((_%$%e247780247921%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd247777247917%_))))
                     (let ((_%$%lp-hd247781247924%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e247780247921%_)))
                           (_%$%lp-tl247782247926%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e247780247921%_))))
                       (_%$%loop247779247914%_
                        _%$%lp-tl247782247926%_
                        (cons _%$%lp-hd247781247924%_
                              _%$%kw-ref247783247919%_))))
                   (let ((_%$%kw-ref247784247929%_
                          (reverse _%$%kw-ref247783247919%_)))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl247745247818%_))
                         (let* ((_%kw-count247986%_
                                 (length (let ((__tmp250154
                                                (lambda (_%$%g247978247981%_
                                                         _%$%g247979247983%_)
                                                  (cons _%$%g247978247981%_
                                                        _%$%g247979247983%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp250154
                                            '()
                                            _%$%kw-ref247784247929%_))))
                                (_%self-index247988%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%kw-count247986%_ '1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#lambda-expr? _%$%hd247557247665%_))
                               (let* ((_%$%g247992248006%_
                                       (lambda (_%$%g247993248003%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g247993248003%_))))
                                      (_%$%g247991248129%_
                                       (lambda (_%$%g247993248009%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%g247993248009%_))
                                             (let ((_%$%e247996248011%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g247993248009%_))))
                                               (let ((_%$%hd247997248014%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e247996248011%_)))
                                                     (_%$%tl247998248016%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e247996248011%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl247998248016%_))
                                                     (let ((_%$%e247999248019%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl247998248016%_))))
                                                       (let ((_%$%hd248000248022%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e247999248019%_)))
                     (_%$%tl248001248024%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e247999248019%_))))
                 (let* ((_%self248045%_
                         (list-ref _%$%hd248000248022%_ _%self-index247988%_))
                        (_%receiver248050%_
                         (let ((_%$e248047%_
                                (gxc#apply-extract-receiver
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '%#begin))
                                       _%$%tl248001248024%_))))
                           (if _%$e248047%_ _%$e248047%_ _%self248045%_))))
                   (for-each
                    (lambda (_%$%g248052248054%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver248050%_
                       _%method-calls245990%_
                       _%slot-refs245991%_
                       _%$%g248052248054%_))
                    _%$%tl248001248024%_)
                   (if (_%no-specializer?245994%_)
                       _%stx245898%_
                       (let* ((_%specializer-id248063%_
                               (let* ((_%id248057%_
                                       (let ((__tmp250155
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%g245909245971%_))))
                                         (declare (not safe))
                                         (make-symbol__1
                                          __tmp250155
                                          '"::specialize")))
                                      (_%specializer-id248060%_
                                       (let ((__tmp250156
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-source
                                                 _%stx245898%_))))
                                         (declare (not safe))
                                         (gx#core-quote-syntax__1
                                          _%id248057%_
                                          __tmp250156))))
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-bind-runtime!__0
                                    _%specializer-id248060%_))
                                 _%specializer-id248060%_))
                              (_%$klass248065%_
                               (let ((__tmp250157
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__klass))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp250157)))
                              (_%$method-table248067%_
                               (let ((__tmp250158
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__method-table))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp250158)))
                              (_%methods248069%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%method-calls245990%_)))
                              (_%$methods248073%_
                               (let ((__tmp250159
                                      (lambda (_%id248071%_)
                                        (let ((__tmp250160
                                               (gensym _%id248071%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp250160)))))
                                 (declare (not safe))
                                 (##map __tmp250159 _%methods248069%_)))
                              (_%_248082%_
                               (let ((__tmp250161
                                      (lambda (_%$%g248074248077%_
                                               _%$%g248075248079%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%method-calls245990%_
                                           _%$%g248074248077%_
                                           _%$%g248075248079%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp250161
                                  _%methods248069%_
                                  _%$methods248073%_)))
                              (_%methods-bind248092%_
                               (let ((__tmp250162
                                      (lambda (_%$%g248084248087%_
                                               _%$%g248085248089%_)
                                        (_%generate-method-bind245900%_
                                         _%$klass248065%_
                                         _%$method-table248067%_
                                         _%$%g248084248087%_
                                         _%$%g248085248089%_))))
                                 (declare (not safe))
                                 (##map __tmp250162
                                        _%methods248069%_
                                        _%$methods248073%_)))
                              (_%slots248094%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%slot-refs245991%_)))
                              (_%$slots248098%_
                               (let ((__tmp250163
                                      (lambda (_%id248096%_)
                                        (let ((__tmp250164
                                               (gensym _%id248096%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp250164)))))
                                 (declare (not safe))
                                 (##map __tmp250163 _%slots248094%_)))
                              (_%_248107%_
                               (let ((__tmp250165
                                      (lambda (_%$%g248099248102%_
                                               _%$%g248100248104%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%slot-refs245991%_
                                           _%$%g248099248102%_
                                           _%$%g248100248104%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp250165
                                  _%slots248094%_
                                  _%$slots248098%_)))
                              (_%slots-bind248116%_
                               (let ((__tmp250166
                                      (lambda (_%$%g248108248111%_
                                               _%$%g248109248113%_)
                                        (_%generate-slot-bind245901%_
                                         _%$klass248065%_
                                         _%$%g248108248111%_
                                         _%$%g248109248113%_))))
                                 (declare (not safe))
                                 (##map __tmp250166
                                        _%slots248094%_
                                        _%$slots248098%_)))
                              (_%specializer-impl248124%_
                               (let* ((_%specializer-body248122%_
                                       (map (lambda (_%$%g248117248119%_)
                                              (gxc#apply-subst-object-refs__%
                                               '#f
                                               _%receiver248050%_
                                               _%$klass248065%_
                                               _%method-calls245990%_
                                               _%slot-refs245991%_
                                               _%$%g248117248119%_))
                                            _%$%tl248001248024%_))
                                      (__tmp250167
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _%$%hd247536247609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#let-values
                                   (cons (cons (cons (cons _%$%hd247554247657%_
                                                           '())
                                                     (cons (let ((__tmp250168
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#lambda
                                (cons _%$%hd248000248022%_
                                      _%specializer-body248122%_))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp250168 _%$%hd247557247665%_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%$%hd247560247673%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%$%hd247563247681%_
                                                         '())))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp250167
                                  _%stx245898%_)))
                              (_%specializer-impl248126%_
                               (_%generate-specializer-impl245902%_
                                _%$klass248065%_
                                _%$method-table248067%_
                                _%methods-bind248092%_
                                _%slots-bind248116%_
                                _%specializer-impl248124%_)))
                         (let ((__tmp250170
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g245909245971%_)))
                               (__tmp250169
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%specializer-id248063%_))))
                           (declare (not safe))
                           (gxc#verbose
                            '"generate method specializer "
                            __tmp250170
                            '" => "
                            __tmp250169))
                         (_%generate-specializer-def245903%_
                          _%$%g245909245971%_
                          _%specializer-id248063%_
                          _%specializer-impl248126%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g247992248006%_
                                                      _%$%g247993248009%_))))
                                             (_%$%g247992248006%_
                                              _%$%g247993248009%_)))))
                                 (_%$%g247991248129%_ _%$%hd247557247665%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr?
                                      _%$%hd247557247665%_))
                                   (let* ((_%$%g248133248163%_
                                           (lambda (_%$%g248134248160%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g248134248160%_))))
                                          (_%$%g248132248727%_
                                           (lambda (_%$%g248134248166%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%g248134248166%_))
                                                 (let ((_%$%e248138248168%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g248134248166%_))))
                                                   (let ((_%$%hd248139248171%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e248138248168%_)))
                                                         (_%$%tl248140248173%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e248138248168%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl248140248173%_))
                                                         (let ((_%$%e248141248176%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl248140248173%_))))
                   (let ((_%$%hd248142248179%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e248141248176%_)))
                         (_%$%tl248143248181%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e248141248176%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd248142248179%_))
                         (let ((_%$%e248144248184%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd248142248179%_))))
                           (let ((_%$%hd248145248187%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e248144248184%_)))
                                 (_%$%tl248146248189%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e248144248184%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd248145248187%_))
                                 (let ((_%$%e248147248192%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd248145248187%_))))
                                   (let ((_%$%hd248148248195%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e248147248192%_)))
                                         (_%$%tl248149248197%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e248147248192%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd248148248195%_))
                                         (let ((_%$%e248150248200%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd248148248195%_))))
                                           (let ((_%$%hd248151248203%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e248150248200%_)))
                                                 (_%$%tl248152248205%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e248150248200%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl248152248205%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl248149248197%_))
                                                     (let ((_%$%e248153248208%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl248149248197%_))))
                                                       (let ((_%$%hd248154248211%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e248153248208%_)))
                     (_%$%tl248155248213%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e248153248208%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl248155248213%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl248146248189%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl248143248181%_))
                             (let ((_%$%e248156248216%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl248143248181%_))))
                               (let ((_%$%hd248157248219%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e248156248216%_)))
                                     (_%$%tl248158248221%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e248156248216%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl248158248221%_))
                                     (let ()
                                       (let* ((_%$%g248250248264%_
                                               (lambda (_%$%g248251248261%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g248251248261%_))))
                                              (_%$%g248249248311%_
                                               (lambda (_%$%g248251248267%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g248251248267%_))
                                                     (let ((_%$%e248254248269%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g248251248267%_))))
                                                       (let ((_%$%hd248255248272%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e248254248269%_)))
                     (_%$%tl248256248274%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e248254248269%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl248256248274%_))
                     (let ((_%$%e248257248277%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl248256248274%_))))
                       (let ((_%$%hd248258248280%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e248257248277%_)))
                             (_%$%tl248259248282%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e248257248277%_))))
                         (let* ((_%self248299%_
                                 (list-ref
                                  _%$%hd248258248280%_
                                  _%self-index247988%_))
                                (_%receiver248304%_
                                 (let ((_%$e248301%_
                                        (gxc#apply-extract-receiver
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin))
                                               _%$%tl248259248282%_))))
                                   (if _%$e248301%_
                                       _%$e248301%_
                                       _%self248299%_))))
                           (for-each
                            (lambda (_%$%g248306248308%_)
                              (gxc#apply-collect-object-refs__%
                               '#f
                               _%receiver248304%_
                               _%method-calls245990%_
                               _%slot-refs245991%_
                               _%$%g248306248308%_))
                            _%$%tl248259248282%_))))
                     (_%$%g248250248264%_ _%$%g248251248267%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248250248264%_
                                                      _%$%g248251248267%_)))))
                                         (_%$%g248249248311%_
                                          _%$%hd248154248211%_))
                                       (let* ((_%$%g248314248333%_
                                               (lambda (_%$%g248315248330%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g248315248330%_))))
                                              (_%$%g248313248442%_
                                               (lambda (_%$%g248315248336%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g248315248336%_))
                                                     (let ((_%$%e248317248338%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g248315248336%_))))
                                                       (let ((_%$%hd248318248341%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e248317248338%_)))
                     (_%$%tl248319248343%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e248317248338%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair/null? _%$%tl248319248343%_))
                     (let ((_g250171_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-split-splice
                               _%$%tl248319248343%_
                               '0))))
                       (begin
                         (let ((_g250172_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g250171_)
                                      (##values-length _g250171_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g250172_ 2)))
                               (error "Context expects 2 values" _g250172_)))
                         (let ((_%$%target248320248346%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g250171_ 0)))
                               (_%$%tl248322248348%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g250171_ 1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl248322248348%_))
                               (letrec ((_%$%loop248323248351%_
                                         (lambda (_%$%hd248321248354%_
                                                  _%$%clause248327248356%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd248321248354%_))
                                               (let ((_%$%e248324248358%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd248321248354%_))))
                                                 (let ((_%$%lp-hd248325248361%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e248324248358%_)))
                                                       (_%$%lp-tl248326248363%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e248324248358%_))))
                                                   (_%$%loop248323248351%_
                                                    _%$%lp-tl248326248363%_
                                                    (cons _%$%lp-hd248325248361%_
                                                          _%$%clause248327248356%_))))
                                               (let ((_%$%clause248328248366%_
                                                      (reverse _%$%clause248327248356%_)))
                                                 (for-each
                                                  (lambda (_%clause248381%_)
                                                    (let* ((_%$%g248383248394%_
                                                            (lambda (_%$%g248384248391%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g248384248391%_))))
                   (_%$%g248382248432%_
                    (lambda (_%$%g248384248397%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g248384248397%_))
                          (let ((_%$%e248387248399%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g248384248397%_))))
                            (let ((_%$%hd248388248402%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e248387248399%_)))
                                  (_%$%tl248389248404%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e248387248399%_))))
                              (let* ((_%self248420%_
                                      (list-ref
                                       _%$%hd248388248402%_
                                       _%self-index247988%_))
                                     (_%receiver248425%_
                                      (let ((_%$e248422%_
                                             (gxc#apply-extract-receiver
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#begin))
                                                    _%$%tl248389248404%_))))
                                        (if _%$e248422%_
                                            _%$e248422%_
                                            _%self248420%_))))
                                (for-each
                                 (lambda (_%$%g248427248429%_)
                                   (gxc#apply-collect-object-refs__%
                                    '#f
                                    _%receiver248425%_
                                    _%method-calls245990%_
                                    _%slot-refs245991%_
                                    _%$%g248427248429%_))
                                 _%$%tl248389248404%_))))
                          (_%$%g248383248394%_ _%$%g248384248397%_)))))
              (_%$%g248382248432%_ _%clause248381%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp250173
                                                         (lambda (_%$%g248434248437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g248435248439%_)
                   (cons _%$%g248434248437%_ _%$%g248435248439%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp250173
                                                     '()
                                                     _%$%clause248328248366%_))))))))
                                 (_%$%loop248323248351%_
                                  _%$%target248320248346%_
                                  '()))
                               (_%$%g248314248333%_ _%$%g248315248336%_)))))
                     (_%$%g248314248333%_ _%$%g248315248336%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248314248333%_
                                                      _%$%g248315248336%_)))))
                                         (_%$%g248313248442%_
                                          _%$%hd248157248219%_))
                                       (if (_%no-specializer?245994%_)
                                           _%stx245898%_
                                           (let* ((_%specializer-id248451%_
                                                   (let* ((_%id248445%_
                                                           (let ((__tmp250174
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g245909245971%_))))
                     (declare (not safe))
                     (make-symbol__1 __tmp250174 '"::specialize")))
                  (_%specializer-id248448%_
                   (let ((__tmp250175
                          (let ()
                            (declare (not safe))
                            (gx#stx-source _%stx245898%_))))
                     (declare (not safe))
                     (gx#core-quote-syntax__1 _%id248445%_ __tmp250175))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#core-bind-runtime!__0
                                                        _%specializer-id248448%_))
                                                     _%specializer-id248448%_))
                                                  (_%$klass248453%_
                                                   (let ((__tmp250176
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__klass))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp250176)))
                                                  (_%$method-table248455%_
                                                   (let ((__tmp250177
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__method-table))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp250177)))
                                                  (_%methods248457%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%method-calls245990%_)))
                                                  (_%$methods248461%_
                                                   (let ((__tmp250178
                                                          (lambda (_%id248459%_)
                                                            (let ((__tmp250179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id248459%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp250179)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp250178
                                                            _%methods248457%_)))
                                                  (_%_248470%_
                                                   (let ((__tmp250180
                                                          (lambda (_%$%g248462248465%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g248463248467%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%method-calls245990%_
                       _%$%g248462248465%_
                       _%$%g248463248467%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp250180
                                                      _%methods248457%_
                                                      _%$methods248461%_)))
                                                  (_%methods-bind248480%_
                                                   (let ((__tmp250181
                                                          (lambda (_%$%g248472248475%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g248473248477%_)
                    (_%generate-method-bind245900%_
                     _%$klass248453%_
                     _%$method-table248455%_
                     _%$%g248472248475%_
                     _%$%g248473248477%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp250181
                                                            _%methods248457%_
                                                            _%$methods248461%_)))
                                                  (_%slots248482%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%slot-refs245991%_)))
                                                  (_%$slots248486%_
                                                   (let ((__tmp250182
                                                          (lambda (_%id248484%_)
                                                            (let ((__tmp250183
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id248484%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp250183)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp250182
                                                            _%slots248482%_)))
                                                  (_%_248495%_
                                                   (let ((__tmp250184
                                                          (lambda (_%$%g248487248490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g248488248492%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%slot-refs245991%_
                       _%$%g248487248490%_
                       _%$%g248488248492%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp250184
                                                      _%slots248482%_
                                                      _%$slots248486%_)))
                                                  (_%slots-bind248504%_
                                                   (let ((__tmp250185
                                                          (lambda (_%$%g248496248499%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g248497248501%_)
                    (_%generate-slot-bind245901%_
                     _%$klass248453%_
                     _%$%g248496248499%_
                     _%$%g248497248501%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp250185
                                                            _%slots248482%_
                                                            _%$slots248486%_)))
                                                  (_%specializer-lambda-expr248582%_
                                                   (let* ((_%$%g248506248520%_
                                                           (lambda (_%$%g248507248517%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g248507248517%_))))
                  (_%$%g248505248579%_
                   (lambda (_%$%g248507248523%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g248507248523%_))
                         (let ((_%$%e248510248525%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g248507248523%_))))
                           (let ((_%$%hd248511248528%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e248510248525%_)))
                                 (_%$%tl248512248530%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e248510248525%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl248512248530%_))
                                 (let ((_%$%e248513248533%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl248512248530%_))))
                                   (let ((_%$%hd248514248536%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e248513248533%_)))
                                         (_%$%tl248515248538%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e248513248533%_))))
                                     (let* ((_%self248565%_
                                             (list-ref
                                              _%$%hd248514248536%_
                                              _%self-index247988%_))
                                            (_%receiver248570%_
                                             (let ((_%$e248567%_
                                                    (gxc#apply-extract-receiver
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%$%tl248515248538%_))))
                                               (if _%$e248567%_
                                                   _%$e248567%_
                                                   _%self248565%_)))
                                            (_%body248576%_
                                             (map (lambda (_%$%g248571248573%_)
                                                    (gxc#apply-subst-object-refs__%
                                                     '#f
                                                     _%receiver248570%_
                                                     _%$klass248453%_
                                                     _%method-calls245990%_
                                                     _%slot-refs245991%_
                                                     _%$%g248571248573%_))
                                                  _%$%tl248515248538%_))
                                            (__tmp250186
                                             (cons '%#lambda
                                                   (cons _%$%hd248514248536%_
                                                         _%body248576%_))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp250186
                                        _%$%hd248154248211%_))))
                                 (_%$%g248506248520%_ _%$%g248507248523%_))))
                         (_%$%g248506248520%_ _%$%g248507248523%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248505248579%_
                                                      _%$%hd248154248211%_)))
                                                  (_%specializer-case-lambda-expr248720%_
                                                   (let* ((_%$%g248584248603%_
                                                           (lambda (_%$%g248585248600%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g248585248600%_))))
                  (_%$%g248583248717%_
                   (lambda (_%$%g248585248606%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g248585248606%_))
                         (let ((_%$%e248587248608%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g248585248606%_))))
                           (let ((_%$%hd248588248611%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e248587248608%_)))
                                 (_%$%tl248589248613%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e248587248608%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair/null? _%$%tl248589248613%_))
                                 (let ((_g250187_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-split-splice
                                           _%$%tl248589248613%_
                                           '0))))
                                   (begin
                                     (let ((_g250188_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g250187_)
                                                  (##values-length _g250187_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g250188_ 2)))
                                           (error "Context expects 2 values"
                                                  _g250188_)))
                                     (let ((_%$%target248590248616%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g250187_ 0)))
                                           (_%$%tl248592248618%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g250187_ 1))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl248592248618%_))
                                           (letrec ((_%$%loop248593248621%_
                                                     (lambda (_%$%hd248591248624%_
                                                              _%$%clause248597248626%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd248591248624%_))
                                                           (let ((_%$%e248594248628%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd248591248624%_))))
                     (let ((_%$%lp-hd248595248631%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e248594248628%_)))
                           (_%$%lp-tl248596248633%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e248594248628%_))))
                       (_%$%loop248593248621%_
                        _%$%lp-tl248596248633%_
                        (cons _%$%lp-hd248595248631%_
                              _%$%clause248597248626%_))))
                   (let* ((_%$%clause248598248636%_
                           (reverse _%$%clause248597248626%_))
                          (_%clauses248715%_
                           (map (lambda (_%clause248652%_)
                                  (let* ((_%$%g248654248665%_
                                          (lambda (_%$%g248655248662%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g248655248662%_))))
                                         (_%$%g248653248705%_
                                          (lambda (_%$%g248655248668%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g248655248668%_))
                                                (let ((_%$%e248658248670%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g248655248668%_))))
                                                  (let ((_%$%hd248659248673%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e248658248670%_)))
                                                        (_%$%tl248660248675%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e248658248670%_))))
                                                    (let* ((_%self248691%_
                                                            (list-ref
                                                             _%$%hd248659248673%_
                                                             _%self-index247988%_))
                                                           (_%receiver248696%_
                                                            (let ((_%$e248693%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-extract-receiver
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#begin))
                                  _%$%tl248660248675%_))))
                      (if _%$e248693%_ _%$e248693%_ _%self248691%_)))
                   (_%body248702%_
                    (map (lambda (_%$%g248697248699%_)
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%receiver248696%_
                            _%$klass248453%_
                            _%method-calls245990%_
                            _%slot-refs245991%_
                            _%$%g248697248699%_))
                         _%$%tl248660248675%_)))
              (cons _%$%hd248659248673%_ _%body248702%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g248654248665%_
                                                 _%$%g248655248668%_)))))
                                    (_%$%g248653248705%_ _%clause248652%_)))
                                (let ((__tmp250189
                                       (lambda (_%$%g248707248710%_
                                                _%$%g248708248712%_)
                                         (cons _%$%g248707248710%_
                                               _%$%g248708248712%_))))
                                  (declare (not safe))
                                  (foldr__0
                                   __tmp250189
                                   '()
                                   _%$%clause248598248636%_))))
                          (__tmp250190
                           (cons '%#case-lambda _%clauses248715%_)))
                     (declare (not safe))
                     (gxc#xform-wrap-source
                      __tmp250190
                      _%$%hd248157248219%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop248593248621%_
                                              _%$%target248590248616%_
                                              '()))
                                           (_%$%g248584248603%_
                                            _%$%g248585248606%_)))))
                                 (_%$%g248584248603%_ _%$%g248585248606%_))))
                         (_%$%g248584248603%_ _%$%g248585248606%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248583248717%_
                                                      _%$%hd248157248219%_)))
                                                  (_%specializer-impl248722%_
                                                   (let ((__tmp250191
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$%hd247536247609%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons (cons '%#let-values
                                                      (cons (cons (cons (cons _%$%hd247554247657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (let ((__tmp250192
                                             (cons '%#let-values
                                                   (cons (cons (cons (cons _%$%hd248151248203%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons _%specializer-lambda-expr248582%_ '()))
                       '())
                 (cons _%specializer-case-lambda-expr248720%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp250192
                                         _%stx245898%_))
                                      '()))
                          '())
                    (cons _%$%hd247560247673%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())
                              (cons _%$%hd247563247681%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp250191
                                                      _%stx245898%_)))
                                                  (_%specializer-impl248724%_
                                                   (_%generate-specializer-impl245902%_
                                                    _%$klass248453%_
                                                    _%$method-table248455%_
                                                    _%methods-bind248480%_
                                                    _%slots-bind248504%_
                                                    _%specializer-impl248722%_)))
                                             (let ((__tmp250194
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g245909245971%_)))
                                                   (__tmp250193
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%specializer-id248451%_))))
                                               (declare (not safe))
                                               (gxc#verbose
                                                '"generate method specializer "
                                                __tmp250194
                                                '" => "
                                                __tmp250193))
                                             (_%generate-specializer-def245903%_
                                              _%$%g245909245971%_
                                              _%specializer-id248451%_
                                              _%specializer-impl248724%_))))
                                     (_%$%g248133248163%_
                                      _%$%g248134248166%_))))
                             (_%$%g248133248163%_ _%$%g248134248166%_))
                         (_%$%g248133248163%_ _%$%g248134248166%_))
                     (_%$%g248133248163%_ _%$%g248134248166%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248133248163%_
                                                      _%$%g248134248166%_))
                                                 (_%$%g248133248163%_
                                                  _%$%g248134248166%_))))
                                         (_%$%g248133248163%_
                                          _%$%g248134248166%_))))
                                 (_%$%g248133248163%_ _%$%g248134248166%_))))
                         (_%$%g248133248163%_ _%$%g248134248166%_))))
                 (_%$%g248133248163%_ _%$%g248134248166%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g248133248163%_
                                                  _%$%g248134248166%_)))))
                                     (_%$%g248132248727%_
                                      _%$%hd247557247665%_))
                                   _%stx245898%_)))
                         (_%$%g247730247792%_ _%$%g247731247795%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop247779247914%_
                                              _%$%target247776247901%_
                                              '()))
                                           (_%$%g247730247792%_
                                            _%$%g247731247795%_))))
                                   (_%$%g247730247792%_
                                    _%$%g247731247795%_)))))
                         (_%$%g247730247792%_ _%$%g247731247795%_))
                     (_%$%g247730247792%_ _%$%g247731247795%_))
                 (_%$%g247730247792%_ _%$%g247731247795%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g247730247792%_
                                                  _%$%g247731247795%_))
                                             (_%$%g247730247792%_
                                              _%$%g247731247795%_))
                                         (_%$%g247730247792%_
                                          _%$%g247731247795%_))))
                                 (_%$%g247730247792%_ _%$%g247731247795%_))))
                         (_%$%g247730247792%_ _%$%g247731247795%_))
                     (_%$%g247730247792%_ _%$%g247731247795%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g247730247792%_
                                                      _%$%g247731247795%_))
                                                 (_%$%g247730247792%_
                                                  _%$%g247731247795%_))
                                             (_%$%g247730247792%_
                                              _%$%g247731247795%_))))
                                     (_%$%g247730247792%_
                                      _%$%g247731247795%_))))
                             (_%$%g247730247792%_ _%$%g247731247795%_))
                         (_%$%g247730247792%_ _%$%g247731247795%_))))
                 (_%$%g247730247792%_ _%$%g247731247795%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g247730247792%_
                                                      _%$%g247731247795%_))
                                                 (_%$%g247730247792%_
                                                  _%$%g247731247795%_))))
                                         (_%$%g247730247792%_
                                          _%$%g247731247795%_))))
                                 (_%$%g247730247792%_ _%$%g247731247795%_))
                             (_%$%g247730247792%_ _%$%g247731247795%_))
                         (_%$%g247730247792%_ _%$%g247731247795%_))))
                 (_%$%g247730247792%_ _%$%g247731247795%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g247730247792%_
                                                  _%$%g247731247795%_))))
                                         (_%$%g247730247792%_
                                          _%$%g247731247795%_))
                                     (_%$%g247730247792%_ _%$%g247731247795%_))
                                 (_%$%g247730247792%_ _%$%g247731247795%_))))
                         (_%$%g247730247792%_ _%$%g247731247795%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g247729248731%_
                                                      _%$%hd247560247673%_))
                                                   (_%$%g247516247569%_
                                                    _%$%g247517247572%_))))
                                           (_%$%g247516247569%_
                                            _%$%g247517247572%_))
                                       (_%$%g247516247569%_
                                        _%$%g247517247572%_))
                                   (_%$%g247516247569%_ _%$%g247517247572%_))
                               (_%$%g247516247569%_ _%$%g247517247572%_))))
                       (_%$%g247516247569%_ _%$%g247517247572%_))
                   (_%$%g247516247569%_ _%$%g247517247572%_))
               (_%$%g247516247569%_ _%$%g247517247572%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g247516247569%_
                                                _%$%g247517247572%_))
                                           (_%$%g247516247569%_
                                            _%$%g247517247572%_))))
                                   (_%$%g247516247569%_ _%$%g247517247572%_))))
                           (_%$%g247516247569%_ _%$%g247517247572%_))))
                   (_%$%g247516247569%_ _%$%g247517247572%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g247516247569%_
                                                    _%$%g247517247572%_))
                                               (_%$%g247516247569%_
                                                _%$%g247517247572%_))
                                           (_%$%g247516247569%_
                                            _%$%g247517247572%_))))
                                   (_%$%g247516247569%_ _%$%g247517247572%_))))
                           (_%$%g247516247569%_ _%$%g247517247572%_))
                       (_%$%g247516247569%_ _%$%g247517247572%_))))
               (_%$%g247516247569%_ _%$%g247517247572%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g247516247569%_
                                                _%$%g247517247572%_))))
                                       (_%$%g247516247569%_
                                        _%$%g247517247572%_))))
                               (_%$%g247516247569%_ _%$%g247517247572%_))
                           (_%$%g247516247569%_ _%$%g247517247572%_))
                       (_%$%g247516247569%_ _%$%g247517247572%_))))
               (_%$%g247516247569%_ _%$%g247517247572%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g247515248734%_
                                            _%$%g245908245970%_))
                                         _%stx245898%_))))))))
                  (_%__kont248961248962%_ (lambda () _%stx245898%_)))
              (let ((_%__match248990248991%_
                     (lambda (_%$%e245910245938%_
                              _%$%hd245911245941%_
                              _%$%tl245912245943%_
                              _%$%e245913245946%_
                              _%$%hd245914245949%_
                              _%$%tl245915245951%_
                              _%$%e245916245954%_
                              _%$%hd245917245957%_
                              _%$%tl245918245959%_
                              _%$%e245919245962%_
                              _%$%hd245920245965%_
                              _%$%tl245921245967%_)
                       (let ((_%$%g245908245970%_ _%$%hd245920245965%_)
                             (_%$%g245909245971%_ _%$%hd245917245957%_))
                         (if (let ((__tmp250195
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g245909245971%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp250195))
                             (_%__kont248959248960%_
                              _%$%g245908245970%_
                              _%$%g245909245971%_)
                             (_%__kont248961248962%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx248957248958%_))
                    (let ((_%$%e245910245938%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx248957248958%_))))
                      (let ((_%$%tl245912245943%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e245910245938%_)))
                            (_%$%hd245911245941%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e245910245938%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl245912245943%_))
                            (let ((_%$%e245913245946%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl245912245943%_))))
                              (let ((_%$%tl245915245951%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e245913245946%_)))
                                    (_%$%hd245914245949%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e245913245946%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd245914245949%_))
                                    (let ((_%$%e245916245954%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd245914245949%_))))
                                      (let ((_%$%tl245918245959%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e245916245954%_)))
                                            (_%$%hd245917245957%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e245916245954%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl245918245959%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl245915245951%_))
                                                (let ((_%$%e245919245962%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl245915245951%_))))
                                                  (let ((_%$%tl245921245967%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e245919245962%_)))
                                                        (_%$%hd245920245965%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e245919245962%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl245921245967%_))
                                                        (_%__match248990248991%_
                                                         _%$%e245910245938%_
                                                         _%$%hd245911245941%_
                                                         _%$%tl245912245943%_
                                                         _%$%e245913245946%_
                                                         _%$%hd245914245949%_
                                                         _%$%tl245915245951%_
                                                         _%$%e245916245954%_
                                                         _%$%hd245917245957%_
                                                         _%$%tl245918245959%_
                                                         _%$%e245919245962%_
                                                         _%$%hd245920245965%_
                                                         _%$%tl245921245967%_)
                                                        (_%__kont248961248962%_))))
                                                (_%__kont248961248962%_))
                                            (_%__kont248961248962%_))))
                                    (_%__kont248961248962%_))))
                            (_%__kont248961248962%_))))
                    (_%__kont248961248962%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self245750%_ _%stx245751%_)
        (let* ((_%__stx248993248994%_ _%stx245751%_)
               (_%$%g245754245787%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx248993248994%_)))))
          (let ((_%__kont248995248996%_
                 (lambda (_%$%g245756245877%_) _%$%g245756245877%_))
                (_%__kont248997248998%_
                 (lambda (_%$%g245772245816%_ _%$%g245773245817%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self245750%_ _%$%g245772245816%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx248993248994%_))
                (let ((_%$%e245757245837%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx248993248994%_))))
                  (let ((_%$%tl245759245842%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e245757245837%_)))
                        (_%$%hd245758245840%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e245757245837%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl245759245842%_))
                        (let ((_%$%e245760245845%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl245759245842%_))))
                          (let ((_%$%tl245762245850%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e245760245845%_)))
                                (_%$%hd245761245848%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e245760245845%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd245761245848%_))
                                (let ((_%$%e245763245853%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd245761245848%_))))
                                  (let ((_%$%tl245765245858%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e245763245853%_)))
                                        (_%$%hd245764245856%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e245763245853%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd245764245856%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%$%hd245764245856%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl245765245858%_))
                                                (let ((_%$%e245766245861%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl245765245858%_))))
                                                  (let ((_%$%tl245768245866%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e245766245861%_)))
                                                        (_%$%hd245767245864%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e245766245861%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl245768245866%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl245762245850%_))
                                                            (let ((_%$%e245769245869%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl245762245850%_))))
                      (let ((_%$%tl245771245874%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e245769245869%_)))
                            (_%$%hd245770245872%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e245769245869%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl245771245874%_))
                            (_%__kont248995248996%_ _%$%hd245767245864%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g245754245787%_)))))
                    (let () (declare (not safe)) (_%$%g245754245787%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl245762245850%_))
                    (let ((_%$%e245780245808%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl245762245850%_))))
                      (let ((_%$%tl245782245813%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e245780245808%_)))
                            (_%$%hd245781245811%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e245780245808%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl245782245813%_))
                            (_%__kont248997248998%_
                             _%$%hd245781245811%_
                             _%$%hd245761245848%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g245754245787%_)))))
                    (let () (declare (not safe)) (_%$%g245754245787%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl245762245850%_))
                                                    (let ((_%$%e245780245808%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl245762245850%_))))
                                                      (let ((_%$%tl245782245813%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e245780245808%_)))
                    (_%$%hd245781245811%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e245780245808%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl245782245813%_))
                    (_%__kont248997248998%_
                     _%$%hd245781245811%_
                     _%$%hd245761245848%_)
                    (let () (declare (not safe)) (_%$%g245754245787%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g245754245787%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl245762245850%_))
                                                (let ((_%$%e245780245808%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl245762245850%_))))
                                                  (let ((_%$%tl245782245813%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e245780245808%_)))
                                                        (_%$%hd245781245811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e245780245808%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl245782245813%_))
                                                        (_%__kont248997248998%_
                                                         _%$%hd245781245811%_
                                                         _%$%hd245761245848%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g245754245787%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g245754245787%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl245762245850%_))
                                            (let ((_%$%e245780245808%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl245762245850%_))))
                                              (let ((_%$%tl245782245813%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e245780245808%_)))
                                                    (_%$%hd245781245811%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e245780245808%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl245782245813%_))
                                                    (_%__kont248997248998%_
                                                     _%$%hd245781245811%_
                                                     _%$%hd245761245848%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g245754245787%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g245754245787%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl245762245850%_))
                                    (let ((_%$%e245780245808%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl245762245850%_))))
                                      (let ((_%$%tl245782245813%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e245780245808%_)))
                                            (_%$%hd245781245811%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e245780245808%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl245782245813%_))
                                            (_%__kont248997248998%_
                                             _%$%hd245781245811%_
                                             _%$%hd245761245848%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g245754245787%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g245754245787%_))))))
                        (let () (declare (not safe)) (_%$%g245754245787%_)))))
                (let () (declare (not safe)) (_%$%g245754245787%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self245666%_ _%stx245667%_)
        (let* ((_%$%g245669245690%_
                (lambda (_%$%g245670245687%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g245670245687%_))))
               (_%$%g245668245747%_
                (lambda (_%$%g245670245693%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g245670245693%_))
                      (let ((_%$%e245674245695%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g245670245693%_))))
                        (let ((_%$%hd245675245698%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e245674245695%_)))
                              (_%$%tl245676245700%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e245674245695%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl245676245700%_))
                              (let ((_%$%e245677245703%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl245676245700%_))))
                                (let ((_%$%hd245678245706%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e245677245703%_)))
                                      (_%$%tl245679245708%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e245677245703%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl245679245708%_))
                                      (let ((_%$%e245680245711%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl245679245708%_))))
                                        (let ((_%$%hd245681245714%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e245680245711%_)))
                                              (_%$%tl245682245716%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e245680245711%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl245682245716%_))
                                              (let ((_%$%e245683245719%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl245682245716%_))))
                                                (let ((_%$%hd245684245722%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e245683245719%_)))
                                                      (_%$%tl245685245724%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e245683245719%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl245685245724%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self245666%_
                                                         _%$%hd245681245714%_))
                                                      (_%$%g245669245690%_
                                                       _%$%g245670245693%_))))
                                              (_%$%g245669245690%_
                                               _%$%g245670245693%_))))
                                      (_%$%g245669245690%_
                                       _%$%g245670245693%_))))
                              (_%$%g245669245690%_ _%$%g245670245693%_))))
                      (_%$%g245669245690%_ _%$%g245670245693%_)))))
          (_%$%g245668245747%_ _%stx245667%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self244631%_ _%stx244632%_)
        (let* ((_%__stx249059249060%_ _%stx244632%_)
               (_%$%g244640244862%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx249059249060%_)))))
          (let ((_%__kont249061249062%_
                 (lambda (_%$%g244642245615%_
                          _%$%g244643245616%_
                          _%$%g244644245617%_
                          _%$%g244645245618%_)
                   (let ((__tmp250197
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self244631%_ 'methods)))
                         (__tmp250196
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g244643245616%_))))
                     (declare (not safe))
                     (hash-put! __tmp250197 __tmp250196 '#t))
                   (for-each
                    (lambda (_%$%g245651245653%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self244631%_ _%$%g245651245653%_)))
                    (let ((__tmp250198
                           (lambda (_%$%g245655245658%_ _%$%g245656245660%_)
                             (cons _%$%g245655245658%_ _%$%g245656245660%_))))
                      (declare (not safe))
                      (foldr__0 __tmp250198 '() _%$%g244642245615%_)))))
                (_%__kont249065249066%_
                 (lambda (_%$%g244685245452%_
                          _%$%g244686245453%_
                          _%$%g244687245454%_
                          _%$%g244688245455%_
                          _%$%g244689245456%_)
                   (let ((__tmp250200
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self244631%_ 'methods)))
                         (__tmp250199
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g244686245453%_))))
                     (declare (not safe))
                     (hash-put! __tmp250200 __tmp250199 '#t))
                   (for-each
                    (lambda (_%$%g245496245498%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self244631%_ _%$%g245496245498%_)))
                    (let ((__tmp250201
                           (lambda (_%$%g245500245503%_ _%$%g245501245505%_)
                             (cons _%$%g245500245503%_ _%$%g245501245505%_))))
                      (declare (not safe))
                      (foldr__0 __tmp250201 '() _%$%g244685245452%_)))))
                (_%__kont249069249070%_
                 (lambda (_%$%g244738245287%_
                          _%$%g244739245288%_
                          _%$%g244740245289%_)
                   (let ((__tmp250203
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self244631%_ 'slots)))
                         (__tmp250202
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g244738245287%_))))
                     (declare (not safe))
                     (hash-put! __tmp250203 __tmp250202 '#t))))
                (_%__kont249071249072%_
                 (lambda (_%$%g244771245164%_
                          _%$%g244772245165%_
                          _%$%g244773245166%_
                          _%$%g244774245167%_)
                   (let ((__tmp250205
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self244631%_ 'slots)))
                         (__tmp250204
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g244772245165%_))))
                     (declare (not safe))
                     (hash-put! __tmp250205 __tmp250204 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self244631%_ _%$%g244771245164%_))))
                (_%__kont249073249074%_
                 (lambda (_%$%g244808245038%_ _%$%g244809245039%_)
                   (let* ((_%accessor245061%_
                           (let ((__tmp250206
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g244809245039%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp250206)))
                          (_%klass245063%_
                           (let ((__tmp250207
                                  (##structure-ref
                                   _%accessor245061%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx244632%_
                              __tmp250207)))
                          (_%slot245065%_
                           (##structure-ref
                            _%accessor245061%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor245061%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass245063%_
                                    _%slot245065%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass245063%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp250209
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self244631%_ 'slots)))
                               (__tmp250208
                                (##structure-ref
                                 _%accessor245061%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp250209 __tmp250208 '#t))))))
                (_%__kont249075249076%_
                 (lambda (_%$%g244831244938%_
                          _%$%g244832244939%_
                          _%$%g244833244940%_)
                   (let* ((_%mutator244967%_
                           (let ((__tmp250210
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g244833244940%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp250210)))
                          (_%klass244969%_
                           (let ((__tmp250211
                                  (##structure-ref
                                   _%mutator244967%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx244632%_
                              __tmp250211)))
                          (_%slot244971%_
                           (##structure-ref
                            _%mutator244967%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator244967%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass244969%_
                                    _%slot244971%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass244969%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp250212
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self244631%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp250212 _%slot244971%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1
                        _%self244631%_
                        _%$%g244831244938%_)))))
                (_%__kont249077249078%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self244631%_ _%stx244632%_)))))
            (let* ((_%__match249558249559%_
                    (lambda (_%$%e244834244874%_
                             _%$%hd244835244877%_
                             _%$%tl244836244879%_
                             _%$%e244837244882%_
                             _%$%hd244838244885%_
                             _%$%tl244839244887%_
                             _%$%e244840244890%_
                             _%$%hd244841244893%_
                             _%$%tl244842244895%_
                             _%$%e244843244898%_
                             _%$%hd244844244901%_
                             _%$%tl244845244903%_
                             _%$%e244846244906%_
                             _%$%hd244847244909%_
                             _%$%tl244848244911%_
                             _%$%e244849244914%_
                             _%$%hd244850244917%_
                             _%$%tl244851244919%_
                             _%$%e244852244922%_
                             _%$%hd244853244925%_
                             _%$%tl244854244927%_
                             _%$%e244855244930%_
                             _%$%hd244856244933%_
                             _%$%tl244857244935%_)
                      (let ((_%$%g244831244938%_ _%$%hd244856244933%_)
                            (_%$%g244832244939%_ _%$%hd244853244925%_)
                            (_%$%g244833244940%_ _%$%hd244844244901%_))
                        (if (and (let ((__tmp250213
                                        (let ((__tmp250214
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g244833244940%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp250214))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp250213
                                    'gxc#!mutator::t))
                                 (let ((__tmp250215
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self244631%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g244832244939%_
                                    __tmp250215)))
                            (_%__kont249075249076%_
                             _%$%g244831244938%_
                             _%$%g244832244939%_
                             _%$%g244833244940%_)
                            (_%__kont249077249078%_)))))
                   (_%__match249556249557%_
                    (lambda (_%$%e244834244874%_
                             _%$%hd244835244877%_
                             _%$%tl244836244879%_
                             _%$%e244837244882%_
                             _%$%hd244838244885%_
                             _%$%tl244839244887%_
                             _%$%e244840244890%_
                             _%$%hd244841244893%_
                             _%$%tl244842244895%_
                             _%$%e244843244898%_
                             _%$%hd244844244901%_
                             _%$%tl244845244903%_
                             _%$%e244846244906%_
                             _%$%hd244847244909%_
                             _%$%tl244848244911%_
                             _%$%e244849244914%_
                             _%$%hd244850244917%_
                             _%$%tl244851244919%_
                             _%$%e244852244922%_
                             _%$%hd244853244925%_
                             _%$%tl244854244927%_
                             _%$%e244855244930%_
                             _%$%hd244856244933%_
                             _%$%tl244857244935%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl244857244935%_))
                          (_%__match249558249559%_
                           _%$%e244834244874%_
                           _%$%hd244835244877%_
                           _%$%tl244836244879%_
                           _%$%e244837244882%_
                           _%$%hd244838244885%_
                           _%$%tl244839244887%_
                           _%$%e244840244890%_
                           _%$%hd244841244893%_
                           _%$%tl244842244895%_
                           _%$%e244843244898%_
                           _%$%hd244844244901%_
                           _%$%tl244845244903%_
                           _%$%e244846244906%_
                           _%$%hd244847244909%_
                           _%$%tl244848244911%_
                           _%$%e244849244914%_
                           _%$%hd244850244917%_
                           _%$%tl244851244919%_
                           _%$%e244852244922%_
                           _%$%hd244853244925%_
                           _%$%tl244854244927%_
                           _%$%e244855244930%_
                           _%$%hd244856244933%_
                           _%$%tl244857244935%_)
                          (_%__kont249077249078%_))))
                   (_%__match249550249551%_
                    (lambda (_%$%e244834244874%_
                             _%$%hd244835244877%_
                             _%$%tl244836244879%_
                             _%$%e244837244882%_
                             _%$%hd244838244885%_
                             _%$%tl244839244887%_
                             _%$%e244840244890%_
                             _%$%hd244841244893%_
                             _%$%tl244842244895%_
                             _%$%e244843244898%_
                             _%$%hd244844244901%_
                             _%$%tl244845244903%_
                             _%$%e244846244906%_
                             _%$%hd244847244909%_
                             _%$%tl244848244911%_
                             _%$%e244849244914%_
                             _%$%hd244850244917%_
                             _%$%tl244851244919%_
                             _%$%e244852244922%_
                             _%$%hd244853244925%_
                             _%$%tl244854244927%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl244848244911%_))
                          (let ((_%$%e244855244930%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl244848244911%_))))
                            (let ((_%$%tl244857244935%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e244855244930%_)))
                                  (_%$%hd244856244933%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e244855244930%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl244857244935%_))
                                  (_%__match249558249559%_
                                   _%$%e244834244874%_
                                   _%$%hd244835244877%_
                                   _%$%tl244836244879%_
                                   _%$%e244837244882%_
                                   _%$%hd244838244885%_
                                   _%$%tl244839244887%_
                                   _%$%e244840244890%_
                                   _%$%hd244841244893%_
                                   _%$%tl244842244895%_
                                   _%$%e244843244898%_
                                   _%$%hd244844244901%_
                                   _%$%tl244845244903%_
                                   _%$%e244846244906%_
                                   _%$%hd244847244909%_
                                   _%$%tl244848244911%_
                                   _%$%e244849244914%_
                                   _%$%hd244850244917%_
                                   _%$%tl244851244919%_
                                   _%$%e244852244922%_
                                   _%$%hd244853244925%_
                                   _%$%tl244854244927%_
                                   _%$%e244855244930%_
                                   _%$%hd244856244933%_
                                   _%$%tl244857244935%_)
                                  (_%__kont249077249078%_))))
                          (_%__kont249077249078%_))))
                   (_%__match249496249497%_
                    (lambda (_%$%e244810244982%_
                             _%$%hd244811244985%_
                             _%$%tl244812244987%_
                             _%$%e244813244990%_
                             _%$%hd244814244993%_
                             _%$%tl244815244995%_
                             _%$%e244816244998%_
                             _%$%hd244817245001%_
                             _%$%tl244818245003%_
                             _%$%e244819245006%_
                             _%$%hd244820245009%_
                             _%$%tl244821245011%_
                             _%$%e244822245014%_
                             _%$%hd244823245017%_
                             _%$%tl244824245019%_
                             _%$%e244825245022%_
                             _%$%hd244826245025%_
                             _%$%tl244827245027%_
                             _%$%e244828245030%_
                             _%$%hd244829245033%_
                             _%$%tl244830245035%_)
                      (let ((_%$%g244808245038%_ _%$%hd244829245033%_)
                            (_%$%g244809245039%_ _%$%hd244820245009%_))
                        (if (and (let ((__tmp250216
                                        (let ((__tmp250217
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g244809245039%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp250217))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp250216
                                    'gxc#!accessor::t))
                                 (let ((__tmp250218
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self244631%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g244808245038%_
                                    __tmp250218)))
                            (_%__kont249073249074%_
                             _%$%g244808245038%_
                             _%$%g244809245039%_)
                            (_%__kont249077249078%_)))))
                   (_%__match249494249495%_
                    (lambda (_%$%e244810244982%_
                             _%$%hd244811244985%_
                             _%$%tl244812244987%_
                             _%$%e244813244990%_
                             _%$%hd244814244993%_
                             _%$%tl244815244995%_
                             _%$%e244816244998%_
                             _%$%hd244817245001%_
                             _%$%tl244818245003%_
                             _%$%e244819245006%_
                             _%$%hd244820245009%_
                             _%$%tl244821245011%_
                             _%$%e244822245014%_
                             _%$%hd244823245017%_
                             _%$%tl244824245019%_
                             _%$%e244825245022%_
                             _%$%hd244826245025%_
                             _%$%tl244827245027%_
                             _%$%e244828245030%_
                             _%$%hd244829245033%_
                             _%$%tl244830245035%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl244824245019%_))
                          (_%__match249496249497%_
                           _%$%e244810244982%_
                           _%$%hd244811244985%_
                           _%$%tl244812244987%_
                           _%$%e244813244990%_
                           _%$%hd244814244993%_
                           _%$%tl244815244995%_
                           _%$%e244816244998%_
                           _%$%hd244817245001%_
                           _%$%tl244818245003%_
                           _%$%e244819245006%_
                           _%$%hd244820245009%_
                           _%$%tl244821245011%_
                           _%$%e244822245014%_
                           _%$%hd244823245017%_
                           _%$%tl244824245019%_
                           _%$%e244825245022%_
                           _%$%hd244826245025%_
                           _%$%tl244827245027%_
                           _%$%e244828245030%_
                           _%$%hd244829245033%_
                           _%$%tl244830245035%_)
                          (_%__match249550249551%_
                           _%$%e244810244982%_
                           _%$%hd244811244985%_
                           _%$%tl244812244987%_
                           _%$%e244813244990%_
                           _%$%hd244814244993%_
                           _%$%tl244815244995%_
                           _%$%e244816244998%_
                           _%$%hd244817245001%_
                           _%$%tl244818245003%_
                           _%$%e244819245006%_
                           _%$%hd244820245009%_
                           _%$%tl244821245011%_
                           _%$%e244822245014%_
                           _%$%hd244823245017%_
                           _%$%tl244824245019%_
                           _%$%e244825245022%_
                           _%$%hd244826245025%_
                           _%$%tl244827245027%_
                           _%$%e244828245030%_
                           _%$%hd244829245033%_
                           _%$%tl244830245035%_))))
                   (_%__match249440249441%_
                    (lambda (_%$%e244775245076%_
                             _%$%hd244776245079%_
                             _%$%tl244777245081%_
                             _%$%e244778245084%_
                             _%$%hd244779245087%_
                             _%$%tl244780245089%_
                             _%$%e244781245092%_
                             _%$%hd244782245095%_
                             _%$%tl244783245097%_
                             _%$%e244784245100%_
                             _%$%hd244785245103%_
                             _%$%tl244786245105%_
                             _%$%e244787245108%_
                             _%$%hd244788245111%_
                             _%$%tl244789245113%_
                             _%$%e244790245116%_
                             _%$%hd244791245119%_
                             _%$%tl244792245121%_
                             _%$%e244793245124%_
                             _%$%hd244794245127%_
                             _%$%tl244795245129%_
                             _%$%e244796245132%_
                             _%$%hd244797245135%_
                             _%$%tl244798245137%_
                             _%$%e244799245140%_
                             _%$%hd244800245143%_
                             _%$%tl244801245145%_
                             _%$%e244802245148%_
                             _%$%hd244803245151%_
                             _%$%tl244804245153%_
                             _%$%e244805245156%_
                             _%$%hd244806245159%_
                             _%$%tl244807245161%_)
                      (let ((_%$%g244771245164%_ _%$%hd244806245159%_)
                            (_%$%g244772245165%_ _%$%hd244803245151%_)
                            (_%$%g244773245166%_ _%$%hd244794245127%_)
                            (_%$%g244774245167%_ _%$%hd244785245103%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g244774245167%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g244774245167%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp250219
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self244631%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g244773245166%_
                                    __tmp250219)))
                            (_%__kont249071249072%_
                             _%$%g244771245164%_
                             _%$%g244772245165%_
                             _%$%g244773245166%_
                             _%$%g244774245167%_)
                            (_%__kont249077249078%_)))))
                   (_%__match249432249433%_
                    (lambda (_%$%e244775245076%_
                             _%$%hd244776245079%_
                             _%$%tl244777245081%_
                             _%$%e244778245084%_
                             _%$%hd244779245087%_
                             _%$%tl244780245089%_
                             _%$%e244781245092%_
                             _%$%hd244782245095%_
                             _%$%tl244783245097%_
                             _%$%e244784245100%_
                             _%$%hd244785245103%_
                             _%$%tl244786245105%_
                             _%$%e244787245108%_
                             _%$%hd244788245111%_
                             _%$%tl244789245113%_
                             _%$%e244790245116%_
                             _%$%hd244791245119%_
                             _%$%tl244792245121%_
                             _%$%e244793245124%_
                             _%$%hd244794245127%_
                             _%$%tl244795245129%_
                             _%$%e244796245132%_
                             _%$%hd244797245135%_
                             _%$%tl244798245137%_
                             _%$%e244799245140%_
                             _%$%hd244800245143%_
                             _%$%tl244801245145%_
                             _%$%e244802245148%_
                             _%$%hd244803245151%_
                             _%$%tl244804245153%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl244798245137%_))
                          (let ((_%$%e244805245156%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl244798245137%_))))
                            (let ((_%$%tl244807245161%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e244805245156%_)))
                                  (_%$%hd244806245159%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e244805245156%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl244807245161%_))
                                  (_%__match249440249441%_
                                   _%$%e244775245076%_
                                   _%$%hd244776245079%_
                                   _%$%tl244777245081%_
                                   _%$%e244778245084%_
                                   _%$%hd244779245087%_
                                   _%$%tl244780245089%_
                                   _%$%e244781245092%_
                                   _%$%hd244782245095%_
                                   _%$%tl244783245097%_
                                   _%$%e244784245100%_
                                   _%$%hd244785245103%_
                                   _%$%tl244786245105%_
                                   _%$%e244787245108%_
                                   _%$%hd244788245111%_
                                   _%$%tl244789245113%_
                                   _%$%e244790245116%_
                                   _%$%hd244791245119%_
                                   _%$%tl244792245121%_
                                   _%$%e244793245124%_
                                   _%$%hd244794245127%_
                                   _%$%tl244795245129%_
                                   _%$%e244796245132%_
                                   _%$%hd244797245135%_
                                   _%$%tl244798245137%_
                                   _%$%e244799245140%_
                                   _%$%hd244800245143%_
                                   _%$%tl244801245145%_
                                   _%$%e244802245148%_
                                   _%$%hd244803245151%_
                                   _%$%tl244804245153%_
                                   _%$%e244805245156%_
                                   _%$%hd244806245159%_
                                   _%$%tl244807245161%_)
                                  (_%__kont249077249078%_))))
                          (_%__match249556249557%_
                           _%$%e244775245076%_
                           _%$%hd244776245079%_
                           _%$%tl244777245081%_
                           _%$%e244778245084%_
                           _%$%hd244779245087%_
                           _%$%tl244780245089%_
                           _%$%e244781245092%_
                           _%$%hd244782245095%_
                           _%$%tl244783245097%_
                           _%$%e244784245100%_
                           _%$%hd244785245103%_
                           _%$%tl244786245105%_
                           _%$%e244787245108%_
                           _%$%hd244788245111%_
                           _%$%tl244789245113%_
                           _%$%e244790245116%_
                           _%$%hd244791245119%_
                           _%$%tl244792245121%_
                           _%$%e244793245124%_
                           _%$%hd244794245127%_
                           _%$%tl244795245129%_
                           _%$%e244796245132%_
                           _%$%hd244797245135%_
                           _%$%tl244798245137%_))))
                   (_%__match249354249355%_
                    (lambda (_%$%e244741245207%_
                             _%$%hd244742245210%_
                             _%$%tl244743245212%_
                             _%$%e244744245215%_
                             _%$%hd244745245218%_
                             _%$%tl244746245220%_
                             _%$%e244747245223%_
                             _%$%hd244748245226%_
                             _%$%tl244749245228%_
                             _%$%e244750245231%_
                             _%$%hd244751245234%_
                             _%$%tl244752245236%_
                             _%$%e244753245239%_
                             _%$%hd244754245242%_
                             _%$%tl244755245244%_
                             _%$%e244756245247%_
                             _%$%hd244757245250%_
                             _%$%tl244758245252%_
                             _%$%e244759245255%_
                             _%$%hd244760245258%_
                             _%$%tl244761245260%_
                             _%$%e244762245263%_
                             _%$%hd244763245266%_
                             _%$%tl244764245268%_
                             _%$%e244765245271%_
                             _%$%hd244766245274%_
                             _%$%tl244767245276%_
                             _%$%e244768245279%_
                             _%$%hd244769245282%_
                             _%$%tl244770245284%_)
                      (let ((_%$%g244738245287%_ _%$%hd244769245282%_)
                            (_%$%g244739245288%_ _%$%hd244760245258%_)
                            (_%$%g244740245289%_ _%$%hd244751245234%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g244740245289%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g244740245289%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp250220
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self244631%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g244739245288%_
                                    __tmp250220)))
                            (_%__kont249069249070%_
                             _%$%g244738245287%_
                             _%$%g244739245288%_
                             _%$%g244740245289%_)
                            (_%__match249558249559%_
                             _%$%e244741245207%_
                             _%$%hd244742245210%_
                             _%$%tl244743245212%_
                             _%$%e244744245215%_
                             _%$%hd244745245218%_
                             _%$%tl244746245220%_
                             _%$%e244747245223%_
                             _%$%hd244748245226%_
                             _%$%tl244749245228%_
                             _%$%e244750245231%_
                             _%$%hd244751245234%_
                             _%$%tl244752245236%_
                             _%$%e244753245239%_
                             _%$%hd244754245242%_
                             _%$%tl244755245244%_
                             _%$%e244756245247%_
                             _%$%hd244757245250%_
                             _%$%tl244758245252%_
                             _%$%e244759245255%_
                             _%$%hd244760245258%_
                             _%$%tl244761245260%_
                             _%$%e244762245263%_
                             _%$%hd244763245266%_
                             _%$%tl244764245268%_)))))
                   (_%__match249352249353%_
                    (lambda (_%$%e244741245207%_
                             _%$%hd244742245210%_
                             _%$%tl244743245212%_
                             _%$%e244744245215%_
                             _%$%hd244745245218%_
                             _%$%tl244746245220%_
                             _%$%e244747245223%_
                             _%$%hd244748245226%_
                             _%$%tl244749245228%_
                             _%$%e244750245231%_
                             _%$%hd244751245234%_
                             _%$%tl244752245236%_
                             _%$%e244753245239%_
                             _%$%hd244754245242%_
                             _%$%tl244755245244%_
                             _%$%e244756245247%_
                             _%$%hd244757245250%_
                             _%$%tl244758245252%_
                             _%$%e244759245255%_
                             _%$%hd244760245258%_
                             _%$%tl244761245260%_
                             _%$%e244762245263%_
                             _%$%hd244763245266%_
                             _%$%tl244764245268%_
                             _%$%e244765245271%_
                             _%$%hd244766245274%_
                             _%$%tl244767245276%_
                             _%$%e244768245279%_
                             _%$%hd244769245282%_
                             _%$%tl244770245284%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl244764245268%_))
                          (_%__match249354249355%_
                           _%$%e244741245207%_
                           _%$%hd244742245210%_
                           _%$%tl244743245212%_
                           _%$%e244744245215%_
                           _%$%hd244745245218%_
                           _%$%tl244746245220%_
                           _%$%e244747245223%_
                           _%$%hd244748245226%_
                           _%$%tl244749245228%_
                           _%$%e244750245231%_
                           _%$%hd244751245234%_
                           _%$%tl244752245236%_
                           _%$%e244753245239%_
                           _%$%hd244754245242%_
                           _%$%tl244755245244%_
                           _%$%e244756245247%_
                           _%$%hd244757245250%_
                           _%$%tl244758245252%_
                           _%$%e244759245255%_
                           _%$%hd244760245258%_
                           _%$%tl244761245260%_
                           _%$%e244762245263%_
                           _%$%hd244763245266%_
                           _%$%tl244764245268%_
                           _%$%e244765245271%_
                           _%$%hd244766245274%_
                           _%$%tl244767245276%_
                           _%$%e244768245279%_
                           _%$%hd244769245282%_
                           _%$%tl244770245284%_)
                          (_%__match249432249433%_
                           _%$%e244741245207%_
                           _%$%hd244742245210%_
                           _%$%tl244743245212%_
                           _%$%e244744245215%_
                           _%$%hd244745245218%_
                           _%$%tl244746245220%_
                           _%$%e244747245223%_
                           _%$%hd244748245226%_
                           _%$%tl244749245228%_
                           _%$%e244750245231%_
                           _%$%hd244751245234%_
                           _%$%tl244752245236%_
                           _%$%e244753245239%_
                           _%$%hd244754245242%_
                           _%$%tl244755245244%_
                           _%$%e244756245247%_
                           _%$%hd244757245250%_
                           _%$%tl244758245252%_
                           _%$%e244759245255%_
                           _%$%hd244760245258%_
                           _%$%tl244761245260%_
                           _%$%e244762245263%_
                           _%$%hd244763245266%_
                           _%$%tl244764245268%_
                           _%$%e244765245271%_
                           _%$%hd244766245274%_
                           _%$%tl244767245276%_
                           _%$%e244768245279%_
                           _%$%hd244769245282%_
                           _%$%tl244770245284%_))))
                   (_%__match249342249343%_
                    (lambda (_%$%e244741245207%_
                             _%$%hd244742245210%_
                             _%$%tl244743245212%_
                             _%$%e244744245215%_
                             _%$%hd244745245218%_
                             _%$%tl244746245220%_
                             _%$%e244747245223%_
                             _%$%hd244748245226%_
                             _%$%tl244749245228%_
                             _%$%e244750245231%_
                             _%$%hd244751245234%_
                             _%$%tl244752245236%_
                             _%$%e244753245239%_
                             _%$%hd244754245242%_
                             _%$%tl244755245244%_
                             _%$%e244756245247%_
                             _%$%hd244757245250%_
                             _%$%tl244758245252%_
                             _%$%e244759245255%_
                             _%$%hd244760245258%_
                             _%$%tl244761245260%_
                             _%$%e244762245263%_
                             _%$%hd244763245266%_
                             _%$%tl244764245268%_
                             _%$%e244765245271%_
                             _%$%hd244766245274%_
                             _%$%tl244767245276%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%$%hd244766245274%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl244767245276%_))
                              (let ((_%$%e244768245279%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl244767245276%_))))
                                (let ((_%$%tl244770245284%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e244768245279%_)))
                                      (_%$%hd244769245282%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e244768245279%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl244770245284%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl244764245268%_))
                                          (_%__match249354249355%_
                                           _%$%e244741245207%_
                                           _%$%hd244742245210%_
                                           _%$%tl244743245212%_
                                           _%$%e244744245215%_
                                           _%$%hd244745245218%_
                                           _%$%tl244746245220%_
                                           _%$%e244747245223%_
                                           _%$%hd244748245226%_
                                           _%$%tl244749245228%_
                                           _%$%e244750245231%_
                                           _%$%hd244751245234%_
                                           _%$%tl244752245236%_
                                           _%$%e244753245239%_
                                           _%$%hd244754245242%_
                                           _%$%tl244755245244%_
                                           _%$%e244756245247%_
                                           _%$%hd244757245250%_
                                           _%$%tl244758245252%_
                                           _%$%e244759245255%_
                                           _%$%hd244760245258%_
                                           _%$%tl244761245260%_
                                           _%$%e244762245263%_
                                           _%$%hd244763245266%_
                                           _%$%tl244764245268%_
                                           _%$%e244765245271%_
                                           _%$%hd244766245274%_
                                           _%$%tl244767245276%_
                                           _%$%e244768245279%_
                                           _%$%hd244769245282%_
                                           _%$%tl244770245284%_)
                                          (_%__match249432249433%_
                                           _%$%e244741245207%_
                                           _%$%hd244742245210%_
                                           _%$%tl244743245212%_
                                           _%$%e244744245215%_
                                           _%$%hd244745245218%_
                                           _%$%tl244746245220%_
                                           _%$%e244747245223%_
                                           _%$%hd244748245226%_
                                           _%$%tl244749245228%_
                                           _%$%e244750245231%_
                                           _%$%hd244751245234%_
                                           _%$%tl244752245236%_
                                           _%$%e244753245239%_
                                           _%$%hd244754245242%_
                                           _%$%tl244755245244%_
                                           _%$%e244756245247%_
                                           _%$%hd244757245250%_
                                           _%$%tl244758245252%_
                                           _%$%e244759245255%_
                                           _%$%hd244760245258%_
                                           _%$%tl244761245260%_
                                           _%$%e244762245263%_
                                           _%$%hd244763245266%_
                                           _%$%tl244764245268%_
                                           _%$%e244765245271%_
                                           _%$%hd244766245274%_
                                           _%$%tl244767245276%_
                                           _%$%e244768245279%_
                                           _%$%hd244769245282%_
                                           _%$%tl244770245284%_))
                                      (_%__match249556249557%_
                                       _%$%e244741245207%_
                                       _%$%hd244742245210%_
                                       _%$%tl244743245212%_
                                       _%$%e244744245215%_
                                       _%$%hd244745245218%_
                                       _%$%tl244746245220%_
                                       _%$%e244747245223%_
                                       _%$%hd244748245226%_
                                       _%$%tl244749245228%_
                                       _%$%e244750245231%_
                                       _%$%hd244751245234%_
                                       _%$%tl244752245236%_
                                       _%$%e244753245239%_
                                       _%$%hd244754245242%_
                                       _%$%tl244755245244%_
                                       _%$%e244756245247%_
                                       _%$%hd244757245250%_
                                       _%$%tl244758245252%_
                                       _%$%e244759245255%_
                                       _%$%hd244760245258%_
                                       _%$%tl244761245260%_
                                       _%$%e244762245263%_
                                       _%$%hd244763245266%_
                                       _%$%tl244764245268%_))))
                              (_%__match249556249557%_
                               _%$%e244741245207%_
                               _%$%hd244742245210%_
                               _%$%tl244743245212%_
                               _%$%e244744245215%_
                               _%$%hd244745245218%_
                               _%$%tl244746245220%_
                               _%$%e244747245223%_
                               _%$%hd244748245226%_
                               _%$%tl244749245228%_
                               _%$%e244750245231%_
                               _%$%hd244751245234%_
                               _%$%tl244752245236%_
                               _%$%e244753245239%_
                               _%$%hd244754245242%_
                               _%$%tl244755245244%_
                               _%$%e244756245247%_
                               _%$%hd244757245250%_
                               _%$%tl244758245252%_
                               _%$%e244759245255%_
                               _%$%hd244760245258%_
                               _%$%tl244761245260%_
                               _%$%e244762245263%_
                               _%$%hd244763245266%_
                               _%$%tl244764245268%_))
                          (_%__match249556249557%_
                           _%$%e244741245207%_
                           _%$%hd244742245210%_
                           _%$%tl244743245212%_
                           _%$%e244744245215%_
                           _%$%hd244745245218%_
                           _%$%tl244746245220%_
                           _%$%e244747245223%_
                           _%$%hd244748245226%_
                           _%$%tl244749245228%_
                           _%$%e244750245231%_
                           _%$%hd244751245234%_
                           _%$%tl244752245236%_
                           _%$%e244753245239%_
                           _%$%hd244754245242%_
                           _%$%tl244755245244%_
                           _%$%e244756245247%_
                           _%$%hd244757245250%_
                           _%$%tl244758245252%_
                           _%$%e244759245255%_
                           _%$%hd244760245258%_
                           _%$%tl244761245260%_
                           _%$%e244762245263%_
                           _%$%hd244763245266%_
                           _%$%tl244764245268%_))))
                   (_%__match249274249275%_
                    (lambda (_%$%e244690245326%_
                             _%$%hd244691245329%_
                             _%$%tl244692245331%_
                             _%$%e244693245334%_
                             _%$%hd244694245337%_
                             _%$%tl244695245339%_
                             _%$%e244696245342%_
                             _%$%hd244697245345%_
                             _%$%tl244698245347%_
                             _%$%e244699245350%_
                             _%$%hd244700245353%_
                             _%$%tl244701245355%_
                             _%$%e244702245358%_
                             _%$%hd244703245361%_
                             _%$%tl244704245363%_
                             _%$%e244705245366%_
                             _%$%hd244706245369%_
                             _%$%tl244707245371%_
                             _%$%e244708245374%_
                             _%$%hd244709245377%_
                             _%$%tl244710245379%_
                             _%$%e244711245382%_
                             _%$%hd244712245385%_
                             _%$%tl244713245387%_
                             _%$%e244714245390%_
                             _%$%hd244715245393%_
                             _%$%tl244716245395%_
                             _%$%e244717245398%_
                             _%$%hd244718245401%_
                             _%$%tl244719245403%_
                             _%$%e244720245406%_
                             _%$%hd244721245409%_
                             _%$%tl244722245411%_
                             _%$%e244723245414%_
                             _%$%hd244724245417%_
                             _%$%tl244725245419%_
                             _%$%e244726245422%_
                             _%$%hd244727245425%_
                             _%$%tl244728245427%_
                             _%__splice249067249068%_
                             _%$%target244729245430%_
                             _%$%tl244731245432%_)
                      (letrec ((_%$%loop244732245435%_
                                (lambda (_%$%hd244730245438%_
                                         _%$%args244736245440%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd244730245438%_))
                                      (let ((_%$%e244733245442%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd244730245438%_))))
                                        (let ((_%$%lp-tl244735245447%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e244733245442%_)))
                                              (_%$%lp-hd244734245445%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e244733245442%_))))
                                          (_%$%loop244732245435%_
                                           _%$%lp-tl244735245447%_
                                           (cons _%$%lp-hd244734245445%_
                                                 _%$%args244736245440%_))))
                                      (let ((_%$%args244737245450%_
                                             (reverse _%$%args244736245440%_)))
                                        (let ((_%$%g244685245452%_
                                               _%$%args244737245450%_)
                                              (_%$%g244686245453%_
                                               _%$%hd244727245425%_)
                                              (_%$%g244687245454%_
                                               _%$%hd244718245401%_)
                                              (_%$%g244688245455%_
                                               _%$%hd244709245377%_)
                                              (_%$%g244689245456%_
                                               _%$%hd244700245353%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g244689245456%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g244688245455%_
                                                      'call-method))
                                                   (let ((__tmp250221
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self244631%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g244687245454%_
                                                      __tmp250221)))
                                              (_%__kont249065249066%_
                                               _%$%g244685245452%_
                                               _%$%g244686245453%_
                                               _%$%g244687245454%_
                                               _%$%g244688245455%_
                                               _%$%g244689245456%_)
                                              (_%__kont249077249078%_))))))))
                        (_%$%loop244732245435%_
                         _%$%target244729245430%_
                         '()))))
                   (_%__match249232249233%_
                    (lambda (_%$%e244690245326%_
                             _%$%hd244691245329%_
                             _%$%tl244692245331%_
                             _%$%e244693245334%_
                             _%$%hd244694245337%_
                             _%$%tl244695245339%_
                             _%$%e244696245342%_
                             _%$%hd244697245345%_
                             _%$%tl244698245347%_
                             _%$%e244699245350%_
                             _%$%hd244700245353%_
                             _%$%tl244701245355%_
                             _%$%e244702245358%_
                             _%$%hd244703245361%_
                             _%$%tl244704245363%_
                             _%$%e244705245366%_
                             _%$%hd244706245369%_
                             _%$%tl244707245371%_
                             _%$%e244708245374%_
                             _%$%hd244709245377%_
                             _%$%tl244710245379%_
                             _%$%e244711245382%_
                             _%$%hd244712245385%_
                             _%$%tl244713245387%_
                             _%$%e244714245390%_
                             _%$%hd244715245393%_
                             _%$%tl244716245395%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%$%hd244715245393%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl244716245395%_))
                              (let ((_%$%e244717245398%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl244716245395%_))))
                                (let ((_%$%tl244719245403%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e244717245398%_)))
                                      (_%$%hd244718245401%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e244717245398%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl244719245403%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl244713245387%_))
                                          (let ((_%$%e244720245406%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl244713245387%_))))
                                            (let ((_%$%tl244722245411%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e244720245406%_)))
                                                  (_%$%hd244721245409%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e244720245406%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd244721245409%_))
                                                  (let ((_%$%e244723245414%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd244721245409%_))))
                                                    (let ((_%$%tl244725245419%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e244723245414%_)))
                                                          (_%$%hd244724245417%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e244723245414%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd244724245417%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%$%hd244724245417%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl244725245419%_))
                          (let ((_%$%e244726245422%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl244725245419%_))))
                            (let ((_%$%tl244728245427%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e244726245422%_)))
                                  (_%$%hd244727245425%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e244726245422%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl244728245427%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl244722245411%_))
                                      (let ((_%__splice249067249068%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl244722245411%_
                                                '0))))
                                        (let ((_%$%tl244731245432%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice249067249068%_
                                                  '1)))
                                              (_%$%target244729245430%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice249067249068%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl244731245432%_))
                                              (_%__match249274249275%_
                                               _%$%e244690245326%_
                                               _%$%hd244691245329%_
                                               _%$%tl244692245331%_
                                               _%$%e244693245334%_
                                               _%$%hd244694245337%_
                                               _%$%tl244695245339%_
                                               _%$%e244696245342%_
                                               _%$%hd244697245345%_
                                               _%$%tl244698245347%_
                                               _%$%e244699245350%_
                                               _%$%hd244700245353%_
                                               _%$%tl244701245355%_
                                               _%$%e244702245358%_
                                               _%$%hd244703245361%_
                                               _%$%tl244704245363%_
                                               _%$%e244705245366%_
                                               _%$%hd244706245369%_
                                               _%$%tl244707245371%_
                                               _%$%e244708245374%_
                                               _%$%hd244709245377%_
                                               _%$%tl244710245379%_
                                               _%$%e244711245382%_
                                               _%$%hd244712245385%_
                                               _%$%tl244713245387%_
                                               _%$%e244714245390%_
                                               _%$%hd244715245393%_
                                               _%$%tl244716245395%_
                                               _%$%e244717245398%_
                                               _%$%hd244718245401%_
                                               _%$%tl244719245403%_
                                               _%$%e244720245406%_
                                               _%$%hd244721245409%_
                                               _%$%tl244722245411%_
                                               _%$%e244723245414%_
                                               _%$%hd244724245417%_
                                               _%$%tl244725245419%_
                                               _%$%e244726245422%_
                                               _%$%hd244727245425%_
                                               _%$%tl244728245427%_
                                               _%__splice249067249068%_
                                               _%$%target244729245430%_
                                               _%$%tl244731245432%_)
                                              (_%__kont249077249078%_))))
                                      (_%__kont249077249078%_))
                                  (_%__kont249077249078%_))))
                          (_%__kont249077249078%_))
                      (_%__kont249077249078%_))
                  (_%__kont249077249078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont249077249078%_))))
                                          (_%__match249556249557%_
                                           _%$%e244690245326%_
                                           _%$%hd244691245329%_
                                           _%$%tl244692245331%_
                                           _%$%e244693245334%_
                                           _%$%hd244694245337%_
                                           _%$%tl244695245339%_
                                           _%$%e244696245342%_
                                           _%$%hd244697245345%_
                                           _%$%tl244698245347%_
                                           _%$%e244699245350%_
                                           _%$%hd244700245353%_
                                           _%$%tl244701245355%_
                                           _%$%e244702245358%_
                                           _%$%hd244703245361%_
                                           _%$%tl244704245363%_
                                           _%$%e244705245366%_
                                           _%$%hd244706245369%_
                                           _%$%tl244707245371%_
                                           _%$%e244708245374%_
                                           _%$%hd244709245377%_
                                           _%$%tl244710245379%_
                                           _%$%e244711245382%_
                                           _%$%hd244712245385%_
                                           _%$%tl244713245387%_))
                                      (_%__match249556249557%_
                                       _%$%e244690245326%_
                                       _%$%hd244691245329%_
                                       _%$%tl244692245331%_
                                       _%$%e244693245334%_
                                       _%$%hd244694245337%_
                                       _%$%tl244695245339%_
                                       _%$%e244696245342%_
                                       _%$%hd244697245345%_
                                       _%$%tl244698245347%_
                                       _%$%e244699245350%_
                                       _%$%hd244700245353%_
                                       _%$%tl244701245355%_
                                       _%$%e244702245358%_
                                       _%$%hd244703245361%_
                                       _%$%tl244704245363%_
                                       _%$%e244705245366%_
                                       _%$%hd244706245369%_
                                       _%$%tl244707245371%_
                                       _%$%e244708245374%_
                                       _%$%hd244709245377%_
                                       _%$%tl244710245379%_
                                       _%$%e244711245382%_
                                       _%$%hd244712245385%_
                                       _%$%tl244713245387%_))))
                              (_%__match249556249557%_
                               _%$%e244690245326%_
                               _%$%hd244691245329%_
                               _%$%tl244692245331%_
                               _%$%e244693245334%_
                               _%$%hd244694245337%_
                               _%$%tl244695245339%_
                               _%$%e244696245342%_
                               _%$%hd244697245345%_
                               _%$%tl244698245347%_
                               _%$%e244699245350%_
                               _%$%hd244700245353%_
                               _%$%tl244701245355%_
                               _%$%e244702245358%_
                               _%$%hd244703245361%_
                               _%$%tl244704245363%_
                               _%$%e244705245366%_
                               _%$%hd244706245369%_
                               _%$%tl244707245371%_
                               _%$%e244708245374%_
                               _%$%hd244709245377%_
                               _%$%tl244710245379%_
                               _%$%e244711245382%_
                               _%$%hd244712245385%_
                               _%$%tl244713245387%_))
                          (_%__match249342249343%_
                           _%$%e244690245326%_
                           _%$%hd244691245329%_
                           _%$%tl244692245331%_
                           _%$%e244693245334%_
                           _%$%hd244694245337%_
                           _%$%tl244695245339%_
                           _%$%e244696245342%_
                           _%$%hd244697245345%_
                           _%$%tl244698245347%_
                           _%$%e244699245350%_
                           _%$%hd244700245353%_
                           _%$%tl244701245355%_
                           _%$%e244702245358%_
                           _%$%hd244703245361%_
                           _%$%tl244704245363%_
                           _%$%e244705245366%_
                           _%$%hd244706245369%_
                           _%$%tl244707245371%_
                           _%$%e244708245374%_
                           _%$%hd244709245377%_
                           _%$%tl244710245379%_
                           _%$%e244711245382%_
                           _%$%hd244712245385%_
                           _%$%tl244713245387%_
                           _%$%e244714245390%_
                           _%$%hd244715245393%_
                           _%$%tl244716245395%_))))
                   (_%__match249164249165%_
                    (lambda (_%$%e244646245513%_
                             _%$%hd244647245516%_
                             _%$%tl244648245518%_
                             _%$%e244649245521%_
                             _%$%hd244650245524%_
                             _%$%tl244651245526%_
                             _%$%e244652245529%_
                             _%$%hd244653245532%_
                             _%$%tl244654245534%_
                             _%$%e244655245537%_
                             _%$%hd244656245540%_
                             _%$%tl244657245542%_
                             _%$%e244658245545%_
                             _%$%hd244659245548%_
                             _%$%tl244660245550%_
                             _%$%e244661245553%_
                             _%$%hd244662245556%_
                             _%$%tl244663245558%_
                             _%$%e244664245561%_
                             _%$%hd244665245564%_
                             _%$%tl244666245566%_
                             _%$%e244667245569%_
                             _%$%hd244668245572%_
                             _%$%tl244669245574%_
                             _%$%e244670245577%_
                             _%$%hd244671245580%_
                             _%$%tl244672245582%_
                             _%$%e244673245585%_
                             _%$%hd244674245588%_
                             _%$%tl244675245590%_
                             _%__splice249063249064%_
                             _%$%target244676245593%_
                             _%$%tl244678245595%_)
                      (letrec ((_%$%loop244679245598%_
                                (lambda (_%$%hd244677245601%_
                                         _%$%args244683245603%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd244677245601%_))
                                      (let ((_%$%e244680245605%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd244677245601%_))))
                                        (let ((_%$%lp-tl244682245610%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e244680245605%_)))
                                              (_%$%lp-hd244681245608%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e244680245605%_))))
                                          (_%$%loop244679245598%_
                                           _%$%lp-tl244682245610%_
                                           (cons _%$%lp-hd244681245608%_
                                                 _%$%args244683245603%_))))
                                      (let ((_%$%args244684245613%_
                                             (reverse _%$%args244683245603%_)))
                                        (let ((_%$%g244642245615%_
                                               _%$%args244684245613%_)
                                              (_%$%g244643245616%_
                                               _%$%hd244674245588%_)
                                              (_%$%g244644245617%_
                                               _%$%hd244665245564%_)
                                              (_%$%g244645245618%_
                                               _%$%hd244656245540%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g244645245618%_
                                                      'call-method))
                                                   (let ((__tmp250222
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self244631%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g244644245617%_
                                                      __tmp250222)))
                                              (_%__kont249061249062%_
                                               _%$%g244642245615%_
                                               _%$%g244643245616%_
                                               _%$%g244644245617%_
                                               _%$%g244645245618%_)
                                              (_%__match249352249353%_
                                               _%$%e244646245513%_
                                               _%$%hd244647245516%_
                                               _%$%tl244648245518%_
                                               _%$%e244649245521%_
                                               _%$%hd244650245524%_
                                               _%$%tl244651245526%_
                                               _%$%e244652245529%_
                                               _%$%hd244653245532%_
                                               _%$%tl244654245534%_
                                               _%$%e244655245537%_
                                               _%$%hd244656245540%_
                                               _%$%tl244657245542%_
                                               _%$%e244658245545%_
                                               _%$%hd244659245548%_
                                               _%$%tl244660245550%_
                                               _%$%e244661245553%_
                                               _%$%hd244662245556%_
                                               _%$%tl244663245558%_
                                               _%$%e244664245561%_
                                               _%$%hd244665245564%_
                                               _%$%tl244666245566%_
                                               _%$%e244667245569%_
                                               _%$%hd244668245572%_
                                               _%$%tl244669245574%_
                                               _%$%e244670245577%_
                                               _%$%hd244671245580%_
                                               _%$%tl244672245582%_
                                               _%$%e244673245585%_
                                               _%$%hd244674245588%_
                                               _%$%tl244675245590%_))))))))
                        (_%$%loop244679245598%_
                         _%$%target244676245593%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx249059249060%_))
                  (let ((_%$%e244646245513%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx249059249060%_))))
                    (let ((_%$%tl244648245518%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e244646245513%_)))
                          (_%$%hd244647245516%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e244646245513%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl244648245518%_))
                          (let ((_%$%e244649245521%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl244648245518%_))))
                            (let ((_%$%tl244651245526%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e244649245521%_)))
                                  (_%$%hd244650245524%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e244649245521%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd244650245524%_))
                                  (let ((_%$%e244652245529%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd244650245524%_))))
                                    (let ((_%$%tl244654245534%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e244652245529%_)))
                                          (_%$%hd244653245532%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e244652245529%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd244653245532%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd244653245532%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl244654245534%_))
                                                  (let ((_%$%e244655245537%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl244654245534%_))))
                                                    (let ((_%$%tl244657245542%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e244655245537%_)))
                                                          (_%$%hd244656245540%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e244655245537%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl244657245542%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl244651245526%_))
                      (let ((_%$%e244658245545%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl244651245526%_))))
                        (let ((_%$%tl244660245550%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e244658245545%_)))
                              (_%$%hd244659245548%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e244658245545%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd244659245548%_))
                              (let ((_%$%e244661245553%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd244659245548%_))))
                                (let ((_%$%tl244663245558%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e244661245553%_)))
                                      (_%$%hd244662245556%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e244661245553%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd244662245556%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd244662245556%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl244663245558%_))
                                              (let ((_%$%e244664245561%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl244663245558%_))))
                                                (let ((_%$%tl244666245566%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e244664245561%_)))
                                                      (_%$%hd244665245564%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e244664245561%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl244666245566%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl244660245550%_))
                                                          (let ((_%$%e244667245569%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl244660245550%_))))
                    (let ((_%$%tl244669245574%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e244667245569%_)))
                          (_%$%hd244668245572%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e244667245569%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd244668245572%_))
                          (let ((_%$%e244670245577%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd244668245572%_))))
                            (let ((_%$%tl244672245582%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e244670245577%_)))
                                  (_%$%hd244671245580%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e244670245577%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd244671245580%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd244671245580%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl244672245582%_))
                                          (let ((_%$%e244673245585%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl244672245582%_))))
                                            (let ((_%$%tl244675245590%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e244673245585%_)))
                                                  (_%$%hd244674245588%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e244673245585%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl244675245590%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl244669245574%_))
                                                      (let ((_%__splice249063249064%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl244669245574%_
                        '0))))
                (let ((_%$%tl244678245595%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice249063249064%_ '1)))
                      (_%$%target244676245593%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice249063249064%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl244678245595%_))
                      (_%__match249164249165%_
                       _%$%e244646245513%_
                       _%$%hd244647245516%_
                       _%$%tl244648245518%_
                       _%$%e244649245521%_
                       _%$%hd244650245524%_
                       _%$%tl244651245526%_
                       _%$%e244652245529%_
                       _%$%hd244653245532%_
                       _%$%tl244654245534%_
                       _%$%e244655245537%_
                       _%$%hd244656245540%_
                       _%$%tl244657245542%_
                       _%$%e244658245545%_
                       _%$%hd244659245548%_
                       _%$%tl244660245550%_
                       _%$%e244661245553%_
                       _%$%hd244662245556%_
                       _%$%tl244663245558%_
                       _%$%e244664245561%_
                       _%$%hd244665245564%_
                       _%$%tl244666245566%_
                       _%$%e244667245569%_
                       _%$%hd244668245572%_
                       _%$%tl244669245574%_
                       _%$%e244670245577%_
                       _%$%hd244671245580%_
                       _%$%tl244672245582%_
                       _%$%e244673245585%_
                       _%$%hd244674245588%_
                       _%$%tl244675245590%_
                       _%__splice249063249064%_
                       _%$%target244676245593%_
                       _%$%tl244678245595%_)
                      (_%__match249352249353%_
                       _%$%e244646245513%_
                       _%$%hd244647245516%_
                       _%$%tl244648245518%_
                       _%$%e244649245521%_
                       _%$%hd244650245524%_
                       _%$%tl244651245526%_
                       _%$%e244652245529%_
                       _%$%hd244653245532%_
                       _%$%tl244654245534%_
                       _%$%e244655245537%_
                       _%$%hd244656245540%_
                       _%$%tl244657245542%_
                       _%$%e244658245545%_
                       _%$%hd244659245548%_
                       _%$%tl244660245550%_
                       _%$%e244661245553%_
                       _%$%hd244662245556%_
                       _%$%tl244663245558%_
                       _%$%e244664245561%_
                       _%$%hd244665245564%_
                       _%$%tl244666245566%_
                       _%$%e244667245569%_
                       _%$%hd244668245572%_
                       _%$%tl244669245574%_
                       _%$%e244670245577%_
                       _%$%hd244671245580%_
                       _%$%tl244672245582%_
                       _%$%e244673245585%_
                       _%$%hd244674245588%_
                       _%$%tl244675245590%_))))
              (_%__match249352249353%_
               _%$%e244646245513%_
               _%$%hd244647245516%_
               _%$%tl244648245518%_
               _%$%e244649245521%_
               _%$%hd244650245524%_
               _%$%tl244651245526%_
               _%$%e244652245529%_
               _%$%hd244653245532%_
               _%$%tl244654245534%_
               _%$%e244655245537%_
               _%$%hd244656245540%_
               _%$%tl244657245542%_
               _%$%e244658245545%_
               _%$%hd244659245548%_
               _%$%tl244660245550%_
               _%$%e244661245553%_
               _%$%hd244662245556%_
               _%$%tl244663245558%_
               _%$%e244664245561%_
               _%$%hd244665245564%_
               _%$%tl244666245566%_
               _%$%e244667245569%_
               _%$%hd244668245572%_
               _%$%tl244669245574%_
               _%$%e244670245577%_
               _%$%hd244671245580%_
               _%$%tl244672245582%_
               _%$%e244673245585%_
               _%$%hd244674245588%_
               _%$%tl244675245590%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match249556249557%_
                                                   _%$%e244646245513%_
                                                   _%$%hd244647245516%_
                                                   _%$%tl244648245518%_
                                                   _%$%e244649245521%_
                                                   _%$%hd244650245524%_
                                                   _%$%tl244651245526%_
                                                   _%$%e244652245529%_
                                                   _%$%hd244653245532%_
                                                   _%$%tl244654245534%_
                                                   _%$%e244655245537%_
                                                   _%$%hd244656245540%_
                                                   _%$%tl244657245542%_
                                                   _%$%e244658245545%_
                                                   _%$%hd244659245548%_
                                                   _%$%tl244660245550%_
                                                   _%$%e244661245553%_
                                                   _%$%hd244662245556%_
                                                   _%$%tl244663245558%_
                                                   _%$%e244664245561%_
                                                   _%$%hd244665245564%_
                                                   _%$%tl244666245566%_
                                                   _%$%e244667245569%_
                                                   _%$%hd244668245572%_
                                                   _%$%tl244669245574%_))))
                                          (_%__match249556249557%_
                                           _%$%e244646245513%_
                                           _%$%hd244647245516%_
                                           _%$%tl244648245518%_
                                           _%$%e244649245521%_
                                           _%$%hd244650245524%_
                                           _%$%tl244651245526%_
                                           _%$%e244652245529%_
                                           _%$%hd244653245532%_
                                           _%$%tl244654245534%_
                                           _%$%e244655245537%_
                                           _%$%hd244656245540%_
                                           _%$%tl244657245542%_
                                           _%$%e244658245545%_
                                           _%$%hd244659245548%_
                                           _%$%tl244660245550%_
                                           _%$%e244661245553%_
                                           _%$%hd244662245556%_
                                           _%$%tl244663245558%_
                                           _%$%e244664245561%_
                                           _%$%hd244665245564%_
                                           _%$%tl244666245566%_
                                           _%$%e244667245569%_
                                           _%$%hd244668245572%_
                                           _%$%tl244669245574%_))
                                      (_%__match249232249233%_
                                       _%$%e244646245513%_
                                       _%$%hd244647245516%_
                                       _%$%tl244648245518%_
                                       _%$%e244649245521%_
                                       _%$%hd244650245524%_
                                       _%$%tl244651245526%_
                                       _%$%e244652245529%_
                                       _%$%hd244653245532%_
                                       _%$%tl244654245534%_
                                       _%$%e244655245537%_
                                       _%$%hd244656245540%_
                                       _%$%tl244657245542%_
                                       _%$%e244658245545%_
                                       _%$%hd244659245548%_
                                       _%$%tl244660245550%_
                                       _%$%e244661245553%_
                                       _%$%hd244662245556%_
                                       _%$%tl244663245558%_
                                       _%$%e244664245561%_
                                       _%$%hd244665245564%_
                                       _%$%tl244666245566%_
                                       _%$%e244667245569%_
                                       _%$%hd244668245572%_
                                       _%$%tl244669245574%_
                                       _%$%e244670245577%_
                                       _%$%hd244671245580%_
                                       _%$%tl244672245582%_))
                                  (_%__match249556249557%_
                                   _%$%e244646245513%_
                                   _%$%hd244647245516%_
                                   _%$%tl244648245518%_
                                   _%$%e244649245521%_
                                   _%$%hd244650245524%_
                                   _%$%tl244651245526%_
                                   _%$%e244652245529%_
                                   _%$%hd244653245532%_
                                   _%$%tl244654245534%_
                                   _%$%e244655245537%_
                                   _%$%hd244656245540%_
                                   _%$%tl244657245542%_
                                   _%$%e244658245545%_
                                   _%$%hd244659245548%_
                                   _%$%tl244660245550%_
                                   _%$%e244661245553%_
                                   _%$%hd244662245556%_
                                   _%$%tl244663245558%_
                                   _%$%e244664245561%_
                                   _%$%hd244665245564%_
                                   _%$%tl244666245566%_
                                   _%$%e244667245569%_
                                   _%$%hd244668245572%_
                                   _%$%tl244669245574%_))))
                          (_%__match249556249557%_
                           _%$%e244646245513%_
                           _%$%hd244647245516%_
                           _%$%tl244648245518%_
                           _%$%e244649245521%_
                           _%$%hd244650245524%_
                           _%$%tl244651245526%_
                           _%$%e244652245529%_
                           _%$%hd244653245532%_
                           _%$%tl244654245534%_
                           _%$%e244655245537%_
                           _%$%hd244656245540%_
                           _%$%tl244657245542%_
                           _%$%e244658245545%_
                           _%$%hd244659245548%_
                           _%$%tl244660245550%_
                           _%$%e244661245553%_
                           _%$%hd244662245556%_
                           _%$%tl244663245558%_
                           _%$%e244664245561%_
                           _%$%hd244665245564%_
                           _%$%tl244666245566%_
                           _%$%e244667245569%_
                           _%$%hd244668245572%_
                           _%$%tl244669245574%_))))
                  (_%__match249494249495%_
                   _%$%e244646245513%_
                   _%$%hd244647245516%_
                   _%$%tl244648245518%_
                   _%$%e244649245521%_
                   _%$%hd244650245524%_
                   _%$%tl244651245526%_
                   _%$%e244652245529%_
                   _%$%hd244653245532%_
                   _%$%tl244654245534%_
                   _%$%e244655245537%_
                   _%$%hd244656245540%_
                   _%$%tl244657245542%_
                   _%$%e244658245545%_
                   _%$%hd244659245548%_
                   _%$%tl244660245550%_
                   _%$%e244661245553%_
                   _%$%hd244662245556%_
                   _%$%tl244663245558%_
                   _%$%e244664245561%_
                   _%$%hd244665245564%_
                   _%$%tl244666245566%_))
              (_%__kont249077249078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont249077249078%_))
                                          (_%__kont249077249078%_))
                                      (_%__kont249077249078%_))))
                              (_%__kont249077249078%_))))
                      (_%__kont249077249078%_))
                  (_%__kont249077249078%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont249077249078%_))
                                              (_%__kont249077249078%_))
                                          (_%__kont249077249078%_))))
                                  (_%__kont249077249078%_))))
                          (_%__kont249077249078%_))))
                  (_%__kont249077249078%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self243574%_ _%stx243575%_)
        (letrec ((_%force-e243577%_
                  (lambda (_%target244629%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target244629%_ '()))
                                      '()))))))
          (let* ((_%__stx249561249562%_ _%stx243575%_)
                 (_%$%g243585243807%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx249561249562%_)))))
            (let ((_%__kont249563249564%_
                   (lambda (_%$%g243587244575%_
                            _%$%g243588244576%_
                            _%$%g243589244577%_
                            _%$%g243590244578%_)
                     (let ((_%$method244623%_
                            (let ((__tmp250224
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self243574%_ 'methods)))
                                  (__tmp250223
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g243588244576%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp250224 __tmp250223)))
                           (_%args244624%_
                            (map (lambda (_%$%g244611244613%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self243574%_
                                      _%$%g244611244613%_)))
                                 (let ((__tmp250225
                                        (lambda (_%$%g244615244618%_
                                                 _%$%g244616244620%_)
                                          (cons _%$%g244615244618%_
                                                _%$%g244616244620%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp250225
                                    '()
                                    _%$%g243587244575%_)))))
                       (let ((__tmp250226
                              (cons '%#call
                                    (cons (_%force-e243577%_ _%$method244623%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self243574%_
                                                               'receiver))
                                                            '()))
                                                _%args244624%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp250226 _%stx243575%_)))))
                  (_%__kont249567249568%_
                   (lambda (_%$%g243630244409%_
                            _%$%g243631244410%_
                            _%$%g243632244411%_
                            _%$%g243633244412%_
                            _%$%g243634244413%_)
                     (let ((_%$method244465%_
                            (let ((__tmp250228
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self243574%_ 'methods)))
                                  (__tmp250227
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g243631244410%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp250228 __tmp250227)))
                           (_%args244466%_
                            (map (lambda (_%$%g244453244455%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self243574%_
                                      _%$%g244453244455%_)))
                                 (let ((__tmp250229
                                        (lambda (_%$%g244457244460%_
                                                 _%$%g244458244462%_)
                                          (cons _%$%g244457244460%_
                                                _%$%g244458244462%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp250229
                                    '()
                                    _%$%g243630244409%_)))))
                       (let ((__tmp250230
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e243577%_
                                                 _%$method244465%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self243574%_ 'receiver))
                          '()))
              _%args244466%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp250230 _%stx243575%_)))))
                  (_%__kont249571249572%_
                   (lambda (_%$%g243683244242%_
                            _%$%g243684244243%_
                            _%$%g243685244244%_)
                     (let* ((_%$field244276%_
                             (let ((__tmp250232
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self243574%_ 'slots)))
                                   (__tmp250231
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%g243683244242%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp250232 __tmp250231)))
                            (__tmp250233
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self243574%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field244276%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self243574%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp250233 _%stx243575%_))))
                  (_%__kont249573249574%_
                   (lambda (_%$%g243716244116%_
                            _%$%g243717244117%_
                            _%$%g243718244118%_
                            _%$%g243719244119%_)
                     (let ((_%$field244154%_
                            (let ((__tmp250235
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self243574%_ 'slots)))
                                  (__tmp250234
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g243717244117%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp250235 __tmp250234)))
                           (_%expr244155%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self243574%_
                               _%$%g243716244116%_))))
                       (let ((__tmp250236
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self243574%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field244154%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self243574%_ 'receiver))
                          '()))
              (cons _%expr244155%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp250236 _%stx243575%_)))))
                  (_%__kont249575249576%_
                   (lambda (_%$%g243753243988%_ _%$%g243754243989%_)
                     (let* ((_%accessor244011%_
                             (let ((__tmp250237
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g243754243989%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp250237)))
                            (_%klass244013%_
                             (let ((__tmp250238
                                    (##structure-ref
                                     _%accessor244011%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx243575%_
                                __tmp250238)))
                            (_%slot244015%_
                             (##structure-ref
                              _%accessor244011%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor244011%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass244013%_
                                      _%slot244015%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass244013%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx243575%_
                           (let* ((_%$field244021%_
                                   (let ((__tmp250239
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243574%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp250239 _%slot244015%_)))
                                  (__tmp250240
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self243574%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field244021%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self243574%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp250240
                              _%stx243575%_))))))
                  (_%__kont249577249578%_
                   (lambda (_%$%g243776243883%_
                            _%$%g243777243884%_
                            _%$%g243778243885%_)
                     (let* ((_%mutator243913%_
                             (let ((__tmp250241
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g243778243885%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp250241)))
                            (_%klass243915%_
                             (let ((__tmp250242
                                    (##structure-ref
                                     _%mutator243913%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx243575%_
                                __tmp250242)))
                            (_%slot243917%_
                             (##structure-ref
                              _%mutator243913%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr243919%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self243574%_
                                _%$%g243776243883%_))))
                       (if (if (##structure-ref
                                _%mutator243913%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass243915%_
                                      _%slot243917%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass243915%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp250243
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%$%g243778243885%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g243777243884%_
                                                                '()))
                                                    (cons _%expr243919%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp250243 _%stx243575%_))
                           (let* ((_%$field243925%_
                                   (let ((__tmp250244
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243574%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp250244 _%slot243917%_)))
                                  (__tmp250245
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self243574%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field243925%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self243574%_ 'receiver))
                               '()))
                   (cons _%expr243919%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp250245
                              _%stx243575%_))))))
                  (_%__kont249579249580%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self243574%_ _%stx243575%_)))))
              (let* ((_%__match250060250061%_
                      (lambda (_%$%e243779243819%_
                               _%$%hd243780243822%_
                               _%$%tl243781243824%_
                               _%$%e243782243827%_
                               _%$%hd243783243830%_
                               _%$%tl243784243832%_
                               _%$%e243785243835%_
                               _%$%hd243786243838%_
                               _%$%tl243787243840%_
                               _%$%e243788243843%_
                               _%$%hd243789243846%_
                               _%$%tl243790243848%_
                               _%$%e243791243851%_
                               _%$%hd243792243854%_
                               _%$%tl243793243856%_
                               _%$%e243794243859%_
                               _%$%hd243795243862%_
                               _%$%tl243796243864%_
                               _%$%e243797243867%_
                               _%$%hd243798243870%_
                               _%$%tl243799243872%_
                               _%$%e243800243875%_
                               _%$%hd243801243878%_
                               _%$%tl243802243880%_)
                        (let ((_%$%g243776243883%_ _%$%hd243801243878%_)
                              (_%$%g243777243884%_ _%$%hd243798243870%_)
                              (_%$%g243778243885%_ _%$%hd243789243846%_))
                          (if (and (let ((__tmp250246
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243574%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g243777243884%_
                                      __tmp250246))
                                   (let ((__tmp250247
                                          (let ((__tmp250248
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g243778243885%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp250248))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp250247
                                      'gxc#!mutator::t)))
                              (_%__kont249577249578%_
                               _%$%g243776243883%_
                               _%$%g243777243884%_
                               _%$%g243778243885%_)
                              (_%__kont249579249580%_)))))
                     (_%__match250058250059%_
                      (lambda (_%$%e243779243819%_
                               _%$%hd243780243822%_
                               _%$%tl243781243824%_
                               _%$%e243782243827%_
                               _%$%hd243783243830%_
                               _%$%tl243784243832%_
                               _%$%e243785243835%_
                               _%$%hd243786243838%_
                               _%$%tl243787243840%_
                               _%$%e243788243843%_
                               _%$%hd243789243846%_
                               _%$%tl243790243848%_
                               _%$%e243791243851%_
                               _%$%hd243792243854%_
                               _%$%tl243793243856%_
                               _%$%e243794243859%_
                               _%$%hd243795243862%_
                               _%$%tl243796243864%_
                               _%$%e243797243867%_
                               _%$%hd243798243870%_
                               _%$%tl243799243872%_
                               _%$%e243800243875%_
                               _%$%hd243801243878%_
                               _%$%tl243802243880%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl243802243880%_))
                            (_%__match250060250061%_
                             _%$%e243779243819%_
                             _%$%hd243780243822%_
                             _%$%tl243781243824%_
                             _%$%e243782243827%_
                             _%$%hd243783243830%_
                             _%$%tl243784243832%_
                             _%$%e243785243835%_
                             _%$%hd243786243838%_
                             _%$%tl243787243840%_
                             _%$%e243788243843%_
                             _%$%hd243789243846%_
                             _%$%tl243790243848%_
                             _%$%e243791243851%_
                             _%$%hd243792243854%_
                             _%$%tl243793243856%_
                             _%$%e243794243859%_
                             _%$%hd243795243862%_
                             _%$%tl243796243864%_
                             _%$%e243797243867%_
                             _%$%hd243798243870%_
                             _%$%tl243799243872%_
                             _%$%e243800243875%_
                             _%$%hd243801243878%_
                             _%$%tl243802243880%_)
                            (_%__kont249579249580%_))))
                     (_%__match250052250053%_
                      (lambda (_%$%e243779243819%_
                               _%$%hd243780243822%_
                               _%$%tl243781243824%_
                               _%$%e243782243827%_
                               _%$%hd243783243830%_
                               _%$%tl243784243832%_
                               _%$%e243785243835%_
                               _%$%hd243786243838%_
                               _%$%tl243787243840%_
                               _%$%e243788243843%_
                               _%$%hd243789243846%_
                               _%$%tl243790243848%_
                               _%$%e243791243851%_
                               _%$%hd243792243854%_
                               _%$%tl243793243856%_
                               _%$%e243794243859%_
                               _%$%hd243795243862%_
                               _%$%tl243796243864%_
                               _%$%e243797243867%_
                               _%$%hd243798243870%_
                               _%$%tl243799243872%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl243793243856%_))
                            (let ((_%$%e243800243875%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl243793243856%_))))
                              (let ((_%$%tl243802243880%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e243800243875%_)))
                                    (_%$%hd243801243878%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e243800243875%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl243802243880%_))
                                    (_%__match250060250061%_
                                     _%$%e243779243819%_
                                     _%$%hd243780243822%_
                                     _%$%tl243781243824%_
                                     _%$%e243782243827%_
                                     _%$%hd243783243830%_
                                     _%$%tl243784243832%_
                                     _%$%e243785243835%_
                                     _%$%hd243786243838%_
                                     _%$%tl243787243840%_
                                     _%$%e243788243843%_
                                     _%$%hd243789243846%_
                                     _%$%tl243790243848%_
                                     _%$%e243791243851%_
                                     _%$%hd243792243854%_
                                     _%$%tl243793243856%_
                                     _%$%e243794243859%_
                                     _%$%hd243795243862%_
                                     _%$%tl243796243864%_
                                     _%$%e243797243867%_
                                     _%$%hd243798243870%_
                                     _%$%tl243799243872%_
                                     _%$%e243800243875%_
                                     _%$%hd243801243878%_
                                     _%$%tl243802243880%_)
                                    (_%__kont249579249580%_))))
                            (_%__kont249579249580%_))))
                     (_%__match249998249999%_
                      (lambda (_%$%e243755243932%_
                               _%$%hd243756243935%_
                               _%$%tl243757243937%_
                               _%$%e243758243940%_
                               _%$%hd243759243943%_
                               _%$%tl243760243945%_
                               _%$%e243761243948%_
                               _%$%hd243762243951%_
                               _%$%tl243763243953%_
                               _%$%e243764243956%_
                               _%$%hd243765243959%_
                               _%$%tl243766243961%_
                               _%$%e243767243964%_
                               _%$%hd243768243967%_
                               _%$%tl243769243969%_
                               _%$%e243770243972%_
                               _%$%hd243771243975%_
                               _%$%tl243772243977%_
                               _%$%e243773243980%_
                               _%$%hd243774243983%_
                               _%$%tl243775243985%_)
                        (let ((_%$%g243753243988%_ _%$%hd243774243983%_)
                              (_%$%g243754243989%_ _%$%hd243765243959%_))
                          (if (and (let ((__tmp250249
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243574%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g243753243988%_
                                      __tmp250249))
                                   (let ((__tmp250250
                                          (let ((__tmp250251
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g243754243989%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp250251))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp250250
                                      'gxc#!accessor::t)))
                              (_%__kont249575249576%_
                               _%$%g243753243988%_
                               _%$%g243754243989%_)
                              (_%__kont249579249580%_)))))
                     (_%__match249996249997%_
                      (lambda (_%$%e243755243932%_
                               _%$%hd243756243935%_
                               _%$%tl243757243937%_
                               _%$%e243758243940%_
                               _%$%hd243759243943%_
                               _%$%tl243760243945%_
                               _%$%e243761243948%_
                               _%$%hd243762243951%_
                               _%$%tl243763243953%_
                               _%$%e243764243956%_
                               _%$%hd243765243959%_
                               _%$%tl243766243961%_
                               _%$%e243767243964%_
                               _%$%hd243768243967%_
                               _%$%tl243769243969%_
                               _%$%e243770243972%_
                               _%$%hd243771243975%_
                               _%$%tl243772243977%_
                               _%$%e243773243980%_
                               _%$%hd243774243983%_
                               _%$%tl243775243985%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl243769243969%_))
                            (_%__match249998249999%_
                             _%$%e243755243932%_
                             _%$%hd243756243935%_
                             _%$%tl243757243937%_
                             _%$%e243758243940%_
                             _%$%hd243759243943%_
                             _%$%tl243760243945%_
                             _%$%e243761243948%_
                             _%$%hd243762243951%_
                             _%$%tl243763243953%_
                             _%$%e243764243956%_
                             _%$%hd243765243959%_
                             _%$%tl243766243961%_
                             _%$%e243767243964%_
                             _%$%hd243768243967%_
                             _%$%tl243769243969%_
                             _%$%e243770243972%_
                             _%$%hd243771243975%_
                             _%$%tl243772243977%_
                             _%$%e243773243980%_
                             _%$%hd243774243983%_
                             _%$%tl243775243985%_)
                            (_%__match250052250053%_
                             _%$%e243755243932%_
                             _%$%hd243756243935%_
                             _%$%tl243757243937%_
                             _%$%e243758243940%_
                             _%$%hd243759243943%_
                             _%$%tl243760243945%_
                             _%$%e243761243948%_
                             _%$%hd243762243951%_
                             _%$%tl243763243953%_
                             _%$%e243764243956%_
                             _%$%hd243765243959%_
                             _%$%tl243766243961%_
                             _%$%e243767243964%_
                             _%$%hd243768243967%_
                             _%$%tl243769243969%_
                             _%$%e243770243972%_
                             _%$%hd243771243975%_
                             _%$%tl243772243977%_
                             _%$%e243773243980%_
                             _%$%hd243774243983%_
                             _%$%tl243775243985%_))))
                     (_%__match249942249943%_
                      (lambda (_%$%e243720244028%_
                               _%$%hd243721244031%_
                               _%$%tl243722244033%_
                               _%$%e243723244036%_
                               _%$%hd243724244039%_
                               _%$%tl243725244041%_
                               _%$%e243726244044%_
                               _%$%hd243727244047%_
                               _%$%tl243728244049%_
                               _%$%e243729244052%_
                               _%$%hd243730244055%_
                               _%$%tl243731244057%_
                               _%$%e243732244060%_
                               _%$%hd243733244063%_
                               _%$%tl243734244065%_
                               _%$%e243735244068%_
                               _%$%hd243736244071%_
                               _%$%tl243737244073%_
                               _%$%e243738244076%_
                               _%$%hd243739244079%_
                               _%$%tl243740244081%_
                               _%$%e243741244084%_
                               _%$%hd243742244087%_
                               _%$%tl243743244089%_
                               _%$%e243744244092%_
                               _%$%hd243745244095%_
                               _%$%tl243746244097%_
                               _%$%e243747244100%_
                               _%$%hd243748244103%_
                               _%$%tl243749244105%_
                               _%$%e243750244108%_
                               _%$%hd243751244111%_
                               _%$%tl243752244113%_)
                        (let ((_%$%g243716244116%_ _%$%hd243751244111%_)
                              (_%$%g243717244117%_ _%$%hd243748244103%_)
                              (_%$%g243718244118%_ _%$%hd243739244079%_)
                              (_%$%g243719244119%_ _%$%hd243730244055%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g243719244119%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g243719244119%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp250252
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243574%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g243718244118%_
                                      __tmp250252)))
                              (_%__kont249573249574%_
                               _%$%g243716244116%_
                               _%$%g243717244117%_
                               _%$%g243718244118%_
                               _%$%g243719244119%_)
                              (_%__kont249579249580%_)))))
                     (_%__match249934249935%_
                      (lambda (_%$%e243720244028%_
                               _%$%hd243721244031%_
                               _%$%tl243722244033%_
                               _%$%e243723244036%_
                               _%$%hd243724244039%_
                               _%$%tl243725244041%_
                               _%$%e243726244044%_
                               _%$%hd243727244047%_
                               _%$%tl243728244049%_
                               _%$%e243729244052%_
                               _%$%hd243730244055%_
                               _%$%tl243731244057%_
                               _%$%e243732244060%_
                               _%$%hd243733244063%_
                               _%$%tl243734244065%_
                               _%$%e243735244068%_
                               _%$%hd243736244071%_
                               _%$%tl243737244073%_
                               _%$%e243738244076%_
                               _%$%hd243739244079%_
                               _%$%tl243740244081%_
                               _%$%e243741244084%_
                               _%$%hd243742244087%_
                               _%$%tl243743244089%_
                               _%$%e243744244092%_
                               _%$%hd243745244095%_
                               _%$%tl243746244097%_
                               _%$%e243747244100%_
                               _%$%hd243748244103%_
                               _%$%tl243749244105%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl243743244089%_))
                            (let ((_%$%e243750244108%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl243743244089%_))))
                              (let ((_%$%tl243752244113%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e243750244108%_)))
                                    (_%$%hd243751244111%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e243750244108%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl243752244113%_))
                                    (_%__match249942249943%_
                                     _%$%e243720244028%_
                                     _%$%hd243721244031%_
                                     _%$%tl243722244033%_
                                     _%$%e243723244036%_
                                     _%$%hd243724244039%_
                                     _%$%tl243725244041%_
                                     _%$%e243726244044%_
                                     _%$%hd243727244047%_
                                     _%$%tl243728244049%_
                                     _%$%e243729244052%_
                                     _%$%hd243730244055%_
                                     _%$%tl243731244057%_
                                     _%$%e243732244060%_
                                     _%$%hd243733244063%_
                                     _%$%tl243734244065%_
                                     _%$%e243735244068%_
                                     _%$%hd243736244071%_
                                     _%$%tl243737244073%_
                                     _%$%e243738244076%_
                                     _%$%hd243739244079%_
                                     _%$%tl243740244081%_
                                     _%$%e243741244084%_
                                     _%$%hd243742244087%_
                                     _%$%tl243743244089%_
                                     _%$%e243744244092%_
                                     _%$%hd243745244095%_
                                     _%$%tl243746244097%_
                                     _%$%e243747244100%_
                                     _%$%hd243748244103%_
                                     _%$%tl243749244105%_
                                     _%$%e243750244108%_
                                     _%$%hd243751244111%_
                                     _%$%tl243752244113%_)
                                    (_%__kont249579249580%_))))
                            (_%__match250058250059%_
                             _%$%e243720244028%_
                             _%$%hd243721244031%_
                             _%$%tl243722244033%_
                             _%$%e243723244036%_
                             _%$%hd243724244039%_
                             _%$%tl243725244041%_
                             _%$%e243726244044%_
                             _%$%hd243727244047%_
                             _%$%tl243728244049%_
                             _%$%e243729244052%_
                             _%$%hd243730244055%_
                             _%$%tl243731244057%_
                             _%$%e243732244060%_
                             _%$%hd243733244063%_
                             _%$%tl243734244065%_
                             _%$%e243735244068%_
                             _%$%hd243736244071%_
                             _%$%tl243737244073%_
                             _%$%e243738244076%_
                             _%$%hd243739244079%_
                             _%$%tl243740244081%_
                             _%$%e243741244084%_
                             _%$%hd243742244087%_
                             _%$%tl243743244089%_))))
                     (_%__match249856249857%_
                      (lambda (_%$%e243686244162%_
                               _%$%hd243687244165%_
                               _%$%tl243688244167%_
                               _%$%e243689244170%_
                               _%$%hd243690244173%_
                               _%$%tl243691244175%_
                               _%$%e243692244178%_
                               _%$%hd243693244181%_
                               _%$%tl243694244183%_
                               _%$%e243695244186%_
                               _%$%hd243696244189%_
                               _%$%tl243697244191%_
                               _%$%e243698244194%_
                               _%$%hd243699244197%_
                               _%$%tl243700244199%_
                               _%$%e243701244202%_
                               _%$%hd243702244205%_
                               _%$%tl243703244207%_
                               _%$%e243704244210%_
                               _%$%hd243705244213%_
                               _%$%tl243706244215%_
                               _%$%e243707244218%_
                               _%$%hd243708244221%_
                               _%$%tl243709244223%_
                               _%$%e243710244226%_
                               _%$%hd243711244229%_
                               _%$%tl243712244231%_
                               _%$%e243713244234%_
                               _%$%hd243714244237%_
                               _%$%tl243715244239%_)
                        (let ((_%$%g243683244242%_ _%$%hd243714244237%_)
                              (_%$%g243684244243%_ _%$%hd243705244213%_)
                              (_%$%g243685244244%_ _%$%hd243696244189%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g243685244244%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g243685244244%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp250253
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243574%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g243684244243%_
                                      __tmp250253)))
                              (_%__kont249571249572%_
                               _%$%g243683244242%_
                               _%$%g243684244243%_
                               _%$%g243685244244%_)
                              (_%__match250060250061%_
                               _%$%e243686244162%_
                               _%$%hd243687244165%_
                               _%$%tl243688244167%_
                               _%$%e243689244170%_
                               _%$%hd243690244173%_
                               _%$%tl243691244175%_
                               _%$%e243692244178%_
                               _%$%hd243693244181%_
                               _%$%tl243694244183%_
                               _%$%e243695244186%_
                               _%$%hd243696244189%_
                               _%$%tl243697244191%_
                               _%$%e243698244194%_
                               _%$%hd243699244197%_
                               _%$%tl243700244199%_
                               _%$%e243701244202%_
                               _%$%hd243702244205%_
                               _%$%tl243703244207%_
                               _%$%e243704244210%_
                               _%$%hd243705244213%_
                               _%$%tl243706244215%_
                               _%$%e243707244218%_
                               _%$%hd243708244221%_
                               _%$%tl243709244223%_)))))
                     (_%__match249854249855%_
                      (lambda (_%$%e243686244162%_
                               _%$%hd243687244165%_
                               _%$%tl243688244167%_
                               _%$%e243689244170%_
                               _%$%hd243690244173%_
                               _%$%tl243691244175%_
                               _%$%e243692244178%_
                               _%$%hd243693244181%_
                               _%$%tl243694244183%_
                               _%$%e243695244186%_
                               _%$%hd243696244189%_
                               _%$%tl243697244191%_
                               _%$%e243698244194%_
                               _%$%hd243699244197%_
                               _%$%tl243700244199%_
                               _%$%e243701244202%_
                               _%$%hd243702244205%_
                               _%$%tl243703244207%_
                               _%$%e243704244210%_
                               _%$%hd243705244213%_
                               _%$%tl243706244215%_
                               _%$%e243707244218%_
                               _%$%hd243708244221%_
                               _%$%tl243709244223%_
                               _%$%e243710244226%_
                               _%$%hd243711244229%_
                               _%$%tl243712244231%_
                               _%$%e243713244234%_
                               _%$%hd243714244237%_
                               _%$%tl243715244239%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl243709244223%_))
                            (_%__match249856249857%_
                             _%$%e243686244162%_
                             _%$%hd243687244165%_
                             _%$%tl243688244167%_
                             _%$%e243689244170%_
                             _%$%hd243690244173%_
                             _%$%tl243691244175%_
                             _%$%e243692244178%_
                             _%$%hd243693244181%_
                             _%$%tl243694244183%_
                             _%$%e243695244186%_
                             _%$%hd243696244189%_
                             _%$%tl243697244191%_
                             _%$%e243698244194%_
                             _%$%hd243699244197%_
                             _%$%tl243700244199%_
                             _%$%e243701244202%_
                             _%$%hd243702244205%_
                             _%$%tl243703244207%_
                             _%$%e243704244210%_
                             _%$%hd243705244213%_
                             _%$%tl243706244215%_
                             _%$%e243707244218%_
                             _%$%hd243708244221%_
                             _%$%tl243709244223%_
                             _%$%e243710244226%_
                             _%$%hd243711244229%_
                             _%$%tl243712244231%_
                             _%$%e243713244234%_
                             _%$%hd243714244237%_
                             _%$%tl243715244239%_)
                            (_%__match249934249935%_
                             _%$%e243686244162%_
                             _%$%hd243687244165%_
                             _%$%tl243688244167%_
                             _%$%e243689244170%_
                             _%$%hd243690244173%_
                             _%$%tl243691244175%_
                             _%$%e243692244178%_
                             _%$%hd243693244181%_
                             _%$%tl243694244183%_
                             _%$%e243695244186%_
                             _%$%hd243696244189%_
                             _%$%tl243697244191%_
                             _%$%e243698244194%_
                             _%$%hd243699244197%_
                             _%$%tl243700244199%_
                             _%$%e243701244202%_
                             _%$%hd243702244205%_
                             _%$%tl243703244207%_
                             _%$%e243704244210%_
                             _%$%hd243705244213%_
                             _%$%tl243706244215%_
                             _%$%e243707244218%_
                             _%$%hd243708244221%_
                             _%$%tl243709244223%_
                             _%$%e243710244226%_
                             _%$%hd243711244229%_
                             _%$%tl243712244231%_
                             _%$%e243713244234%_
                             _%$%hd243714244237%_
                             _%$%tl243715244239%_))))
                     (_%__match249844249845%_
                      (lambda (_%$%e243686244162%_
                               _%$%hd243687244165%_
                               _%$%tl243688244167%_
                               _%$%e243689244170%_
                               _%$%hd243690244173%_
                               _%$%tl243691244175%_
                               _%$%e243692244178%_
                               _%$%hd243693244181%_
                               _%$%tl243694244183%_
                               _%$%e243695244186%_
                               _%$%hd243696244189%_
                               _%$%tl243697244191%_
                               _%$%e243698244194%_
                               _%$%hd243699244197%_
                               _%$%tl243700244199%_
                               _%$%e243701244202%_
                               _%$%hd243702244205%_
                               _%$%tl243703244207%_
                               _%$%e243704244210%_
                               _%$%hd243705244213%_
                               _%$%tl243706244215%_
                               _%$%e243707244218%_
                               _%$%hd243708244221%_
                               _%$%tl243709244223%_
                               _%$%e243710244226%_
                               _%$%hd243711244229%_
                               _%$%tl243712244231%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%$%hd243711244229%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl243712244231%_))
                                (let ((_%$%e243713244234%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl243712244231%_))))
                                  (let ((_%$%tl243715244239%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e243713244234%_)))
                                        (_%$%hd243714244237%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e243713244234%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl243715244239%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl243709244223%_))
                                            (_%__match249856249857%_
                                             _%$%e243686244162%_
                                             _%$%hd243687244165%_
                                             _%$%tl243688244167%_
                                             _%$%e243689244170%_
                                             _%$%hd243690244173%_
                                             _%$%tl243691244175%_
                                             _%$%e243692244178%_
                                             _%$%hd243693244181%_
                                             _%$%tl243694244183%_
                                             _%$%e243695244186%_
                                             _%$%hd243696244189%_
                                             _%$%tl243697244191%_
                                             _%$%e243698244194%_
                                             _%$%hd243699244197%_
                                             _%$%tl243700244199%_
                                             _%$%e243701244202%_
                                             _%$%hd243702244205%_
                                             _%$%tl243703244207%_
                                             _%$%e243704244210%_
                                             _%$%hd243705244213%_
                                             _%$%tl243706244215%_
                                             _%$%e243707244218%_
                                             _%$%hd243708244221%_
                                             _%$%tl243709244223%_
                                             _%$%e243710244226%_
                                             _%$%hd243711244229%_
                                             _%$%tl243712244231%_
                                             _%$%e243713244234%_
                                             _%$%hd243714244237%_
                                             _%$%tl243715244239%_)
                                            (_%__match249934249935%_
                                             _%$%e243686244162%_
                                             _%$%hd243687244165%_
                                             _%$%tl243688244167%_
                                             _%$%e243689244170%_
                                             _%$%hd243690244173%_
                                             _%$%tl243691244175%_
                                             _%$%e243692244178%_
                                             _%$%hd243693244181%_
                                             _%$%tl243694244183%_
                                             _%$%e243695244186%_
                                             _%$%hd243696244189%_
                                             _%$%tl243697244191%_
                                             _%$%e243698244194%_
                                             _%$%hd243699244197%_
                                             _%$%tl243700244199%_
                                             _%$%e243701244202%_
                                             _%$%hd243702244205%_
                                             _%$%tl243703244207%_
                                             _%$%e243704244210%_
                                             _%$%hd243705244213%_
                                             _%$%tl243706244215%_
                                             _%$%e243707244218%_
                                             _%$%hd243708244221%_
                                             _%$%tl243709244223%_
                                             _%$%e243710244226%_
                                             _%$%hd243711244229%_
                                             _%$%tl243712244231%_
                                             _%$%e243713244234%_
                                             _%$%hd243714244237%_
                                             _%$%tl243715244239%_))
                                        (_%__match250058250059%_
                                         _%$%e243686244162%_
                                         _%$%hd243687244165%_
                                         _%$%tl243688244167%_
                                         _%$%e243689244170%_
                                         _%$%hd243690244173%_
                                         _%$%tl243691244175%_
                                         _%$%e243692244178%_
                                         _%$%hd243693244181%_
                                         _%$%tl243694244183%_
                                         _%$%e243695244186%_
                                         _%$%hd243696244189%_
                                         _%$%tl243697244191%_
                                         _%$%e243698244194%_
                                         _%$%hd243699244197%_
                                         _%$%tl243700244199%_
                                         _%$%e243701244202%_
                                         _%$%hd243702244205%_
                                         _%$%tl243703244207%_
                                         _%$%e243704244210%_
                                         _%$%hd243705244213%_
                                         _%$%tl243706244215%_
                                         _%$%e243707244218%_
                                         _%$%hd243708244221%_
                                         _%$%tl243709244223%_))))
                                (_%__match250058250059%_
                                 _%$%e243686244162%_
                                 _%$%hd243687244165%_
                                 _%$%tl243688244167%_
                                 _%$%e243689244170%_
                                 _%$%hd243690244173%_
                                 _%$%tl243691244175%_
                                 _%$%e243692244178%_
                                 _%$%hd243693244181%_
                                 _%$%tl243694244183%_
                                 _%$%e243695244186%_
                                 _%$%hd243696244189%_
                                 _%$%tl243697244191%_
                                 _%$%e243698244194%_
                                 _%$%hd243699244197%_
                                 _%$%tl243700244199%_
                                 _%$%e243701244202%_
                                 _%$%hd243702244205%_
                                 _%$%tl243703244207%_
                                 _%$%e243704244210%_
                                 _%$%hd243705244213%_
                                 _%$%tl243706244215%_
                                 _%$%e243707244218%_
                                 _%$%hd243708244221%_
                                 _%$%tl243709244223%_))
                            (_%__match250058250059%_
                             _%$%e243686244162%_
                             _%$%hd243687244165%_
                             _%$%tl243688244167%_
                             _%$%e243689244170%_
                             _%$%hd243690244173%_
                             _%$%tl243691244175%_
                             _%$%e243692244178%_
                             _%$%hd243693244181%_
                             _%$%tl243694244183%_
                             _%$%e243695244186%_
                             _%$%hd243696244189%_
                             _%$%tl243697244191%_
                             _%$%e243698244194%_
                             _%$%hd243699244197%_
                             _%$%tl243700244199%_
                             _%$%e243701244202%_
                             _%$%hd243702244205%_
                             _%$%tl243703244207%_
                             _%$%e243704244210%_
                             _%$%hd243705244213%_
                             _%$%tl243706244215%_
                             _%$%e243707244218%_
                             _%$%hd243708244221%_
                             _%$%tl243709244223%_))))
                     (_%__match249776249777%_
                      (lambda (_%$%e243635244283%_
                               _%$%hd243636244286%_
                               _%$%tl243637244288%_
                               _%$%e243638244291%_
                               _%$%hd243639244294%_
                               _%$%tl243640244296%_
                               _%$%e243641244299%_
                               _%$%hd243642244302%_
                               _%$%tl243643244304%_
                               _%$%e243644244307%_
                               _%$%hd243645244310%_
                               _%$%tl243646244312%_
                               _%$%e243647244315%_
                               _%$%hd243648244318%_
                               _%$%tl243649244320%_
                               _%$%e243650244323%_
                               _%$%hd243651244326%_
                               _%$%tl243652244328%_
                               _%$%e243653244331%_
                               _%$%hd243654244334%_
                               _%$%tl243655244336%_
                               _%$%e243656244339%_
                               _%$%hd243657244342%_
                               _%$%tl243658244344%_
                               _%$%e243659244347%_
                               _%$%hd243660244350%_
                               _%$%tl243661244352%_
                               _%$%e243662244355%_
                               _%$%hd243663244358%_
                               _%$%tl243664244360%_
                               _%$%e243665244363%_
                               _%$%hd243666244366%_
                               _%$%tl243667244368%_
                               _%$%e243668244371%_
                               _%$%hd243669244374%_
                               _%$%tl243670244376%_
                               _%$%e243671244379%_
                               _%$%hd243672244382%_
                               _%$%tl243673244384%_
                               _%__splice249569249570%_
                               _%$%target243674244387%_
                               _%$%tl243676244389%_)
                        (letrec ((_%$%loop243677244392%_
                                  (lambda (_%$%hd243675244395%_
                                           _%$%args243681244397%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd243675244395%_))
                                        (let ((_%$%e243678244399%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd243675244395%_))))
                                          (let ((_%$%lp-tl243680244404%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e243678244399%_)))
                                                (_%$%lp-hd243679244402%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e243678244399%_))))
                                            (_%$%loop243677244392%_
                                             _%$%lp-tl243680244404%_
                                             (cons _%$%lp-hd243679244402%_
                                                   _%$%args243681244397%_))))
                                        (let ((_%$%args243682244407%_
                                               (reverse _%$%args243681244397%_)))
                                          (let ((_%$%g243630244409%_
                                                 _%$%args243682244407%_)
                                                (_%$%g243631244410%_
                                                 _%$%hd243672244382%_)
                                                (_%$%g243632244411%_
                                                 _%$%hd243663244358%_)
                                                (_%$%g243633244412%_
                                                 _%$%hd243654244334%_)
                                                (_%$%g243634244413%_
                                                 _%$%hd243645244310%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g243634244413%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g243633244412%_
                                                        'call-method))
                                                     (let ((__tmp250254
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self243574%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g243632244411%_
                                                        __tmp250254)))
                                                (_%__kont249567249568%_
                                                 _%$%g243630244409%_
                                                 _%$%g243631244410%_
                                                 _%$%g243632244411%_
                                                 _%$%g243633244412%_
                                                 _%$%g243634244413%_)
                                                (_%__kont249579249580%_))))))))
                          (_%$%loop243677244392%_
                           _%$%target243674244387%_
                           '()))))
                     (_%__match249734249735%_
                      (lambda (_%$%e243635244283%_
                               _%$%hd243636244286%_
                               _%$%tl243637244288%_
                               _%$%e243638244291%_
                               _%$%hd243639244294%_
                               _%$%tl243640244296%_
                               _%$%e243641244299%_
                               _%$%hd243642244302%_
                               _%$%tl243643244304%_
                               _%$%e243644244307%_
                               _%$%hd243645244310%_
                               _%$%tl243646244312%_
                               _%$%e243647244315%_
                               _%$%hd243648244318%_
                               _%$%tl243649244320%_
                               _%$%e243650244323%_
                               _%$%hd243651244326%_
                               _%$%tl243652244328%_
                               _%$%e243653244331%_
                               _%$%hd243654244334%_
                               _%$%tl243655244336%_
                               _%$%e243656244339%_
                               _%$%hd243657244342%_
                               _%$%tl243658244344%_
                               _%$%e243659244347%_
                               _%$%hd243660244350%_
                               _%$%tl243661244352%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%$%hd243660244350%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl243661244352%_))
                                (let ((_%$%e243662244355%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl243661244352%_))))
                                  (let ((_%$%tl243664244360%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e243662244355%_)))
                                        (_%$%hd243663244358%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e243662244355%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl243664244360%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl243658244344%_))
                                            (let ((_%$%e243665244363%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl243658244344%_))))
                                              (let ((_%$%tl243667244368%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e243665244363%_)))
                                                    (_%$%hd243666244366%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e243665244363%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd243666244366%_))
                                                    (let ((_%$%e243668244371%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd243666244366%_))))
                                                      (let ((_%$%tl243670244376%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e243668244371%_)))
                    (_%$%hd243669244374%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e243668244371%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd243669244374%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%$%hd243669244374%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl243670244376%_))
                            (let ((_%$%e243671244379%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl243670244376%_))))
                              (let ((_%$%tl243673244384%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e243671244379%_)))
                                    (_%$%hd243672244382%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e243671244379%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl243673244384%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl243667244368%_))
                                        (let ((_%__splice249569249570%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl243667244368%_
                                                  '0))))
                                          (let ((_%$%tl243676244389%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice249569249570%_
                                                    '1)))
                                                (_%$%target243674244387%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice249569249570%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl243676244389%_))
                                                (_%__match249776249777%_
                                                 _%$%e243635244283%_
                                                 _%$%hd243636244286%_
                                                 _%$%tl243637244288%_
                                                 _%$%e243638244291%_
                                                 _%$%hd243639244294%_
                                                 _%$%tl243640244296%_
                                                 _%$%e243641244299%_
                                                 _%$%hd243642244302%_
                                                 _%$%tl243643244304%_
                                                 _%$%e243644244307%_
                                                 _%$%hd243645244310%_
                                                 _%$%tl243646244312%_
                                                 _%$%e243647244315%_
                                                 _%$%hd243648244318%_
                                                 _%$%tl243649244320%_
                                                 _%$%e243650244323%_
                                                 _%$%hd243651244326%_
                                                 _%$%tl243652244328%_
                                                 _%$%e243653244331%_
                                                 _%$%hd243654244334%_
                                                 _%$%tl243655244336%_
                                                 _%$%e243656244339%_
                                                 _%$%hd243657244342%_
                                                 _%$%tl243658244344%_
                                                 _%$%e243659244347%_
                                                 _%$%hd243660244350%_
                                                 _%$%tl243661244352%_
                                                 _%$%e243662244355%_
                                                 _%$%hd243663244358%_
                                                 _%$%tl243664244360%_
                                                 _%$%e243665244363%_
                                                 _%$%hd243666244366%_
                                                 _%$%tl243667244368%_
                                                 _%$%e243668244371%_
                                                 _%$%hd243669244374%_
                                                 _%$%tl243670244376%_
                                                 _%$%e243671244379%_
                                                 _%$%hd243672244382%_
                                                 _%$%tl243673244384%_
                                                 _%__splice249569249570%_
                                                 _%$%target243674244387%_
                                                 _%$%tl243676244389%_)
                                                (_%__kont249579249580%_))))
                                        (_%__kont249579249580%_))
                                    (_%__kont249579249580%_))))
                            (_%__kont249579249580%_))
                        (_%__kont249579249580%_))
                    (_%__kont249579249580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont249579249580%_))))
                                            (_%__match250058250059%_
                                             _%$%e243635244283%_
                                             _%$%hd243636244286%_
                                             _%$%tl243637244288%_
                                             _%$%e243638244291%_
                                             _%$%hd243639244294%_
                                             _%$%tl243640244296%_
                                             _%$%e243641244299%_
                                             _%$%hd243642244302%_
                                             _%$%tl243643244304%_
                                             _%$%e243644244307%_
                                             _%$%hd243645244310%_
                                             _%$%tl243646244312%_
                                             _%$%e243647244315%_
                                             _%$%hd243648244318%_
                                             _%$%tl243649244320%_
                                             _%$%e243650244323%_
                                             _%$%hd243651244326%_
                                             _%$%tl243652244328%_
                                             _%$%e243653244331%_
                                             _%$%hd243654244334%_
                                             _%$%tl243655244336%_
                                             _%$%e243656244339%_
                                             _%$%hd243657244342%_
                                             _%$%tl243658244344%_))
                                        (_%__match250058250059%_
                                         _%$%e243635244283%_
                                         _%$%hd243636244286%_
                                         _%$%tl243637244288%_
                                         _%$%e243638244291%_
                                         _%$%hd243639244294%_
                                         _%$%tl243640244296%_
                                         _%$%e243641244299%_
                                         _%$%hd243642244302%_
                                         _%$%tl243643244304%_
                                         _%$%e243644244307%_
                                         _%$%hd243645244310%_
                                         _%$%tl243646244312%_
                                         _%$%e243647244315%_
                                         _%$%hd243648244318%_
                                         _%$%tl243649244320%_
                                         _%$%e243650244323%_
                                         _%$%hd243651244326%_
                                         _%$%tl243652244328%_
                                         _%$%e243653244331%_
                                         _%$%hd243654244334%_
                                         _%$%tl243655244336%_
                                         _%$%e243656244339%_
                                         _%$%hd243657244342%_
                                         _%$%tl243658244344%_))))
                                (_%__match250058250059%_
                                 _%$%e243635244283%_
                                 _%$%hd243636244286%_
                                 _%$%tl243637244288%_
                                 _%$%e243638244291%_
                                 _%$%hd243639244294%_
                                 _%$%tl243640244296%_
                                 _%$%e243641244299%_
                                 _%$%hd243642244302%_
                                 _%$%tl243643244304%_
                                 _%$%e243644244307%_
                                 _%$%hd243645244310%_
                                 _%$%tl243646244312%_
                                 _%$%e243647244315%_
                                 _%$%hd243648244318%_
                                 _%$%tl243649244320%_
                                 _%$%e243650244323%_
                                 _%$%hd243651244326%_
                                 _%$%tl243652244328%_
                                 _%$%e243653244331%_
                                 _%$%hd243654244334%_
                                 _%$%tl243655244336%_
                                 _%$%e243656244339%_
                                 _%$%hd243657244342%_
                                 _%$%tl243658244344%_))
                            (_%__match249844249845%_
                             _%$%e243635244283%_
                             _%$%hd243636244286%_
                             _%$%tl243637244288%_
                             _%$%e243638244291%_
                             _%$%hd243639244294%_
                             _%$%tl243640244296%_
                             _%$%e243641244299%_
                             _%$%hd243642244302%_
                             _%$%tl243643244304%_
                             _%$%e243644244307%_
                             _%$%hd243645244310%_
                             _%$%tl243646244312%_
                             _%$%e243647244315%_
                             _%$%hd243648244318%_
                             _%$%tl243649244320%_
                             _%$%e243650244323%_
                             _%$%hd243651244326%_
                             _%$%tl243652244328%_
                             _%$%e243653244331%_
                             _%$%hd243654244334%_
                             _%$%tl243655244336%_
                             _%$%e243656244339%_
                             _%$%hd243657244342%_
                             _%$%tl243658244344%_
                             _%$%e243659244347%_
                             _%$%hd243660244350%_
                             _%$%tl243661244352%_))))
                     (_%__match249666249667%_
                      (lambda (_%$%e243591244473%_
                               _%$%hd243592244476%_
                               _%$%tl243593244478%_
                               _%$%e243594244481%_
                               _%$%hd243595244484%_
                               _%$%tl243596244486%_
                               _%$%e243597244489%_
                               _%$%hd243598244492%_
                               _%$%tl243599244494%_
                               _%$%e243600244497%_
                               _%$%hd243601244500%_
                               _%$%tl243602244502%_
                               _%$%e243603244505%_
                               _%$%hd243604244508%_
                               _%$%tl243605244510%_
                               _%$%e243606244513%_
                               _%$%hd243607244516%_
                               _%$%tl243608244518%_
                               _%$%e243609244521%_
                               _%$%hd243610244524%_
                               _%$%tl243611244526%_
                               _%$%e243612244529%_
                               _%$%hd243613244532%_
                               _%$%tl243614244534%_
                               _%$%e243615244537%_
                               _%$%hd243616244540%_
                               _%$%tl243617244542%_
                               _%$%e243618244545%_
                               _%$%hd243619244548%_
                               _%$%tl243620244550%_
                               _%__splice249565249566%_
                               _%$%target243621244553%_
                               _%$%tl243623244555%_)
                        (letrec ((_%$%loop243624244558%_
                                  (lambda (_%$%hd243622244561%_
                                           _%$%args243628244563%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd243622244561%_))
                                        (let ((_%$%e243625244565%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd243622244561%_))))
                                          (let ((_%$%lp-tl243627244570%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e243625244565%_)))
                                                (_%$%lp-hd243626244568%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e243625244565%_))))
                                            (_%$%loop243624244558%_
                                             _%$%lp-tl243627244570%_
                                             (cons _%$%lp-hd243626244568%_
                                                   _%$%args243628244563%_))))
                                        (let ((_%$%args243629244573%_
                                               (reverse _%$%args243628244563%_)))
                                          (let ((_%$%g243587244575%_
                                                 _%$%args243629244573%_)
                                                (_%$%g243588244576%_
                                                 _%$%hd243619244548%_)
                                                (_%$%g243589244577%_
                                                 _%$%hd243610244524%_)
                                                (_%$%g243590244578%_
                                                 _%$%hd243601244500%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g243590244578%_
                                                        'call-method))
                                                     (let ((__tmp250255
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self243574%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g243589244577%_
                                                        __tmp250255)))
                                                (_%__kont249563249564%_
                                                 _%$%g243587244575%_
                                                 _%$%g243588244576%_
                                                 _%$%g243589244577%_
                                                 _%$%g243590244578%_)
                                                (_%__match249854249855%_
                                                 _%$%e243591244473%_
                                                 _%$%hd243592244476%_
                                                 _%$%tl243593244478%_
                                                 _%$%e243594244481%_
                                                 _%$%hd243595244484%_
                                                 _%$%tl243596244486%_
                                                 _%$%e243597244489%_
                                                 _%$%hd243598244492%_
                                                 _%$%tl243599244494%_
                                                 _%$%e243600244497%_
                                                 _%$%hd243601244500%_
                                                 _%$%tl243602244502%_
                                                 _%$%e243603244505%_
                                                 _%$%hd243604244508%_
                                                 _%$%tl243605244510%_
                                                 _%$%e243606244513%_
                                                 _%$%hd243607244516%_
                                                 _%$%tl243608244518%_
                                                 _%$%e243609244521%_
                                                 _%$%hd243610244524%_
                                                 _%$%tl243611244526%_
                                                 _%$%e243612244529%_
                                                 _%$%hd243613244532%_
                                                 _%$%tl243614244534%_
                                                 _%$%e243615244537%_
                                                 _%$%hd243616244540%_
                                                 _%$%tl243617244542%_
                                                 _%$%e243618244545%_
                                                 _%$%hd243619244548%_
                                                 _%$%tl243620244550%_))))))))
                          (_%$%loop243624244558%_
                           _%$%target243621244553%_
                           '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx249561249562%_))
                    (let ((_%$%e243591244473%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx249561249562%_))))
                      (let ((_%$%tl243593244478%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e243591244473%_)))
                            (_%$%hd243592244476%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e243591244473%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl243593244478%_))
                            (let ((_%$%e243594244481%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl243593244478%_))))
                              (let ((_%$%tl243596244486%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e243594244481%_)))
                                    (_%$%hd243595244484%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e243594244481%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd243595244484%_))
                                    (let ((_%$%e243597244489%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd243595244484%_))))
                                      (let ((_%$%tl243599244494%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e243597244489%_)))
                                            (_%$%hd243598244492%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e243597244489%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd243598244492%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd243598244492%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl243599244494%_))
                                                    (let ((_%$%e243600244497%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl243599244494%_))))
                                                      (let ((_%$%tl243602244502%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e243600244497%_)))
                    (_%$%hd243601244500%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e243600244497%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl243602244502%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl243596244486%_))
                        (let ((_%$%e243603244505%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl243596244486%_))))
                          (let ((_%$%tl243605244510%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e243603244505%_)))
                                (_%$%hd243604244508%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e243603244505%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd243604244508%_))
                                (let ((_%$%e243606244513%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd243604244508%_))))
                                  (let ((_%$%tl243608244518%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e243606244513%_)))
                                        (_%$%hd243607244516%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e243606244513%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd243607244516%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%$%hd243607244516%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl243608244518%_))
                                                (let ((_%$%e243609244521%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl243608244518%_))))
                                                  (let ((_%$%tl243611244526%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e243609244521%_)))
                                                        (_%$%hd243610244524%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e243609244521%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl243611244526%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl243605244510%_))
                                                            (let ((_%$%e243612244529%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl243605244510%_))))
                      (let ((_%$%tl243614244534%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e243612244529%_)))
                            (_%$%hd243613244532%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e243612244529%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd243613244532%_))
                            (let ((_%$%e243615244537%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd243613244532%_))))
                              (let ((_%$%tl243617244542%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e243615244537%_)))
                                    (_%$%hd243616244540%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e243615244537%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd243616244540%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd243616244540%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl243617244542%_))
                                            (let ((_%$%e243618244545%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl243617244542%_))))
                                              (let ((_%$%tl243620244550%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e243618244545%_)))
                                                    (_%$%hd243619244548%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e243618244545%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl243620244550%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl243614244534%_))
                                                        (let ((_%__splice249565249566%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl243614244534%_
                          '0))))
                  (let ((_%$%tl243623244555%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice249565249566%_ '1)))
                        (_%$%target243621244553%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice249565249566%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl243623244555%_))
                        (_%__match249666249667%_
                         _%$%e243591244473%_
                         _%$%hd243592244476%_
                         _%$%tl243593244478%_
                         _%$%e243594244481%_
                         _%$%hd243595244484%_
                         _%$%tl243596244486%_
                         _%$%e243597244489%_
                         _%$%hd243598244492%_
                         _%$%tl243599244494%_
                         _%$%e243600244497%_
                         _%$%hd243601244500%_
                         _%$%tl243602244502%_
                         _%$%e243603244505%_
                         _%$%hd243604244508%_
                         _%$%tl243605244510%_
                         _%$%e243606244513%_
                         _%$%hd243607244516%_
                         _%$%tl243608244518%_
                         _%$%e243609244521%_
                         _%$%hd243610244524%_
                         _%$%tl243611244526%_
                         _%$%e243612244529%_
                         _%$%hd243613244532%_
                         _%$%tl243614244534%_
                         _%$%e243615244537%_
                         _%$%hd243616244540%_
                         _%$%tl243617244542%_
                         _%$%e243618244545%_
                         _%$%hd243619244548%_
                         _%$%tl243620244550%_
                         _%__splice249565249566%_
                         _%$%target243621244553%_
                         _%$%tl243623244555%_)
                        (_%__match249854249855%_
                         _%$%e243591244473%_
                         _%$%hd243592244476%_
                         _%$%tl243593244478%_
                         _%$%e243594244481%_
                         _%$%hd243595244484%_
                         _%$%tl243596244486%_
                         _%$%e243597244489%_
                         _%$%hd243598244492%_
                         _%$%tl243599244494%_
                         _%$%e243600244497%_
                         _%$%hd243601244500%_
                         _%$%tl243602244502%_
                         _%$%e243603244505%_
                         _%$%hd243604244508%_
                         _%$%tl243605244510%_
                         _%$%e243606244513%_
                         _%$%hd243607244516%_
                         _%$%tl243608244518%_
                         _%$%e243609244521%_
                         _%$%hd243610244524%_
                         _%$%tl243611244526%_
                         _%$%e243612244529%_
                         _%$%hd243613244532%_
                         _%$%tl243614244534%_
                         _%$%e243615244537%_
                         _%$%hd243616244540%_
                         _%$%tl243617244542%_
                         _%$%e243618244545%_
                         _%$%hd243619244548%_
                         _%$%tl243620244550%_))))
                (_%__match249854249855%_
                 _%$%e243591244473%_
                 _%$%hd243592244476%_
                 _%$%tl243593244478%_
                 _%$%e243594244481%_
                 _%$%hd243595244484%_
                 _%$%tl243596244486%_
                 _%$%e243597244489%_
                 _%$%hd243598244492%_
                 _%$%tl243599244494%_
                 _%$%e243600244497%_
                 _%$%hd243601244500%_
                 _%$%tl243602244502%_
                 _%$%e243603244505%_
                 _%$%hd243604244508%_
                 _%$%tl243605244510%_
                 _%$%e243606244513%_
                 _%$%hd243607244516%_
                 _%$%tl243608244518%_
                 _%$%e243609244521%_
                 _%$%hd243610244524%_
                 _%$%tl243611244526%_
                 _%$%e243612244529%_
                 _%$%hd243613244532%_
                 _%$%tl243614244534%_
                 _%$%e243615244537%_
                 _%$%hd243616244540%_
                 _%$%tl243617244542%_
                 _%$%e243618244545%_
                 _%$%hd243619244548%_
                 _%$%tl243620244550%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match250058250059%_
                                                     _%$%e243591244473%_
                                                     _%$%hd243592244476%_
                                                     _%$%tl243593244478%_
                                                     _%$%e243594244481%_
                                                     _%$%hd243595244484%_
                                                     _%$%tl243596244486%_
                                                     _%$%e243597244489%_
                                                     _%$%hd243598244492%_
                                                     _%$%tl243599244494%_
                                                     _%$%e243600244497%_
                                                     _%$%hd243601244500%_
                                                     _%$%tl243602244502%_
                                                     _%$%e243603244505%_
                                                     _%$%hd243604244508%_
                                                     _%$%tl243605244510%_
                                                     _%$%e243606244513%_
                                                     _%$%hd243607244516%_
                                                     _%$%tl243608244518%_
                                                     _%$%e243609244521%_
                                                     _%$%hd243610244524%_
                                                     _%$%tl243611244526%_
                                                     _%$%e243612244529%_
                                                     _%$%hd243613244532%_
                                                     _%$%tl243614244534%_))))
                                            (_%__match250058250059%_
                                             _%$%e243591244473%_
                                             _%$%hd243592244476%_
                                             _%$%tl243593244478%_
                                             _%$%e243594244481%_
                                             _%$%hd243595244484%_
                                             _%$%tl243596244486%_
                                             _%$%e243597244489%_
                                             _%$%hd243598244492%_
                                             _%$%tl243599244494%_
                                             _%$%e243600244497%_
                                             _%$%hd243601244500%_
                                             _%$%tl243602244502%_
                                             _%$%e243603244505%_
                                             _%$%hd243604244508%_
                                             _%$%tl243605244510%_
                                             _%$%e243606244513%_
                                             _%$%hd243607244516%_
                                             _%$%tl243608244518%_
                                             _%$%e243609244521%_
                                             _%$%hd243610244524%_
                                             _%$%tl243611244526%_
                                             _%$%e243612244529%_
                                             _%$%hd243613244532%_
                                             _%$%tl243614244534%_))
                                        (_%__match249734249735%_
                                         _%$%e243591244473%_
                                         _%$%hd243592244476%_
                                         _%$%tl243593244478%_
                                         _%$%e243594244481%_
                                         _%$%hd243595244484%_
                                         _%$%tl243596244486%_
                                         _%$%e243597244489%_
                                         _%$%hd243598244492%_
                                         _%$%tl243599244494%_
                                         _%$%e243600244497%_
                                         _%$%hd243601244500%_
                                         _%$%tl243602244502%_
                                         _%$%e243603244505%_
                                         _%$%hd243604244508%_
                                         _%$%tl243605244510%_
                                         _%$%e243606244513%_
                                         _%$%hd243607244516%_
                                         _%$%tl243608244518%_
                                         _%$%e243609244521%_
                                         _%$%hd243610244524%_
                                         _%$%tl243611244526%_
                                         _%$%e243612244529%_
                                         _%$%hd243613244532%_
                                         _%$%tl243614244534%_
                                         _%$%e243615244537%_
                                         _%$%hd243616244540%_
                                         _%$%tl243617244542%_))
                                    (_%__match250058250059%_
                                     _%$%e243591244473%_
                                     _%$%hd243592244476%_
                                     _%$%tl243593244478%_
                                     _%$%e243594244481%_
                                     _%$%hd243595244484%_
                                     _%$%tl243596244486%_
                                     _%$%e243597244489%_
                                     _%$%hd243598244492%_
                                     _%$%tl243599244494%_
                                     _%$%e243600244497%_
                                     _%$%hd243601244500%_
                                     _%$%tl243602244502%_
                                     _%$%e243603244505%_
                                     _%$%hd243604244508%_
                                     _%$%tl243605244510%_
                                     _%$%e243606244513%_
                                     _%$%hd243607244516%_
                                     _%$%tl243608244518%_
                                     _%$%e243609244521%_
                                     _%$%hd243610244524%_
                                     _%$%tl243611244526%_
                                     _%$%e243612244529%_
                                     _%$%hd243613244532%_
                                     _%$%tl243614244534%_))))
                            (_%__match250058250059%_
                             _%$%e243591244473%_
                             _%$%hd243592244476%_
                             _%$%tl243593244478%_
                             _%$%e243594244481%_
                             _%$%hd243595244484%_
                             _%$%tl243596244486%_
                             _%$%e243597244489%_
                             _%$%hd243598244492%_
                             _%$%tl243599244494%_
                             _%$%e243600244497%_
                             _%$%hd243601244500%_
                             _%$%tl243602244502%_
                             _%$%e243603244505%_
                             _%$%hd243604244508%_
                             _%$%tl243605244510%_
                             _%$%e243606244513%_
                             _%$%hd243607244516%_
                             _%$%tl243608244518%_
                             _%$%e243609244521%_
                             _%$%hd243610244524%_
                             _%$%tl243611244526%_
                             _%$%e243612244529%_
                             _%$%hd243613244532%_
                             _%$%tl243614244534%_))))
                    (_%__match249996249997%_
                     _%$%e243591244473%_
                     _%$%hd243592244476%_
                     _%$%tl243593244478%_
                     _%$%e243594244481%_
                     _%$%hd243595244484%_
                     _%$%tl243596244486%_
                     _%$%e243597244489%_
                     _%$%hd243598244492%_
                     _%$%tl243599244494%_
                     _%$%e243600244497%_
                     _%$%hd243601244500%_
                     _%$%tl243602244502%_
                     _%$%e243603244505%_
                     _%$%hd243604244508%_
                     _%$%tl243605244510%_
                     _%$%e243606244513%_
                     _%$%hd243607244516%_
                     _%$%tl243608244518%_
                     _%$%e243609244521%_
                     _%$%hd243610244524%_
                     _%$%tl243611244526%_))
                (_%__kont249579249580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont249579249580%_))
                                            (_%__kont249579249580%_))
                                        (_%__kont249579249580%_))))
                                (_%__kont249579249580%_))))
                        (_%__kont249579249580%_))
                    (_%__kont249579249580%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont249579249580%_))
                                                (_%__kont249579249580%_))
                                            (_%__kont249579249580%_))))
                                    (_%__kont249579249580%_))))
                            (_%__kont249579249580%_))))
                    (_%__kont249579249580%_))))))))))
