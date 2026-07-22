(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1784461448)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp248091 (list gxc#::identity::t))
            (__tmp248090 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp248091
         '()
         __tmp248090
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args246888%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args246888%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp248092
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
        (__make-atomic-promise __tmp248092)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx246880%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self246883%_
                (let ((__obj248083
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj248083))
               (__tmp248093
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self246883%_ _%stx246880%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp248093
           gxc#current-compile-method
           _%self246883%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp248095 (list gxc#::false::t))
            (__tmp248094 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp248095
         '()
         __tmp248094
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args246877%_
        (apply make-instance gxc#::extract-receiver::t _%$args246877%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp248096
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
        (__make-atomic-promise __tmp248096)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx246869%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self246872%_
                (let ((__obj248085
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj248085))
               (__tmp248097
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self246872%_ _%stx246869%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp248097
           gxc#current-compile-method
           _%self246872%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp248099 (list gxc#::void::t))
            (__tmp248098 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp248099
         '(receiver methods slots)
         __tmp248098
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args246866%_
        (apply make-instance gxc#::collect-object-refs::t _%$args246866%_)))
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
      (let ((__tmp248100
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
        (__make-atomic-promise __tmp248100)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords246835%_
               _%$%receiver246830246836%_
               _%$%methods246831246837%_
               _%$%slots246832246838%_
               _%stx246839%_)
        (let* ((_%receiver246842%_
                (if (eq? _%$%receiver246830246836%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver246830246836%_))
               (_%methods246844%_
                (if (eq? _%$%methods246831246837%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods246831246837%_))
               (_%slots246846%_
                (if (eq? _%$%slots246832246838%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots246832246838%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self246848%_
                  (let ((__obj248087
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
                       __obj248087
                       _%receiver246842%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj248087
                       _%methods246844%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj248087
                       _%slots246846%_
                       '3
                       '#f
                       '#f))
                    __obj248087))
                 (__tmp248101
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self246848%_ _%stx246839%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp248101
             gxc#current-compile-method
             _%self246848%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords246855%_ . _%args246856%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords246855%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords246855%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords246855%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords246855%_
                  'slots:
                  absent-value))
               _%args246856%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%$%args246833246862%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%$%args246833246862%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp248103 (list gxc#::basic-xform-expression::t))
            (__tmp248102 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp248103
         '(receiver klass methods slots)
         __tmp248102
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args246826%_
        (apply make-instance gxc#::subst-object-refs::t _%$args246826%_)))
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
      (let ((__tmp248104
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
        (__make-atomic-promise __tmp248104)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords246792%_
               _%$%receiver246786246793%_
               _%$%klass246787246794%_
               _%$%methods246788246795%_
               _%$%slots246789246796%_
               _%stx246797%_)
        (let* ((_%receiver246800%_
                (if (eq? _%$%receiver246786246793%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver246786246793%_))
               (_%klass246802%_
                (if (eq? _%$%klass246787246794%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%$%klass246787246794%_))
               (_%methods246804%_
                (if (eq? _%$%methods246788246795%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods246788246795%_))
               (_%slots246806%_
                (if (eq? _%$%slots246789246796%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots246789246796%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self246808%_
                  (let ((__obj248089
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
                       __obj248089
                       _%receiver246800%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj248089
                       _%klass246802%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj248089
                       _%methods246804%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj248089
                       _%slots246806%_
                       '4
                       '#f
                       '#f))
                    __obj248089))
                 (__tmp248105
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self246808%_ _%stx246797%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp248105
             gxc#current-compile-method
             _%self246808%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords246815%_ . _%args246816%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords246815%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords246815%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords246815%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords246815%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords246815%_
                  'slots:
                  absent-value))
               _%args246816%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%$%args246790246822%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%$%args246790246822%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self243917%_ _%stx243918%_)
        (letrec ((_%generate-method-bind243920%_
                  (lambda (_%$klass246778%_
                           _%$method-table246779%_
                           _%id246780%_
                           _%$id246781%_)
                    (let ((_%$tmp246783%_
                           (let ((__tmp248106
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp248106))))
                      (cons (cons _%$id246781%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp246783%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table246779%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id246780%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp246783%_ '()))
                    (cons (cons '%#ref (cons _%$tmp246783%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id246780%_
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
                 (_%generate-slot-bind243921%_
                  (lambda (_%$klass246772%_ _%id246773%_ _%$id246774%_)
                    (let ((_%$tmp246776%_
                           (let ((__tmp248107
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp248107))))
                      (cons (cons _%$id246774%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp246776%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass246772%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id246773%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp246776%_ '()))
                        (cons (cons '%#ref (cons _%$tmp246776%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id246773%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl243922%_
                  (lambda (_%$klass246766%_
                           _%$method-table246767%_
                           _%methods-bind246768%_
                           _%slots-bind246769%_
                           _%specializer-impl246770%_)
                    (let ((__tmp248108
                           (cons '%#lambda
                                 (cons (cons _%$klass246766%_
                                             (cons _%$method-table246767%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (append _%methods-bind246768%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%slots-bind246769%_)
                 (cons _%specializer-impl246770%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp248108 _%stx243918%_))))
                 (_%generate-specializer-def243923%_
                  (lambda (_%id246762%_
                           _%specializer-id246763%_
                           _%specializer-impl246764%_)
                    (let ((__tmp248109
                           (cons '%#begin
                                 (cons _%stx243918%_
                                       (cons (let ((__tmp248110
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id246763%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl246764%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp248110
                                                _%stx243918%_))
                                             (cons (let ((__tmp248111
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id246762%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id246763%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp248111
                                                      _%stx243918%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp248109 _%stx243918%_)))))
          (let* ((_%__stx246977246978%_ _%stx243918%_)
                 (_%$%g243926243946%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx246977246978%_)))))
            (let ((_%__kont246979246980%_
                   (lambda (_%$%g243928243990%_ _%$%g243929243991%_)
                     (let ((_%method-calls244010%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs244011%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty244012%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?244014%_
                                 (lambda ()
                                   (if (let ((__tmp248112
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls244010%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp248112))
                                       (let ((__tmp248113
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs244011%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp248113))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%$%g243928243990%_))
                             (let* ((_%__stx246891246892%_ _%$%g243928243990%_)
                                    (_%$%g244398244416%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx246891246892%_)))))
                               (let ((_%__kont246893246894%_
                                      (lambda (_%$%g244400244452%_
                                               _%$%g244401244453%_
                                               _%$%g244402244454%_)
                                        (let ((_%receiver244474%_
                                               (let ((_%$e244471%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%g244400244452%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e244471%_
                                                     _%$e244471%_
                                                     _%$%g244402244454%_))))
                                          (for-each
                                           (lambda (_%$%g244475244477%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver244474%_
                                              _%method-calls244010%_
                                              _%slot-refs244011%_
                                              _%$%g244475244477%_))
                                           _%$%g244400244452%_)
                                          (if (_%no-specializer?244014%_)
                                              _%stx243918%_
                                              (let* ((_%specializer-id244486%_
                                                      (let* ((_%id244480%_
                                                              (let ((__tmp248114
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g243929243991%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp248114 '"::specialize")))
                     (_%specializer-id244483%_
                      (let ((__tmp248115
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx243918%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id244480%_ __tmp248115))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id244483%_))
                _%specializer-id244483%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass244488%_
                                                      (let ((__tmp248116
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp248116)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table244490%_
                                                      (let ((__tmp248117
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp248117)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods244492%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls244010%_)))
                                                     (_%$methods244496%_
                                                      (let ((__tmp248118
                                                             (lambda (_%id244494%_)
                                                               (let ((__tmp248119
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id244494%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp248119)))))
                (declare (not safe))
                (##map __tmp248118 _%methods244492%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_244505%_
                                                      (let ((__tmp248120
                                                             (lambda (_%$%g244497244500%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g244498244502%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls244010%_
                          _%$%g244497244500%_
                          _%$%g244498244502%_)))))
                (declare (not safe))
                (##for-each __tmp248120 _%methods244492%_ _%$methods244496%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind244515%_
                                                      (let ((__tmp248121
                                                             (lambda (_%$%g244507244510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g244508244512%_)
                       (_%generate-method-bind243920%_
                        _%$klass244488%_
                        _%$method-table244490%_
                        _%$%g244507244510%_
                        _%$%g244508244512%_))))
                (declare (not safe))
                (##map __tmp248121 _%methods244492%_ _%$methods244496%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots244517%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs244011%_)))
                                                     (_%$slots244521%_
                                                      (let ((__tmp248122
                                                             (lambda (_%id244519%_)
                                                               (let ((__tmp248123
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id244519%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp248123)))))
                (declare (not safe))
                (##map __tmp248122 _%slots244517%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_244530%_
                                                      (let ((__tmp248124
                                                             (lambda (_%$%g244522244525%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g244523244527%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs244011%_
                          _%$%g244522244525%_
                          _%$%g244523244527%_)))))
                (declare (not safe))
                (##for-each __tmp248124 _%slots244517%_ _%$slots244521%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind244539%_
                                                      (let ((__tmp248125
                                                             (lambda (_%$%g244531244534%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g244532244536%_)
                       (_%generate-slot-bind243921%_
                        _%$klass244488%_
                        _%$%g244531244534%_
                        _%$%g244532244536%_))))
                (declare (not safe))
                (##map __tmp248125 _%slots244517%_ _%$slots244521%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body244545%_
                                                      (map (lambda (_%$%g244540244542%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver244474%_
                                                              _%$klass244488%_
                                                              _%method-calls244010%_
                                                              _%slot-refs244011%_
                                                              _%$%g244540244542%_))
                                                           _%$%g244400244452%_))
                                                     (_%specializer-impl244547%_
                                                      (let ((__tmp248126
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%$%g244402244454%_ _%$%g244401244453%_)
                                 _%specializer-body244545%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp248126 _%stx243918%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl244549%_
                                                      (_%generate-specializer-impl243922%_
                                                       _%$klass244488%_
                                                       _%$method-table244490%_
                                                       _%methods-bind244515%_
                                                       _%slots-bind244539%_
                                                       _%specializer-impl244547%_)))
                                                (let ((__tmp248128
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g243929243991%_)))
                                                      (__tmp248127
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id244486%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp248128
                                                   '" => "
                                                   __tmp248127))
                                                (_%generate-specializer-def243923%_
                                                 _%$%g243929243991%_
                                                 _%specializer-id244486%_
                                                 _%specializer-impl244549%_))))))
                                     (_%__kont246895246896%_
                                      (lambda () _%stx243918%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx246891246892%_))
                                     (let ((_%$%e244403244428%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx246891246892%_))))
                                       (let ((_%$%tl244405244433%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e244403244428%_)))
                                             (_%$%hd244404244431%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e244403244428%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl244405244433%_))
                                             (let ((_%$%e244406244436%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl244405244433%_))))
                                               (let ((_%$%tl244408244441%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e244406244436%_)))
                                                     (_%$%hd244407244439%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e244406244436%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%hd244407244439%_))
                                                     (let ((_%$%e244409244444%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%hd244407244439%_))))
                                                       (let ((_%$%tl244411244449%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e244409244444%_)))
                     (_%$%hd244410244447%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e244409244444%_))))
                 (_%__kont246893246894%_
                  _%$%tl244408244441%_
                  _%$%tl244411244449%_
                  _%$%hd244410244447%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont246895246896%_))))
                                             (_%__kont246895246896%_))))
                                     (_%__kont246895246896%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%$%g243928243990%_))
                                 (let* ((_%$%g244556244575%_
                                         (lambda (_%$%g244557244572%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g244557244572%_))))
                                        (_%$%g244555244871%_
                                         (lambda (_%$%g244557244578%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%g244557244578%_))
                                               (let ((_%$%e244559244580%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g244557244578%_))))
                                                 (let ((_%$%hd244560244583%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e244559244580%_)))
                                                       (_%$%tl244561244585%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e244559244580%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%$%tl244561244585%_))
                                                       (let ((_g248129_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%$%tl244561244585%_ '0))))
                 (begin
                   (let ((_g248130_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g248129_)
                                (##values-length _g248129_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g248130_ 2)))
                         (error "Context expects 2 values" _g248130_)))
                   (let ((_%$%target244562244588%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g248129_ 0)))
                         (_%$%tl244564244590%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g248129_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl244564244590%_))
                         (letrec ((_%$%loop244565244593%_
                                   (lambda (_%$%hd244563244596%_
                                            _%$%clause244569244598%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd244563244596%_))
                                         (let ((_%$%e244566244600%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd244563244596%_))))
                                           (let ((_%$%lp-hd244567244603%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e244566244600%_)))
                                                 (_%$%lp-tl244568244605%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e244566244600%_))))
                                             (_%$%loop244565244593%_
                                              _%$%lp-tl244568244605%_
                                              (cons _%$%lp-hd244567244603%_
                                                    _%$%clause244569244598%_))))
                                         (let ((_%$%clause244570244608%_
                                                (reverse _%$%clause244569244598%_)))
                                           (for-each
                                            (lambda (_%clause244624%_)
                                              (let* ((_%__stx246917246918%_
                                                      _%clause244624%_)
                                                     (_%$%g244627244642%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx246917246918%_)))))
                                                (let ((_%__kont246919246920%_
                                                       (lambda (_%$%g244629244670%_
                                                                _%$%g244630244671%_
                                                                _%$%g244631244672%_)
                                                         (let ((_%receiver244691%_
                                                                (let ((_%$e244688%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gxc#apply-extract-receiver
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f '%#begin))
                                      _%$%g244629244670%_))))
                          (if _%$e244688%_ _%$e244688%_ _%$%g244631244672%_))))
                   (for-each
                    (lambda (_%$%g244692244694%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver244691%_
                       _%method-calls244010%_
                       _%slot-refs244011%_
                       _%$%g244692244694%_))
                    _%$%g244629244670%_))))
              (_%__kont246921246922%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx246917246918%_))
                                                      (let ((_%$%e244632244654%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx246917246918%_))))
                (let ((_%$%tl244634244659%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e244632244654%_)))
                      (_%$%hd244633244657%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e244632244654%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd244633244657%_))
                      (let ((_%$%e244635244662%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd244633244657%_))))
                        (let ((_%$%tl244637244667%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e244635244662%_)))
                              (_%$%hd244636244665%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e244635244662%_))))
                          (_%__kont246919246920%_
                           _%$%tl244634244659%_
                           _%$%tl244637244667%_
                           _%$%hd244636244665%_)))
                      '#!void)))
              '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((__tmp248131
                                                   (lambda (_%$%g244699244702%_
                                                            _%$%g244700244704%_)
                                                     (cons _%$%g244699244702%_
                                                           _%$%g244700244704%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp248131
                                               '()
                                               _%$%clause244570244608%_)))
                                           (if (_%no-specializer?244014%_)
                                               _%stx243918%_
                                               (let* ((_%specializer-id244713%_
                                                       (let* ((_%id244707%_
                                                               (let ((__tmp248132
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g243929243991%_))))
                         (declare (not safe))
                         (make-symbol__1 __tmp248132 '"::specialize")))
                      (_%specializer-id244710%_
                       (let ((__tmp248133
                              (let ()
                                (declare (not safe))
                                (gx#stx-source _%stx243918%_))))
                         (declare (not safe))
                         (gx#core-quote-syntax__1 _%id244707%_ __tmp248133))))
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _%specializer-id244710%_))
                 _%specializer-id244710%_))
              (_%$klass244715%_
               (let ((__tmp248134
                      (let () (declare (not safe)) (##gensym '__klass))))
                 (declare (not safe))
                 (make-symbol__0 __tmp248134)))
              (_%$method-table244717%_
               (let ((__tmp248135
                      (let ()
                        (declare (not safe))
                        (##gensym '__method-table))))
                 (declare (not safe))
                 (make-symbol__0 __tmp248135)))
              (_%methods244719%_
               (let ()
                 (declare (not safe))
                 (__hash-keys _%method-calls244010%_)))
              (_%$methods244723%_
               (let ((__tmp248136
                      (lambda (_%id244721%_)
                        (let ((__tmp248137 (gensym _%id244721%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp248137)))))
                 (declare (not safe))
                 (##map __tmp248136 _%methods244719%_)))
              (_%_244732%_
               (let ((__tmp248138
                      (lambda (_%$%g244724244727%_ _%$%g244725244729%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%method-calls244010%_
                           _%$%g244724244727%_
                           _%$%g244725244729%_)))))
                 (declare (not safe))
                 (##for-each
                  __tmp248138
                  _%methods244719%_
                  _%$methods244723%_)))
              (_%methods-bind244742%_
               (let ((__tmp248139
                      (lambda (_%$%g244734244737%_ _%$%g244735244739%_)
                        (_%generate-method-bind243920%_
                         _%$klass244715%_
                         _%$method-table244717%_
                         _%$%g244734244737%_
                         _%$%g244735244739%_))))
                 (declare (not safe))
                 (##map __tmp248139 _%methods244719%_ _%$methods244723%_)))
              (_%slots244744%_
               (let () (declare (not safe)) (__hash-keys _%slot-refs244011%_)))
              (_%$slots244748%_
               (let ((__tmp248140
                      (lambda (_%id244746%_)
                        (let ((__tmp248141 (gensym _%id244746%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp248141)))))
                 (declare (not safe))
                 (##map __tmp248140 _%slots244744%_)))
              (_%_244757%_
               (let ((__tmp248142
                      (lambda (_%$%g244749244752%_ _%$%g244750244754%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%slot-refs244011%_
                           _%$%g244749244752%_
                           _%$%g244750244754%_)))))
                 (declare (not safe))
                 (##for-each __tmp248142 _%slots244744%_ _%$slots244748%_)))
              (_%slots-bind244766%_
               (let ((__tmp248143
                      (lambda (_%$%g244758244761%_ _%$%g244759244763%_)
                        (_%generate-slot-bind243921%_
                         _%$klass244715%_
                         _%$%g244758244761%_
                         _%$%g244759244763%_))))
                 (declare (not safe))
                 (##map __tmp248143 _%slots244744%_ _%$slots244748%_)))
              (_%specializer-clauses244864%_
               (map (lambda (_%clause244768%_)
                      (let* ((_%__stx246937246938%_ _%clause244768%_)
                             (_%$%g244771244786%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx246937246938%_)))))
                        (let ((_%__kont246939246940%_
                               (lambda (_%$%g244773244814%_
                                        _%$%g244774244815%_
                                        _%$%g244775244816%_)
                                 (let* ((_%receiver244845%_
                                         (let ((_%$e244842%_
                                                (gxc#apply-extract-receiver
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#begin))
                                                       _%$%g244773244814%_))))
                                           (if _%$e244842%_
                                               _%$e244842%_
                                               _%$%g244775244816%_)))
                                        (_%body244851%_
                                         (map (lambda (_%$%g244846244848%_)
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%receiver244845%_
                                                 _%$klass244715%_
                                                 _%method-calls244010%_
                                                 _%slot-refs244011%_
                                                 _%$%g244846244848%_))
                                              _%$%g244773244814%_)))
                                   (cons (cons _%$%g244775244816%_
                                               _%$%g244774244815%_)
                                         _%body244851%_))))
                              (_%__kont246941246942%_
                               (lambda () _%clause244768%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx246937246938%_))
                              (let ((_%$%e244776244798%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx246937246938%_))))
                                (let ((_%$%tl244778244803%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e244776244798%_)))
                                      (_%$%hd244777244801%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e244776244798%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd244777244801%_))
                                      (let ((_%$%e244779244806%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd244777244801%_))))
                                        (let ((_%$%tl244781244811%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e244779244806%_)))
                                              (_%$%hd244780244809%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e244779244806%_))))
                                          (_%__kont246939246940%_
                                           _%$%tl244778244803%_
                                           _%$%tl244781244811%_
                                           _%$%hd244780244809%_)))
                                      (_%__kont246941246942%_))))
                              (_%__kont246941246942%_)))))
                    (let ((__tmp248144
                           (lambda (_%$%g244856244859%_ _%$%g244857244861%_)
                             (cons _%$%g244856244859%_ _%$%g244857244861%_))))
                      (declare (not safe))
                      (foldr__0 __tmp248144 '() _%$%clause244570244608%_))))
              (_%specializer-impl244866%_
               (let ((__tmp248145
                      (cons '%#case-lambda _%specializer-clauses244864%_)))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp248145 _%stx243918%_)))
              (_%specializer-impl244868%_
               (_%generate-specializer-impl243922%_
                _%$klass244715%_
                _%$method-table244717%_
                _%methods-bind244742%_
                _%slots-bind244766%_
                _%specializer-impl244866%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp248147
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g243929243991%_)))
                                                       (__tmp248146
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%specializer-id244713%_))))
                                                   (declare (not safe))
                                                   (gxc#verbose
                                                    '"generate method specializer "
                                                    __tmp248147
                                                    '" => "
                                                    __tmp248146))
                                                 (_%generate-specializer-def243923%_
                                                  _%$%g243929243991%_
                                                  _%specializer-id244713%_
                                                  _%specializer-impl244868%_))))))))
                           (_%$%loop244565244593%_
                            _%$%target244562244588%_
                            '()))
                         (_%$%g244556244575%_ _%$%g244557244578%_)))))
               (_%$%g244556244575%_ _%$%g244557244578%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g244556244575%_
                                                _%$%g244557244578%_)))))
                                   (_%$%g244555244871%_ _%$%g243928243990%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%$%g243928243990%_))
                                     (let* ((_%$%g244875244905%_
                                             (lambda (_%$%g244876244902%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g244876244902%_))))
                                            (_%$%g244874245532%_
                                             (lambda (_%$%g244876244908%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g244876244908%_))
                                                   (let ((_%$%e244880244910%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%g244876244908%_))))
                                                     (let ((_%$%hd244881244913%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e244880244910%_)))
                                                           (_%$%tl244882244915%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e244880244910%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl244882244915%_))
                                                           (let ((_%$%e244883244918%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl244882244915%_))))
                     (let ((_%$%hd244884244921%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e244883244918%_)))
                           (_%$%tl244885244923%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e244883244918%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd244884244921%_))
                           (let ((_%$%e244886244926%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd244884244921%_))))
                             (let ((_%$%hd244887244929%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e244886244926%_)))
                                   (_%$%tl244888244931%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e244886244926%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd244887244929%_))
                                   (let ((_%$%e244889244934%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd244887244929%_))))
                                     (let ((_%$%hd244890244937%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e244889244934%_)))
                                           (_%$%tl244891244939%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e244889244934%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd244890244937%_))
                                           (let ((_%$%e244892244942%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd244890244937%_))))
                                             (let ((_%$%hd244893244945%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e244892244942%_)))
                                                   (_%$%tl244894244947%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e244892244942%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl244894244947%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl244891244939%_))
                                                       (let ((_%$%e244895244950%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl244891244939%_))))
                 (let ((_%$%hd244896244953%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e244895244950%_)))
                       (_%$%tl244897244955%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e244895244950%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl244897244955%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl244888244931%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl244885244923%_))
                               (let ((_%$%e244898244958%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl244885244923%_))))
                                 (let ((_%$%hd244899244961%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e244898244958%_)))
                                       (_%$%tl244900244963%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e244898244958%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl244900244963%_))
                                       (let ()
                                         (let* ((_%$%g244992245010%_
                                                 (lambda (_%$%g244993245007%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g244993245007%_))))
                                                (_%$%g244991245066%_
                                                 (lambda (_%$%g244993245013%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g244993245013%_))
                                                       (let ((_%$%e244997245015%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g244993245013%_))))
                 (let ((_%$%hd244998245018%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e244997245015%_)))
                       (_%$%tl244999245020%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e244997245015%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl244999245020%_))
                       (let ((_%$%e245000245023%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl244999245020%_))))
                         (let ((_%$%hd245001245026%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e245000245023%_)))
                               (_%$%tl245002245028%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e245000245023%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd245001245026%_))
                               (let ((_%$%e245003245031%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%hd245001245026%_))))
                                 (let ((_%$%hd245004245034%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e245003245031%_)))
                                       (_%$%tl245005245036%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e245003245031%_))))
                                   (let ((_%receiver245060%_
                                          (let ((_%$e245057%_
                                                 (gxc#apply-extract-receiver
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#begin))
                                                        _%$%tl245002245028%_))))
                                            (if _%$e245057%_
                                                _%$e245057%_
                                                _%$%hd245004245034%_))))
                                     (for-each
                                      (lambda (_%$%g245061245063%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver245060%_
                                         _%method-calls244010%_
                                         _%slot-refs244011%_
                                         _%$%g245061245063%_))
                                      _%$%tl245002245028%_))))
                               (_%$%g244992245010%_ _%$%g244993245013%_))))
                       (_%$%g244992245010%_ _%$%g244993245013%_))))
               (_%$%g244992245010%_ _%$%g244993245013%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g244991245066%_
                                            _%$%hd244896244953%_))
                                         (let* ((_%$%g245069245088%_
                                                 (lambda (_%$%g245070245085%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g245070245085%_))))
                                                (_%$%g245068245210%_
                                                 (lambda (_%$%g245070245091%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g245070245091%_))
                                                       (let ((_%$%e245072245093%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g245070245091%_))))
                 (let ((_%$%hd245073245096%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e245072245093%_)))
                       (_%$%tl245074245098%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e245072245093%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? _%$%tl245074245098%_))
                       (let ((_g248148_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 _%$%tl245074245098%_
                                 '0))))
                         (begin
                           (let ((_g248149_
                                  (let ()
                                    (declare (not safe))
                                    (if (##values? _g248148_)
                                        (##values-length _g248148_)
                                        1))))
                             (if (not (let ()
                                        (declare (not safe))
                                        (##fx= _g248149_ 2)))
                                 (error "Context expects 2 values" _g248149_)))
                           (let ((_%$%target245075245101%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g248148_ 0)))
                                 (_%$%tl245077245103%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g248148_ 1))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl245077245103%_))
                                 (letrec ((_%$%loop245078245106%_
                                           (lambda (_%$%hd245076245109%_
                                                    _%$%clause245082245111%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd245076245109%_))
                                                 (let ((_%$%e245079245113%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd245076245109%_))))
                                                   (let ((_%$%lp-hd245080245116%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e245079245113%_)))
                                                         (_%$%lp-tl245081245118%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e245079245113%_))))
                                                     (_%$%loop245078245106%_
                                                      _%$%lp-tl245081245118%_
                                                      (cons _%$%lp-hd245080245116%_
                                                            _%$%clause245082245111%_))))
                                                 (let ((_%$%clause245083245121%_
                                                        (reverse _%$%clause245082245111%_)))
                                                   (for-each
                                                    (lambda (_%clause245136%_)
                                                      (let* ((_%$%g245138245153%_
                                                              (lambda (_%$%g245139245150%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g245139245150%_))))
                     (_%$%g245137245200%_
                      (lambda (_%$%g245139245156%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%g245139245156%_))
                            (let ((_%$%e245143245158%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g245139245156%_))))
                              (let ((_%$%hd245144245161%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e245143245158%_)))
                                    (_%$%tl245145245163%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e245143245158%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd245144245161%_))
                                    (let ((_%$%e245146245166%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd245144245161%_))))
                                      (let ((_%$%hd245147245169%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e245146245166%_)))
                                            (_%$%tl245148245171%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e245146245166%_))))
                                        (let ((_%receiver245194%_
                                               (let ((_%$e245191%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%tl245145245163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e245191%_
                                                     _%$e245191%_
                                                     _%$%hd245147245169%_))))
                                          (for-each
                                           (lambda (_%$%g245195245197%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver245194%_
                                              _%method-calls244010%_
                                              _%slot-refs244011%_
                                              _%$%g245195245197%_))
                                           _%$%tl245145245163%_))))
                                    (_%$%g245138245153%_
                                     _%$%g245139245156%_))))
                            (_%$%g245138245153%_ _%$%g245139245156%_)))))
                (_%$%g245137245200%_ _%clause245136%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp248150
                                                           (lambda (_%$%g245202245205%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g245203245207%_)
                     (cons _%$%g245202245205%_ _%$%g245203245207%_))))
              (declare (not safe))
              (foldr__0 __tmp248150 '() _%$%clause245083245121%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%loop245078245106%_
                                    _%$%target245075245101%_
                                    '()))
                                 (_%$%g245069245088%_ _%$%g245070245091%_)))))
                       (_%$%g245069245088%_ _%$%g245070245091%_))))
               (_%$%g245069245088%_ _%$%g245070245091%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g245068245210%_
                                            _%$%hd244899244961%_))
                                         (if (_%no-specializer?244014%_)
                                             _%stx243918%_
                                             (let* ((_%specializer-id245219%_
                                                     (let* ((_%id245213%_
                                                             (let ((__tmp248151
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g243929243991%_))))
                       (declare (not safe))
                       (make-symbol__1 __tmp248151 '"::specialize")))
                    (_%specializer-id245216%_
                     (let ((__tmp248152
                            (let ()
                              (declare (not safe))
                              (gx#stx-source _%stx243918%_))))
                       (declare (not safe))
                       (gx#core-quote-syntax__1 _%id245213%_ __tmp248152))))
               (let ()
                 (declare (not safe))
                 (gx#core-bind-runtime!__0 _%specializer-id245216%_))
               _%specializer-id245216%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$klass245221%_
                                                     (let ((__tmp248153
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__klass))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp248153)))
                                                    (_%$method-table245223%_
                                                     (let ((__tmp248154
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__method-table))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp248154)))
                                                    (_%methods245225%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%method-calls244010%_)))
                                                    (_%$methods245229%_
                                                     (let ((__tmp248155
                                                            (lambda (_%id245227%_)
                                                              (let ((__tmp248156
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id245227%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp248156)))))
               (declare (not safe))
               (##map __tmp248155 _%methods245225%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_245238%_
                                                     (let ((__tmp248157
                                                            (lambda (_%$%g245230245233%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g245231245235%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%method-calls244010%_
                         _%$%g245230245233%_
                         _%$%g245231245235%_)))))
               (declare (not safe))
               (##for-each __tmp248157 _%methods245225%_ _%$methods245229%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%methods-bind245248%_
                                                     (let ((__tmp248158
                                                            (lambda (_%$%g245240245243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g245241245245%_)
                      (_%generate-method-bind243920%_
                       _%$klass245221%_
                       _%$method-table245223%_
                       _%$%g245240245243%_
                       _%$%g245241245245%_))))
               (declare (not safe))
               (##map __tmp248158 _%methods245225%_ _%$methods245229%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots245250%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%slot-refs244011%_)))
                                                    (_%$slots245254%_
                                                     (let ((__tmp248159
                                                            (lambda (_%id245252%_)
                                                              (let ((__tmp248160
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id245252%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp248160)))))
               (declare (not safe))
               (##map __tmp248159 _%slots245250%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_245263%_
                                                     (let ((__tmp248161
                                                            (lambda (_%$%g245255245258%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g245256245260%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%slot-refs244011%_
                         _%$%g245255245258%_
                         _%$%g245256245260%_)))))
               (declare (not safe))
               (##for-each __tmp248161 _%slots245250%_ _%$slots245254%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots-bind245272%_
                                                     (let ((__tmp248162
                                                            (lambda (_%$%g245264245267%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g245265245269%_)
                      (_%generate-slot-bind243921%_
                       _%$klass245221%_
                       _%$%g245264245267%_
                       _%$%g245265245269%_))))
               (declare (not safe))
               (##map __tmp248162 _%slots245250%_ _%$slots245254%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-lambda-expr245364%_
                                                     (let* ((_%$%g245274245292%_
                                                             (lambda (_%$%g245275245289%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g245275245289%_))))
                    (_%$%g245273245361%_
                     (lambda (_%$%g245275245295%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g245275245295%_))
                           (let ((_%$%e245279245297%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g245275245295%_))))
                             (let ((_%$%hd245280245300%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e245279245297%_)))
                                   (_%$%tl245281245302%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e245279245297%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl245281245302%_))
                                   (let ((_%$%e245282245305%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl245281245302%_))))
                                     (let ((_%$%hd245283245308%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e245282245305%_)))
                                           (_%$%tl245284245310%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e245282245305%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd245283245308%_))
                                           (let ((_%$%e245285245313%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd245283245308%_))))
                                             (let ((_%$%hd245286245316%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e245285245313%_)))
                                                   (_%$%tl245287245318%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e245285245313%_))))
                                               (let* ((_%receiver245352%_
                                                       (let ((_%$e245349%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%tl245284245310%_))))
                 (if _%$e245349%_ _%$e245349%_ _%$%hd245286245316%_)))
              (_%body245358%_
               (map (lambda (_%$%g245353245355%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver245352%_
                       _%$klass245221%_
                       _%method-calls244010%_
                       _%slot-refs244011%_
                       _%$%g245353245355%_))
                    _%$%tl245284245310%_))
              (__tmp248163
               (cons '%#lambda
                     (cons (cons _%$%hd245286245316%_ _%$%tl245287245318%_)
                           _%body245358%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp248163
                                                  _%$%hd244896244953%_))))
                                           (_%$%g245274245292%_
                                            _%$%g245275245295%_))))
                                   (_%$%g245274245292%_ _%$%g245275245295%_))))
                           (_%$%g245274245292%_ _%$%g245275245295%_)))))
               (_%$%g245273245361%_ _%$%hd244896244953%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-case-lambda-expr245525%_
                                                     (let* ((_%$%g245366245385%_
                                                             (lambda (_%$%g245367245382%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g245367245382%_))))
                    (_%$%g245365245522%_
                     (lambda (_%$%g245367245388%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g245367245388%_))
                           (let ((_%$%e245369245390%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g245367245388%_))))
                             (let ((_%$%hd245370245393%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e245369245390%_)))
                                   (_%$%tl245371245395%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e245369245390%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair/null? _%$%tl245371245395%_))
                                   (let ((_g248164_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-split-splice
                                             _%$%tl245371245395%_
                                             '0))))
                                     (begin
                                       (let ((_g248165_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g248164_)
                                                    (##values-length _g248164_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g248165_ 2)))
                                             (error "Context expects 2 values"
                                                    _g248165_)))
                                       (let ((_%$%target245372245398%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g248164_ 0)))
                                             (_%$%tl245374245400%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g248164_ 1))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%$%tl245374245400%_))
                                             (letrec ((_%$%loop245375245403%_
                                                       (lambda (_%$%hd245373245406%_
                                                                _%$%clause245379245408%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%hd245373245406%_))
                     (let ((_%$%e245376245410%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%hd245373245406%_))))
                       (let ((_%$%lp-hd245377245413%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e245376245410%_)))
                             (_%$%lp-tl245378245415%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e245376245410%_))))
                         (_%$%loop245375245403%_
                          _%$%lp-tl245378245415%_
                          (cons _%$%lp-hd245377245413%_
                                _%$%clause245379245408%_))))
                     (let* ((_%$%clause245380245418%_
                             (reverse _%$%clause245379245408%_))
                            (_%clauses245520%_
                             (map (lambda (_%clause245434%_)
                                    (let* ((_%__stx246957246958%_
                                            _%clause245434%_)
                                           (_%$%g245437245452%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%__stx246957246958%_)))))
                                      (let ((_%__kont246959246960%_
                                             (lambda (_%$%g245439245480%_
                                                      _%$%g245440245481%_
                                                      _%$%g245441245482%_)
                                               (let* ((_%receiver245501%_
                                                       (let ((_%$e245498%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%g245439245480%_))))
                 (if _%$e245498%_ _%$e245498%_ _%$%g245441245482%_)))
              (_%body245507%_
               (map (lambda (_%$%g245502245504%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver245501%_
                       _%$klass245221%_
                       _%method-calls244010%_
                       _%slot-refs244011%_
                       _%$%g245502245504%_))
                    _%$%g245439245480%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g245441245482%_
                                                             _%$%g245440245481%_)
                                                       _%body245507%_))))
                                            (_%__kont246961246962%_
                                             (lambda () _%clause245434%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%__stx246957246958%_))
                                            (let ((_%$%e245442245464%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%__stx246957246958%_))))
                                              (let ((_%$%tl245444245469%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e245442245464%_)))
                                                    (_%$%hd245443245467%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e245442245464%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd245443245467%_))
                                                    (let ((_%$%e245445245472%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd245443245467%_))))
                                                      (let ((_%$%tl245447245477%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e245445245472%_)))
                    (_%$%hd245446245475%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e245445245472%_))))
                (_%__kont246959246960%_
                 _%$%tl245444245469%_
                 _%$%tl245447245477%_
                 _%$%hd245446245475%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont246961246962%_))))
                                            (_%__kont246961246962%_)))))
                                  (let ((__tmp248166
                                         (lambda (_%$%g245512245515%_
                                                  _%$%g245513245517%_)
                                           (cons _%$%g245512245515%_
                                                 _%$%g245513245517%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp248166
                                     '()
                                     _%$%clause245380245418%_))))
                            (__tmp248167
                             (cons '%#case-lambda _%clauses245520%_)))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp248167
                        _%$%hd244899244961%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop245375245403%_
                                                _%$%target245372245398%_
                                                '()))
                                             (_%$%g245366245385%_
                                              _%$%g245367245388%_)))))
                                   (_%$%g245366245385%_ _%$%g245367245388%_))))
                           (_%$%g245366245385%_ _%$%g245367245388%_)))))
               (_%$%g245365245522%_ _%$%hd244899244961%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl245527%_
                                                     (let ((__tmp248168
                                                            (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _%$%hd244893244945%_ '())
                                            (cons _%specializer-lambda-expr245364%_
                                                  '()))
                                      '())
                                (cons _%specializer-case-lambda-expr245525%_
                                      '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp248168 _%stx243918%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl245529%_
                                                     (_%generate-specializer-impl243922%_
                                                      _%$klass245221%_
                                                      _%$method-table245223%_
                                                      _%methods-bind245248%_
                                                      _%slots-bind245272%_
                                                      _%specializer-impl245527%_)))
                                               (let ((__tmp248170
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g243929243991%_)))
                                                     (__tmp248169
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%specializer-id245219%_))))
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"generate method specializer "
                                                  __tmp248170
                                                  '" => "
                                                  __tmp248169))
                                               (_%generate-specializer-def243923%_
                                                _%$%g243929243991%_
                                                _%specializer-id245219%_
                                                _%specializer-impl245529%_))))
                                       (_%$%g244875244905%_
                                        _%$%g244876244908%_))))
                               (_%$%g244875244905%_ _%$%g244876244908%_))
                           (_%$%g244875244905%_ _%$%g244876244908%_))
                       (_%$%g244875244905%_ _%$%g244876244908%_))))
               (_%$%g244875244905%_ _%$%g244876244908%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g244875244905%_
                                                    _%$%g244876244908%_))))
                                           (_%$%g244875244905%_
                                            _%$%g244876244908%_))))
                                   (_%$%g244875244905%_ _%$%g244876244908%_))))
                           (_%$%g244875244905%_ _%$%g244876244908%_))))
                   (_%$%g244875244905%_ _%$%g244876244908%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g244875244905%_
                                                    _%$%g244876244908%_)))))
                                       (_%$%g244874245532%_
                                        _%$%g243928243990%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%$%g243928243990%_))
                                         (let* ((_%$%g245536245589%_
                                                 (lambda (_%$%g245537245586%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g245537245586%_))))
                                                (_%$%g245535246754%_
                                                 (lambda (_%$%g245537245592%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g245537245592%_))
                                                       (let ((_%$%e245543245594%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g245537245592%_))))
                 (let ((_%$%hd245544245597%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e245543245594%_)))
                       (_%$%tl245545245599%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e245543245594%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%$%hd245544245597%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%$%hd245544245597%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl245545245599%_))
                               (let ((_%$%e245546245602%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl245545245599%_))))
                                 (let ((_%$%hd245547245605%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e245546245602%_)))
                                       (_%$%tl245548245607%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e245546245602%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd245547245605%_))
                                       (let ((_%$%e245549245610%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd245547245605%_))))
                                         (let ((_%$%hd245550245613%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e245549245610%_)))
                                               (_%$%tl245551245615%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e245549245610%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd245550245613%_))
                                               (let ((_%$%e245552245618%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd245550245613%_))))
                                                 (let ((_%$%hd245553245621%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e245552245618%_)))
                                                       (_%$%tl245554245623%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e245552245618%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%hd245553245621%_))
                                                       (let ((_%$%e245555245626%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%hd245553245621%_))))
                 (let ((_%$%hd245556245629%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e245555245626%_)))
                       (_%$%tl245557245631%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e245555245626%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl245557245631%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl245554245623%_))
                           (let ((_%$%e245558245634%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl245554245623%_))))
                             (let ((_%$%hd245559245637%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e245558245634%_)))
                                   (_%$%tl245560245639%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e245558245634%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd245559245637%_))
                                   (let ((_%$%e245561245642%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd245559245637%_))))
                                     (let ((_%$%hd245562245645%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e245561245642%_)))
                                           (_%$%tl245563245647%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e245561245642%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd245562245645%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%$%hd245562245645%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl245563245647%_))
                                                   (let ((_%$%e245564245650%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl245563245647%_))))
                                                     (let ((_%$%hd245565245653%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e245564245650%_)))
                                                           (_%$%tl245566245655%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e245564245650%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd245565245653%_))
                                                           (let ((_%$%e245567245658%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd245565245653%_))))
                     (let ((_%$%hd245568245661%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e245567245658%_)))
                           (_%$%tl245569245663%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e245567245658%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd245568245661%_))
                           (let ((_%$%e245570245666%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd245568245661%_))))
                             (let ((_%$%hd245571245669%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e245570245666%_)))
                                   (_%$%tl245572245671%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e245570245666%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd245571245669%_))
                                   (let ((_%$%e245573245674%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd245571245669%_))))
                                     (let ((_%$%hd245574245677%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e245573245674%_)))
                                           (_%$%tl245575245679%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e245573245674%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl245575245679%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl245572245671%_))
                                               (let ((_%$%e245576245682%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl245572245671%_))))
                                                 (let ((_%$%hd245577245685%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e245576245682%_)))
                                                       (_%$%tl245578245687%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e245576245682%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl245578245687%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl245569245663%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl245566245655%_))
                       (let ((_%$%e245579245690%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl245566245655%_))))
                         (let ((_%$%hd245580245693%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e245579245690%_)))
                               (_%$%tl245581245695%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e245579245690%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl245581245695%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl245560245639%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl245551245615%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl245548245607%_))
                                           (let ((_%$%e245582245698%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl245548245607%_))))
                                             (let ((_%$%hd245583245701%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e245582245698%_)))
                                                   (_%$%tl245584245703%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e245582245698%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl245584245703%_))
                                                   (let* ((_%$%g245750245812%_
                                                           (lambda (_%$%g245751245809%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g245751245809%_))))
                  (_%$%g245749246751%_
                   (lambda (_%$%g245751245815%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g245751245815%_))
                         (let ((_%$%e245757245817%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g245751245815%_))))
                           (let ((_%$%hd245758245820%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e245757245817%_)))
                                 (_%$%tl245759245822%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e245757245817%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd245758245820%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#lambda
                                        _%$%hd245758245820%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl245759245822%_))
                                         (let ((_%$%e245760245825%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl245759245822%_))))
                                           (let ((_%$%hd245761245828%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e245760245825%_)))
                                                 (_%$%tl245762245830%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e245760245825%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl245762245830%_))
                                                 (let ((_%$%e245763245833%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl245762245830%_))))
                                                   (let ((_%$%hd245764245836%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e245763245833%_)))
                                                         (_%$%tl245765245838%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e245763245833%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%hd245764245836%_))
                                                         (let ((_%$%e245766245841%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd245764245836%_))))
                   (let ((_%$%hd245767245844%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e245766245841%_)))
                         (_%$%tl245768245846%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e245766245841%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%$%hd245767245844%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#call _%$%hd245767245844%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl245768245846%_))
                                 (let ((_%$%e245769245849%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl245768245846%_))))
                                   (let ((_%$%hd245770245852%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e245769245849%_)))
                                         (_%$%tl245771245854%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e245769245849%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd245770245852%_))
                                         (let ((_%$%e245772245857%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd245770245852%_))))
                                           (let ((_%$%hd245773245860%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e245772245857%_)))
                                                 (_%$%tl245774245862%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e245772245857%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd245773245860%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%$%hd245773245860%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl245774245862%_))
                                                         (let ((_%$%e245775245865%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl245774245862%_))))
                   (let ((_%$%hd245776245868%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e245775245865%_)))
                         (_%$%tl245777245870%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e245775245865%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl245777245870%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl245771245854%_))
                             (let ((_%$%e245778245873%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl245771245854%_))))
                               (let ((_%$%hd245779245876%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e245778245873%_)))
                                     (_%$%tl245780245878%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e245778245873%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd245779245876%_))
                                     (let ((_%$%e245781245881%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd245779245876%_))))
                                       (let ((_%$%hd245782245884%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e245781245881%_)))
                                             (_%$%tl245783245886%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e245781245881%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%hd245782245884%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#ref
                                                    _%$%hd245782245884%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl245783245886%_))
                                                     (let ((_%$%e245784245889%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl245783245886%_))))
                                                       (let ((_%$%hd245785245892%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e245784245889%_)))
                     (_%$%tl245786245894%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e245784245889%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl245786245894%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl245780245878%_))
                         (let ((_%$%e245787245897%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl245780245878%_))))
                           (let ((_%$%hd245788245900%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e245787245897%_)))
                                 (_%$%tl245789245902%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e245787245897%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd245788245900%_))
                                 (let ((_%$%e245790245905%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd245788245900%_))))
                                   (let ((_%$%hd245791245908%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e245790245905%_)))
                                         (_%$%tl245792245910%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e245790245905%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier?
                                            _%$%hd245791245908%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%$%hd245791245908%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl245792245910%_))
                                                 (let ((_%$%e245793245913%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl245792245910%_))))
                                                   (let ((_%$%hd245794245916%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e245793245913%_)))
                                                         (_%$%tl245795245918%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e245793245913%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl245795245918%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair/null? _%$%tl245789245902%_))
                     (if (let ((__tmp248171
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-length _%$%tl245789245902%_))))
                           (declare (not safe))
                           (##fx>= __tmp248171 '1))
                         (let ((_g248172_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-split-splice
                                   _%$%tl245789245902%_
                                   '1))))
                           (begin
                             (let ((_g248173_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g248172_)
                                          (##values-length _g248172_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g248173_ 2)))
                                   (error "Context expects 2 values"
                                          _g248173_)))
                             (let ((_%$%target245796245921%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g248172_ 0)))
                                   (_%$%tl245798245923%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g248172_ 1))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl245798245923%_))
                                   (let ((_%$%e245805245926%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl245798245923%_))))
                                     (let ((_%$%hd245806245929%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e245805245926%_)))
                                           (_%$%tl245807245931%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e245805245926%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl245807245931%_))
                                           (letrec ((_%$%loop245799245934%_
                                                     (lambda (_%$%hd245797245937%_
                                                              _%$%kw-ref245803245939%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd245797245937%_))
                                                           (let ((_%$%e245800245941%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd245797245937%_))))
                     (let ((_%$%lp-hd245801245944%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e245800245941%_)))
                           (_%$%lp-tl245802245946%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e245800245941%_))))
                       (_%$%loop245799245934%_
                        _%$%lp-tl245802245946%_
                        (cons _%$%lp-hd245801245944%_
                              _%$%kw-ref245803245939%_))))
                   (let ((_%$%kw-ref245804245949%_
                          (reverse _%$%kw-ref245803245939%_)))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl245765245838%_))
                         (let* ((_%kw-count246006%_
                                 (length (let ((__tmp248174
                                                (lambda (_%$%g245998246001%_
                                                         _%$%g245999246003%_)
                                                  (cons _%$%g245998246001%_
                                                        _%$%g245999246003%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp248174
                                            '()
                                            _%$%kw-ref245804245949%_))))
                                (_%self-index246008%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%kw-count246006%_ '1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#lambda-expr? _%$%hd245577245685%_))
                               (let* ((_%$%g246012246026%_
                                       (lambda (_%$%g246013246023%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g246013246023%_))))
                                      (_%$%g246011246149%_
                                       (lambda (_%$%g246013246029%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%g246013246029%_))
                                             (let ((_%$%e246016246031%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g246013246029%_))))
                                               (let ((_%$%hd246017246034%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e246016246031%_)))
                                                     (_%$%tl246018246036%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e246016246031%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl246018246036%_))
                                                     (let ((_%$%e246019246039%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl246018246036%_))))
                                                       (let ((_%$%hd246020246042%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e246019246039%_)))
                     (_%$%tl246021246044%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e246019246039%_))))
                 (let* ((_%self246065%_
                         (list-ref _%$%hd246020246042%_ _%self-index246008%_))
                        (_%receiver246070%_
                         (let ((_%$e246067%_
                                (gxc#apply-extract-receiver
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '%#begin))
                                       _%$%tl246021246044%_))))
                           (if _%$e246067%_ _%$e246067%_ _%self246065%_))))
                   (for-each
                    (lambda (_%$%g246072246074%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver246070%_
                       _%method-calls244010%_
                       _%slot-refs244011%_
                       _%$%g246072246074%_))
                    _%$%tl246021246044%_)
                   (if (_%no-specializer?244014%_)
                       _%stx243918%_
                       (let* ((_%specializer-id246083%_
                               (let* ((_%id246077%_
                                       (let ((__tmp248175
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%g243929243991%_))))
                                         (declare (not safe))
                                         (make-symbol__1
                                          __tmp248175
                                          '"::specialize")))
                                      (_%specializer-id246080%_
                                       (let ((__tmp248176
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-source
                                                 _%stx243918%_))))
                                         (declare (not safe))
                                         (gx#core-quote-syntax__1
                                          _%id246077%_
                                          __tmp248176))))
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-bind-runtime!__0
                                    _%specializer-id246080%_))
                                 _%specializer-id246080%_))
                              (_%$klass246085%_
                               (let ((__tmp248177
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__klass))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp248177)))
                              (_%$method-table246087%_
                               (let ((__tmp248178
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__method-table))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp248178)))
                              (_%methods246089%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%method-calls244010%_)))
                              (_%$methods246093%_
                               (let ((__tmp248179
                                      (lambda (_%id246091%_)
                                        (let ((__tmp248180
                                               (gensym _%id246091%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp248180)))))
                                 (declare (not safe))
                                 (##map __tmp248179 _%methods246089%_)))
                              (_%_246102%_
                               (let ((__tmp248181
                                      (lambda (_%$%g246094246097%_
                                               _%$%g246095246099%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%method-calls244010%_
                                           _%$%g246094246097%_
                                           _%$%g246095246099%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp248181
                                  _%methods246089%_
                                  _%$methods246093%_)))
                              (_%methods-bind246112%_
                               (let ((__tmp248182
                                      (lambda (_%$%g246104246107%_
                                               _%$%g246105246109%_)
                                        (_%generate-method-bind243920%_
                                         _%$klass246085%_
                                         _%$method-table246087%_
                                         _%$%g246104246107%_
                                         _%$%g246105246109%_))))
                                 (declare (not safe))
                                 (##map __tmp248182
                                        _%methods246089%_
                                        _%$methods246093%_)))
                              (_%slots246114%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%slot-refs244011%_)))
                              (_%$slots246118%_
                               (let ((__tmp248183
                                      (lambda (_%id246116%_)
                                        (let ((__tmp248184
                                               (gensym _%id246116%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp248184)))))
                                 (declare (not safe))
                                 (##map __tmp248183 _%slots246114%_)))
                              (_%_246127%_
                               (let ((__tmp248185
                                      (lambda (_%$%g246119246122%_
                                               _%$%g246120246124%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%slot-refs244011%_
                                           _%$%g246119246122%_
                                           _%$%g246120246124%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp248185
                                  _%slots246114%_
                                  _%$slots246118%_)))
                              (_%slots-bind246136%_
                               (let ((__tmp248186
                                      (lambda (_%$%g246128246131%_
                                               _%$%g246129246133%_)
                                        (_%generate-slot-bind243921%_
                                         _%$klass246085%_
                                         _%$%g246128246131%_
                                         _%$%g246129246133%_))))
                                 (declare (not safe))
                                 (##map __tmp248186
                                        _%slots246114%_
                                        _%$slots246118%_)))
                              (_%specializer-impl246144%_
                               (let* ((_%specializer-body246142%_
                                       (map (lambda (_%$%g246137246139%_)
                                              (gxc#apply-subst-object-refs__%
                                               '#f
                                               _%receiver246070%_
                                               _%$klass246085%_
                                               _%method-calls244010%_
                                               _%slot-refs244011%_
                                               _%$%g246137246139%_))
                                            _%$%tl246021246044%_))
                                      (__tmp248187
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _%$%hd245556245629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#let-values
                                   (cons (cons (cons (cons _%$%hd245574245677%_
                                                           '())
                                                     (cons (let ((__tmp248188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#lambda
                                (cons _%$%hd246020246042%_
                                      _%specializer-body246142%_))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp248188 _%$%hd245577245685%_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%$%hd245580245693%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%$%hd245583245701%_
                                                         '())))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp248187
                                  _%stx243918%_)))
                              (_%specializer-impl246146%_
                               (_%generate-specializer-impl243922%_
                                _%$klass246085%_
                                _%$method-table246087%_
                                _%methods-bind246112%_
                                _%slots-bind246136%_
                                _%specializer-impl246144%_)))
                         (let ((__tmp248190
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g243929243991%_)))
                               (__tmp248189
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%specializer-id246083%_))))
                           (declare (not safe))
                           (gxc#verbose
                            '"generate method specializer "
                            __tmp248190
                            '" => "
                            __tmp248189))
                         (_%generate-specializer-def243923%_
                          _%$%g243929243991%_
                          _%specializer-id246083%_
                          _%specializer-impl246146%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246012246026%_
                                                      _%$%g246013246029%_))))
                                             (_%$%g246012246026%_
                                              _%$%g246013246029%_)))))
                                 (_%$%g246011246149%_ _%$%hd245577245685%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr?
                                      _%$%hd245577245685%_))
                                   (let* ((_%$%g246153246183%_
                                           (lambda (_%$%g246154246180%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g246154246180%_))))
                                          (_%$%g246152246747%_
                                           (lambda (_%$%g246154246186%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%g246154246186%_))
                                                 (let ((_%$%e246158246188%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g246154246186%_))))
                                                   (let ((_%$%hd246159246191%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e246158246188%_)))
                                                         (_%$%tl246160246193%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e246158246188%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl246160246193%_))
                                                         (let ((_%$%e246161246196%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl246160246193%_))))
                   (let ((_%$%hd246162246199%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e246161246196%_)))
                         (_%$%tl246163246201%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e246161246196%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd246162246199%_))
                         (let ((_%$%e246164246204%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd246162246199%_))))
                           (let ((_%$%hd246165246207%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e246164246204%_)))
                                 (_%$%tl246166246209%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e246164246204%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd246165246207%_))
                                 (let ((_%$%e246167246212%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd246165246207%_))))
                                   (let ((_%$%hd246168246215%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e246167246212%_)))
                                         (_%$%tl246169246217%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e246167246212%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd246168246215%_))
                                         (let ((_%$%e246170246220%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd246168246215%_))))
                                           (let ((_%$%hd246171246223%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e246170246220%_)))
                                                 (_%$%tl246172246225%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e246170246220%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl246172246225%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl246169246217%_))
                                                     (let ((_%$%e246173246228%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl246169246217%_))))
                                                       (let ((_%$%hd246174246231%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e246173246228%_)))
                     (_%$%tl246175246233%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e246173246228%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl246175246233%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl246166246209%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl246163246201%_))
                             (let ((_%$%e246176246236%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl246163246201%_))))
                               (let ((_%$%hd246177246239%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e246176246236%_)))
                                     (_%$%tl246178246241%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e246176246236%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl246178246241%_))
                                     (let ()
                                       (let* ((_%$%g246270246284%_
                                               (lambda (_%$%g246271246281%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g246271246281%_))))
                                              (_%$%g246269246331%_
                                               (lambda (_%$%g246271246287%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g246271246287%_))
                                                     (let ((_%$%e246274246289%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g246271246287%_))))
                                                       (let ((_%$%hd246275246292%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e246274246289%_)))
                     (_%$%tl246276246294%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e246274246289%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl246276246294%_))
                     (let ((_%$%e246277246297%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl246276246294%_))))
                       (let ((_%$%hd246278246300%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e246277246297%_)))
                             (_%$%tl246279246302%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e246277246297%_))))
                         (let* ((_%self246319%_
                                 (list-ref
                                  _%$%hd246278246300%_
                                  _%self-index246008%_))
                                (_%receiver246324%_
                                 (let ((_%$e246321%_
                                        (gxc#apply-extract-receiver
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin))
                                               _%$%tl246279246302%_))))
                                   (if _%$e246321%_
                                       _%$e246321%_
                                       _%self246319%_))))
                           (for-each
                            (lambda (_%$%g246326246328%_)
                              (gxc#apply-collect-object-refs__%
                               '#f
                               _%receiver246324%_
                               _%method-calls244010%_
                               _%slot-refs244011%_
                               _%$%g246326246328%_))
                            _%$%tl246279246302%_))))
                     (_%$%g246270246284%_ _%$%g246271246287%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246270246284%_
                                                      _%$%g246271246287%_)))))
                                         (_%$%g246269246331%_
                                          _%$%hd246174246231%_))
                                       (let* ((_%$%g246334246353%_
                                               (lambda (_%$%g246335246350%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g246335246350%_))))
                                              (_%$%g246333246462%_
                                               (lambda (_%$%g246335246356%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g246335246356%_))
                                                     (let ((_%$%e246337246358%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g246335246356%_))))
                                                       (let ((_%$%hd246338246361%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e246337246358%_)))
                     (_%$%tl246339246363%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e246337246358%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair/null? _%$%tl246339246363%_))
                     (let ((_g248191_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-split-splice
                               _%$%tl246339246363%_
                               '0))))
                       (begin
                         (let ((_g248192_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g248191_)
                                      (##values-length _g248191_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g248192_ 2)))
                               (error "Context expects 2 values" _g248192_)))
                         (let ((_%$%target246340246366%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g248191_ 0)))
                               (_%$%tl246342246368%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g248191_ 1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl246342246368%_))
                               (letrec ((_%$%loop246343246371%_
                                         (lambda (_%$%hd246341246374%_
                                                  _%$%clause246347246376%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd246341246374%_))
                                               (let ((_%$%e246344246378%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd246341246374%_))))
                                                 (let ((_%$%lp-hd246345246381%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e246344246378%_)))
                                                       (_%$%lp-tl246346246383%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e246344246378%_))))
                                                   (_%$%loop246343246371%_
                                                    _%$%lp-tl246346246383%_
                                                    (cons _%$%lp-hd246345246381%_
                                                          _%$%clause246347246376%_))))
                                               (let ((_%$%clause246348246386%_
                                                      (reverse _%$%clause246347246376%_)))
                                                 (for-each
                                                  (lambda (_%clause246401%_)
                                                    (let* ((_%$%g246403246414%_
                                                            (lambda (_%$%g246404246411%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g246404246411%_))))
                   (_%$%g246402246452%_
                    (lambda (_%$%g246404246417%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g246404246417%_))
                          (let ((_%$%e246407246419%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g246404246417%_))))
                            (let ((_%$%hd246408246422%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e246407246419%_)))
                                  (_%$%tl246409246424%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e246407246419%_))))
                              (let* ((_%self246440%_
                                      (list-ref
                                       _%$%hd246408246422%_
                                       _%self-index246008%_))
                                     (_%receiver246445%_
                                      (let ((_%$e246442%_
                                             (gxc#apply-extract-receiver
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#begin))
                                                    _%$%tl246409246424%_))))
                                        (if _%$e246442%_
                                            _%$e246442%_
                                            _%self246440%_))))
                                (for-each
                                 (lambda (_%$%g246447246449%_)
                                   (gxc#apply-collect-object-refs__%
                                    '#f
                                    _%receiver246445%_
                                    _%method-calls244010%_
                                    _%slot-refs244011%_
                                    _%$%g246447246449%_))
                                 _%$%tl246409246424%_))))
                          (_%$%g246403246414%_ _%$%g246404246417%_)))))
              (_%$%g246402246452%_ _%clause246401%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp248193
                                                         (lambda (_%$%g246454246457%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g246455246459%_)
                   (cons _%$%g246454246457%_ _%$%g246455246459%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp248193
                                                     '()
                                                     _%$%clause246348246386%_))))))))
                                 (_%$%loop246343246371%_
                                  _%$%target246340246366%_
                                  '()))
                               (_%$%g246334246353%_ _%$%g246335246356%_)))))
                     (_%$%g246334246353%_ _%$%g246335246356%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246334246353%_
                                                      _%$%g246335246356%_)))))
                                         (_%$%g246333246462%_
                                          _%$%hd246177246239%_))
                                       (if (_%no-specializer?244014%_)
                                           _%stx243918%_
                                           (let* ((_%specializer-id246471%_
                                                   (let* ((_%id246465%_
                                                           (let ((__tmp248194
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g243929243991%_))))
                     (declare (not safe))
                     (make-symbol__1 __tmp248194 '"::specialize")))
                  (_%specializer-id246468%_
                   (let ((__tmp248195
                          (let ()
                            (declare (not safe))
                            (gx#stx-source _%stx243918%_))))
                     (declare (not safe))
                     (gx#core-quote-syntax__1 _%id246465%_ __tmp248195))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#core-bind-runtime!__0
                                                        _%specializer-id246468%_))
                                                     _%specializer-id246468%_))
                                                  (_%$klass246473%_
                                                   (let ((__tmp248196
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__klass))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp248196)))
                                                  (_%$method-table246475%_
                                                   (let ((__tmp248197
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__method-table))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp248197)))
                                                  (_%methods246477%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%method-calls244010%_)))
                                                  (_%$methods246481%_
                                                   (let ((__tmp248198
                                                          (lambda (_%id246479%_)
                                                            (let ((__tmp248199
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id246479%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp248199)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp248198
                                                            _%methods246477%_)))
                                                  (_%_246490%_
                                                   (let ((__tmp248200
                                                          (lambda (_%$%g246482246485%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g246483246487%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%method-calls244010%_
                       _%$%g246482246485%_
                       _%$%g246483246487%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp248200
                                                      _%methods246477%_
                                                      _%$methods246481%_)))
                                                  (_%methods-bind246500%_
                                                   (let ((__tmp248201
                                                          (lambda (_%$%g246492246495%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g246493246497%_)
                    (_%generate-method-bind243920%_
                     _%$klass246473%_
                     _%$method-table246475%_
                     _%$%g246492246495%_
                     _%$%g246493246497%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp248201
                                                            _%methods246477%_
                                                            _%$methods246481%_)))
                                                  (_%slots246502%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%slot-refs244011%_)))
                                                  (_%$slots246506%_
                                                   (let ((__tmp248202
                                                          (lambda (_%id246504%_)
                                                            (let ((__tmp248203
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id246504%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp248203)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp248202
                                                            _%slots246502%_)))
                                                  (_%_246515%_
                                                   (let ((__tmp248204
                                                          (lambda (_%$%g246507246510%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g246508246512%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%slot-refs244011%_
                       _%$%g246507246510%_
                       _%$%g246508246512%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp248204
                                                      _%slots246502%_
                                                      _%$slots246506%_)))
                                                  (_%slots-bind246524%_
                                                   (let ((__tmp248205
                                                          (lambda (_%$%g246516246519%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g246517246521%_)
                    (_%generate-slot-bind243921%_
                     _%$klass246473%_
                     _%$%g246516246519%_
                     _%$%g246517246521%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp248205
                                                            _%slots246502%_
                                                            _%$slots246506%_)))
                                                  (_%specializer-lambda-expr246602%_
                                                   (let* ((_%$%g246526246540%_
                                                           (lambda (_%$%g246527246537%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g246527246537%_))))
                  (_%$%g246525246599%_
                   (lambda (_%$%g246527246543%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g246527246543%_))
                         (let ((_%$%e246530246545%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g246527246543%_))))
                           (let ((_%$%hd246531246548%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e246530246545%_)))
                                 (_%$%tl246532246550%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e246530246545%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl246532246550%_))
                                 (let ((_%$%e246533246553%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl246532246550%_))))
                                   (let ((_%$%hd246534246556%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e246533246553%_)))
                                         (_%$%tl246535246558%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e246533246553%_))))
                                     (let* ((_%self246585%_
                                             (list-ref
                                              _%$%hd246534246556%_
                                              _%self-index246008%_))
                                            (_%receiver246590%_
                                             (let ((_%$e246587%_
                                                    (gxc#apply-extract-receiver
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%$%tl246535246558%_))))
                                               (if _%$e246587%_
                                                   _%$e246587%_
                                                   _%self246585%_)))
                                            (_%body246596%_
                                             (map (lambda (_%$%g246591246593%_)
                                                    (gxc#apply-subst-object-refs__%
                                                     '#f
                                                     _%receiver246590%_
                                                     _%$klass246473%_
                                                     _%method-calls244010%_
                                                     _%slot-refs244011%_
                                                     _%$%g246591246593%_))
                                                  _%$%tl246535246558%_))
                                            (__tmp248206
                                             (cons '%#lambda
                                                   (cons _%$%hd246534246556%_
                                                         _%body246596%_))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp248206
                                        _%$%hd246174246231%_))))
                                 (_%$%g246526246540%_ _%$%g246527246543%_))))
                         (_%$%g246526246540%_ _%$%g246527246543%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246525246599%_
                                                      _%$%hd246174246231%_)))
                                                  (_%specializer-case-lambda-expr246740%_
                                                   (let* ((_%$%g246604246623%_
                                                           (lambda (_%$%g246605246620%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g246605246620%_))))
                  (_%$%g246603246737%_
                   (lambda (_%$%g246605246626%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g246605246626%_))
                         (let ((_%$%e246607246628%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g246605246626%_))))
                           (let ((_%$%hd246608246631%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e246607246628%_)))
                                 (_%$%tl246609246633%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e246607246628%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair/null? _%$%tl246609246633%_))
                                 (let ((_g248207_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-split-splice
                                           _%$%tl246609246633%_
                                           '0))))
                                   (begin
                                     (let ((_g248208_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g248207_)
                                                  (##values-length _g248207_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g248208_ 2)))
                                           (error "Context expects 2 values"
                                                  _g248208_)))
                                     (let ((_%$%target246610246636%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g248207_ 0)))
                                           (_%$%tl246612246638%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g248207_ 1))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl246612246638%_))
                                           (letrec ((_%$%loop246613246641%_
                                                     (lambda (_%$%hd246611246644%_
                                                              _%$%clause246617246646%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd246611246644%_))
                                                           (let ((_%$%e246614246648%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd246611246644%_))))
                     (let ((_%$%lp-hd246615246651%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e246614246648%_)))
                           (_%$%lp-tl246616246653%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e246614246648%_))))
                       (_%$%loop246613246641%_
                        _%$%lp-tl246616246653%_
                        (cons _%$%lp-hd246615246651%_
                              _%$%clause246617246646%_))))
                   (let* ((_%$%clause246618246656%_
                           (reverse _%$%clause246617246646%_))
                          (_%clauses246735%_
                           (map (lambda (_%clause246672%_)
                                  (let* ((_%$%g246674246685%_
                                          (lambda (_%$%g246675246682%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g246675246682%_))))
                                         (_%$%g246673246725%_
                                          (lambda (_%$%g246675246688%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g246675246688%_))
                                                (let ((_%$%e246678246690%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g246675246688%_))))
                                                  (let ((_%$%hd246679246693%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e246678246690%_)))
                                                        (_%$%tl246680246695%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e246678246690%_))))
                                                    (let* ((_%self246711%_
                                                            (list-ref
                                                             _%$%hd246679246693%_
                                                             _%self-index246008%_))
                                                           (_%receiver246716%_
                                                            (let ((_%$e246713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-extract-receiver
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#begin))
                                  _%$%tl246680246695%_))))
                      (if _%$e246713%_ _%$e246713%_ _%self246711%_)))
                   (_%body246722%_
                    (map (lambda (_%$%g246717246719%_)
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%receiver246716%_
                            _%$klass246473%_
                            _%method-calls244010%_
                            _%slot-refs244011%_
                            _%$%g246717246719%_))
                         _%$%tl246680246695%_)))
              (cons _%$%hd246679246693%_ _%body246722%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g246674246685%_
                                                 _%$%g246675246688%_)))))
                                    (_%$%g246673246725%_ _%clause246672%_)))
                                (let ((__tmp248209
                                       (lambda (_%$%g246727246730%_
                                                _%$%g246728246732%_)
                                         (cons _%$%g246727246730%_
                                               _%$%g246728246732%_))))
                                  (declare (not safe))
                                  (foldr__0
                                   __tmp248209
                                   '()
                                   _%$%clause246618246656%_))))
                          (__tmp248210
                           (cons '%#case-lambda _%clauses246735%_)))
                     (declare (not safe))
                     (gxc#xform-wrap-source
                      __tmp248210
                      _%$%hd246177246239%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop246613246641%_
                                              _%$%target246610246636%_
                                              '()))
                                           (_%$%g246604246623%_
                                            _%$%g246605246626%_)))))
                                 (_%$%g246604246623%_ _%$%g246605246626%_))))
                         (_%$%g246604246623%_ _%$%g246605246626%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246603246737%_
                                                      _%$%hd246177246239%_)))
                                                  (_%specializer-impl246742%_
                                                   (let ((__tmp248211
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$%hd245556245629%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons (cons '%#let-values
                                                      (cons (cons (cons (cons _%$%hd245574245677%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (let ((__tmp248212
                                             (cons '%#let-values
                                                   (cons (cons (cons (cons _%$%hd246171246223%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons _%specializer-lambda-expr246602%_ '()))
                       '())
                 (cons _%specializer-case-lambda-expr246740%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp248212
                                         _%stx243918%_))
                                      '()))
                          '())
                    (cons _%$%hd245580245693%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())
                              (cons _%$%hd245583245701%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp248211
                                                      _%stx243918%_)))
                                                  (_%specializer-impl246744%_
                                                   (_%generate-specializer-impl243922%_
                                                    _%$klass246473%_
                                                    _%$method-table246475%_
                                                    _%methods-bind246500%_
                                                    _%slots-bind246524%_
                                                    _%specializer-impl246742%_)))
                                             (let ((__tmp248214
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g243929243991%_)))
                                                   (__tmp248213
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%specializer-id246471%_))))
                                               (declare (not safe))
                                               (gxc#verbose
                                                '"generate method specializer "
                                                __tmp248214
                                                '" => "
                                                __tmp248213))
                                             (_%generate-specializer-def243923%_
                                              _%$%g243929243991%_
                                              _%specializer-id246471%_
                                              _%specializer-impl246744%_))))
                                     (_%$%g246153246183%_
                                      _%$%g246154246186%_))))
                             (_%$%g246153246183%_ _%$%g246154246186%_))
                         (_%$%g246153246183%_ _%$%g246154246186%_))
                     (_%$%g246153246183%_ _%$%g246154246186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246153246183%_
                                                      _%$%g246154246186%_))
                                                 (_%$%g246153246183%_
                                                  _%$%g246154246186%_))))
                                         (_%$%g246153246183%_
                                          _%$%g246154246186%_))))
                                 (_%$%g246153246183%_ _%$%g246154246186%_))))
                         (_%$%g246153246183%_ _%$%g246154246186%_))))
                 (_%$%g246153246183%_ _%$%g246154246186%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g246153246183%_
                                                  _%$%g246154246186%_)))))
                                     (_%$%g246152246747%_
                                      _%$%hd245577245685%_))
                                   _%stx243918%_)))
                         (_%$%g245750245812%_ _%$%g245751245815%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop245799245934%_
                                              _%$%target245796245921%_
                                              '()))
                                           (_%$%g245750245812%_
                                            _%$%g245751245815%_))))
                                   (_%$%g245750245812%_
                                    _%$%g245751245815%_)))))
                         (_%$%g245750245812%_ _%$%g245751245815%_))
                     (_%$%g245750245812%_ _%$%g245751245815%_))
                 (_%$%g245750245812%_ _%$%g245751245815%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g245750245812%_
                                                  _%$%g245751245815%_))
                                             (_%$%g245750245812%_
                                              _%$%g245751245815%_))
                                         (_%$%g245750245812%_
                                          _%$%g245751245815%_))))
                                 (_%$%g245750245812%_ _%$%g245751245815%_))))
                         (_%$%g245750245812%_ _%$%g245751245815%_))
                     (_%$%g245750245812%_ _%$%g245751245815%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g245750245812%_
                                                      _%$%g245751245815%_))
                                                 (_%$%g245750245812%_
                                                  _%$%g245751245815%_))
                                             (_%$%g245750245812%_
                                              _%$%g245751245815%_))))
                                     (_%$%g245750245812%_
                                      _%$%g245751245815%_))))
                             (_%$%g245750245812%_ _%$%g245751245815%_))
                         (_%$%g245750245812%_ _%$%g245751245815%_))))
                 (_%$%g245750245812%_ _%$%g245751245815%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g245750245812%_
                                                      _%$%g245751245815%_))
                                                 (_%$%g245750245812%_
                                                  _%$%g245751245815%_))))
                                         (_%$%g245750245812%_
                                          _%$%g245751245815%_))))
                                 (_%$%g245750245812%_ _%$%g245751245815%_))
                             (_%$%g245750245812%_ _%$%g245751245815%_))
                         (_%$%g245750245812%_ _%$%g245751245815%_))))
                 (_%$%g245750245812%_ _%$%g245751245815%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g245750245812%_
                                                  _%$%g245751245815%_))))
                                         (_%$%g245750245812%_
                                          _%$%g245751245815%_))
                                     (_%$%g245750245812%_ _%$%g245751245815%_))
                                 (_%$%g245750245812%_ _%$%g245751245815%_))))
                         (_%$%g245750245812%_ _%$%g245751245815%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g245749246751%_
                                                      _%$%hd245580245693%_))
                                                   (_%$%g245536245589%_
                                                    _%$%g245537245592%_))))
                                           (_%$%g245536245589%_
                                            _%$%g245537245592%_))
                                       (_%$%g245536245589%_
                                        _%$%g245537245592%_))
                                   (_%$%g245536245589%_ _%$%g245537245592%_))
                               (_%$%g245536245589%_ _%$%g245537245592%_))))
                       (_%$%g245536245589%_ _%$%g245537245592%_))
                   (_%$%g245536245589%_ _%$%g245537245592%_))
               (_%$%g245536245589%_ _%$%g245537245592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g245536245589%_
                                                _%$%g245537245592%_))
                                           (_%$%g245536245589%_
                                            _%$%g245537245592%_))))
                                   (_%$%g245536245589%_ _%$%g245537245592%_))))
                           (_%$%g245536245589%_ _%$%g245537245592%_))))
                   (_%$%g245536245589%_ _%$%g245537245592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g245536245589%_
                                                    _%$%g245537245592%_))
                                               (_%$%g245536245589%_
                                                _%$%g245537245592%_))
                                           (_%$%g245536245589%_
                                            _%$%g245537245592%_))))
                                   (_%$%g245536245589%_ _%$%g245537245592%_))))
                           (_%$%g245536245589%_ _%$%g245537245592%_))
                       (_%$%g245536245589%_ _%$%g245537245592%_))))
               (_%$%g245536245589%_ _%$%g245537245592%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g245536245589%_
                                                _%$%g245537245592%_))))
                                       (_%$%g245536245589%_
                                        _%$%g245537245592%_))))
                               (_%$%g245536245589%_ _%$%g245537245592%_))
                           (_%$%g245536245589%_ _%$%g245537245592%_))
                       (_%$%g245536245589%_ _%$%g245537245592%_))))
               (_%$%g245536245589%_ _%$%g245537245592%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g245535246754%_
                                            _%$%g243928243990%_))
                                         _%stx243918%_))))))))
                  (_%__kont246981246982%_ (lambda () _%stx243918%_)))
              (let ((_%__match247010247011%_
                     (lambda (_%$%e243930243958%_
                              _%$%hd243931243961%_
                              _%$%tl243932243963%_
                              _%$%e243933243966%_
                              _%$%hd243934243969%_
                              _%$%tl243935243971%_
                              _%$%e243936243974%_
                              _%$%hd243937243977%_
                              _%$%tl243938243979%_
                              _%$%e243939243982%_
                              _%$%hd243940243985%_
                              _%$%tl243941243987%_)
                       (let ((_%$%g243928243990%_ _%$%hd243940243985%_)
                             (_%$%g243929243991%_ _%$%hd243937243977%_))
                         (if (let ((__tmp248215
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g243929243991%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp248215))
                             (_%__kont246979246980%_
                              _%$%g243928243990%_
                              _%$%g243929243991%_)
                             (_%__kont246981246982%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx246977246978%_))
                    (let ((_%$%e243930243958%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx246977246978%_))))
                      (let ((_%$%tl243932243963%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e243930243958%_)))
                            (_%$%hd243931243961%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e243930243958%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl243932243963%_))
                            (let ((_%$%e243933243966%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl243932243963%_))))
                              (let ((_%$%tl243935243971%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e243933243966%_)))
                                    (_%$%hd243934243969%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e243933243966%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd243934243969%_))
                                    (let ((_%$%e243936243974%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd243934243969%_))))
                                      (let ((_%$%tl243938243979%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e243936243974%_)))
                                            (_%$%hd243937243977%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e243936243974%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl243938243979%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl243935243971%_))
                                                (let ((_%$%e243939243982%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl243935243971%_))))
                                                  (let ((_%$%tl243941243987%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e243939243982%_)))
                                                        (_%$%hd243940243985%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e243939243982%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl243941243987%_))
                                                        (_%__match247010247011%_
                                                         _%$%e243930243958%_
                                                         _%$%hd243931243961%_
                                                         _%$%tl243932243963%_
                                                         _%$%e243933243966%_
                                                         _%$%hd243934243969%_
                                                         _%$%tl243935243971%_
                                                         _%$%e243936243974%_
                                                         _%$%hd243937243977%_
                                                         _%$%tl243938243979%_
                                                         _%$%e243939243982%_
                                                         _%$%hd243940243985%_
                                                         _%$%tl243941243987%_)
                                                        (_%__kont246981246982%_))))
                                                (_%__kont246981246982%_))
                                            (_%__kont246981246982%_))))
                                    (_%__kont246981246982%_))))
                            (_%__kont246981246982%_))))
                    (_%__kont246981246982%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self243770%_ _%stx243771%_)
        (let* ((_%__stx247013247014%_ _%stx243771%_)
               (_%$%g243774243807%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx247013247014%_)))))
          (let ((_%__kont247015247016%_
                 (lambda (_%$%g243776243897%_) _%$%g243776243897%_))
                (_%__kont247017247018%_
                 (lambda (_%$%g243792243836%_ _%$%g243793243837%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self243770%_ _%$%g243792243836%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx247013247014%_))
                (let ((_%$%e243777243857%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx247013247014%_))))
                  (let ((_%$%tl243779243862%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e243777243857%_)))
                        (_%$%hd243778243860%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e243777243857%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl243779243862%_))
                        (let ((_%$%e243780243865%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl243779243862%_))))
                          (let ((_%$%tl243782243870%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e243780243865%_)))
                                (_%$%hd243781243868%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e243780243865%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd243781243868%_))
                                (let ((_%$%e243783243873%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd243781243868%_))))
                                  (let ((_%$%tl243785243878%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e243783243873%_)))
                                        (_%$%hd243784243876%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e243783243873%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd243784243876%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%$%hd243784243876%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl243785243878%_))
                                                (let ((_%$%e243786243881%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl243785243878%_))))
                                                  (let ((_%$%tl243788243886%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e243786243881%_)))
                                                        (_%$%hd243787243884%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e243786243881%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl243788243886%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl243782243870%_))
                                                            (let ((_%$%e243789243889%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl243782243870%_))))
                      (let ((_%$%tl243791243894%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e243789243889%_)))
                            (_%$%hd243790243892%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e243789243889%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl243791243894%_))
                            (_%__kont247015247016%_ _%$%hd243787243884%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g243774243807%_)))))
                    (let () (declare (not safe)) (_%$%g243774243807%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl243782243870%_))
                    (let ((_%$%e243800243828%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl243782243870%_))))
                      (let ((_%$%tl243802243833%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e243800243828%_)))
                            (_%$%hd243801243831%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e243800243828%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl243802243833%_))
                            (_%__kont247017247018%_
                             _%$%hd243801243831%_
                             _%$%hd243781243868%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g243774243807%_)))))
                    (let () (declare (not safe)) (_%$%g243774243807%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl243782243870%_))
                                                    (let ((_%$%e243800243828%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl243782243870%_))))
                                                      (let ((_%$%tl243802243833%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e243800243828%_)))
                    (_%$%hd243801243831%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e243800243828%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl243802243833%_))
                    (_%__kont247017247018%_
                     _%$%hd243801243831%_
                     _%$%hd243781243868%_)
                    (let () (declare (not safe)) (_%$%g243774243807%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g243774243807%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl243782243870%_))
                                                (let ((_%$%e243800243828%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl243782243870%_))))
                                                  (let ((_%$%tl243802243833%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e243800243828%_)))
                                                        (_%$%hd243801243831%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e243800243828%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl243802243833%_))
                                                        (_%__kont247017247018%_
                                                         _%$%hd243801243831%_
                                                         _%$%hd243781243868%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g243774243807%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g243774243807%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl243782243870%_))
                                            (let ((_%$%e243800243828%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl243782243870%_))))
                                              (let ((_%$%tl243802243833%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e243800243828%_)))
                                                    (_%$%hd243801243831%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e243800243828%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl243802243833%_))
                                                    (_%__kont247017247018%_
                                                     _%$%hd243801243831%_
                                                     _%$%hd243781243868%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g243774243807%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g243774243807%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl243782243870%_))
                                    (let ((_%$%e243800243828%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl243782243870%_))))
                                      (let ((_%$%tl243802243833%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e243800243828%_)))
                                            (_%$%hd243801243831%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e243800243828%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl243802243833%_))
                                            (_%__kont247017247018%_
                                             _%$%hd243801243831%_
                                             _%$%hd243781243868%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g243774243807%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g243774243807%_))))))
                        (let () (declare (not safe)) (_%$%g243774243807%_)))))
                (let () (declare (not safe)) (_%$%g243774243807%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self243686%_ _%stx243687%_)
        (let* ((_%$%g243689243710%_
                (lambda (_%$%g243690243707%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g243690243707%_))))
               (_%$%g243688243767%_
                (lambda (_%$%g243690243713%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g243690243713%_))
                      (let ((_%$%e243694243715%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g243690243713%_))))
                        (let ((_%$%hd243695243718%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e243694243715%_)))
                              (_%$%tl243696243720%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e243694243715%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl243696243720%_))
                              (let ((_%$%e243697243723%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl243696243720%_))))
                                (let ((_%$%hd243698243726%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e243697243723%_)))
                                      (_%$%tl243699243728%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e243697243723%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl243699243728%_))
                                      (let ((_%$%e243700243731%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl243699243728%_))))
                                        (let ((_%$%hd243701243734%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e243700243731%_)))
                                              (_%$%tl243702243736%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e243700243731%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl243702243736%_))
                                              (let ((_%$%e243703243739%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl243702243736%_))))
                                                (let ((_%$%hd243704243742%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e243703243739%_)))
                                                      (_%$%tl243705243744%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e243703243739%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl243705243744%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self243686%_
                                                         _%$%hd243701243734%_))
                                                      (_%$%g243689243710%_
                                                       _%$%g243690243713%_))))
                                              (_%$%g243689243710%_
                                               _%$%g243690243713%_))))
                                      (_%$%g243689243710%_
                                       _%$%g243690243713%_))))
                              (_%$%g243689243710%_ _%$%g243690243713%_))))
                      (_%$%g243689243710%_ _%$%g243690243713%_)))))
          (_%$%g243688243767%_ _%stx243687%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self242651%_ _%stx242652%_)
        (let* ((_%__stx247079247080%_ _%stx242652%_)
               (_%$%g242660242882%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx247079247080%_)))))
          (let ((_%__kont247081247082%_
                 (lambda (_%$%g242662243635%_
                          _%$%g242663243636%_
                          _%$%g242664243637%_
                          _%$%g242665243638%_)
                   (let ((__tmp248217
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self242651%_ 'methods)))
                         (__tmp248216
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g242663243636%_))))
                     (declare (not safe))
                     (hash-put! __tmp248217 __tmp248216 '#t))
                   (for-each
                    (lambda (_%$%g243671243673%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self242651%_ _%$%g243671243673%_)))
                    (let ((__tmp248218
                           (lambda (_%$%g243675243678%_ _%$%g243676243680%_)
                             (cons _%$%g243675243678%_ _%$%g243676243680%_))))
                      (declare (not safe))
                      (foldr__0 __tmp248218 '() _%$%g242662243635%_)))))
                (_%__kont247085247086%_
                 (lambda (_%$%g242705243472%_
                          _%$%g242706243473%_
                          _%$%g242707243474%_
                          _%$%g242708243475%_
                          _%$%g242709243476%_)
                   (let ((__tmp248220
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self242651%_ 'methods)))
                         (__tmp248219
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g242706243473%_))))
                     (declare (not safe))
                     (hash-put! __tmp248220 __tmp248219 '#t))
                   (for-each
                    (lambda (_%$%g243516243518%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self242651%_ _%$%g243516243518%_)))
                    (let ((__tmp248221
                           (lambda (_%$%g243520243523%_ _%$%g243521243525%_)
                             (cons _%$%g243520243523%_ _%$%g243521243525%_))))
                      (declare (not safe))
                      (foldr__0 __tmp248221 '() _%$%g242705243472%_)))))
                (_%__kont247089247090%_
                 (lambda (_%$%g242758243307%_
                          _%$%g242759243308%_
                          _%$%g242760243309%_)
                   (let ((__tmp248223
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self242651%_ 'slots)))
                         (__tmp248222
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g242758243307%_))))
                     (declare (not safe))
                     (hash-put! __tmp248223 __tmp248222 '#t))))
                (_%__kont247091247092%_
                 (lambda (_%$%g242791243184%_
                          _%$%g242792243185%_
                          _%$%g242793243186%_
                          _%$%g242794243187%_)
                   (let ((__tmp248225
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self242651%_ 'slots)))
                         (__tmp248224
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g242792243185%_))))
                     (declare (not safe))
                     (hash-put! __tmp248225 __tmp248224 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self242651%_ _%$%g242791243184%_))))
                (_%__kont247093247094%_
                 (lambda (_%$%g242828243058%_ _%$%g242829243059%_)
                   (let* ((_%accessor243081%_
                           (let ((__tmp248226
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g242829243059%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp248226)))
                          (_%klass243083%_
                           (let ((__tmp248227
                                  (##structure-ref
                                   _%accessor243081%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx242652%_
                              __tmp248227)))
                          (_%slot243085%_
                           (##structure-ref
                            _%accessor243081%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor243081%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass243083%_
                                    _%slot243085%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass243083%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp248229
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self242651%_ 'slots)))
                               (__tmp248228
                                (##structure-ref
                                 _%accessor243081%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp248229 __tmp248228 '#t))))))
                (_%__kont247095247096%_
                 (lambda (_%$%g242851242958%_
                          _%$%g242852242959%_
                          _%$%g242853242960%_)
                   (let* ((_%mutator242987%_
                           (let ((__tmp248230
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g242853242960%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp248230)))
                          (_%klass242989%_
                           (let ((__tmp248231
                                  (##structure-ref
                                   _%mutator242987%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx242652%_
                              __tmp248231)))
                          (_%slot242991%_
                           (##structure-ref
                            _%mutator242987%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator242987%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass242989%_
                                    _%slot242991%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass242989%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp248232
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self242651%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp248232 _%slot242991%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1
                        _%self242651%_
                        _%$%g242851242958%_)))))
                (_%__kont247097247098%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self242651%_ _%stx242652%_)))))
            (let* ((_%__match247578247579%_
                    (lambda (_%$%e242854242894%_
                             _%$%hd242855242897%_
                             _%$%tl242856242899%_
                             _%$%e242857242902%_
                             _%$%hd242858242905%_
                             _%$%tl242859242907%_
                             _%$%e242860242910%_
                             _%$%hd242861242913%_
                             _%$%tl242862242915%_
                             _%$%e242863242918%_
                             _%$%hd242864242921%_
                             _%$%tl242865242923%_
                             _%$%e242866242926%_
                             _%$%hd242867242929%_
                             _%$%tl242868242931%_
                             _%$%e242869242934%_
                             _%$%hd242870242937%_
                             _%$%tl242871242939%_
                             _%$%e242872242942%_
                             _%$%hd242873242945%_
                             _%$%tl242874242947%_
                             _%$%e242875242950%_
                             _%$%hd242876242953%_
                             _%$%tl242877242955%_)
                      (let ((_%$%g242851242958%_ _%$%hd242876242953%_)
                            (_%$%g242852242959%_ _%$%hd242873242945%_)
                            (_%$%g242853242960%_ _%$%hd242864242921%_))
                        (if (and (let ((__tmp248233
                                        (let ((__tmp248234
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g242853242960%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp248234))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp248233
                                    'gxc#!mutator::t))
                                 (let ((__tmp248235
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self242651%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g242852242959%_
                                    __tmp248235)))
                            (_%__kont247095247096%_
                             _%$%g242851242958%_
                             _%$%g242852242959%_
                             _%$%g242853242960%_)
                            (_%__kont247097247098%_)))))
                   (_%__match247576247577%_
                    (lambda (_%$%e242854242894%_
                             _%$%hd242855242897%_
                             _%$%tl242856242899%_
                             _%$%e242857242902%_
                             _%$%hd242858242905%_
                             _%$%tl242859242907%_
                             _%$%e242860242910%_
                             _%$%hd242861242913%_
                             _%$%tl242862242915%_
                             _%$%e242863242918%_
                             _%$%hd242864242921%_
                             _%$%tl242865242923%_
                             _%$%e242866242926%_
                             _%$%hd242867242929%_
                             _%$%tl242868242931%_
                             _%$%e242869242934%_
                             _%$%hd242870242937%_
                             _%$%tl242871242939%_
                             _%$%e242872242942%_
                             _%$%hd242873242945%_
                             _%$%tl242874242947%_
                             _%$%e242875242950%_
                             _%$%hd242876242953%_
                             _%$%tl242877242955%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl242877242955%_))
                          (_%__match247578247579%_
                           _%$%e242854242894%_
                           _%$%hd242855242897%_
                           _%$%tl242856242899%_
                           _%$%e242857242902%_
                           _%$%hd242858242905%_
                           _%$%tl242859242907%_
                           _%$%e242860242910%_
                           _%$%hd242861242913%_
                           _%$%tl242862242915%_
                           _%$%e242863242918%_
                           _%$%hd242864242921%_
                           _%$%tl242865242923%_
                           _%$%e242866242926%_
                           _%$%hd242867242929%_
                           _%$%tl242868242931%_
                           _%$%e242869242934%_
                           _%$%hd242870242937%_
                           _%$%tl242871242939%_
                           _%$%e242872242942%_
                           _%$%hd242873242945%_
                           _%$%tl242874242947%_
                           _%$%e242875242950%_
                           _%$%hd242876242953%_
                           _%$%tl242877242955%_)
                          (_%__kont247097247098%_))))
                   (_%__match247570247571%_
                    (lambda (_%$%e242854242894%_
                             _%$%hd242855242897%_
                             _%$%tl242856242899%_
                             _%$%e242857242902%_
                             _%$%hd242858242905%_
                             _%$%tl242859242907%_
                             _%$%e242860242910%_
                             _%$%hd242861242913%_
                             _%$%tl242862242915%_
                             _%$%e242863242918%_
                             _%$%hd242864242921%_
                             _%$%tl242865242923%_
                             _%$%e242866242926%_
                             _%$%hd242867242929%_
                             _%$%tl242868242931%_
                             _%$%e242869242934%_
                             _%$%hd242870242937%_
                             _%$%tl242871242939%_
                             _%$%e242872242942%_
                             _%$%hd242873242945%_
                             _%$%tl242874242947%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl242868242931%_))
                          (let ((_%$%e242875242950%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl242868242931%_))))
                            (let ((_%$%tl242877242955%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e242875242950%_)))
                                  (_%$%hd242876242953%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e242875242950%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl242877242955%_))
                                  (_%__match247578247579%_
                                   _%$%e242854242894%_
                                   _%$%hd242855242897%_
                                   _%$%tl242856242899%_
                                   _%$%e242857242902%_
                                   _%$%hd242858242905%_
                                   _%$%tl242859242907%_
                                   _%$%e242860242910%_
                                   _%$%hd242861242913%_
                                   _%$%tl242862242915%_
                                   _%$%e242863242918%_
                                   _%$%hd242864242921%_
                                   _%$%tl242865242923%_
                                   _%$%e242866242926%_
                                   _%$%hd242867242929%_
                                   _%$%tl242868242931%_
                                   _%$%e242869242934%_
                                   _%$%hd242870242937%_
                                   _%$%tl242871242939%_
                                   _%$%e242872242942%_
                                   _%$%hd242873242945%_
                                   _%$%tl242874242947%_
                                   _%$%e242875242950%_
                                   _%$%hd242876242953%_
                                   _%$%tl242877242955%_)
                                  (_%__kont247097247098%_))))
                          (_%__kont247097247098%_))))
                   (_%__match247516247517%_
                    (lambda (_%$%e242830243002%_
                             _%$%hd242831243005%_
                             _%$%tl242832243007%_
                             _%$%e242833243010%_
                             _%$%hd242834243013%_
                             _%$%tl242835243015%_
                             _%$%e242836243018%_
                             _%$%hd242837243021%_
                             _%$%tl242838243023%_
                             _%$%e242839243026%_
                             _%$%hd242840243029%_
                             _%$%tl242841243031%_
                             _%$%e242842243034%_
                             _%$%hd242843243037%_
                             _%$%tl242844243039%_
                             _%$%e242845243042%_
                             _%$%hd242846243045%_
                             _%$%tl242847243047%_
                             _%$%e242848243050%_
                             _%$%hd242849243053%_
                             _%$%tl242850243055%_)
                      (let ((_%$%g242828243058%_ _%$%hd242849243053%_)
                            (_%$%g242829243059%_ _%$%hd242840243029%_))
                        (if (and (let ((__tmp248236
                                        (let ((__tmp248237
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g242829243059%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp248237))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp248236
                                    'gxc#!accessor::t))
                                 (let ((__tmp248238
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self242651%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g242828243058%_
                                    __tmp248238)))
                            (_%__kont247093247094%_
                             _%$%g242828243058%_
                             _%$%g242829243059%_)
                            (_%__kont247097247098%_)))))
                   (_%__match247514247515%_
                    (lambda (_%$%e242830243002%_
                             _%$%hd242831243005%_
                             _%$%tl242832243007%_
                             _%$%e242833243010%_
                             _%$%hd242834243013%_
                             _%$%tl242835243015%_
                             _%$%e242836243018%_
                             _%$%hd242837243021%_
                             _%$%tl242838243023%_
                             _%$%e242839243026%_
                             _%$%hd242840243029%_
                             _%$%tl242841243031%_
                             _%$%e242842243034%_
                             _%$%hd242843243037%_
                             _%$%tl242844243039%_
                             _%$%e242845243042%_
                             _%$%hd242846243045%_
                             _%$%tl242847243047%_
                             _%$%e242848243050%_
                             _%$%hd242849243053%_
                             _%$%tl242850243055%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl242844243039%_))
                          (_%__match247516247517%_
                           _%$%e242830243002%_
                           _%$%hd242831243005%_
                           _%$%tl242832243007%_
                           _%$%e242833243010%_
                           _%$%hd242834243013%_
                           _%$%tl242835243015%_
                           _%$%e242836243018%_
                           _%$%hd242837243021%_
                           _%$%tl242838243023%_
                           _%$%e242839243026%_
                           _%$%hd242840243029%_
                           _%$%tl242841243031%_
                           _%$%e242842243034%_
                           _%$%hd242843243037%_
                           _%$%tl242844243039%_
                           _%$%e242845243042%_
                           _%$%hd242846243045%_
                           _%$%tl242847243047%_
                           _%$%e242848243050%_
                           _%$%hd242849243053%_
                           _%$%tl242850243055%_)
                          (_%__match247570247571%_
                           _%$%e242830243002%_
                           _%$%hd242831243005%_
                           _%$%tl242832243007%_
                           _%$%e242833243010%_
                           _%$%hd242834243013%_
                           _%$%tl242835243015%_
                           _%$%e242836243018%_
                           _%$%hd242837243021%_
                           _%$%tl242838243023%_
                           _%$%e242839243026%_
                           _%$%hd242840243029%_
                           _%$%tl242841243031%_
                           _%$%e242842243034%_
                           _%$%hd242843243037%_
                           _%$%tl242844243039%_
                           _%$%e242845243042%_
                           _%$%hd242846243045%_
                           _%$%tl242847243047%_
                           _%$%e242848243050%_
                           _%$%hd242849243053%_
                           _%$%tl242850243055%_))))
                   (_%__match247460247461%_
                    (lambda (_%$%e242795243096%_
                             _%$%hd242796243099%_
                             _%$%tl242797243101%_
                             _%$%e242798243104%_
                             _%$%hd242799243107%_
                             _%$%tl242800243109%_
                             _%$%e242801243112%_
                             _%$%hd242802243115%_
                             _%$%tl242803243117%_
                             _%$%e242804243120%_
                             _%$%hd242805243123%_
                             _%$%tl242806243125%_
                             _%$%e242807243128%_
                             _%$%hd242808243131%_
                             _%$%tl242809243133%_
                             _%$%e242810243136%_
                             _%$%hd242811243139%_
                             _%$%tl242812243141%_
                             _%$%e242813243144%_
                             _%$%hd242814243147%_
                             _%$%tl242815243149%_
                             _%$%e242816243152%_
                             _%$%hd242817243155%_
                             _%$%tl242818243157%_
                             _%$%e242819243160%_
                             _%$%hd242820243163%_
                             _%$%tl242821243165%_
                             _%$%e242822243168%_
                             _%$%hd242823243171%_
                             _%$%tl242824243173%_
                             _%$%e242825243176%_
                             _%$%hd242826243179%_
                             _%$%tl242827243181%_)
                      (let ((_%$%g242791243184%_ _%$%hd242826243179%_)
                            (_%$%g242792243185%_ _%$%hd242823243171%_)
                            (_%$%g242793243186%_ _%$%hd242814243147%_)
                            (_%$%g242794243187%_ _%$%hd242805243123%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g242794243187%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g242794243187%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp248239
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self242651%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g242793243186%_
                                    __tmp248239)))
                            (_%__kont247091247092%_
                             _%$%g242791243184%_
                             _%$%g242792243185%_
                             _%$%g242793243186%_
                             _%$%g242794243187%_)
                            (_%__kont247097247098%_)))))
                   (_%__match247452247453%_
                    (lambda (_%$%e242795243096%_
                             _%$%hd242796243099%_
                             _%$%tl242797243101%_
                             _%$%e242798243104%_
                             _%$%hd242799243107%_
                             _%$%tl242800243109%_
                             _%$%e242801243112%_
                             _%$%hd242802243115%_
                             _%$%tl242803243117%_
                             _%$%e242804243120%_
                             _%$%hd242805243123%_
                             _%$%tl242806243125%_
                             _%$%e242807243128%_
                             _%$%hd242808243131%_
                             _%$%tl242809243133%_
                             _%$%e242810243136%_
                             _%$%hd242811243139%_
                             _%$%tl242812243141%_
                             _%$%e242813243144%_
                             _%$%hd242814243147%_
                             _%$%tl242815243149%_
                             _%$%e242816243152%_
                             _%$%hd242817243155%_
                             _%$%tl242818243157%_
                             _%$%e242819243160%_
                             _%$%hd242820243163%_
                             _%$%tl242821243165%_
                             _%$%e242822243168%_
                             _%$%hd242823243171%_
                             _%$%tl242824243173%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl242818243157%_))
                          (let ((_%$%e242825243176%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl242818243157%_))))
                            (let ((_%$%tl242827243181%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e242825243176%_)))
                                  (_%$%hd242826243179%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e242825243176%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl242827243181%_))
                                  (_%__match247460247461%_
                                   _%$%e242795243096%_
                                   _%$%hd242796243099%_
                                   _%$%tl242797243101%_
                                   _%$%e242798243104%_
                                   _%$%hd242799243107%_
                                   _%$%tl242800243109%_
                                   _%$%e242801243112%_
                                   _%$%hd242802243115%_
                                   _%$%tl242803243117%_
                                   _%$%e242804243120%_
                                   _%$%hd242805243123%_
                                   _%$%tl242806243125%_
                                   _%$%e242807243128%_
                                   _%$%hd242808243131%_
                                   _%$%tl242809243133%_
                                   _%$%e242810243136%_
                                   _%$%hd242811243139%_
                                   _%$%tl242812243141%_
                                   _%$%e242813243144%_
                                   _%$%hd242814243147%_
                                   _%$%tl242815243149%_
                                   _%$%e242816243152%_
                                   _%$%hd242817243155%_
                                   _%$%tl242818243157%_
                                   _%$%e242819243160%_
                                   _%$%hd242820243163%_
                                   _%$%tl242821243165%_
                                   _%$%e242822243168%_
                                   _%$%hd242823243171%_
                                   _%$%tl242824243173%_
                                   _%$%e242825243176%_
                                   _%$%hd242826243179%_
                                   _%$%tl242827243181%_)
                                  (_%__kont247097247098%_))))
                          (_%__match247576247577%_
                           _%$%e242795243096%_
                           _%$%hd242796243099%_
                           _%$%tl242797243101%_
                           _%$%e242798243104%_
                           _%$%hd242799243107%_
                           _%$%tl242800243109%_
                           _%$%e242801243112%_
                           _%$%hd242802243115%_
                           _%$%tl242803243117%_
                           _%$%e242804243120%_
                           _%$%hd242805243123%_
                           _%$%tl242806243125%_
                           _%$%e242807243128%_
                           _%$%hd242808243131%_
                           _%$%tl242809243133%_
                           _%$%e242810243136%_
                           _%$%hd242811243139%_
                           _%$%tl242812243141%_
                           _%$%e242813243144%_
                           _%$%hd242814243147%_
                           _%$%tl242815243149%_
                           _%$%e242816243152%_
                           _%$%hd242817243155%_
                           _%$%tl242818243157%_))))
                   (_%__match247374247375%_
                    (lambda (_%$%e242761243227%_
                             _%$%hd242762243230%_
                             _%$%tl242763243232%_
                             _%$%e242764243235%_
                             _%$%hd242765243238%_
                             _%$%tl242766243240%_
                             _%$%e242767243243%_
                             _%$%hd242768243246%_
                             _%$%tl242769243248%_
                             _%$%e242770243251%_
                             _%$%hd242771243254%_
                             _%$%tl242772243256%_
                             _%$%e242773243259%_
                             _%$%hd242774243262%_
                             _%$%tl242775243264%_
                             _%$%e242776243267%_
                             _%$%hd242777243270%_
                             _%$%tl242778243272%_
                             _%$%e242779243275%_
                             _%$%hd242780243278%_
                             _%$%tl242781243280%_
                             _%$%e242782243283%_
                             _%$%hd242783243286%_
                             _%$%tl242784243288%_
                             _%$%e242785243291%_
                             _%$%hd242786243294%_
                             _%$%tl242787243296%_
                             _%$%e242788243299%_
                             _%$%hd242789243302%_
                             _%$%tl242790243304%_)
                      (let ((_%$%g242758243307%_ _%$%hd242789243302%_)
                            (_%$%g242759243308%_ _%$%hd242780243278%_)
                            (_%$%g242760243309%_ _%$%hd242771243254%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g242760243309%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g242760243309%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp248240
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self242651%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g242759243308%_
                                    __tmp248240)))
                            (_%__kont247089247090%_
                             _%$%g242758243307%_
                             _%$%g242759243308%_
                             _%$%g242760243309%_)
                            (_%__match247578247579%_
                             _%$%e242761243227%_
                             _%$%hd242762243230%_
                             _%$%tl242763243232%_
                             _%$%e242764243235%_
                             _%$%hd242765243238%_
                             _%$%tl242766243240%_
                             _%$%e242767243243%_
                             _%$%hd242768243246%_
                             _%$%tl242769243248%_
                             _%$%e242770243251%_
                             _%$%hd242771243254%_
                             _%$%tl242772243256%_
                             _%$%e242773243259%_
                             _%$%hd242774243262%_
                             _%$%tl242775243264%_
                             _%$%e242776243267%_
                             _%$%hd242777243270%_
                             _%$%tl242778243272%_
                             _%$%e242779243275%_
                             _%$%hd242780243278%_
                             _%$%tl242781243280%_
                             _%$%e242782243283%_
                             _%$%hd242783243286%_
                             _%$%tl242784243288%_)))))
                   (_%__match247372247373%_
                    (lambda (_%$%e242761243227%_
                             _%$%hd242762243230%_
                             _%$%tl242763243232%_
                             _%$%e242764243235%_
                             _%$%hd242765243238%_
                             _%$%tl242766243240%_
                             _%$%e242767243243%_
                             _%$%hd242768243246%_
                             _%$%tl242769243248%_
                             _%$%e242770243251%_
                             _%$%hd242771243254%_
                             _%$%tl242772243256%_
                             _%$%e242773243259%_
                             _%$%hd242774243262%_
                             _%$%tl242775243264%_
                             _%$%e242776243267%_
                             _%$%hd242777243270%_
                             _%$%tl242778243272%_
                             _%$%e242779243275%_
                             _%$%hd242780243278%_
                             _%$%tl242781243280%_
                             _%$%e242782243283%_
                             _%$%hd242783243286%_
                             _%$%tl242784243288%_
                             _%$%e242785243291%_
                             _%$%hd242786243294%_
                             _%$%tl242787243296%_
                             _%$%e242788243299%_
                             _%$%hd242789243302%_
                             _%$%tl242790243304%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl242784243288%_))
                          (_%__match247374247375%_
                           _%$%e242761243227%_
                           _%$%hd242762243230%_
                           _%$%tl242763243232%_
                           _%$%e242764243235%_
                           _%$%hd242765243238%_
                           _%$%tl242766243240%_
                           _%$%e242767243243%_
                           _%$%hd242768243246%_
                           _%$%tl242769243248%_
                           _%$%e242770243251%_
                           _%$%hd242771243254%_
                           _%$%tl242772243256%_
                           _%$%e242773243259%_
                           _%$%hd242774243262%_
                           _%$%tl242775243264%_
                           _%$%e242776243267%_
                           _%$%hd242777243270%_
                           _%$%tl242778243272%_
                           _%$%e242779243275%_
                           _%$%hd242780243278%_
                           _%$%tl242781243280%_
                           _%$%e242782243283%_
                           _%$%hd242783243286%_
                           _%$%tl242784243288%_
                           _%$%e242785243291%_
                           _%$%hd242786243294%_
                           _%$%tl242787243296%_
                           _%$%e242788243299%_
                           _%$%hd242789243302%_
                           _%$%tl242790243304%_)
                          (_%__match247452247453%_
                           _%$%e242761243227%_
                           _%$%hd242762243230%_
                           _%$%tl242763243232%_
                           _%$%e242764243235%_
                           _%$%hd242765243238%_
                           _%$%tl242766243240%_
                           _%$%e242767243243%_
                           _%$%hd242768243246%_
                           _%$%tl242769243248%_
                           _%$%e242770243251%_
                           _%$%hd242771243254%_
                           _%$%tl242772243256%_
                           _%$%e242773243259%_
                           _%$%hd242774243262%_
                           _%$%tl242775243264%_
                           _%$%e242776243267%_
                           _%$%hd242777243270%_
                           _%$%tl242778243272%_
                           _%$%e242779243275%_
                           _%$%hd242780243278%_
                           _%$%tl242781243280%_
                           _%$%e242782243283%_
                           _%$%hd242783243286%_
                           _%$%tl242784243288%_
                           _%$%e242785243291%_
                           _%$%hd242786243294%_
                           _%$%tl242787243296%_
                           _%$%e242788243299%_
                           _%$%hd242789243302%_
                           _%$%tl242790243304%_))))
                   (_%__match247362247363%_
                    (lambda (_%$%e242761243227%_
                             _%$%hd242762243230%_
                             _%$%tl242763243232%_
                             _%$%e242764243235%_
                             _%$%hd242765243238%_
                             _%$%tl242766243240%_
                             _%$%e242767243243%_
                             _%$%hd242768243246%_
                             _%$%tl242769243248%_
                             _%$%e242770243251%_
                             _%$%hd242771243254%_
                             _%$%tl242772243256%_
                             _%$%e242773243259%_
                             _%$%hd242774243262%_
                             _%$%tl242775243264%_
                             _%$%e242776243267%_
                             _%$%hd242777243270%_
                             _%$%tl242778243272%_
                             _%$%e242779243275%_
                             _%$%hd242780243278%_
                             _%$%tl242781243280%_
                             _%$%e242782243283%_
                             _%$%hd242783243286%_
                             _%$%tl242784243288%_
                             _%$%e242785243291%_
                             _%$%hd242786243294%_
                             _%$%tl242787243296%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%$%hd242786243294%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl242787243296%_))
                              (let ((_%$%e242788243299%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl242787243296%_))))
                                (let ((_%$%tl242790243304%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e242788243299%_)))
                                      (_%$%hd242789243302%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e242788243299%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl242790243304%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl242784243288%_))
                                          (_%__match247374247375%_
                                           _%$%e242761243227%_
                                           _%$%hd242762243230%_
                                           _%$%tl242763243232%_
                                           _%$%e242764243235%_
                                           _%$%hd242765243238%_
                                           _%$%tl242766243240%_
                                           _%$%e242767243243%_
                                           _%$%hd242768243246%_
                                           _%$%tl242769243248%_
                                           _%$%e242770243251%_
                                           _%$%hd242771243254%_
                                           _%$%tl242772243256%_
                                           _%$%e242773243259%_
                                           _%$%hd242774243262%_
                                           _%$%tl242775243264%_
                                           _%$%e242776243267%_
                                           _%$%hd242777243270%_
                                           _%$%tl242778243272%_
                                           _%$%e242779243275%_
                                           _%$%hd242780243278%_
                                           _%$%tl242781243280%_
                                           _%$%e242782243283%_
                                           _%$%hd242783243286%_
                                           _%$%tl242784243288%_
                                           _%$%e242785243291%_
                                           _%$%hd242786243294%_
                                           _%$%tl242787243296%_
                                           _%$%e242788243299%_
                                           _%$%hd242789243302%_
                                           _%$%tl242790243304%_)
                                          (_%__match247452247453%_
                                           _%$%e242761243227%_
                                           _%$%hd242762243230%_
                                           _%$%tl242763243232%_
                                           _%$%e242764243235%_
                                           _%$%hd242765243238%_
                                           _%$%tl242766243240%_
                                           _%$%e242767243243%_
                                           _%$%hd242768243246%_
                                           _%$%tl242769243248%_
                                           _%$%e242770243251%_
                                           _%$%hd242771243254%_
                                           _%$%tl242772243256%_
                                           _%$%e242773243259%_
                                           _%$%hd242774243262%_
                                           _%$%tl242775243264%_
                                           _%$%e242776243267%_
                                           _%$%hd242777243270%_
                                           _%$%tl242778243272%_
                                           _%$%e242779243275%_
                                           _%$%hd242780243278%_
                                           _%$%tl242781243280%_
                                           _%$%e242782243283%_
                                           _%$%hd242783243286%_
                                           _%$%tl242784243288%_
                                           _%$%e242785243291%_
                                           _%$%hd242786243294%_
                                           _%$%tl242787243296%_
                                           _%$%e242788243299%_
                                           _%$%hd242789243302%_
                                           _%$%tl242790243304%_))
                                      (_%__match247576247577%_
                                       _%$%e242761243227%_
                                       _%$%hd242762243230%_
                                       _%$%tl242763243232%_
                                       _%$%e242764243235%_
                                       _%$%hd242765243238%_
                                       _%$%tl242766243240%_
                                       _%$%e242767243243%_
                                       _%$%hd242768243246%_
                                       _%$%tl242769243248%_
                                       _%$%e242770243251%_
                                       _%$%hd242771243254%_
                                       _%$%tl242772243256%_
                                       _%$%e242773243259%_
                                       _%$%hd242774243262%_
                                       _%$%tl242775243264%_
                                       _%$%e242776243267%_
                                       _%$%hd242777243270%_
                                       _%$%tl242778243272%_
                                       _%$%e242779243275%_
                                       _%$%hd242780243278%_
                                       _%$%tl242781243280%_
                                       _%$%e242782243283%_
                                       _%$%hd242783243286%_
                                       _%$%tl242784243288%_))))
                              (_%__match247576247577%_
                               _%$%e242761243227%_
                               _%$%hd242762243230%_
                               _%$%tl242763243232%_
                               _%$%e242764243235%_
                               _%$%hd242765243238%_
                               _%$%tl242766243240%_
                               _%$%e242767243243%_
                               _%$%hd242768243246%_
                               _%$%tl242769243248%_
                               _%$%e242770243251%_
                               _%$%hd242771243254%_
                               _%$%tl242772243256%_
                               _%$%e242773243259%_
                               _%$%hd242774243262%_
                               _%$%tl242775243264%_
                               _%$%e242776243267%_
                               _%$%hd242777243270%_
                               _%$%tl242778243272%_
                               _%$%e242779243275%_
                               _%$%hd242780243278%_
                               _%$%tl242781243280%_
                               _%$%e242782243283%_
                               _%$%hd242783243286%_
                               _%$%tl242784243288%_))
                          (_%__match247576247577%_
                           _%$%e242761243227%_
                           _%$%hd242762243230%_
                           _%$%tl242763243232%_
                           _%$%e242764243235%_
                           _%$%hd242765243238%_
                           _%$%tl242766243240%_
                           _%$%e242767243243%_
                           _%$%hd242768243246%_
                           _%$%tl242769243248%_
                           _%$%e242770243251%_
                           _%$%hd242771243254%_
                           _%$%tl242772243256%_
                           _%$%e242773243259%_
                           _%$%hd242774243262%_
                           _%$%tl242775243264%_
                           _%$%e242776243267%_
                           _%$%hd242777243270%_
                           _%$%tl242778243272%_
                           _%$%e242779243275%_
                           _%$%hd242780243278%_
                           _%$%tl242781243280%_
                           _%$%e242782243283%_
                           _%$%hd242783243286%_
                           _%$%tl242784243288%_))))
                   (_%__match247294247295%_
                    (lambda (_%$%e242710243346%_
                             _%$%hd242711243349%_
                             _%$%tl242712243351%_
                             _%$%e242713243354%_
                             _%$%hd242714243357%_
                             _%$%tl242715243359%_
                             _%$%e242716243362%_
                             _%$%hd242717243365%_
                             _%$%tl242718243367%_
                             _%$%e242719243370%_
                             _%$%hd242720243373%_
                             _%$%tl242721243375%_
                             _%$%e242722243378%_
                             _%$%hd242723243381%_
                             _%$%tl242724243383%_
                             _%$%e242725243386%_
                             _%$%hd242726243389%_
                             _%$%tl242727243391%_
                             _%$%e242728243394%_
                             _%$%hd242729243397%_
                             _%$%tl242730243399%_
                             _%$%e242731243402%_
                             _%$%hd242732243405%_
                             _%$%tl242733243407%_
                             _%$%e242734243410%_
                             _%$%hd242735243413%_
                             _%$%tl242736243415%_
                             _%$%e242737243418%_
                             _%$%hd242738243421%_
                             _%$%tl242739243423%_
                             _%$%e242740243426%_
                             _%$%hd242741243429%_
                             _%$%tl242742243431%_
                             _%$%e242743243434%_
                             _%$%hd242744243437%_
                             _%$%tl242745243439%_
                             _%$%e242746243442%_
                             _%$%hd242747243445%_
                             _%$%tl242748243447%_
                             _%__splice247087247088%_
                             _%$%target242749243450%_
                             _%$%tl242751243452%_)
                      (letrec ((_%$%loop242752243455%_
                                (lambda (_%$%hd242750243458%_
                                         _%$%args242756243460%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd242750243458%_))
                                      (let ((_%$%e242753243462%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd242750243458%_))))
                                        (let ((_%$%lp-tl242755243467%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e242753243462%_)))
                                              (_%$%lp-hd242754243465%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e242753243462%_))))
                                          (_%$%loop242752243455%_
                                           _%$%lp-tl242755243467%_
                                           (cons _%$%lp-hd242754243465%_
                                                 _%$%args242756243460%_))))
                                      (let ((_%$%args242757243470%_
                                             (reverse _%$%args242756243460%_)))
                                        (let ((_%$%g242705243472%_
                                               _%$%args242757243470%_)
                                              (_%$%g242706243473%_
                                               _%$%hd242747243445%_)
                                              (_%$%g242707243474%_
                                               _%$%hd242738243421%_)
                                              (_%$%g242708243475%_
                                               _%$%hd242729243397%_)
                                              (_%$%g242709243476%_
                                               _%$%hd242720243373%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g242709243476%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g242708243475%_
                                                      'call-method))
                                                   (let ((__tmp248241
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self242651%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g242707243474%_
                                                      __tmp248241)))
                                              (_%__kont247085247086%_
                                               _%$%g242705243472%_
                                               _%$%g242706243473%_
                                               _%$%g242707243474%_
                                               _%$%g242708243475%_
                                               _%$%g242709243476%_)
                                              (_%__kont247097247098%_))))))))
                        (_%$%loop242752243455%_
                         _%$%target242749243450%_
                         '()))))
                   (_%__match247252247253%_
                    (lambda (_%$%e242710243346%_
                             _%$%hd242711243349%_
                             _%$%tl242712243351%_
                             _%$%e242713243354%_
                             _%$%hd242714243357%_
                             _%$%tl242715243359%_
                             _%$%e242716243362%_
                             _%$%hd242717243365%_
                             _%$%tl242718243367%_
                             _%$%e242719243370%_
                             _%$%hd242720243373%_
                             _%$%tl242721243375%_
                             _%$%e242722243378%_
                             _%$%hd242723243381%_
                             _%$%tl242724243383%_
                             _%$%e242725243386%_
                             _%$%hd242726243389%_
                             _%$%tl242727243391%_
                             _%$%e242728243394%_
                             _%$%hd242729243397%_
                             _%$%tl242730243399%_
                             _%$%e242731243402%_
                             _%$%hd242732243405%_
                             _%$%tl242733243407%_
                             _%$%e242734243410%_
                             _%$%hd242735243413%_
                             _%$%tl242736243415%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%$%hd242735243413%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl242736243415%_))
                              (let ((_%$%e242737243418%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl242736243415%_))))
                                (let ((_%$%tl242739243423%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e242737243418%_)))
                                      (_%$%hd242738243421%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e242737243418%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl242739243423%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl242733243407%_))
                                          (let ((_%$%e242740243426%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl242733243407%_))))
                                            (let ((_%$%tl242742243431%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e242740243426%_)))
                                                  (_%$%hd242741243429%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e242740243426%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd242741243429%_))
                                                  (let ((_%$%e242743243434%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd242741243429%_))))
                                                    (let ((_%$%tl242745243439%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e242743243434%_)))
                                                          (_%$%hd242744243437%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e242743243434%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd242744243437%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%$%hd242744243437%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl242745243439%_))
                          (let ((_%$%e242746243442%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl242745243439%_))))
                            (let ((_%$%tl242748243447%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e242746243442%_)))
                                  (_%$%hd242747243445%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e242746243442%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl242748243447%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl242742243431%_))
                                      (let ((_%__splice247087247088%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl242742243431%_
                                                '0))))
                                        (let ((_%$%tl242751243452%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice247087247088%_
                                                  '1)))
                                              (_%$%target242749243450%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice247087247088%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl242751243452%_))
                                              (_%__match247294247295%_
                                               _%$%e242710243346%_
                                               _%$%hd242711243349%_
                                               _%$%tl242712243351%_
                                               _%$%e242713243354%_
                                               _%$%hd242714243357%_
                                               _%$%tl242715243359%_
                                               _%$%e242716243362%_
                                               _%$%hd242717243365%_
                                               _%$%tl242718243367%_
                                               _%$%e242719243370%_
                                               _%$%hd242720243373%_
                                               _%$%tl242721243375%_
                                               _%$%e242722243378%_
                                               _%$%hd242723243381%_
                                               _%$%tl242724243383%_
                                               _%$%e242725243386%_
                                               _%$%hd242726243389%_
                                               _%$%tl242727243391%_
                                               _%$%e242728243394%_
                                               _%$%hd242729243397%_
                                               _%$%tl242730243399%_
                                               _%$%e242731243402%_
                                               _%$%hd242732243405%_
                                               _%$%tl242733243407%_
                                               _%$%e242734243410%_
                                               _%$%hd242735243413%_
                                               _%$%tl242736243415%_
                                               _%$%e242737243418%_
                                               _%$%hd242738243421%_
                                               _%$%tl242739243423%_
                                               _%$%e242740243426%_
                                               _%$%hd242741243429%_
                                               _%$%tl242742243431%_
                                               _%$%e242743243434%_
                                               _%$%hd242744243437%_
                                               _%$%tl242745243439%_
                                               _%$%e242746243442%_
                                               _%$%hd242747243445%_
                                               _%$%tl242748243447%_
                                               _%__splice247087247088%_
                                               _%$%target242749243450%_
                                               _%$%tl242751243452%_)
                                              (_%__kont247097247098%_))))
                                      (_%__kont247097247098%_))
                                  (_%__kont247097247098%_))))
                          (_%__kont247097247098%_))
                      (_%__kont247097247098%_))
                  (_%__kont247097247098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont247097247098%_))))
                                          (_%__match247576247577%_
                                           _%$%e242710243346%_
                                           _%$%hd242711243349%_
                                           _%$%tl242712243351%_
                                           _%$%e242713243354%_
                                           _%$%hd242714243357%_
                                           _%$%tl242715243359%_
                                           _%$%e242716243362%_
                                           _%$%hd242717243365%_
                                           _%$%tl242718243367%_
                                           _%$%e242719243370%_
                                           _%$%hd242720243373%_
                                           _%$%tl242721243375%_
                                           _%$%e242722243378%_
                                           _%$%hd242723243381%_
                                           _%$%tl242724243383%_
                                           _%$%e242725243386%_
                                           _%$%hd242726243389%_
                                           _%$%tl242727243391%_
                                           _%$%e242728243394%_
                                           _%$%hd242729243397%_
                                           _%$%tl242730243399%_
                                           _%$%e242731243402%_
                                           _%$%hd242732243405%_
                                           _%$%tl242733243407%_))
                                      (_%__match247576247577%_
                                       _%$%e242710243346%_
                                       _%$%hd242711243349%_
                                       _%$%tl242712243351%_
                                       _%$%e242713243354%_
                                       _%$%hd242714243357%_
                                       _%$%tl242715243359%_
                                       _%$%e242716243362%_
                                       _%$%hd242717243365%_
                                       _%$%tl242718243367%_
                                       _%$%e242719243370%_
                                       _%$%hd242720243373%_
                                       _%$%tl242721243375%_
                                       _%$%e242722243378%_
                                       _%$%hd242723243381%_
                                       _%$%tl242724243383%_
                                       _%$%e242725243386%_
                                       _%$%hd242726243389%_
                                       _%$%tl242727243391%_
                                       _%$%e242728243394%_
                                       _%$%hd242729243397%_
                                       _%$%tl242730243399%_
                                       _%$%e242731243402%_
                                       _%$%hd242732243405%_
                                       _%$%tl242733243407%_))))
                              (_%__match247576247577%_
                               _%$%e242710243346%_
                               _%$%hd242711243349%_
                               _%$%tl242712243351%_
                               _%$%e242713243354%_
                               _%$%hd242714243357%_
                               _%$%tl242715243359%_
                               _%$%e242716243362%_
                               _%$%hd242717243365%_
                               _%$%tl242718243367%_
                               _%$%e242719243370%_
                               _%$%hd242720243373%_
                               _%$%tl242721243375%_
                               _%$%e242722243378%_
                               _%$%hd242723243381%_
                               _%$%tl242724243383%_
                               _%$%e242725243386%_
                               _%$%hd242726243389%_
                               _%$%tl242727243391%_
                               _%$%e242728243394%_
                               _%$%hd242729243397%_
                               _%$%tl242730243399%_
                               _%$%e242731243402%_
                               _%$%hd242732243405%_
                               _%$%tl242733243407%_))
                          (_%__match247362247363%_
                           _%$%e242710243346%_
                           _%$%hd242711243349%_
                           _%$%tl242712243351%_
                           _%$%e242713243354%_
                           _%$%hd242714243357%_
                           _%$%tl242715243359%_
                           _%$%e242716243362%_
                           _%$%hd242717243365%_
                           _%$%tl242718243367%_
                           _%$%e242719243370%_
                           _%$%hd242720243373%_
                           _%$%tl242721243375%_
                           _%$%e242722243378%_
                           _%$%hd242723243381%_
                           _%$%tl242724243383%_
                           _%$%e242725243386%_
                           _%$%hd242726243389%_
                           _%$%tl242727243391%_
                           _%$%e242728243394%_
                           _%$%hd242729243397%_
                           _%$%tl242730243399%_
                           _%$%e242731243402%_
                           _%$%hd242732243405%_
                           _%$%tl242733243407%_
                           _%$%e242734243410%_
                           _%$%hd242735243413%_
                           _%$%tl242736243415%_))))
                   (_%__match247184247185%_
                    (lambda (_%$%e242666243533%_
                             _%$%hd242667243536%_
                             _%$%tl242668243538%_
                             _%$%e242669243541%_
                             _%$%hd242670243544%_
                             _%$%tl242671243546%_
                             _%$%e242672243549%_
                             _%$%hd242673243552%_
                             _%$%tl242674243554%_
                             _%$%e242675243557%_
                             _%$%hd242676243560%_
                             _%$%tl242677243562%_
                             _%$%e242678243565%_
                             _%$%hd242679243568%_
                             _%$%tl242680243570%_
                             _%$%e242681243573%_
                             _%$%hd242682243576%_
                             _%$%tl242683243578%_
                             _%$%e242684243581%_
                             _%$%hd242685243584%_
                             _%$%tl242686243586%_
                             _%$%e242687243589%_
                             _%$%hd242688243592%_
                             _%$%tl242689243594%_
                             _%$%e242690243597%_
                             _%$%hd242691243600%_
                             _%$%tl242692243602%_
                             _%$%e242693243605%_
                             _%$%hd242694243608%_
                             _%$%tl242695243610%_
                             _%__splice247083247084%_
                             _%$%target242696243613%_
                             _%$%tl242698243615%_)
                      (letrec ((_%$%loop242699243618%_
                                (lambda (_%$%hd242697243621%_
                                         _%$%args242703243623%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd242697243621%_))
                                      (let ((_%$%e242700243625%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd242697243621%_))))
                                        (let ((_%$%lp-tl242702243630%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e242700243625%_)))
                                              (_%$%lp-hd242701243628%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e242700243625%_))))
                                          (_%$%loop242699243618%_
                                           _%$%lp-tl242702243630%_
                                           (cons _%$%lp-hd242701243628%_
                                                 _%$%args242703243623%_))))
                                      (let ((_%$%args242704243633%_
                                             (reverse _%$%args242703243623%_)))
                                        (let ((_%$%g242662243635%_
                                               _%$%args242704243633%_)
                                              (_%$%g242663243636%_
                                               _%$%hd242694243608%_)
                                              (_%$%g242664243637%_
                                               _%$%hd242685243584%_)
                                              (_%$%g242665243638%_
                                               _%$%hd242676243560%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g242665243638%_
                                                      'call-method))
                                                   (let ((__tmp248242
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self242651%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g242664243637%_
                                                      __tmp248242)))
                                              (_%__kont247081247082%_
                                               _%$%g242662243635%_
                                               _%$%g242663243636%_
                                               _%$%g242664243637%_
                                               _%$%g242665243638%_)
                                              (_%__match247372247373%_
                                               _%$%e242666243533%_
                                               _%$%hd242667243536%_
                                               _%$%tl242668243538%_
                                               _%$%e242669243541%_
                                               _%$%hd242670243544%_
                                               _%$%tl242671243546%_
                                               _%$%e242672243549%_
                                               _%$%hd242673243552%_
                                               _%$%tl242674243554%_
                                               _%$%e242675243557%_
                                               _%$%hd242676243560%_
                                               _%$%tl242677243562%_
                                               _%$%e242678243565%_
                                               _%$%hd242679243568%_
                                               _%$%tl242680243570%_
                                               _%$%e242681243573%_
                                               _%$%hd242682243576%_
                                               _%$%tl242683243578%_
                                               _%$%e242684243581%_
                                               _%$%hd242685243584%_
                                               _%$%tl242686243586%_
                                               _%$%e242687243589%_
                                               _%$%hd242688243592%_
                                               _%$%tl242689243594%_
                                               _%$%e242690243597%_
                                               _%$%hd242691243600%_
                                               _%$%tl242692243602%_
                                               _%$%e242693243605%_
                                               _%$%hd242694243608%_
                                               _%$%tl242695243610%_))))))))
                        (_%$%loop242699243618%_
                         _%$%target242696243613%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx247079247080%_))
                  (let ((_%$%e242666243533%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx247079247080%_))))
                    (let ((_%$%tl242668243538%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e242666243533%_)))
                          (_%$%hd242667243536%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e242666243533%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl242668243538%_))
                          (let ((_%$%e242669243541%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl242668243538%_))))
                            (let ((_%$%tl242671243546%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e242669243541%_)))
                                  (_%$%hd242670243544%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e242669243541%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd242670243544%_))
                                  (let ((_%$%e242672243549%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd242670243544%_))))
                                    (let ((_%$%tl242674243554%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e242672243549%_)))
                                          (_%$%hd242673243552%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e242672243549%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd242673243552%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd242673243552%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl242674243554%_))
                                                  (let ((_%$%e242675243557%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl242674243554%_))))
                                                    (let ((_%$%tl242677243562%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e242675243557%_)))
                                                          (_%$%hd242676243560%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e242675243557%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl242677243562%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl242671243546%_))
                      (let ((_%$%e242678243565%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl242671243546%_))))
                        (let ((_%$%tl242680243570%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e242678243565%_)))
                              (_%$%hd242679243568%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e242678243565%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd242679243568%_))
                              (let ((_%$%e242681243573%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd242679243568%_))))
                                (let ((_%$%tl242683243578%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e242681243573%_)))
                                      (_%$%hd242682243576%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e242681243573%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd242682243576%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd242682243576%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl242683243578%_))
                                              (let ((_%$%e242684243581%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl242683243578%_))))
                                                (let ((_%$%tl242686243586%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e242684243581%_)))
                                                      (_%$%hd242685243584%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e242684243581%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl242686243586%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl242680243570%_))
                                                          (let ((_%$%e242687243589%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl242680243570%_))))
                    (let ((_%$%tl242689243594%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e242687243589%_)))
                          (_%$%hd242688243592%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e242687243589%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd242688243592%_))
                          (let ((_%$%e242690243597%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd242688243592%_))))
                            (let ((_%$%tl242692243602%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e242690243597%_)))
                                  (_%$%hd242691243600%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e242690243597%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd242691243600%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd242691243600%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl242692243602%_))
                                          (let ((_%$%e242693243605%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl242692243602%_))))
                                            (let ((_%$%tl242695243610%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e242693243605%_)))
                                                  (_%$%hd242694243608%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e242693243605%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl242695243610%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl242689243594%_))
                                                      (let ((_%__splice247083247084%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl242689243594%_
                        '0))))
                (let ((_%$%tl242698243615%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice247083247084%_ '1)))
                      (_%$%target242696243613%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice247083247084%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl242698243615%_))
                      (_%__match247184247185%_
                       _%$%e242666243533%_
                       _%$%hd242667243536%_
                       _%$%tl242668243538%_
                       _%$%e242669243541%_
                       _%$%hd242670243544%_
                       _%$%tl242671243546%_
                       _%$%e242672243549%_
                       _%$%hd242673243552%_
                       _%$%tl242674243554%_
                       _%$%e242675243557%_
                       _%$%hd242676243560%_
                       _%$%tl242677243562%_
                       _%$%e242678243565%_
                       _%$%hd242679243568%_
                       _%$%tl242680243570%_
                       _%$%e242681243573%_
                       _%$%hd242682243576%_
                       _%$%tl242683243578%_
                       _%$%e242684243581%_
                       _%$%hd242685243584%_
                       _%$%tl242686243586%_
                       _%$%e242687243589%_
                       _%$%hd242688243592%_
                       _%$%tl242689243594%_
                       _%$%e242690243597%_
                       _%$%hd242691243600%_
                       _%$%tl242692243602%_
                       _%$%e242693243605%_
                       _%$%hd242694243608%_
                       _%$%tl242695243610%_
                       _%__splice247083247084%_
                       _%$%target242696243613%_
                       _%$%tl242698243615%_)
                      (_%__match247372247373%_
                       _%$%e242666243533%_
                       _%$%hd242667243536%_
                       _%$%tl242668243538%_
                       _%$%e242669243541%_
                       _%$%hd242670243544%_
                       _%$%tl242671243546%_
                       _%$%e242672243549%_
                       _%$%hd242673243552%_
                       _%$%tl242674243554%_
                       _%$%e242675243557%_
                       _%$%hd242676243560%_
                       _%$%tl242677243562%_
                       _%$%e242678243565%_
                       _%$%hd242679243568%_
                       _%$%tl242680243570%_
                       _%$%e242681243573%_
                       _%$%hd242682243576%_
                       _%$%tl242683243578%_
                       _%$%e242684243581%_
                       _%$%hd242685243584%_
                       _%$%tl242686243586%_
                       _%$%e242687243589%_
                       _%$%hd242688243592%_
                       _%$%tl242689243594%_
                       _%$%e242690243597%_
                       _%$%hd242691243600%_
                       _%$%tl242692243602%_
                       _%$%e242693243605%_
                       _%$%hd242694243608%_
                       _%$%tl242695243610%_))))
              (_%__match247372247373%_
               _%$%e242666243533%_
               _%$%hd242667243536%_
               _%$%tl242668243538%_
               _%$%e242669243541%_
               _%$%hd242670243544%_
               _%$%tl242671243546%_
               _%$%e242672243549%_
               _%$%hd242673243552%_
               _%$%tl242674243554%_
               _%$%e242675243557%_
               _%$%hd242676243560%_
               _%$%tl242677243562%_
               _%$%e242678243565%_
               _%$%hd242679243568%_
               _%$%tl242680243570%_
               _%$%e242681243573%_
               _%$%hd242682243576%_
               _%$%tl242683243578%_
               _%$%e242684243581%_
               _%$%hd242685243584%_
               _%$%tl242686243586%_
               _%$%e242687243589%_
               _%$%hd242688243592%_
               _%$%tl242689243594%_
               _%$%e242690243597%_
               _%$%hd242691243600%_
               _%$%tl242692243602%_
               _%$%e242693243605%_
               _%$%hd242694243608%_
               _%$%tl242695243610%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match247576247577%_
                                                   _%$%e242666243533%_
                                                   _%$%hd242667243536%_
                                                   _%$%tl242668243538%_
                                                   _%$%e242669243541%_
                                                   _%$%hd242670243544%_
                                                   _%$%tl242671243546%_
                                                   _%$%e242672243549%_
                                                   _%$%hd242673243552%_
                                                   _%$%tl242674243554%_
                                                   _%$%e242675243557%_
                                                   _%$%hd242676243560%_
                                                   _%$%tl242677243562%_
                                                   _%$%e242678243565%_
                                                   _%$%hd242679243568%_
                                                   _%$%tl242680243570%_
                                                   _%$%e242681243573%_
                                                   _%$%hd242682243576%_
                                                   _%$%tl242683243578%_
                                                   _%$%e242684243581%_
                                                   _%$%hd242685243584%_
                                                   _%$%tl242686243586%_
                                                   _%$%e242687243589%_
                                                   _%$%hd242688243592%_
                                                   _%$%tl242689243594%_))))
                                          (_%__match247576247577%_
                                           _%$%e242666243533%_
                                           _%$%hd242667243536%_
                                           _%$%tl242668243538%_
                                           _%$%e242669243541%_
                                           _%$%hd242670243544%_
                                           _%$%tl242671243546%_
                                           _%$%e242672243549%_
                                           _%$%hd242673243552%_
                                           _%$%tl242674243554%_
                                           _%$%e242675243557%_
                                           _%$%hd242676243560%_
                                           _%$%tl242677243562%_
                                           _%$%e242678243565%_
                                           _%$%hd242679243568%_
                                           _%$%tl242680243570%_
                                           _%$%e242681243573%_
                                           _%$%hd242682243576%_
                                           _%$%tl242683243578%_
                                           _%$%e242684243581%_
                                           _%$%hd242685243584%_
                                           _%$%tl242686243586%_
                                           _%$%e242687243589%_
                                           _%$%hd242688243592%_
                                           _%$%tl242689243594%_))
                                      (_%__match247252247253%_
                                       _%$%e242666243533%_
                                       _%$%hd242667243536%_
                                       _%$%tl242668243538%_
                                       _%$%e242669243541%_
                                       _%$%hd242670243544%_
                                       _%$%tl242671243546%_
                                       _%$%e242672243549%_
                                       _%$%hd242673243552%_
                                       _%$%tl242674243554%_
                                       _%$%e242675243557%_
                                       _%$%hd242676243560%_
                                       _%$%tl242677243562%_
                                       _%$%e242678243565%_
                                       _%$%hd242679243568%_
                                       _%$%tl242680243570%_
                                       _%$%e242681243573%_
                                       _%$%hd242682243576%_
                                       _%$%tl242683243578%_
                                       _%$%e242684243581%_
                                       _%$%hd242685243584%_
                                       _%$%tl242686243586%_
                                       _%$%e242687243589%_
                                       _%$%hd242688243592%_
                                       _%$%tl242689243594%_
                                       _%$%e242690243597%_
                                       _%$%hd242691243600%_
                                       _%$%tl242692243602%_))
                                  (_%__match247576247577%_
                                   _%$%e242666243533%_
                                   _%$%hd242667243536%_
                                   _%$%tl242668243538%_
                                   _%$%e242669243541%_
                                   _%$%hd242670243544%_
                                   _%$%tl242671243546%_
                                   _%$%e242672243549%_
                                   _%$%hd242673243552%_
                                   _%$%tl242674243554%_
                                   _%$%e242675243557%_
                                   _%$%hd242676243560%_
                                   _%$%tl242677243562%_
                                   _%$%e242678243565%_
                                   _%$%hd242679243568%_
                                   _%$%tl242680243570%_
                                   _%$%e242681243573%_
                                   _%$%hd242682243576%_
                                   _%$%tl242683243578%_
                                   _%$%e242684243581%_
                                   _%$%hd242685243584%_
                                   _%$%tl242686243586%_
                                   _%$%e242687243589%_
                                   _%$%hd242688243592%_
                                   _%$%tl242689243594%_))))
                          (_%__match247576247577%_
                           _%$%e242666243533%_
                           _%$%hd242667243536%_
                           _%$%tl242668243538%_
                           _%$%e242669243541%_
                           _%$%hd242670243544%_
                           _%$%tl242671243546%_
                           _%$%e242672243549%_
                           _%$%hd242673243552%_
                           _%$%tl242674243554%_
                           _%$%e242675243557%_
                           _%$%hd242676243560%_
                           _%$%tl242677243562%_
                           _%$%e242678243565%_
                           _%$%hd242679243568%_
                           _%$%tl242680243570%_
                           _%$%e242681243573%_
                           _%$%hd242682243576%_
                           _%$%tl242683243578%_
                           _%$%e242684243581%_
                           _%$%hd242685243584%_
                           _%$%tl242686243586%_
                           _%$%e242687243589%_
                           _%$%hd242688243592%_
                           _%$%tl242689243594%_))))
                  (_%__match247514247515%_
                   _%$%e242666243533%_
                   _%$%hd242667243536%_
                   _%$%tl242668243538%_
                   _%$%e242669243541%_
                   _%$%hd242670243544%_
                   _%$%tl242671243546%_
                   _%$%e242672243549%_
                   _%$%hd242673243552%_
                   _%$%tl242674243554%_
                   _%$%e242675243557%_
                   _%$%hd242676243560%_
                   _%$%tl242677243562%_
                   _%$%e242678243565%_
                   _%$%hd242679243568%_
                   _%$%tl242680243570%_
                   _%$%e242681243573%_
                   _%$%hd242682243576%_
                   _%$%tl242683243578%_
                   _%$%e242684243581%_
                   _%$%hd242685243584%_
                   _%$%tl242686243586%_))
              (_%__kont247097247098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont247097247098%_))
                                          (_%__kont247097247098%_))
                                      (_%__kont247097247098%_))))
                              (_%__kont247097247098%_))))
                      (_%__kont247097247098%_))
                  (_%__kont247097247098%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont247097247098%_))
                                              (_%__kont247097247098%_))
                                          (_%__kont247097247098%_))))
                                  (_%__kont247097247098%_))))
                          (_%__kont247097247098%_))))
                  (_%__kont247097247098%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self241594%_ _%stx241595%_)
        (letrec ((_%force-e241597%_
                  (lambda (_%target242649%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target242649%_ '()))
                                      '()))))))
          (let* ((_%__stx247581247582%_ _%stx241595%_)
                 (_%$%g241605241827%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx247581247582%_)))))
            (let ((_%__kont247583247584%_
                   (lambda (_%$%g241607242595%_
                            _%$%g241608242596%_
                            _%$%g241609242597%_
                            _%$%g241610242598%_)
                     (let ((_%$method242643%_
                            (let ((__tmp248244
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self241594%_ 'methods)))
                                  (__tmp248243
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g241608242596%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp248244 __tmp248243)))
                           (_%args242644%_
                            (map (lambda (_%$%g242631242633%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self241594%_
                                      _%$%g242631242633%_)))
                                 (let ((__tmp248245
                                        (lambda (_%$%g242635242638%_
                                                 _%$%g242636242640%_)
                                          (cons _%$%g242635242638%_
                                                _%$%g242636242640%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp248245
                                    '()
                                    _%$%g241607242595%_)))))
                       (let ((__tmp248246
                              (cons '%#call
                                    (cons (_%force-e241597%_ _%$method242643%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self241594%_
                                                               'receiver))
                                                            '()))
                                                _%args242644%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248246 _%stx241595%_)))))
                  (_%__kont247587247588%_
                   (lambda (_%$%g241650242429%_
                            _%$%g241651242430%_
                            _%$%g241652242431%_
                            _%$%g241653242432%_
                            _%$%g241654242433%_)
                     (let ((_%$method242485%_
                            (let ((__tmp248248
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self241594%_ 'methods)))
                                  (__tmp248247
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g241651242430%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp248248 __tmp248247)))
                           (_%args242486%_
                            (map (lambda (_%$%g242473242475%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self241594%_
                                      _%$%g242473242475%_)))
                                 (let ((__tmp248249
                                        (lambda (_%$%g242477242480%_
                                                 _%$%g242478242482%_)
                                          (cons _%$%g242477242480%_
                                                _%$%g242478242482%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp248249
                                    '()
                                    _%$%g241650242429%_)))))
                       (let ((__tmp248250
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e241597%_
                                                 _%$method242485%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self241594%_ 'receiver))
                          '()))
              _%args242486%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248250 _%stx241595%_)))))
                  (_%__kont247591247592%_
                   (lambda (_%$%g241703242262%_
                            _%$%g241704242263%_
                            _%$%g241705242264%_)
                     (let* ((_%$field242296%_
                             (let ((__tmp248252
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self241594%_ 'slots)))
                                   (__tmp248251
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%g241703242262%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp248252 __tmp248251)))
                            (__tmp248253
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self241594%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field242296%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self241594%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp248253 _%stx241595%_))))
                  (_%__kont247593247594%_
                   (lambda (_%$%g241736242136%_
                            _%$%g241737242137%_
                            _%$%g241738242138%_
                            _%$%g241739242139%_)
                     (let ((_%$field242174%_
                            (let ((__tmp248255
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self241594%_ 'slots)))
                                  (__tmp248254
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g241737242137%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp248255 __tmp248254)))
                           (_%expr242175%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self241594%_
                               _%$%g241736242136%_))))
                       (let ((__tmp248256
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self241594%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field242174%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self241594%_ 'receiver))
                          '()))
              (cons _%expr242175%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248256 _%stx241595%_)))))
                  (_%__kont247595247596%_
                   (lambda (_%$%g241773242008%_ _%$%g241774242009%_)
                     (let* ((_%accessor242031%_
                             (let ((__tmp248257
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g241774242009%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp248257)))
                            (_%klass242033%_
                             (let ((__tmp248258
                                    (##structure-ref
                                     _%accessor242031%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx241595%_
                                __tmp248258)))
                            (_%slot242035%_
                             (##structure-ref
                              _%accessor242031%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor242031%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass242033%_
                                      _%slot242035%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass242033%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx241595%_
                           (let* ((_%$field242041%_
                                   (let ((__tmp248259
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241594%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp248259 _%slot242035%_)))
                                  (__tmp248260
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self241594%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field242041%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self241594%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp248260
                              _%stx241595%_))))))
                  (_%__kont247597247598%_
                   (lambda (_%$%g241796241903%_
                            _%$%g241797241904%_
                            _%$%g241798241905%_)
                     (let* ((_%mutator241933%_
                             (let ((__tmp248261
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g241798241905%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp248261)))
                            (_%klass241935%_
                             (let ((__tmp248262
                                    (##structure-ref
                                     _%mutator241933%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx241595%_
                                __tmp248262)))
                            (_%slot241937%_
                             (##structure-ref
                              _%mutator241933%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr241939%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self241594%_
                                _%$%g241796241903%_))))
                       (if (if (##structure-ref
                                _%mutator241933%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass241935%_
                                      _%slot241937%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass241935%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp248263
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%$%g241798241905%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g241797241904%_
                                                                '()))
                                                    (cons _%expr241939%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp248263 _%stx241595%_))
                           (let* ((_%$field241945%_
                                   (let ((__tmp248264
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241594%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp248264 _%slot241937%_)))
                                  (__tmp248265
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self241594%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field241945%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self241594%_ 'receiver))
                               '()))
                   (cons _%expr241939%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp248265
                              _%stx241595%_))))))
                  (_%__kont247599247600%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self241594%_ _%stx241595%_)))))
              (let* ((_%__match248080248081%_
                      (lambda (_%$%e241799241839%_
                               _%$%hd241800241842%_
                               _%$%tl241801241844%_
                               _%$%e241802241847%_
                               _%$%hd241803241850%_
                               _%$%tl241804241852%_
                               _%$%e241805241855%_
                               _%$%hd241806241858%_
                               _%$%tl241807241860%_
                               _%$%e241808241863%_
                               _%$%hd241809241866%_
                               _%$%tl241810241868%_
                               _%$%e241811241871%_
                               _%$%hd241812241874%_
                               _%$%tl241813241876%_
                               _%$%e241814241879%_
                               _%$%hd241815241882%_
                               _%$%tl241816241884%_
                               _%$%e241817241887%_
                               _%$%hd241818241890%_
                               _%$%tl241819241892%_
                               _%$%e241820241895%_
                               _%$%hd241821241898%_
                               _%$%tl241822241900%_)
                        (let ((_%$%g241796241903%_ _%$%hd241821241898%_)
                              (_%$%g241797241904%_ _%$%hd241818241890%_)
                              (_%$%g241798241905%_ _%$%hd241809241866%_))
                          (if (and (let ((__tmp248266
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241594%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g241797241904%_
                                      __tmp248266))
                                   (let ((__tmp248267
                                          (let ((__tmp248268
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g241798241905%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp248268))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp248267
                                      'gxc#!mutator::t)))
                              (_%__kont247597247598%_
                               _%$%g241796241903%_
                               _%$%g241797241904%_
                               _%$%g241798241905%_)
                              (_%__kont247599247600%_)))))
                     (_%__match248078248079%_
                      (lambda (_%$%e241799241839%_
                               _%$%hd241800241842%_
                               _%$%tl241801241844%_
                               _%$%e241802241847%_
                               _%$%hd241803241850%_
                               _%$%tl241804241852%_
                               _%$%e241805241855%_
                               _%$%hd241806241858%_
                               _%$%tl241807241860%_
                               _%$%e241808241863%_
                               _%$%hd241809241866%_
                               _%$%tl241810241868%_
                               _%$%e241811241871%_
                               _%$%hd241812241874%_
                               _%$%tl241813241876%_
                               _%$%e241814241879%_
                               _%$%hd241815241882%_
                               _%$%tl241816241884%_
                               _%$%e241817241887%_
                               _%$%hd241818241890%_
                               _%$%tl241819241892%_
                               _%$%e241820241895%_
                               _%$%hd241821241898%_
                               _%$%tl241822241900%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl241822241900%_))
                            (_%__match248080248081%_
                             _%$%e241799241839%_
                             _%$%hd241800241842%_
                             _%$%tl241801241844%_
                             _%$%e241802241847%_
                             _%$%hd241803241850%_
                             _%$%tl241804241852%_
                             _%$%e241805241855%_
                             _%$%hd241806241858%_
                             _%$%tl241807241860%_
                             _%$%e241808241863%_
                             _%$%hd241809241866%_
                             _%$%tl241810241868%_
                             _%$%e241811241871%_
                             _%$%hd241812241874%_
                             _%$%tl241813241876%_
                             _%$%e241814241879%_
                             _%$%hd241815241882%_
                             _%$%tl241816241884%_
                             _%$%e241817241887%_
                             _%$%hd241818241890%_
                             _%$%tl241819241892%_
                             _%$%e241820241895%_
                             _%$%hd241821241898%_
                             _%$%tl241822241900%_)
                            (_%__kont247599247600%_))))
                     (_%__match248072248073%_
                      (lambda (_%$%e241799241839%_
                               _%$%hd241800241842%_
                               _%$%tl241801241844%_
                               _%$%e241802241847%_
                               _%$%hd241803241850%_
                               _%$%tl241804241852%_
                               _%$%e241805241855%_
                               _%$%hd241806241858%_
                               _%$%tl241807241860%_
                               _%$%e241808241863%_
                               _%$%hd241809241866%_
                               _%$%tl241810241868%_
                               _%$%e241811241871%_
                               _%$%hd241812241874%_
                               _%$%tl241813241876%_
                               _%$%e241814241879%_
                               _%$%hd241815241882%_
                               _%$%tl241816241884%_
                               _%$%e241817241887%_
                               _%$%hd241818241890%_
                               _%$%tl241819241892%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl241813241876%_))
                            (let ((_%$%e241820241895%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl241813241876%_))))
                              (let ((_%$%tl241822241900%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e241820241895%_)))
                                    (_%$%hd241821241898%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e241820241895%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl241822241900%_))
                                    (_%__match248080248081%_
                                     _%$%e241799241839%_
                                     _%$%hd241800241842%_
                                     _%$%tl241801241844%_
                                     _%$%e241802241847%_
                                     _%$%hd241803241850%_
                                     _%$%tl241804241852%_
                                     _%$%e241805241855%_
                                     _%$%hd241806241858%_
                                     _%$%tl241807241860%_
                                     _%$%e241808241863%_
                                     _%$%hd241809241866%_
                                     _%$%tl241810241868%_
                                     _%$%e241811241871%_
                                     _%$%hd241812241874%_
                                     _%$%tl241813241876%_
                                     _%$%e241814241879%_
                                     _%$%hd241815241882%_
                                     _%$%tl241816241884%_
                                     _%$%e241817241887%_
                                     _%$%hd241818241890%_
                                     _%$%tl241819241892%_
                                     _%$%e241820241895%_
                                     _%$%hd241821241898%_
                                     _%$%tl241822241900%_)
                                    (_%__kont247599247600%_))))
                            (_%__kont247599247600%_))))
                     (_%__match248018248019%_
                      (lambda (_%$%e241775241952%_
                               _%$%hd241776241955%_
                               _%$%tl241777241957%_
                               _%$%e241778241960%_
                               _%$%hd241779241963%_
                               _%$%tl241780241965%_
                               _%$%e241781241968%_
                               _%$%hd241782241971%_
                               _%$%tl241783241973%_
                               _%$%e241784241976%_
                               _%$%hd241785241979%_
                               _%$%tl241786241981%_
                               _%$%e241787241984%_
                               _%$%hd241788241987%_
                               _%$%tl241789241989%_
                               _%$%e241790241992%_
                               _%$%hd241791241995%_
                               _%$%tl241792241997%_
                               _%$%e241793242000%_
                               _%$%hd241794242003%_
                               _%$%tl241795242005%_)
                        (let ((_%$%g241773242008%_ _%$%hd241794242003%_)
                              (_%$%g241774242009%_ _%$%hd241785241979%_))
                          (if (and (let ((__tmp248269
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241594%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g241773242008%_
                                      __tmp248269))
                                   (let ((__tmp248270
                                          (let ((__tmp248271
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g241774242009%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp248271))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp248270
                                      'gxc#!accessor::t)))
                              (_%__kont247595247596%_
                               _%$%g241773242008%_
                               _%$%g241774242009%_)
                              (_%__kont247599247600%_)))))
                     (_%__match248016248017%_
                      (lambda (_%$%e241775241952%_
                               _%$%hd241776241955%_
                               _%$%tl241777241957%_
                               _%$%e241778241960%_
                               _%$%hd241779241963%_
                               _%$%tl241780241965%_
                               _%$%e241781241968%_
                               _%$%hd241782241971%_
                               _%$%tl241783241973%_
                               _%$%e241784241976%_
                               _%$%hd241785241979%_
                               _%$%tl241786241981%_
                               _%$%e241787241984%_
                               _%$%hd241788241987%_
                               _%$%tl241789241989%_
                               _%$%e241790241992%_
                               _%$%hd241791241995%_
                               _%$%tl241792241997%_
                               _%$%e241793242000%_
                               _%$%hd241794242003%_
                               _%$%tl241795242005%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl241789241989%_))
                            (_%__match248018248019%_
                             _%$%e241775241952%_
                             _%$%hd241776241955%_
                             _%$%tl241777241957%_
                             _%$%e241778241960%_
                             _%$%hd241779241963%_
                             _%$%tl241780241965%_
                             _%$%e241781241968%_
                             _%$%hd241782241971%_
                             _%$%tl241783241973%_
                             _%$%e241784241976%_
                             _%$%hd241785241979%_
                             _%$%tl241786241981%_
                             _%$%e241787241984%_
                             _%$%hd241788241987%_
                             _%$%tl241789241989%_
                             _%$%e241790241992%_
                             _%$%hd241791241995%_
                             _%$%tl241792241997%_
                             _%$%e241793242000%_
                             _%$%hd241794242003%_
                             _%$%tl241795242005%_)
                            (_%__match248072248073%_
                             _%$%e241775241952%_
                             _%$%hd241776241955%_
                             _%$%tl241777241957%_
                             _%$%e241778241960%_
                             _%$%hd241779241963%_
                             _%$%tl241780241965%_
                             _%$%e241781241968%_
                             _%$%hd241782241971%_
                             _%$%tl241783241973%_
                             _%$%e241784241976%_
                             _%$%hd241785241979%_
                             _%$%tl241786241981%_
                             _%$%e241787241984%_
                             _%$%hd241788241987%_
                             _%$%tl241789241989%_
                             _%$%e241790241992%_
                             _%$%hd241791241995%_
                             _%$%tl241792241997%_
                             _%$%e241793242000%_
                             _%$%hd241794242003%_
                             _%$%tl241795242005%_))))
                     (_%__match247962247963%_
                      (lambda (_%$%e241740242048%_
                               _%$%hd241741242051%_
                               _%$%tl241742242053%_
                               _%$%e241743242056%_
                               _%$%hd241744242059%_
                               _%$%tl241745242061%_
                               _%$%e241746242064%_
                               _%$%hd241747242067%_
                               _%$%tl241748242069%_
                               _%$%e241749242072%_
                               _%$%hd241750242075%_
                               _%$%tl241751242077%_
                               _%$%e241752242080%_
                               _%$%hd241753242083%_
                               _%$%tl241754242085%_
                               _%$%e241755242088%_
                               _%$%hd241756242091%_
                               _%$%tl241757242093%_
                               _%$%e241758242096%_
                               _%$%hd241759242099%_
                               _%$%tl241760242101%_
                               _%$%e241761242104%_
                               _%$%hd241762242107%_
                               _%$%tl241763242109%_
                               _%$%e241764242112%_
                               _%$%hd241765242115%_
                               _%$%tl241766242117%_
                               _%$%e241767242120%_
                               _%$%hd241768242123%_
                               _%$%tl241769242125%_
                               _%$%e241770242128%_
                               _%$%hd241771242131%_
                               _%$%tl241772242133%_)
                        (let ((_%$%g241736242136%_ _%$%hd241771242131%_)
                              (_%$%g241737242137%_ _%$%hd241768242123%_)
                              (_%$%g241738242138%_ _%$%hd241759242099%_)
                              (_%$%g241739242139%_ _%$%hd241750242075%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g241739242139%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g241739242139%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp248272
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241594%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g241738242138%_
                                      __tmp248272)))
                              (_%__kont247593247594%_
                               _%$%g241736242136%_
                               _%$%g241737242137%_
                               _%$%g241738242138%_
                               _%$%g241739242139%_)
                              (_%__kont247599247600%_)))))
                     (_%__match247954247955%_
                      (lambda (_%$%e241740242048%_
                               _%$%hd241741242051%_
                               _%$%tl241742242053%_
                               _%$%e241743242056%_
                               _%$%hd241744242059%_
                               _%$%tl241745242061%_
                               _%$%e241746242064%_
                               _%$%hd241747242067%_
                               _%$%tl241748242069%_
                               _%$%e241749242072%_
                               _%$%hd241750242075%_
                               _%$%tl241751242077%_
                               _%$%e241752242080%_
                               _%$%hd241753242083%_
                               _%$%tl241754242085%_
                               _%$%e241755242088%_
                               _%$%hd241756242091%_
                               _%$%tl241757242093%_
                               _%$%e241758242096%_
                               _%$%hd241759242099%_
                               _%$%tl241760242101%_
                               _%$%e241761242104%_
                               _%$%hd241762242107%_
                               _%$%tl241763242109%_
                               _%$%e241764242112%_
                               _%$%hd241765242115%_
                               _%$%tl241766242117%_
                               _%$%e241767242120%_
                               _%$%hd241768242123%_
                               _%$%tl241769242125%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl241763242109%_))
                            (let ((_%$%e241770242128%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl241763242109%_))))
                              (let ((_%$%tl241772242133%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e241770242128%_)))
                                    (_%$%hd241771242131%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e241770242128%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl241772242133%_))
                                    (_%__match247962247963%_
                                     _%$%e241740242048%_
                                     _%$%hd241741242051%_
                                     _%$%tl241742242053%_
                                     _%$%e241743242056%_
                                     _%$%hd241744242059%_
                                     _%$%tl241745242061%_
                                     _%$%e241746242064%_
                                     _%$%hd241747242067%_
                                     _%$%tl241748242069%_
                                     _%$%e241749242072%_
                                     _%$%hd241750242075%_
                                     _%$%tl241751242077%_
                                     _%$%e241752242080%_
                                     _%$%hd241753242083%_
                                     _%$%tl241754242085%_
                                     _%$%e241755242088%_
                                     _%$%hd241756242091%_
                                     _%$%tl241757242093%_
                                     _%$%e241758242096%_
                                     _%$%hd241759242099%_
                                     _%$%tl241760242101%_
                                     _%$%e241761242104%_
                                     _%$%hd241762242107%_
                                     _%$%tl241763242109%_
                                     _%$%e241764242112%_
                                     _%$%hd241765242115%_
                                     _%$%tl241766242117%_
                                     _%$%e241767242120%_
                                     _%$%hd241768242123%_
                                     _%$%tl241769242125%_
                                     _%$%e241770242128%_
                                     _%$%hd241771242131%_
                                     _%$%tl241772242133%_)
                                    (_%__kont247599247600%_))))
                            (_%__match248078248079%_
                             _%$%e241740242048%_
                             _%$%hd241741242051%_
                             _%$%tl241742242053%_
                             _%$%e241743242056%_
                             _%$%hd241744242059%_
                             _%$%tl241745242061%_
                             _%$%e241746242064%_
                             _%$%hd241747242067%_
                             _%$%tl241748242069%_
                             _%$%e241749242072%_
                             _%$%hd241750242075%_
                             _%$%tl241751242077%_
                             _%$%e241752242080%_
                             _%$%hd241753242083%_
                             _%$%tl241754242085%_
                             _%$%e241755242088%_
                             _%$%hd241756242091%_
                             _%$%tl241757242093%_
                             _%$%e241758242096%_
                             _%$%hd241759242099%_
                             _%$%tl241760242101%_
                             _%$%e241761242104%_
                             _%$%hd241762242107%_
                             _%$%tl241763242109%_))))
                     (_%__match247876247877%_
                      (lambda (_%$%e241706242182%_
                               _%$%hd241707242185%_
                               _%$%tl241708242187%_
                               _%$%e241709242190%_
                               _%$%hd241710242193%_
                               _%$%tl241711242195%_
                               _%$%e241712242198%_
                               _%$%hd241713242201%_
                               _%$%tl241714242203%_
                               _%$%e241715242206%_
                               _%$%hd241716242209%_
                               _%$%tl241717242211%_
                               _%$%e241718242214%_
                               _%$%hd241719242217%_
                               _%$%tl241720242219%_
                               _%$%e241721242222%_
                               _%$%hd241722242225%_
                               _%$%tl241723242227%_
                               _%$%e241724242230%_
                               _%$%hd241725242233%_
                               _%$%tl241726242235%_
                               _%$%e241727242238%_
                               _%$%hd241728242241%_
                               _%$%tl241729242243%_
                               _%$%e241730242246%_
                               _%$%hd241731242249%_
                               _%$%tl241732242251%_
                               _%$%e241733242254%_
                               _%$%hd241734242257%_
                               _%$%tl241735242259%_)
                        (let ((_%$%g241703242262%_ _%$%hd241734242257%_)
                              (_%$%g241704242263%_ _%$%hd241725242233%_)
                              (_%$%g241705242264%_ _%$%hd241716242209%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g241705242264%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g241705242264%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp248273
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241594%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g241704242263%_
                                      __tmp248273)))
                              (_%__kont247591247592%_
                               _%$%g241703242262%_
                               _%$%g241704242263%_
                               _%$%g241705242264%_)
                              (_%__match248080248081%_
                               _%$%e241706242182%_
                               _%$%hd241707242185%_
                               _%$%tl241708242187%_
                               _%$%e241709242190%_
                               _%$%hd241710242193%_
                               _%$%tl241711242195%_
                               _%$%e241712242198%_
                               _%$%hd241713242201%_
                               _%$%tl241714242203%_
                               _%$%e241715242206%_
                               _%$%hd241716242209%_
                               _%$%tl241717242211%_
                               _%$%e241718242214%_
                               _%$%hd241719242217%_
                               _%$%tl241720242219%_
                               _%$%e241721242222%_
                               _%$%hd241722242225%_
                               _%$%tl241723242227%_
                               _%$%e241724242230%_
                               _%$%hd241725242233%_
                               _%$%tl241726242235%_
                               _%$%e241727242238%_
                               _%$%hd241728242241%_
                               _%$%tl241729242243%_)))))
                     (_%__match247874247875%_
                      (lambda (_%$%e241706242182%_
                               _%$%hd241707242185%_
                               _%$%tl241708242187%_
                               _%$%e241709242190%_
                               _%$%hd241710242193%_
                               _%$%tl241711242195%_
                               _%$%e241712242198%_
                               _%$%hd241713242201%_
                               _%$%tl241714242203%_
                               _%$%e241715242206%_
                               _%$%hd241716242209%_
                               _%$%tl241717242211%_
                               _%$%e241718242214%_
                               _%$%hd241719242217%_
                               _%$%tl241720242219%_
                               _%$%e241721242222%_
                               _%$%hd241722242225%_
                               _%$%tl241723242227%_
                               _%$%e241724242230%_
                               _%$%hd241725242233%_
                               _%$%tl241726242235%_
                               _%$%e241727242238%_
                               _%$%hd241728242241%_
                               _%$%tl241729242243%_
                               _%$%e241730242246%_
                               _%$%hd241731242249%_
                               _%$%tl241732242251%_
                               _%$%e241733242254%_
                               _%$%hd241734242257%_
                               _%$%tl241735242259%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl241729242243%_))
                            (_%__match247876247877%_
                             _%$%e241706242182%_
                             _%$%hd241707242185%_
                             _%$%tl241708242187%_
                             _%$%e241709242190%_
                             _%$%hd241710242193%_
                             _%$%tl241711242195%_
                             _%$%e241712242198%_
                             _%$%hd241713242201%_
                             _%$%tl241714242203%_
                             _%$%e241715242206%_
                             _%$%hd241716242209%_
                             _%$%tl241717242211%_
                             _%$%e241718242214%_
                             _%$%hd241719242217%_
                             _%$%tl241720242219%_
                             _%$%e241721242222%_
                             _%$%hd241722242225%_
                             _%$%tl241723242227%_
                             _%$%e241724242230%_
                             _%$%hd241725242233%_
                             _%$%tl241726242235%_
                             _%$%e241727242238%_
                             _%$%hd241728242241%_
                             _%$%tl241729242243%_
                             _%$%e241730242246%_
                             _%$%hd241731242249%_
                             _%$%tl241732242251%_
                             _%$%e241733242254%_
                             _%$%hd241734242257%_
                             _%$%tl241735242259%_)
                            (_%__match247954247955%_
                             _%$%e241706242182%_
                             _%$%hd241707242185%_
                             _%$%tl241708242187%_
                             _%$%e241709242190%_
                             _%$%hd241710242193%_
                             _%$%tl241711242195%_
                             _%$%e241712242198%_
                             _%$%hd241713242201%_
                             _%$%tl241714242203%_
                             _%$%e241715242206%_
                             _%$%hd241716242209%_
                             _%$%tl241717242211%_
                             _%$%e241718242214%_
                             _%$%hd241719242217%_
                             _%$%tl241720242219%_
                             _%$%e241721242222%_
                             _%$%hd241722242225%_
                             _%$%tl241723242227%_
                             _%$%e241724242230%_
                             _%$%hd241725242233%_
                             _%$%tl241726242235%_
                             _%$%e241727242238%_
                             _%$%hd241728242241%_
                             _%$%tl241729242243%_
                             _%$%e241730242246%_
                             _%$%hd241731242249%_
                             _%$%tl241732242251%_
                             _%$%e241733242254%_
                             _%$%hd241734242257%_
                             _%$%tl241735242259%_))))
                     (_%__match247864247865%_
                      (lambda (_%$%e241706242182%_
                               _%$%hd241707242185%_
                               _%$%tl241708242187%_
                               _%$%e241709242190%_
                               _%$%hd241710242193%_
                               _%$%tl241711242195%_
                               _%$%e241712242198%_
                               _%$%hd241713242201%_
                               _%$%tl241714242203%_
                               _%$%e241715242206%_
                               _%$%hd241716242209%_
                               _%$%tl241717242211%_
                               _%$%e241718242214%_
                               _%$%hd241719242217%_
                               _%$%tl241720242219%_
                               _%$%e241721242222%_
                               _%$%hd241722242225%_
                               _%$%tl241723242227%_
                               _%$%e241724242230%_
                               _%$%hd241725242233%_
                               _%$%tl241726242235%_
                               _%$%e241727242238%_
                               _%$%hd241728242241%_
                               _%$%tl241729242243%_
                               _%$%e241730242246%_
                               _%$%hd241731242249%_
                               _%$%tl241732242251%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%$%hd241731242249%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl241732242251%_))
                                (let ((_%$%e241733242254%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl241732242251%_))))
                                  (let ((_%$%tl241735242259%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e241733242254%_)))
                                        (_%$%hd241734242257%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e241733242254%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl241735242259%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl241729242243%_))
                                            (_%__match247876247877%_
                                             _%$%e241706242182%_
                                             _%$%hd241707242185%_
                                             _%$%tl241708242187%_
                                             _%$%e241709242190%_
                                             _%$%hd241710242193%_
                                             _%$%tl241711242195%_
                                             _%$%e241712242198%_
                                             _%$%hd241713242201%_
                                             _%$%tl241714242203%_
                                             _%$%e241715242206%_
                                             _%$%hd241716242209%_
                                             _%$%tl241717242211%_
                                             _%$%e241718242214%_
                                             _%$%hd241719242217%_
                                             _%$%tl241720242219%_
                                             _%$%e241721242222%_
                                             _%$%hd241722242225%_
                                             _%$%tl241723242227%_
                                             _%$%e241724242230%_
                                             _%$%hd241725242233%_
                                             _%$%tl241726242235%_
                                             _%$%e241727242238%_
                                             _%$%hd241728242241%_
                                             _%$%tl241729242243%_
                                             _%$%e241730242246%_
                                             _%$%hd241731242249%_
                                             _%$%tl241732242251%_
                                             _%$%e241733242254%_
                                             _%$%hd241734242257%_
                                             _%$%tl241735242259%_)
                                            (_%__match247954247955%_
                                             _%$%e241706242182%_
                                             _%$%hd241707242185%_
                                             _%$%tl241708242187%_
                                             _%$%e241709242190%_
                                             _%$%hd241710242193%_
                                             _%$%tl241711242195%_
                                             _%$%e241712242198%_
                                             _%$%hd241713242201%_
                                             _%$%tl241714242203%_
                                             _%$%e241715242206%_
                                             _%$%hd241716242209%_
                                             _%$%tl241717242211%_
                                             _%$%e241718242214%_
                                             _%$%hd241719242217%_
                                             _%$%tl241720242219%_
                                             _%$%e241721242222%_
                                             _%$%hd241722242225%_
                                             _%$%tl241723242227%_
                                             _%$%e241724242230%_
                                             _%$%hd241725242233%_
                                             _%$%tl241726242235%_
                                             _%$%e241727242238%_
                                             _%$%hd241728242241%_
                                             _%$%tl241729242243%_
                                             _%$%e241730242246%_
                                             _%$%hd241731242249%_
                                             _%$%tl241732242251%_
                                             _%$%e241733242254%_
                                             _%$%hd241734242257%_
                                             _%$%tl241735242259%_))
                                        (_%__match248078248079%_
                                         _%$%e241706242182%_
                                         _%$%hd241707242185%_
                                         _%$%tl241708242187%_
                                         _%$%e241709242190%_
                                         _%$%hd241710242193%_
                                         _%$%tl241711242195%_
                                         _%$%e241712242198%_
                                         _%$%hd241713242201%_
                                         _%$%tl241714242203%_
                                         _%$%e241715242206%_
                                         _%$%hd241716242209%_
                                         _%$%tl241717242211%_
                                         _%$%e241718242214%_
                                         _%$%hd241719242217%_
                                         _%$%tl241720242219%_
                                         _%$%e241721242222%_
                                         _%$%hd241722242225%_
                                         _%$%tl241723242227%_
                                         _%$%e241724242230%_
                                         _%$%hd241725242233%_
                                         _%$%tl241726242235%_
                                         _%$%e241727242238%_
                                         _%$%hd241728242241%_
                                         _%$%tl241729242243%_))))
                                (_%__match248078248079%_
                                 _%$%e241706242182%_
                                 _%$%hd241707242185%_
                                 _%$%tl241708242187%_
                                 _%$%e241709242190%_
                                 _%$%hd241710242193%_
                                 _%$%tl241711242195%_
                                 _%$%e241712242198%_
                                 _%$%hd241713242201%_
                                 _%$%tl241714242203%_
                                 _%$%e241715242206%_
                                 _%$%hd241716242209%_
                                 _%$%tl241717242211%_
                                 _%$%e241718242214%_
                                 _%$%hd241719242217%_
                                 _%$%tl241720242219%_
                                 _%$%e241721242222%_
                                 _%$%hd241722242225%_
                                 _%$%tl241723242227%_
                                 _%$%e241724242230%_
                                 _%$%hd241725242233%_
                                 _%$%tl241726242235%_
                                 _%$%e241727242238%_
                                 _%$%hd241728242241%_
                                 _%$%tl241729242243%_))
                            (_%__match248078248079%_
                             _%$%e241706242182%_
                             _%$%hd241707242185%_
                             _%$%tl241708242187%_
                             _%$%e241709242190%_
                             _%$%hd241710242193%_
                             _%$%tl241711242195%_
                             _%$%e241712242198%_
                             _%$%hd241713242201%_
                             _%$%tl241714242203%_
                             _%$%e241715242206%_
                             _%$%hd241716242209%_
                             _%$%tl241717242211%_
                             _%$%e241718242214%_
                             _%$%hd241719242217%_
                             _%$%tl241720242219%_
                             _%$%e241721242222%_
                             _%$%hd241722242225%_
                             _%$%tl241723242227%_
                             _%$%e241724242230%_
                             _%$%hd241725242233%_
                             _%$%tl241726242235%_
                             _%$%e241727242238%_
                             _%$%hd241728242241%_
                             _%$%tl241729242243%_))))
                     (_%__match247796247797%_
                      (lambda (_%$%e241655242303%_
                               _%$%hd241656242306%_
                               _%$%tl241657242308%_
                               _%$%e241658242311%_
                               _%$%hd241659242314%_
                               _%$%tl241660242316%_
                               _%$%e241661242319%_
                               _%$%hd241662242322%_
                               _%$%tl241663242324%_
                               _%$%e241664242327%_
                               _%$%hd241665242330%_
                               _%$%tl241666242332%_
                               _%$%e241667242335%_
                               _%$%hd241668242338%_
                               _%$%tl241669242340%_
                               _%$%e241670242343%_
                               _%$%hd241671242346%_
                               _%$%tl241672242348%_
                               _%$%e241673242351%_
                               _%$%hd241674242354%_
                               _%$%tl241675242356%_
                               _%$%e241676242359%_
                               _%$%hd241677242362%_
                               _%$%tl241678242364%_
                               _%$%e241679242367%_
                               _%$%hd241680242370%_
                               _%$%tl241681242372%_
                               _%$%e241682242375%_
                               _%$%hd241683242378%_
                               _%$%tl241684242380%_
                               _%$%e241685242383%_
                               _%$%hd241686242386%_
                               _%$%tl241687242388%_
                               _%$%e241688242391%_
                               _%$%hd241689242394%_
                               _%$%tl241690242396%_
                               _%$%e241691242399%_
                               _%$%hd241692242402%_
                               _%$%tl241693242404%_
                               _%__splice247589247590%_
                               _%$%target241694242407%_
                               _%$%tl241696242409%_)
                        (letrec ((_%$%loop241697242412%_
                                  (lambda (_%$%hd241695242415%_
                                           _%$%args241701242417%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd241695242415%_))
                                        (let ((_%$%e241698242419%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd241695242415%_))))
                                          (let ((_%$%lp-tl241700242424%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e241698242419%_)))
                                                (_%$%lp-hd241699242422%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e241698242419%_))))
                                            (_%$%loop241697242412%_
                                             _%$%lp-tl241700242424%_
                                             (cons _%$%lp-hd241699242422%_
                                                   _%$%args241701242417%_))))
                                        (let ((_%$%args241702242427%_
                                               (reverse _%$%args241701242417%_)))
                                          (let ((_%$%g241650242429%_
                                                 _%$%args241702242427%_)
                                                (_%$%g241651242430%_
                                                 _%$%hd241692242402%_)
                                                (_%$%g241652242431%_
                                                 _%$%hd241683242378%_)
                                                (_%$%g241653242432%_
                                                 _%$%hd241674242354%_)
                                                (_%$%g241654242433%_
                                                 _%$%hd241665242330%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g241654242433%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g241653242432%_
                                                        'call-method))
                                                     (let ((__tmp248274
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self241594%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g241652242431%_
                                                        __tmp248274)))
                                                (_%__kont247587247588%_
                                                 _%$%g241650242429%_
                                                 _%$%g241651242430%_
                                                 _%$%g241652242431%_
                                                 _%$%g241653242432%_
                                                 _%$%g241654242433%_)
                                                (_%__kont247599247600%_))))))))
                          (_%$%loop241697242412%_
                           _%$%target241694242407%_
                           '()))))
                     (_%__match247754247755%_
                      (lambda (_%$%e241655242303%_
                               _%$%hd241656242306%_
                               _%$%tl241657242308%_
                               _%$%e241658242311%_
                               _%$%hd241659242314%_
                               _%$%tl241660242316%_
                               _%$%e241661242319%_
                               _%$%hd241662242322%_
                               _%$%tl241663242324%_
                               _%$%e241664242327%_
                               _%$%hd241665242330%_
                               _%$%tl241666242332%_
                               _%$%e241667242335%_
                               _%$%hd241668242338%_
                               _%$%tl241669242340%_
                               _%$%e241670242343%_
                               _%$%hd241671242346%_
                               _%$%tl241672242348%_
                               _%$%e241673242351%_
                               _%$%hd241674242354%_
                               _%$%tl241675242356%_
                               _%$%e241676242359%_
                               _%$%hd241677242362%_
                               _%$%tl241678242364%_
                               _%$%e241679242367%_
                               _%$%hd241680242370%_
                               _%$%tl241681242372%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%$%hd241680242370%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl241681242372%_))
                                (let ((_%$%e241682242375%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl241681242372%_))))
                                  (let ((_%$%tl241684242380%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e241682242375%_)))
                                        (_%$%hd241683242378%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e241682242375%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl241684242380%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl241678242364%_))
                                            (let ((_%$%e241685242383%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl241678242364%_))))
                                              (let ((_%$%tl241687242388%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e241685242383%_)))
                                                    (_%$%hd241686242386%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e241685242383%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd241686242386%_))
                                                    (let ((_%$%e241688242391%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd241686242386%_))))
                                                      (let ((_%$%tl241690242396%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e241688242391%_)))
                    (_%$%hd241689242394%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e241688242391%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd241689242394%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%$%hd241689242394%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl241690242396%_))
                            (let ((_%$%e241691242399%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl241690242396%_))))
                              (let ((_%$%tl241693242404%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e241691242399%_)))
                                    (_%$%hd241692242402%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e241691242399%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl241693242404%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl241687242388%_))
                                        (let ((_%__splice247589247590%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl241687242388%_
                                                  '0))))
                                          (let ((_%$%tl241696242409%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice247589247590%_
                                                    '1)))
                                                (_%$%target241694242407%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice247589247590%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl241696242409%_))
                                                (_%__match247796247797%_
                                                 _%$%e241655242303%_
                                                 _%$%hd241656242306%_
                                                 _%$%tl241657242308%_
                                                 _%$%e241658242311%_
                                                 _%$%hd241659242314%_
                                                 _%$%tl241660242316%_
                                                 _%$%e241661242319%_
                                                 _%$%hd241662242322%_
                                                 _%$%tl241663242324%_
                                                 _%$%e241664242327%_
                                                 _%$%hd241665242330%_
                                                 _%$%tl241666242332%_
                                                 _%$%e241667242335%_
                                                 _%$%hd241668242338%_
                                                 _%$%tl241669242340%_
                                                 _%$%e241670242343%_
                                                 _%$%hd241671242346%_
                                                 _%$%tl241672242348%_
                                                 _%$%e241673242351%_
                                                 _%$%hd241674242354%_
                                                 _%$%tl241675242356%_
                                                 _%$%e241676242359%_
                                                 _%$%hd241677242362%_
                                                 _%$%tl241678242364%_
                                                 _%$%e241679242367%_
                                                 _%$%hd241680242370%_
                                                 _%$%tl241681242372%_
                                                 _%$%e241682242375%_
                                                 _%$%hd241683242378%_
                                                 _%$%tl241684242380%_
                                                 _%$%e241685242383%_
                                                 _%$%hd241686242386%_
                                                 _%$%tl241687242388%_
                                                 _%$%e241688242391%_
                                                 _%$%hd241689242394%_
                                                 _%$%tl241690242396%_
                                                 _%$%e241691242399%_
                                                 _%$%hd241692242402%_
                                                 _%$%tl241693242404%_
                                                 _%__splice247589247590%_
                                                 _%$%target241694242407%_
                                                 _%$%tl241696242409%_)
                                                (_%__kont247599247600%_))))
                                        (_%__kont247599247600%_))
                                    (_%__kont247599247600%_))))
                            (_%__kont247599247600%_))
                        (_%__kont247599247600%_))
                    (_%__kont247599247600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont247599247600%_))))
                                            (_%__match248078248079%_
                                             _%$%e241655242303%_
                                             _%$%hd241656242306%_
                                             _%$%tl241657242308%_
                                             _%$%e241658242311%_
                                             _%$%hd241659242314%_
                                             _%$%tl241660242316%_
                                             _%$%e241661242319%_
                                             _%$%hd241662242322%_
                                             _%$%tl241663242324%_
                                             _%$%e241664242327%_
                                             _%$%hd241665242330%_
                                             _%$%tl241666242332%_
                                             _%$%e241667242335%_
                                             _%$%hd241668242338%_
                                             _%$%tl241669242340%_
                                             _%$%e241670242343%_
                                             _%$%hd241671242346%_
                                             _%$%tl241672242348%_
                                             _%$%e241673242351%_
                                             _%$%hd241674242354%_
                                             _%$%tl241675242356%_
                                             _%$%e241676242359%_
                                             _%$%hd241677242362%_
                                             _%$%tl241678242364%_))
                                        (_%__match248078248079%_
                                         _%$%e241655242303%_
                                         _%$%hd241656242306%_
                                         _%$%tl241657242308%_
                                         _%$%e241658242311%_
                                         _%$%hd241659242314%_
                                         _%$%tl241660242316%_
                                         _%$%e241661242319%_
                                         _%$%hd241662242322%_
                                         _%$%tl241663242324%_
                                         _%$%e241664242327%_
                                         _%$%hd241665242330%_
                                         _%$%tl241666242332%_
                                         _%$%e241667242335%_
                                         _%$%hd241668242338%_
                                         _%$%tl241669242340%_
                                         _%$%e241670242343%_
                                         _%$%hd241671242346%_
                                         _%$%tl241672242348%_
                                         _%$%e241673242351%_
                                         _%$%hd241674242354%_
                                         _%$%tl241675242356%_
                                         _%$%e241676242359%_
                                         _%$%hd241677242362%_
                                         _%$%tl241678242364%_))))
                                (_%__match248078248079%_
                                 _%$%e241655242303%_
                                 _%$%hd241656242306%_
                                 _%$%tl241657242308%_
                                 _%$%e241658242311%_
                                 _%$%hd241659242314%_
                                 _%$%tl241660242316%_
                                 _%$%e241661242319%_
                                 _%$%hd241662242322%_
                                 _%$%tl241663242324%_
                                 _%$%e241664242327%_
                                 _%$%hd241665242330%_
                                 _%$%tl241666242332%_
                                 _%$%e241667242335%_
                                 _%$%hd241668242338%_
                                 _%$%tl241669242340%_
                                 _%$%e241670242343%_
                                 _%$%hd241671242346%_
                                 _%$%tl241672242348%_
                                 _%$%e241673242351%_
                                 _%$%hd241674242354%_
                                 _%$%tl241675242356%_
                                 _%$%e241676242359%_
                                 _%$%hd241677242362%_
                                 _%$%tl241678242364%_))
                            (_%__match247864247865%_
                             _%$%e241655242303%_
                             _%$%hd241656242306%_
                             _%$%tl241657242308%_
                             _%$%e241658242311%_
                             _%$%hd241659242314%_
                             _%$%tl241660242316%_
                             _%$%e241661242319%_
                             _%$%hd241662242322%_
                             _%$%tl241663242324%_
                             _%$%e241664242327%_
                             _%$%hd241665242330%_
                             _%$%tl241666242332%_
                             _%$%e241667242335%_
                             _%$%hd241668242338%_
                             _%$%tl241669242340%_
                             _%$%e241670242343%_
                             _%$%hd241671242346%_
                             _%$%tl241672242348%_
                             _%$%e241673242351%_
                             _%$%hd241674242354%_
                             _%$%tl241675242356%_
                             _%$%e241676242359%_
                             _%$%hd241677242362%_
                             _%$%tl241678242364%_
                             _%$%e241679242367%_
                             _%$%hd241680242370%_
                             _%$%tl241681242372%_))))
                     (_%__match247686247687%_
                      (lambda (_%$%e241611242493%_
                               _%$%hd241612242496%_
                               _%$%tl241613242498%_
                               _%$%e241614242501%_
                               _%$%hd241615242504%_
                               _%$%tl241616242506%_
                               _%$%e241617242509%_
                               _%$%hd241618242512%_
                               _%$%tl241619242514%_
                               _%$%e241620242517%_
                               _%$%hd241621242520%_
                               _%$%tl241622242522%_
                               _%$%e241623242525%_
                               _%$%hd241624242528%_
                               _%$%tl241625242530%_
                               _%$%e241626242533%_
                               _%$%hd241627242536%_
                               _%$%tl241628242538%_
                               _%$%e241629242541%_
                               _%$%hd241630242544%_
                               _%$%tl241631242546%_
                               _%$%e241632242549%_
                               _%$%hd241633242552%_
                               _%$%tl241634242554%_
                               _%$%e241635242557%_
                               _%$%hd241636242560%_
                               _%$%tl241637242562%_
                               _%$%e241638242565%_
                               _%$%hd241639242568%_
                               _%$%tl241640242570%_
                               _%__splice247585247586%_
                               _%$%target241641242573%_
                               _%$%tl241643242575%_)
                        (letrec ((_%$%loop241644242578%_
                                  (lambda (_%$%hd241642242581%_
                                           _%$%args241648242583%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd241642242581%_))
                                        (let ((_%$%e241645242585%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd241642242581%_))))
                                          (let ((_%$%lp-tl241647242590%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e241645242585%_)))
                                                (_%$%lp-hd241646242588%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e241645242585%_))))
                                            (_%$%loop241644242578%_
                                             _%$%lp-tl241647242590%_
                                             (cons _%$%lp-hd241646242588%_
                                                   _%$%args241648242583%_))))
                                        (let ((_%$%args241649242593%_
                                               (reverse _%$%args241648242583%_)))
                                          (let ((_%$%g241607242595%_
                                                 _%$%args241649242593%_)
                                                (_%$%g241608242596%_
                                                 _%$%hd241639242568%_)
                                                (_%$%g241609242597%_
                                                 _%$%hd241630242544%_)
                                                (_%$%g241610242598%_
                                                 _%$%hd241621242520%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g241610242598%_
                                                        'call-method))
                                                     (let ((__tmp248275
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self241594%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g241609242597%_
                                                        __tmp248275)))
                                                (_%__kont247583247584%_
                                                 _%$%g241607242595%_
                                                 _%$%g241608242596%_
                                                 _%$%g241609242597%_
                                                 _%$%g241610242598%_)
                                                (_%__match247874247875%_
                                                 _%$%e241611242493%_
                                                 _%$%hd241612242496%_
                                                 _%$%tl241613242498%_
                                                 _%$%e241614242501%_
                                                 _%$%hd241615242504%_
                                                 _%$%tl241616242506%_
                                                 _%$%e241617242509%_
                                                 _%$%hd241618242512%_
                                                 _%$%tl241619242514%_
                                                 _%$%e241620242517%_
                                                 _%$%hd241621242520%_
                                                 _%$%tl241622242522%_
                                                 _%$%e241623242525%_
                                                 _%$%hd241624242528%_
                                                 _%$%tl241625242530%_
                                                 _%$%e241626242533%_
                                                 _%$%hd241627242536%_
                                                 _%$%tl241628242538%_
                                                 _%$%e241629242541%_
                                                 _%$%hd241630242544%_
                                                 _%$%tl241631242546%_
                                                 _%$%e241632242549%_
                                                 _%$%hd241633242552%_
                                                 _%$%tl241634242554%_
                                                 _%$%e241635242557%_
                                                 _%$%hd241636242560%_
                                                 _%$%tl241637242562%_
                                                 _%$%e241638242565%_
                                                 _%$%hd241639242568%_
                                                 _%$%tl241640242570%_))))))))
                          (_%$%loop241644242578%_
                           _%$%target241641242573%_
                           '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx247581247582%_))
                    (let ((_%$%e241611242493%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx247581247582%_))))
                      (let ((_%$%tl241613242498%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e241611242493%_)))
                            (_%$%hd241612242496%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e241611242493%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl241613242498%_))
                            (let ((_%$%e241614242501%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl241613242498%_))))
                              (let ((_%$%tl241616242506%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e241614242501%_)))
                                    (_%$%hd241615242504%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e241614242501%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd241615242504%_))
                                    (let ((_%$%e241617242509%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd241615242504%_))))
                                      (let ((_%$%tl241619242514%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e241617242509%_)))
                                            (_%$%hd241618242512%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e241617242509%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd241618242512%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd241618242512%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl241619242514%_))
                                                    (let ((_%$%e241620242517%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl241619242514%_))))
                                                      (let ((_%$%tl241622242522%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e241620242517%_)))
                    (_%$%hd241621242520%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e241620242517%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl241622242522%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl241616242506%_))
                        (let ((_%$%e241623242525%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl241616242506%_))))
                          (let ((_%$%tl241625242530%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e241623242525%_)))
                                (_%$%hd241624242528%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e241623242525%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd241624242528%_))
                                (let ((_%$%e241626242533%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd241624242528%_))))
                                  (let ((_%$%tl241628242538%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e241626242533%_)))
                                        (_%$%hd241627242536%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e241626242533%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd241627242536%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%$%hd241627242536%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl241628242538%_))
                                                (let ((_%$%e241629242541%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl241628242538%_))))
                                                  (let ((_%$%tl241631242546%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e241629242541%_)))
                                                        (_%$%hd241630242544%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e241629242541%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl241631242546%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl241625242530%_))
                                                            (let ((_%$%e241632242549%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl241625242530%_))))
                      (let ((_%$%tl241634242554%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e241632242549%_)))
                            (_%$%hd241633242552%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e241632242549%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd241633242552%_))
                            (let ((_%$%e241635242557%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd241633242552%_))))
                              (let ((_%$%tl241637242562%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e241635242557%_)))
                                    (_%$%hd241636242560%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e241635242557%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd241636242560%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd241636242560%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl241637242562%_))
                                            (let ((_%$%e241638242565%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl241637242562%_))))
                                              (let ((_%$%tl241640242570%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e241638242565%_)))
                                                    (_%$%hd241639242568%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e241638242565%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl241640242570%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl241634242554%_))
                                                        (let ((_%__splice247585247586%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl241634242554%_
                          '0))))
                  (let ((_%$%tl241643242575%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice247585247586%_ '1)))
                        (_%$%target241641242573%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice247585247586%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl241643242575%_))
                        (_%__match247686247687%_
                         _%$%e241611242493%_
                         _%$%hd241612242496%_
                         _%$%tl241613242498%_
                         _%$%e241614242501%_
                         _%$%hd241615242504%_
                         _%$%tl241616242506%_
                         _%$%e241617242509%_
                         _%$%hd241618242512%_
                         _%$%tl241619242514%_
                         _%$%e241620242517%_
                         _%$%hd241621242520%_
                         _%$%tl241622242522%_
                         _%$%e241623242525%_
                         _%$%hd241624242528%_
                         _%$%tl241625242530%_
                         _%$%e241626242533%_
                         _%$%hd241627242536%_
                         _%$%tl241628242538%_
                         _%$%e241629242541%_
                         _%$%hd241630242544%_
                         _%$%tl241631242546%_
                         _%$%e241632242549%_
                         _%$%hd241633242552%_
                         _%$%tl241634242554%_
                         _%$%e241635242557%_
                         _%$%hd241636242560%_
                         _%$%tl241637242562%_
                         _%$%e241638242565%_
                         _%$%hd241639242568%_
                         _%$%tl241640242570%_
                         _%__splice247585247586%_
                         _%$%target241641242573%_
                         _%$%tl241643242575%_)
                        (_%__match247874247875%_
                         _%$%e241611242493%_
                         _%$%hd241612242496%_
                         _%$%tl241613242498%_
                         _%$%e241614242501%_
                         _%$%hd241615242504%_
                         _%$%tl241616242506%_
                         _%$%e241617242509%_
                         _%$%hd241618242512%_
                         _%$%tl241619242514%_
                         _%$%e241620242517%_
                         _%$%hd241621242520%_
                         _%$%tl241622242522%_
                         _%$%e241623242525%_
                         _%$%hd241624242528%_
                         _%$%tl241625242530%_
                         _%$%e241626242533%_
                         _%$%hd241627242536%_
                         _%$%tl241628242538%_
                         _%$%e241629242541%_
                         _%$%hd241630242544%_
                         _%$%tl241631242546%_
                         _%$%e241632242549%_
                         _%$%hd241633242552%_
                         _%$%tl241634242554%_
                         _%$%e241635242557%_
                         _%$%hd241636242560%_
                         _%$%tl241637242562%_
                         _%$%e241638242565%_
                         _%$%hd241639242568%_
                         _%$%tl241640242570%_))))
                (_%__match247874247875%_
                 _%$%e241611242493%_
                 _%$%hd241612242496%_
                 _%$%tl241613242498%_
                 _%$%e241614242501%_
                 _%$%hd241615242504%_
                 _%$%tl241616242506%_
                 _%$%e241617242509%_
                 _%$%hd241618242512%_
                 _%$%tl241619242514%_
                 _%$%e241620242517%_
                 _%$%hd241621242520%_
                 _%$%tl241622242522%_
                 _%$%e241623242525%_
                 _%$%hd241624242528%_
                 _%$%tl241625242530%_
                 _%$%e241626242533%_
                 _%$%hd241627242536%_
                 _%$%tl241628242538%_
                 _%$%e241629242541%_
                 _%$%hd241630242544%_
                 _%$%tl241631242546%_
                 _%$%e241632242549%_
                 _%$%hd241633242552%_
                 _%$%tl241634242554%_
                 _%$%e241635242557%_
                 _%$%hd241636242560%_
                 _%$%tl241637242562%_
                 _%$%e241638242565%_
                 _%$%hd241639242568%_
                 _%$%tl241640242570%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match248078248079%_
                                                     _%$%e241611242493%_
                                                     _%$%hd241612242496%_
                                                     _%$%tl241613242498%_
                                                     _%$%e241614242501%_
                                                     _%$%hd241615242504%_
                                                     _%$%tl241616242506%_
                                                     _%$%e241617242509%_
                                                     _%$%hd241618242512%_
                                                     _%$%tl241619242514%_
                                                     _%$%e241620242517%_
                                                     _%$%hd241621242520%_
                                                     _%$%tl241622242522%_
                                                     _%$%e241623242525%_
                                                     _%$%hd241624242528%_
                                                     _%$%tl241625242530%_
                                                     _%$%e241626242533%_
                                                     _%$%hd241627242536%_
                                                     _%$%tl241628242538%_
                                                     _%$%e241629242541%_
                                                     _%$%hd241630242544%_
                                                     _%$%tl241631242546%_
                                                     _%$%e241632242549%_
                                                     _%$%hd241633242552%_
                                                     _%$%tl241634242554%_))))
                                            (_%__match248078248079%_
                                             _%$%e241611242493%_
                                             _%$%hd241612242496%_
                                             _%$%tl241613242498%_
                                             _%$%e241614242501%_
                                             _%$%hd241615242504%_
                                             _%$%tl241616242506%_
                                             _%$%e241617242509%_
                                             _%$%hd241618242512%_
                                             _%$%tl241619242514%_
                                             _%$%e241620242517%_
                                             _%$%hd241621242520%_
                                             _%$%tl241622242522%_
                                             _%$%e241623242525%_
                                             _%$%hd241624242528%_
                                             _%$%tl241625242530%_
                                             _%$%e241626242533%_
                                             _%$%hd241627242536%_
                                             _%$%tl241628242538%_
                                             _%$%e241629242541%_
                                             _%$%hd241630242544%_
                                             _%$%tl241631242546%_
                                             _%$%e241632242549%_
                                             _%$%hd241633242552%_
                                             _%$%tl241634242554%_))
                                        (_%__match247754247755%_
                                         _%$%e241611242493%_
                                         _%$%hd241612242496%_
                                         _%$%tl241613242498%_
                                         _%$%e241614242501%_
                                         _%$%hd241615242504%_
                                         _%$%tl241616242506%_
                                         _%$%e241617242509%_
                                         _%$%hd241618242512%_
                                         _%$%tl241619242514%_
                                         _%$%e241620242517%_
                                         _%$%hd241621242520%_
                                         _%$%tl241622242522%_
                                         _%$%e241623242525%_
                                         _%$%hd241624242528%_
                                         _%$%tl241625242530%_
                                         _%$%e241626242533%_
                                         _%$%hd241627242536%_
                                         _%$%tl241628242538%_
                                         _%$%e241629242541%_
                                         _%$%hd241630242544%_
                                         _%$%tl241631242546%_
                                         _%$%e241632242549%_
                                         _%$%hd241633242552%_
                                         _%$%tl241634242554%_
                                         _%$%e241635242557%_
                                         _%$%hd241636242560%_
                                         _%$%tl241637242562%_))
                                    (_%__match248078248079%_
                                     _%$%e241611242493%_
                                     _%$%hd241612242496%_
                                     _%$%tl241613242498%_
                                     _%$%e241614242501%_
                                     _%$%hd241615242504%_
                                     _%$%tl241616242506%_
                                     _%$%e241617242509%_
                                     _%$%hd241618242512%_
                                     _%$%tl241619242514%_
                                     _%$%e241620242517%_
                                     _%$%hd241621242520%_
                                     _%$%tl241622242522%_
                                     _%$%e241623242525%_
                                     _%$%hd241624242528%_
                                     _%$%tl241625242530%_
                                     _%$%e241626242533%_
                                     _%$%hd241627242536%_
                                     _%$%tl241628242538%_
                                     _%$%e241629242541%_
                                     _%$%hd241630242544%_
                                     _%$%tl241631242546%_
                                     _%$%e241632242549%_
                                     _%$%hd241633242552%_
                                     _%$%tl241634242554%_))))
                            (_%__match248078248079%_
                             _%$%e241611242493%_
                             _%$%hd241612242496%_
                             _%$%tl241613242498%_
                             _%$%e241614242501%_
                             _%$%hd241615242504%_
                             _%$%tl241616242506%_
                             _%$%e241617242509%_
                             _%$%hd241618242512%_
                             _%$%tl241619242514%_
                             _%$%e241620242517%_
                             _%$%hd241621242520%_
                             _%$%tl241622242522%_
                             _%$%e241623242525%_
                             _%$%hd241624242528%_
                             _%$%tl241625242530%_
                             _%$%e241626242533%_
                             _%$%hd241627242536%_
                             _%$%tl241628242538%_
                             _%$%e241629242541%_
                             _%$%hd241630242544%_
                             _%$%tl241631242546%_
                             _%$%e241632242549%_
                             _%$%hd241633242552%_
                             _%$%tl241634242554%_))))
                    (_%__match248016248017%_
                     _%$%e241611242493%_
                     _%$%hd241612242496%_
                     _%$%tl241613242498%_
                     _%$%e241614242501%_
                     _%$%hd241615242504%_
                     _%$%tl241616242506%_
                     _%$%e241617242509%_
                     _%$%hd241618242512%_
                     _%$%tl241619242514%_
                     _%$%e241620242517%_
                     _%$%hd241621242520%_
                     _%$%tl241622242522%_
                     _%$%e241623242525%_
                     _%$%hd241624242528%_
                     _%$%tl241625242530%_
                     _%$%e241626242533%_
                     _%$%hd241627242536%_
                     _%$%tl241628242538%_
                     _%$%e241629242541%_
                     _%$%hd241630242544%_
                     _%$%tl241631242546%_))
                (_%__kont247599247600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont247599247600%_))
                                            (_%__kont247599247600%_))
                                        (_%__kont247599247600%_))))
                                (_%__kont247599247600%_))))
                        (_%__kont247599247600%_))
                    (_%__kont247599247600%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont247599247600%_))
                                                (_%__kont247599247600%_))
                                            (_%__kont247599247600%_))))
                                    (_%__kont247599247600%_))))
                            (_%__kont247599247600%_))))
                    (_%__kont247599247600%_))))))))))
