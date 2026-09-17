(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1789552489)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp250156 (list gxc#::identity::t))
            (__tmp250155 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp250156
         '()
         __tmp250155
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args248953%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args248953%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp250157
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
        (__make-atomic-promise __tmp250157)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx248945%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self248948%_
                (let ((__obj250148
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj250148))
               (__tmp250158
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self248948%_ _%stx248945%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp250158
           gxc#current-compile-method
           _%self248948%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp250160 (list gxc#::false::t))
            (__tmp250159 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp250160
         '()
         __tmp250159
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args248942%_
        (apply make-instance gxc#::extract-receiver::t _%$args248942%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp250161
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
        (__make-atomic-promise __tmp250161)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx248934%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self248937%_
                (let ((__obj250150
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj250150))
               (__tmp250162
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self248937%_ _%stx248934%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp250162
           gxc#current-compile-method
           _%self248937%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp250164 (list gxc#::void::t))
            (__tmp250163 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp250164
         '(receiver methods slots)
         __tmp250163
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args248931%_
        (apply make-instance gxc#::collect-object-refs::t _%$args248931%_)))
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
      (let ((__tmp250165
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
        (__make-atomic-promise __tmp250165)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords248900%_
               _%$%receiver248895248901%_
               _%$%methods248896248902%_
               _%$%slots248897248903%_
               _%stx248904%_)
        (let* ((_%receiver248907%_
                (if (eq? _%$%receiver248895248901%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver248895248901%_))
               (_%methods248909%_
                (if (eq? _%$%methods248896248902%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods248896248902%_))
               (_%slots248911%_
                (if (eq? _%$%slots248897248903%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots248897248903%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self248913%_
                  (let ((__obj250152
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
                       __obj250152
                       _%receiver248907%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250152
                       _%methods248909%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250152
                       _%slots248911%_
                       '3
                       '#f
                       '#f))
                    __obj250152))
                 (__tmp250166
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self248913%_ _%stx248904%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp250166
             gxc#current-compile-method
             _%self248913%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords248920%_ . _%args248921%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords248920%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords248920%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords248920%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords248920%_
                  'slots:
                  absent-value))
               _%args248921%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%$%args248898248927%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%$%args248898248927%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp250168 (list gxc#::basic-xform-expression::t))
            (__tmp250167 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp250168
         '(receiver klass methods slots)
         __tmp250167
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args248891%_
        (apply make-instance gxc#::subst-object-refs::t _%$args248891%_)))
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
      (let ((__tmp250169
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
        (__make-atomic-promise __tmp250169)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords248857%_
               _%$%receiver248851248858%_
               _%$%klass248852248859%_
               _%$%methods248853248860%_
               _%$%slots248854248861%_
               _%stx248862%_)
        (let* ((_%receiver248865%_
                (if (eq? _%$%receiver248851248858%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver248851248858%_))
               (_%klass248867%_
                (if (eq? _%$%klass248852248859%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%$%klass248852248859%_))
               (_%methods248869%_
                (if (eq? _%$%methods248853248860%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods248853248860%_))
               (_%slots248871%_
                (if (eq? _%$%slots248854248861%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots248854248861%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self248873%_
                  (let ((__obj250154
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
                       __obj250154
                       _%receiver248865%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250154
                       _%klass248867%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250154
                       _%methods248869%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj250154
                       _%slots248871%_
                       '4
                       '#f
                       '#f))
                    __obj250154))
                 (__tmp250170
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self248873%_ _%stx248862%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp250170
             gxc#current-compile-method
             _%self248873%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords248880%_ . _%args248881%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords248880%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords248880%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords248880%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords248880%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords248880%_
                  'slots:
                  absent-value))
               _%args248881%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%$%args248855248887%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%$%args248855248887%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self245982%_ _%stx245983%_)
        (letrec ((_%generate-method-bind245985%_
                  (lambda (_%$klass248843%_
                           _%$method-table248844%_
                           _%id248845%_
                           _%$id248846%_)
                    (let ((_%$tmp248848%_
                           (let ((__tmp250171
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp250171))))
                      (cons (cons _%$id248846%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp248848%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table248844%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id248845%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp248848%_ '()))
                    (cons (cons '%#ref (cons _%$tmp248848%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id248845%_
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
                 (_%generate-slot-bind245986%_
                  (lambda (_%$klass248837%_ _%id248838%_ _%$id248839%_)
                    (let ((_%$tmp248841%_
                           (let ((__tmp250172
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp250172))))
                      (cons (cons _%$id248839%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp248841%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass248837%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id248838%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp248841%_ '()))
                        (cons (cons '%#ref (cons _%$tmp248841%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id248838%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl245987%_
                  (lambda (_%$klass248831%_
                           _%$method-table248832%_
                           _%methods-bind248833%_
                           _%slots-bind248834%_
                           _%specializer-impl248835%_)
                    (let ((__tmp250173
                           (cons '%#lambda
                                 (cons (cons _%$klass248831%_
                                             (cons _%$method-table248832%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (append _%methods-bind248833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%slots-bind248834%_)
                 (cons _%specializer-impl248835%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp250173 _%stx245983%_))))
                 (_%generate-specializer-def245988%_
                  (lambda (_%id248827%_
                           _%specializer-id248828%_
                           _%specializer-impl248829%_)
                    (let ((__tmp250174
                           (cons '%#begin
                                 (cons _%stx245983%_
                                       (cons (let ((__tmp250175
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id248828%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl248829%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp250175
                                                _%stx245983%_))
                                             (cons (let ((__tmp250176
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id248827%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id248828%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp250176
                                                      _%stx245983%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp250174 _%stx245983%_)))))
          (let* ((_%__stx249042249043%_ _%stx245983%_)
                 (_%$%g245991246011%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx249042249043%_)))))
            (let ((_%__kont249044249045%_
                   (lambda (_%$%g245993246055%_ _%$%g245994246056%_)
                     (let ((_%method-calls246075%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs246076%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty246077%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?246079%_
                                 (lambda ()
                                   (if (let ((__tmp250177
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls246075%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp250177))
                                       (let ((__tmp250178
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs246076%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp250178))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%$%g245993246055%_))
                             (let* ((_%__stx248956248957%_ _%$%g245993246055%_)
                                    (_%$%g246463246481%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx248956248957%_)))))
                               (let ((_%__kont248958248959%_
                                      (lambda (_%$%g246465246517%_
                                               _%$%g246466246518%_
                                               _%$%g246467246519%_)
                                        (let ((_%receiver246539%_
                                               (let ((_%$e246536%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%g246465246517%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e246536%_
                                                     _%$e246536%_
                                                     _%$%g246467246519%_))))
                                          (for-each
                                           (lambda (_%$%g246540246542%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver246539%_
                                              _%method-calls246075%_
                                              _%slot-refs246076%_
                                              _%$%g246540246542%_))
                                           _%$%g246465246517%_)
                                          (if (_%no-specializer?246079%_)
                                              _%stx245983%_
                                              (let* ((_%specializer-id246551%_
                                                      (let* ((_%id246545%_
                                                              (let ((__tmp250179
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g245994246056%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp250179 '"::specialize")))
                     (_%specializer-id246548%_
                      (let ((__tmp250180
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx245983%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id246545%_ __tmp250180))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id246548%_))
                _%specializer-id246548%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass246553%_
                                                      (let ((__tmp250181
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp250181)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table246555%_
                                                      (let ((__tmp250182
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp250182)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods246557%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls246075%_)))
                                                     (_%$methods246561%_
                                                      (let ((__tmp250183
                                                             (lambda (_%id246559%_)
                                                               (let ((__tmp250184
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id246559%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp250184)))))
                (declare (not safe))
                (##map __tmp250183 _%methods246557%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_246570%_
                                                      (let ((__tmp250185
                                                             (lambda (_%$%g246562246565%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g246563246567%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls246075%_
                          _%$%g246562246565%_
                          _%$%g246563246567%_)))))
                (declare (not safe))
                (##for-each __tmp250185 _%methods246557%_ _%$methods246561%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind246580%_
                                                      (let ((__tmp250186
                                                             (lambda (_%$%g246572246575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g246573246577%_)
                       (_%generate-method-bind245985%_
                        _%$klass246553%_
                        _%$method-table246555%_
                        _%$%g246572246575%_
                        _%$%g246573246577%_))))
                (declare (not safe))
                (##map __tmp250186 _%methods246557%_ _%$methods246561%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots246582%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs246076%_)))
                                                     (_%$slots246586%_
                                                      (let ((__tmp250187
                                                             (lambda (_%id246584%_)
                                                               (let ((__tmp250188
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id246584%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp250188)))))
                (declare (not safe))
                (##map __tmp250187 _%slots246582%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_246595%_
                                                      (let ((__tmp250189
                                                             (lambda (_%$%g246587246590%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g246588246592%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs246076%_
                          _%$%g246587246590%_
                          _%$%g246588246592%_)))))
                (declare (not safe))
                (##for-each __tmp250189 _%slots246582%_ _%$slots246586%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind246604%_
                                                      (let ((__tmp250190
                                                             (lambda (_%$%g246596246599%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g246597246601%_)
                       (_%generate-slot-bind245986%_
                        _%$klass246553%_
                        _%$%g246596246599%_
                        _%$%g246597246601%_))))
                (declare (not safe))
                (##map __tmp250190 _%slots246582%_ _%$slots246586%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body246610%_
                                                      (map (lambda (_%$%g246605246607%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver246539%_
                                                              _%$klass246553%_
                                                              _%method-calls246075%_
                                                              _%slot-refs246076%_
                                                              _%$%g246605246607%_))
                                                           _%$%g246465246517%_))
                                                     (_%specializer-impl246612%_
                                                      (let ((__tmp250191
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%$%g246467246519%_ _%$%g246466246518%_)
                                 _%specializer-body246610%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp250191 _%stx245983%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl246614%_
                                                      (_%generate-specializer-impl245987%_
                                                       _%$klass246553%_
                                                       _%$method-table246555%_
                                                       _%methods-bind246580%_
                                                       _%slots-bind246604%_
                                                       _%specializer-impl246612%_)))
                                                (let ((__tmp250193
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g245994246056%_)))
                                                      (__tmp250192
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id246551%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp250193
                                                   '" => "
                                                   __tmp250192))
                                                (_%generate-specializer-def245988%_
                                                 _%$%g245994246056%_
                                                 _%specializer-id246551%_
                                                 _%specializer-impl246614%_))))))
                                     (_%__kont248960248961%_
                                      (lambda () _%stx245983%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx248956248957%_))
                                     (let ((_%$%e246468246493%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx248956248957%_))))
                                       (let ((_%$%tl246470246498%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e246468246493%_)))
                                             (_%$%hd246469246496%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e246468246493%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl246470246498%_))
                                             (let ((_%$%e246471246501%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl246470246498%_))))
                                               (let ((_%$%tl246473246506%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e246471246501%_)))
                                                     (_%$%hd246472246504%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e246471246501%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%hd246472246504%_))
                                                     (let ((_%$%e246474246509%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%hd246472246504%_))))
                                                       (let ((_%$%tl246476246514%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e246474246509%_)))
                     (_%$%hd246475246512%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e246474246509%_))))
                 (_%__kont248958248959%_
                  _%$%tl246473246506%_
                  _%$%tl246476246514%_
                  _%$%hd246475246512%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont248960248961%_))))
                                             (_%__kont248960248961%_))))
                                     (_%__kont248960248961%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%$%g245993246055%_))
                                 (let* ((_%$%g246621246640%_
                                         (lambda (_%$%g246622246637%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g246622246637%_))))
                                        (_%$%g246620246936%_
                                         (lambda (_%$%g246622246643%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%g246622246643%_))
                                               (let ((_%$%e246624246645%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g246622246643%_))))
                                                 (let ((_%$%hd246625246648%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e246624246645%_)))
                                                       (_%$%tl246626246650%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e246624246645%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%$%tl246626246650%_))
                                                       (let ((_g250194_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%$%tl246626246650%_ '0))))
                 (begin
                   (let ((_g250195_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g250194_)
                                (##values-length _g250194_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g250195_ 2)))
                         (error "Context expects 2 values" _g250195_)))
                   (let ((_%$%target246627246653%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g250194_ 0)))
                         (_%$%tl246629246655%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g250194_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl246629246655%_))
                         (letrec ((_%$%loop246630246658%_
                                   (lambda (_%$%hd246628246661%_
                                            _%$%clause246634246663%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd246628246661%_))
                                         (let ((_%$%e246631246665%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd246628246661%_))))
                                           (let ((_%$%lp-hd246632246668%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e246631246665%_)))
                                                 (_%$%lp-tl246633246670%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e246631246665%_))))
                                             (_%$%loop246630246658%_
                                              _%$%lp-tl246633246670%_
                                              (cons _%$%lp-hd246632246668%_
                                                    _%$%clause246634246663%_))))
                                         (let ((_%$%clause246635246673%_
                                                (reverse _%$%clause246634246663%_)))
                                           (for-each
                                            (lambda (_%clause246689%_)
                                              (let* ((_%__stx248982248983%_
                                                      _%clause246689%_)
                                                     (_%$%g246692246707%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx248982248983%_)))))
                                                (let ((_%__kont248984248985%_
                                                       (lambda (_%$%g246694246735%_
                                                                _%$%g246695246736%_
                                                                _%$%g246696246737%_)
                                                         (let ((_%receiver246756%_
                                                                (let ((_%$e246753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gxc#apply-extract-receiver
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f '%#begin))
                                      _%$%g246694246735%_))))
                          (if _%$e246753%_ _%$e246753%_ _%$%g246696246737%_))))
                   (for-each
                    (lambda (_%$%g246757246759%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver246756%_
                       _%method-calls246075%_
                       _%slot-refs246076%_
                       _%$%g246757246759%_))
                    _%$%g246694246735%_))))
              (_%__kont248986248987%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx248982248983%_))
                                                      (let ((_%$%e246697246719%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx248982248983%_))))
                (let ((_%$%tl246699246724%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e246697246719%_)))
                      (_%$%hd246698246722%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e246697246719%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd246698246722%_))
                      (let ((_%$%e246700246727%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd246698246722%_))))
                        (let ((_%$%tl246702246732%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e246700246727%_)))
                              (_%$%hd246701246730%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e246700246727%_))))
                          (_%__kont248984248985%_
                           _%$%tl246699246724%_
                           _%$%tl246702246732%_
                           _%$%hd246701246730%_)))
                      '#!void)))
              '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((__tmp250196
                                                   (lambda (_%$%g246764246767%_
                                                            _%$%g246765246769%_)
                                                     (cons _%$%g246764246767%_
                                                           _%$%g246765246769%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp250196
                                               '()
                                               _%$%clause246635246673%_)))
                                           (if (_%no-specializer?246079%_)
                                               _%stx245983%_
                                               (let* ((_%specializer-id246778%_
                                                       (let* ((_%id246772%_
                                                               (let ((__tmp250197
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g245994246056%_))))
                         (declare (not safe))
                         (make-symbol__1 __tmp250197 '"::specialize")))
                      (_%specializer-id246775%_
                       (let ((__tmp250198
                              (let ()
                                (declare (not safe))
                                (gx#stx-source _%stx245983%_))))
                         (declare (not safe))
                         (gx#core-quote-syntax__1 _%id246772%_ __tmp250198))))
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _%specializer-id246775%_))
                 _%specializer-id246775%_))
              (_%$klass246780%_
               (let ((__tmp250199
                      (let () (declare (not safe)) (##gensym '__klass))))
                 (declare (not safe))
                 (make-symbol__0 __tmp250199)))
              (_%$method-table246782%_
               (let ((__tmp250200
                      (let ()
                        (declare (not safe))
                        (##gensym '__method-table))))
                 (declare (not safe))
                 (make-symbol__0 __tmp250200)))
              (_%methods246784%_
               (let ()
                 (declare (not safe))
                 (__hash-keys _%method-calls246075%_)))
              (_%$methods246788%_
               (let ((__tmp250201
                      (lambda (_%id246786%_)
                        (let ((__tmp250202 (gensym _%id246786%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp250202)))))
                 (declare (not safe))
                 (##map __tmp250201 _%methods246784%_)))
              (_%_246797%_
               (let ((__tmp250203
                      (lambda (_%$%g246789246792%_ _%$%g246790246794%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%method-calls246075%_
                           _%$%g246789246792%_
                           _%$%g246790246794%_)))))
                 (declare (not safe))
                 (##for-each
                  __tmp250203
                  _%methods246784%_
                  _%$methods246788%_)))
              (_%methods-bind246807%_
               (let ((__tmp250204
                      (lambda (_%$%g246799246802%_ _%$%g246800246804%_)
                        (_%generate-method-bind245985%_
                         _%$klass246780%_
                         _%$method-table246782%_
                         _%$%g246799246802%_
                         _%$%g246800246804%_))))
                 (declare (not safe))
                 (##map __tmp250204 _%methods246784%_ _%$methods246788%_)))
              (_%slots246809%_
               (let () (declare (not safe)) (__hash-keys _%slot-refs246076%_)))
              (_%$slots246813%_
               (let ((__tmp250205
                      (lambda (_%id246811%_)
                        (let ((__tmp250206 (gensym _%id246811%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp250206)))))
                 (declare (not safe))
                 (##map __tmp250205 _%slots246809%_)))
              (_%_246822%_
               (let ((__tmp250207
                      (lambda (_%$%g246814246817%_ _%$%g246815246819%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%slot-refs246076%_
                           _%$%g246814246817%_
                           _%$%g246815246819%_)))))
                 (declare (not safe))
                 (##for-each __tmp250207 _%slots246809%_ _%$slots246813%_)))
              (_%slots-bind246831%_
               (let ((__tmp250208
                      (lambda (_%$%g246823246826%_ _%$%g246824246828%_)
                        (_%generate-slot-bind245986%_
                         _%$klass246780%_
                         _%$%g246823246826%_
                         _%$%g246824246828%_))))
                 (declare (not safe))
                 (##map __tmp250208 _%slots246809%_ _%$slots246813%_)))
              (_%specializer-clauses246929%_
               (map (lambda (_%clause246833%_)
                      (let* ((_%__stx249002249003%_ _%clause246833%_)
                             (_%$%g246836246851%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx249002249003%_)))))
                        (let ((_%__kont249004249005%_
                               (lambda (_%$%g246838246879%_
                                        _%$%g246839246880%_
                                        _%$%g246840246881%_)
                                 (let* ((_%receiver246910%_
                                         (let ((_%$e246907%_
                                                (gxc#apply-extract-receiver
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#begin))
                                                       _%$%g246838246879%_))))
                                           (if _%$e246907%_
                                               _%$e246907%_
                                               _%$%g246840246881%_)))
                                        (_%body246916%_
                                         (map (lambda (_%$%g246911246913%_)
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%receiver246910%_
                                                 _%$klass246780%_
                                                 _%method-calls246075%_
                                                 _%slot-refs246076%_
                                                 _%$%g246911246913%_))
                                              _%$%g246838246879%_)))
                                   (cons (cons _%$%g246840246881%_
                                               _%$%g246839246880%_)
                                         _%body246916%_))))
                              (_%__kont249006249007%_
                               (lambda () _%clause246833%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx249002249003%_))
                              (let ((_%$%e246841246863%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx249002249003%_))))
                                (let ((_%$%tl246843246868%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e246841246863%_)))
                                      (_%$%hd246842246866%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e246841246863%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd246842246866%_))
                                      (let ((_%$%e246844246871%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd246842246866%_))))
                                        (let ((_%$%tl246846246876%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e246844246871%_)))
                                              (_%$%hd246845246874%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e246844246871%_))))
                                          (_%__kont249004249005%_
                                           _%$%tl246843246868%_
                                           _%$%tl246846246876%_
                                           _%$%hd246845246874%_)))
                                      (_%__kont249006249007%_))))
                              (_%__kont249006249007%_)))))
                    (let ((__tmp250209
                           (lambda (_%$%g246921246924%_ _%$%g246922246926%_)
                             (cons _%$%g246921246924%_ _%$%g246922246926%_))))
                      (declare (not safe))
                      (foldr__0 __tmp250209 '() _%$%clause246635246673%_))))
              (_%specializer-impl246931%_
               (let ((__tmp250210
                      (cons '%#case-lambda _%specializer-clauses246929%_)))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp250210 _%stx245983%_)))
              (_%specializer-impl246933%_
               (_%generate-specializer-impl245987%_
                _%$klass246780%_
                _%$method-table246782%_
                _%methods-bind246807%_
                _%slots-bind246831%_
                _%specializer-impl246931%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp250212
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g245994246056%_)))
                                                       (__tmp250211
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%specializer-id246778%_))))
                                                   (declare (not safe))
                                                   (gxc#verbose
                                                    '"generate method specializer "
                                                    __tmp250212
                                                    '" => "
                                                    __tmp250211))
                                                 (_%generate-specializer-def245988%_
                                                  _%$%g245994246056%_
                                                  _%specializer-id246778%_
                                                  _%specializer-impl246933%_))))))))
                           (_%$%loop246630246658%_
                            _%$%target246627246653%_
                            '()))
                         (_%$%g246621246640%_ _%$%g246622246643%_)))))
               (_%$%g246621246640%_ _%$%g246622246643%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g246621246640%_
                                                _%$%g246622246643%_)))))
                                   (_%$%g246620246936%_ _%$%g245993246055%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%$%g245993246055%_))
                                     (let* ((_%$%g246940246970%_
                                             (lambda (_%$%g246941246967%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g246941246967%_))))
                                            (_%$%g246939247597%_
                                             (lambda (_%$%g246941246973%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g246941246973%_))
                                                   (let ((_%$%e246945246975%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%g246941246973%_))))
                                                     (let ((_%$%hd246946246978%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e246945246975%_)))
                                                           (_%$%tl246947246980%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e246945246975%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl246947246980%_))
                                                           (let ((_%$%e246948246983%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl246947246980%_))))
                     (let ((_%$%hd246949246986%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e246948246983%_)))
                           (_%$%tl246950246988%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e246948246983%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd246949246986%_))
                           (let ((_%$%e246951246991%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd246949246986%_))))
                             (let ((_%$%hd246952246994%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e246951246991%_)))
                                   (_%$%tl246953246996%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e246951246991%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd246952246994%_))
                                   (let ((_%$%e246954246999%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd246952246994%_))))
                                     (let ((_%$%hd246955247002%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e246954246999%_)))
                                           (_%$%tl246956247004%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e246954246999%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd246955247002%_))
                                           (let ((_%$%e246957247007%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd246955247002%_))))
                                             (let ((_%$%hd246958247010%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e246957247007%_)))
                                                   (_%$%tl246959247012%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e246957247007%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl246959247012%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl246956247004%_))
                                                       (let ((_%$%e246960247015%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl246956247004%_))))
                 (let ((_%$%hd246961247018%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e246960247015%_)))
                       (_%$%tl246962247020%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e246960247015%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl246962247020%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl246953246996%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl246950246988%_))
                               (let ((_%$%e246963247023%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl246950246988%_))))
                                 (let ((_%$%hd246964247026%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e246963247023%_)))
                                       (_%$%tl246965247028%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e246963247023%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl246965247028%_))
                                       (let ()
                                         (let* ((_%$%g247057247075%_
                                                 (lambda (_%$%g247058247072%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g247058247072%_))))
                                                (_%$%g247056247131%_
                                                 (lambda (_%$%g247058247078%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g247058247078%_))
                                                       (let ((_%$%e247062247080%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g247058247078%_))))
                 (let ((_%$%hd247063247083%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e247062247080%_)))
                       (_%$%tl247064247085%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e247062247080%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl247064247085%_))
                       (let ((_%$%e247065247088%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl247064247085%_))))
                         (let ((_%$%hd247066247091%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e247065247088%_)))
                               (_%$%tl247067247093%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e247065247088%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd247066247091%_))
                               (let ((_%$%e247068247096%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%hd247066247091%_))))
                                 (let ((_%$%hd247069247099%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e247068247096%_)))
                                       (_%$%tl247070247101%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e247068247096%_))))
                                   (let ((_%receiver247125%_
                                          (let ((_%$e247122%_
                                                 (gxc#apply-extract-receiver
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#begin))
                                                        _%$%tl247067247093%_))))
                                            (if _%$e247122%_
                                                _%$e247122%_
                                                _%$%hd247069247099%_))))
                                     (for-each
                                      (lambda (_%$%g247126247128%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver247125%_
                                         _%method-calls246075%_
                                         _%slot-refs246076%_
                                         _%$%g247126247128%_))
                                      _%$%tl247067247093%_))))
                               (_%$%g247057247075%_ _%$%g247058247078%_))))
                       (_%$%g247057247075%_ _%$%g247058247078%_))))
               (_%$%g247057247075%_ _%$%g247058247078%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g247056247131%_
                                            _%$%hd246961247018%_))
                                         (let* ((_%$%g247134247153%_
                                                 (lambda (_%$%g247135247150%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g247135247150%_))))
                                                (_%$%g247133247275%_
                                                 (lambda (_%$%g247135247156%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g247135247156%_))
                                                       (let ((_%$%e247137247158%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g247135247156%_))))
                 (let ((_%$%hd247138247161%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e247137247158%_)))
                       (_%$%tl247139247163%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e247137247158%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? _%$%tl247139247163%_))
                       (let ((_g250213_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 _%$%tl247139247163%_
                                 '0))))
                         (begin
                           (let ((_g250214_
                                  (let ()
                                    (declare (not safe))
                                    (if (##values? _g250213_)
                                        (##values-length _g250213_)
                                        1))))
                             (if (not (let ()
                                        (declare (not safe))
                                        (##fx= _g250214_ 2)))
                                 (error "Context expects 2 values" _g250214_)))
                           (let ((_%$%target247140247166%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g250213_ 0)))
                                 (_%$%tl247142247168%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g250213_ 1))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl247142247168%_))
                                 (letrec ((_%$%loop247143247171%_
                                           (lambda (_%$%hd247141247174%_
                                                    _%$%clause247147247176%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd247141247174%_))
                                                 (let ((_%$%e247144247178%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd247141247174%_))))
                                                   (let ((_%$%lp-hd247145247181%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e247144247178%_)))
                                                         (_%$%lp-tl247146247183%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e247144247178%_))))
                                                     (_%$%loop247143247171%_
                                                      _%$%lp-tl247146247183%_
                                                      (cons _%$%lp-hd247145247181%_
                                                            _%$%clause247147247176%_))))
                                                 (let ((_%$%clause247148247186%_
                                                        (reverse _%$%clause247147247176%_)))
                                                   (for-each
                                                    (lambda (_%clause247201%_)
                                                      (let* ((_%$%g247203247218%_
                                                              (lambda (_%$%g247204247215%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g247204247215%_))))
                     (_%$%g247202247265%_
                      (lambda (_%$%g247204247221%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%g247204247221%_))
                            (let ((_%$%e247208247223%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g247204247221%_))))
                              (let ((_%$%hd247209247226%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e247208247223%_)))
                                    (_%$%tl247210247228%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e247208247223%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd247209247226%_))
                                    (let ((_%$%e247211247231%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd247209247226%_))))
                                      (let ((_%$%hd247212247234%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e247211247231%_)))
                                            (_%$%tl247213247236%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e247211247231%_))))
                                        (let ((_%receiver247259%_
                                               (let ((_%$e247256%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%tl247210247228%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e247256%_
                                                     _%$e247256%_
                                                     _%$%hd247212247234%_))))
                                          (for-each
                                           (lambda (_%$%g247260247262%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver247259%_
                                              _%method-calls246075%_
                                              _%slot-refs246076%_
                                              _%$%g247260247262%_))
                                           _%$%tl247210247228%_))))
                                    (_%$%g247203247218%_
                                     _%$%g247204247221%_))))
                            (_%$%g247203247218%_ _%$%g247204247221%_)))))
                (_%$%g247202247265%_ _%clause247201%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp250215
                                                           (lambda (_%$%g247267247270%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g247268247272%_)
                     (cons _%$%g247267247270%_ _%$%g247268247272%_))))
              (declare (not safe))
              (foldr__0 __tmp250215 '() _%$%clause247148247186%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%loop247143247171%_
                                    _%$%target247140247166%_
                                    '()))
                                 (_%$%g247134247153%_ _%$%g247135247156%_)))))
                       (_%$%g247134247153%_ _%$%g247135247156%_))))
               (_%$%g247134247153%_ _%$%g247135247156%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g247133247275%_
                                            _%$%hd246964247026%_))
                                         (if (_%no-specializer?246079%_)
                                             _%stx245983%_
                                             (let* ((_%specializer-id247284%_
                                                     (let* ((_%id247278%_
                                                             (let ((__tmp250216
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g245994246056%_))))
                       (declare (not safe))
                       (make-symbol__1 __tmp250216 '"::specialize")))
                    (_%specializer-id247281%_
                     (let ((__tmp250217
                            (let ()
                              (declare (not safe))
                              (gx#stx-source _%stx245983%_))))
                       (declare (not safe))
                       (gx#core-quote-syntax__1 _%id247278%_ __tmp250217))))
               (let ()
                 (declare (not safe))
                 (gx#core-bind-runtime!__0 _%specializer-id247281%_))
               _%specializer-id247281%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$klass247286%_
                                                     (let ((__tmp250218
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__klass))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp250218)))
                                                    (_%$method-table247288%_
                                                     (let ((__tmp250219
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__method-table))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp250219)))
                                                    (_%methods247290%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%method-calls246075%_)))
                                                    (_%$methods247294%_
                                                     (let ((__tmp250220
                                                            (lambda (_%id247292%_)
                                                              (let ((__tmp250221
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id247292%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp250221)))))
               (declare (not safe))
               (##map __tmp250220 _%methods247290%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_247303%_
                                                     (let ((__tmp250222
                                                            (lambda (_%$%g247295247298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g247296247300%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%method-calls246075%_
                         _%$%g247295247298%_
                         _%$%g247296247300%_)))))
               (declare (not safe))
               (##for-each __tmp250222 _%methods247290%_ _%$methods247294%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%methods-bind247313%_
                                                     (let ((__tmp250223
                                                            (lambda (_%$%g247305247308%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g247306247310%_)
                      (_%generate-method-bind245985%_
                       _%$klass247286%_
                       _%$method-table247288%_
                       _%$%g247305247308%_
                       _%$%g247306247310%_))))
               (declare (not safe))
               (##map __tmp250223 _%methods247290%_ _%$methods247294%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots247315%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%slot-refs246076%_)))
                                                    (_%$slots247319%_
                                                     (let ((__tmp250224
                                                            (lambda (_%id247317%_)
                                                              (let ((__tmp250225
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id247317%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp250225)))))
               (declare (not safe))
               (##map __tmp250224 _%slots247315%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_247328%_
                                                     (let ((__tmp250226
                                                            (lambda (_%$%g247320247323%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g247321247325%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%slot-refs246076%_
                         _%$%g247320247323%_
                         _%$%g247321247325%_)))))
               (declare (not safe))
               (##for-each __tmp250226 _%slots247315%_ _%$slots247319%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots-bind247337%_
                                                     (let ((__tmp250227
                                                            (lambda (_%$%g247329247332%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g247330247334%_)
                      (_%generate-slot-bind245986%_
                       _%$klass247286%_
                       _%$%g247329247332%_
                       _%$%g247330247334%_))))
               (declare (not safe))
               (##map __tmp250227 _%slots247315%_ _%$slots247319%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-lambda-expr247429%_
                                                     (let* ((_%$%g247339247357%_
                                                             (lambda (_%$%g247340247354%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g247340247354%_))))
                    (_%$%g247338247426%_
                     (lambda (_%$%g247340247360%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g247340247360%_))
                           (let ((_%$%e247344247362%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g247340247360%_))))
                             (let ((_%$%hd247345247365%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e247344247362%_)))
                                   (_%$%tl247346247367%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e247344247362%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl247346247367%_))
                                   (let ((_%$%e247347247370%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl247346247367%_))))
                                     (let ((_%$%hd247348247373%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e247347247370%_)))
                                           (_%$%tl247349247375%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e247347247370%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd247348247373%_))
                                           (let ((_%$%e247350247378%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd247348247373%_))))
                                             (let ((_%$%hd247351247381%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e247350247378%_)))
                                                   (_%$%tl247352247383%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e247350247378%_))))
                                               (let* ((_%receiver247417%_
                                                       (let ((_%$e247414%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%tl247349247375%_))))
                 (if _%$e247414%_ _%$e247414%_ _%$%hd247351247381%_)))
              (_%body247423%_
               (map (lambda (_%$%g247418247420%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver247417%_
                       _%$klass247286%_
                       _%method-calls246075%_
                       _%slot-refs246076%_
                       _%$%g247418247420%_))
                    _%$%tl247349247375%_))
              (__tmp250228
               (cons '%#lambda
                     (cons (cons _%$%hd247351247381%_ _%$%tl247352247383%_)
                           _%body247423%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp250228
                                                  _%$%hd246961247018%_))))
                                           (_%$%g247339247357%_
                                            _%$%g247340247360%_))))
                                   (_%$%g247339247357%_ _%$%g247340247360%_))))
                           (_%$%g247339247357%_ _%$%g247340247360%_)))))
               (_%$%g247338247426%_ _%$%hd246961247018%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-case-lambda-expr247590%_
                                                     (let* ((_%$%g247431247450%_
                                                             (lambda (_%$%g247432247447%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g247432247447%_))))
                    (_%$%g247430247587%_
                     (lambda (_%$%g247432247453%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g247432247453%_))
                           (let ((_%$%e247434247455%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g247432247453%_))))
                             (let ((_%$%hd247435247458%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e247434247455%_)))
                                   (_%$%tl247436247460%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e247434247455%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair/null? _%$%tl247436247460%_))
                                   (let ((_g250229_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-split-splice
                                             _%$%tl247436247460%_
                                             '0))))
                                     (begin
                                       (let ((_g250230_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g250229_)
                                                    (##values-length _g250229_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g250230_ 2)))
                                             (error "Context expects 2 values"
                                                    _g250230_)))
                                       (let ((_%$%target247437247463%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g250229_ 0)))
                                             (_%$%tl247439247465%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g250229_ 1))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%$%tl247439247465%_))
                                             (letrec ((_%$%loop247440247468%_
                                                       (lambda (_%$%hd247438247471%_
                                                                _%$%clause247444247473%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%hd247438247471%_))
                     (let ((_%$%e247441247475%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%hd247438247471%_))))
                       (let ((_%$%lp-hd247442247478%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e247441247475%_)))
                             (_%$%lp-tl247443247480%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e247441247475%_))))
                         (_%$%loop247440247468%_
                          _%$%lp-tl247443247480%_
                          (cons _%$%lp-hd247442247478%_
                                _%$%clause247444247473%_))))
                     (let* ((_%$%clause247445247483%_
                             (reverse _%$%clause247444247473%_))
                            (_%clauses247585%_
                             (map (lambda (_%clause247499%_)
                                    (let* ((_%__stx249022249023%_
                                            _%clause247499%_)
                                           (_%$%g247502247517%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%__stx249022249023%_)))))
                                      (let ((_%__kont249024249025%_
                                             (lambda (_%$%g247504247545%_
                                                      _%$%g247505247546%_
                                                      _%$%g247506247547%_)
                                               (let* ((_%receiver247566%_
                                                       (let ((_%$e247563%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%g247504247545%_))))
                 (if _%$e247563%_ _%$e247563%_ _%$%g247506247547%_)))
              (_%body247572%_
               (map (lambda (_%$%g247567247569%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver247566%_
                       _%$klass247286%_
                       _%method-calls246075%_
                       _%slot-refs246076%_
                       _%$%g247567247569%_))
                    _%$%g247504247545%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g247506247547%_
                                                             _%$%g247505247546%_)
                                                       _%body247572%_))))
                                            (_%__kont249026249027%_
                                             (lambda () _%clause247499%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%__stx249022249023%_))
                                            (let ((_%$%e247507247529%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%__stx249022249023%_))))
                                              (let ((_%$%tl247509247534%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e247507247529%_)))
                                                    (_%$%hd247508247532%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e247507247529%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd247508247532%_))
                                                    (let ((_%$%e247510247537%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd247508247532%_))))
                                                      (let ((_%$%tl247512247542%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e247510247537%_)))
                    (_%$%hd247511247540%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e247510247537%_))))
                (_%__kont249024249025%_
                 _%$%tl247509247534%_
                 _%$%tl247512247542%_
                 _%$%hd247511247540%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont249026249027%_))))
                                            (_%__kont249026249027%_)))))
                                  (let ((__tmp250231
                                         (lambda (_%$%g247577247580%_
                                                  _%$%g247578247582%_)
                                           (cons _%$%g247577247580%_
                                                 _%$%g247578247582%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp250231
                                     '()
                                     _%$%clause247445247483%_))))
                            (__tmp250232
                             (cons '%#case-lambda _%clauses247585%_)))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp250232
                        _%$%hd246964247026%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop247440247468%_
                                                _%$%target247437247463%_
                                                '()))
                                             (_%$%g247431247450%_
                                              _%$%g247432247453%_)))))
                                   (_%$%g247431247450%_ _%$%g247432247453%_))))
                           (_%$%g247431247450%_ _%$%g247432247453%_)))))
               (_%$%g247430247587%_ _%$%hd246964247026%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl247592%_
                                                     (let ((__tmp250233
                                                            (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _%$%hd246958247010%_ '())
                                            (cons _%specializer-lambda-expr247429%_
                                                  '()))
                                      '())
                                (cons _%specializer-case-lambda-expr247590%_
                                      '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp250233 _%stx245983%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl247594%_
                                                     (_%generate-specializer-impl245987%_
                                                      _%$klass247286%_
                                                      _%$method-table247288%_
                                                      _%methods-bind247313%_
                                                      _%slots-bind247337%_
                                                      _%specializer-impl247592%_)))
                                               (let ((__tmp250235
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g245994246056%_)))
                                                     (__tmp250234
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%specializer-id247284%_))))
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"generate method specializer "
                                                  __tmp250235
                                                  '" => "
                                                  __tmp250234))
                                               (_%generate-specializer-def245988%_
                                                _%$%g245994246056%_
                                                _%specializer-id247284%_
                                                _%specializer-impl247594%_))))
                                       (_%$%g246940246970%_
                                        _%$%g246941246973%_))))
                               (_%$%g246940246970%_ _%$%g246941246973%_))
                           (_%$%g246940246970%_ _%$%g246941246973%_))
                       (_%$%g246940246970%_ _%$%g246941246973%_))))
               (_%$%g246940246970%_ _%$%g246941246973%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g246940246970%_
                                                    _%$%g246941246973%_))))
                                           (_%$%g246940246970%_
                                            _%$%g246941246973%_))))
                                   (_%$%g246940246970%_ _%$%g246941246973%_))))
                           (_%$%g246940246970%_ _%$%g246941246973%_))))
                   (_%$%g246940246970%_ _%$%g246941246973%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g246940246970%_
                                                    _%$%g246941246973%_)))))
                                       (_%$%g246939247597%_
                                        _%$%g245993246055%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%$%g245993246055%_))
                                         (let* ((_%$%g247601247654%_
                                                 (lambda (_%$%g247602247651%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g247602247651%_))))
                                                (_%$%g247600248819%_
                                                 (lambda (_%$%g247602247657%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g247602247657%_))
                                                       (let ((_%$%e247608247659%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g247602247657%_))))
                 (let ((_%$%hd247609247662%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e247608247659%_)))
                       (_%$%tl247610247664%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e247608247659%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%$%hd247609247662%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%$%hd247609247662%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl247610247664%_))
                               (let ((_%$%e247611247667%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl247610247664%_))))
                                 (let ((_%$%hd247612247670%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e247611247667%_)))
                                       (_%$%tl247613247672%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e247611247667%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd247612247670%_))
                                       (let ((_%$%e247614247675%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd247612247670%_))))
                                         (let ((_%$%hd247615247678%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e247614247675%_)))
                                               (_%$%tl247616247680%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e247614247675%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd247615247678%_))
                                               (let ((_%$%e247617247683%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd247615247678%_))))
                                                 (let ((_%$%hd247618247686%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e247617247683%_)))
                                                       (_%$%tl247619247688%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e247617247683%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%hd247618247686%_))
                                                       (let ((_%$%e247620247691%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%hd247618247686%_))))
                 (let ((_%$%hd247621247694%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e247620247691%_)))
                       (_%$%tl247622247696%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e247620247691%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl247622247696%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl247619247688%_))
                           (let ((_%$%e247623247699%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl247619247688%_))))
                             (let ((_%$%hd247624247702%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e247623247699%_)))
                                   (_%$%tl247625247704%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e247623247699%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd247624247702%_))
                                   (let ((_%$%e247626247707%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd247624247702%_))))
                                     (let ((_%$%hd247627247710%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e247626247707%_)))
                                           (_%$%tl247628247712%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e247626247707%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd247627247710%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%$%hd247627247710%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl247628247712%_))
                                                   (let ((_%$%e247629247715%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl247628247712%_))))
                                                     (let ((_%$%hd247630247718%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e247629247715%_)))
                                                           (_%$%tl247631247720%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e247629247715%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd247630247718%_))
                                                           (let ((_%$%e247632247723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd247630247718%_))))
                     (let ((_%$%hd247633247726%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e247632247723%_)))
                           (_%$%tl247634247728%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e247632247723%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd247633247726%_))
                           (let ((_%$%e247635247731%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd247633247726%_))))
                             (let ((_%$%hd247636247734%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e247635247731%_)))
                                   (_%$%tl247637247736%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e247635247731%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd247636247734%_))
                                   (let ((_%$%e247638247739%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd247636247734%_))))
                                     (let ((_%$%hd247639247742%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e247638247739%_)))
                                           (_%$%tl247640247744%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e247638247739%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl247640247744%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl247637247736%_))
                                               (let ((_%$%e247641247747%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl247637247736%_))))
                                                 (let ((_%$%hd247642247750%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e247641247747%_)))
                                                       (_%$%tl247643247752%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e247641247747%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl247643247752%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl247634247728%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl247631247720%_))
                       (let ((_%$%e247644247755%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl247631247720%_))))
                         (let ((_%$%hd247645247758%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e247644247755%_)))
                               (_%$%tl247646247760%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e247644247755%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl247646247760%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl247625247704%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl247616247680%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl247613247672%_))
                                           (let ((_%$%e247647247763%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl247613247672%_))))
                                             (let ((_%$%hd247648247766%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e247647247763%_)))
                                                   (_%$%tl247649247768%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e247647247763%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl247649247768%_))
                                                   (let* ((_%$%g247815247877%_
                                                           (lambda (_%$%g247816247874%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g247816247874%_))))
                  (_%$%g247814248816%_
                   (lambda (_%$%g247816247880%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g247816247880%_))
                         (let ((_%$%e247822247882%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g247816247880%_))))
                           (let ((_%$%hd247823247885%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e247822247882%_)))
                                 (_%$%tl247824247887%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e247822247882%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd247823247885%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#lambda
                                        _%$%hd247823247885%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl247824247887%_))
                                         (let ((_%$%e247825247890%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl247824247887%_))))
                                           (let ((_%$%hd247826247893%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e247825247890%_)))
                                                 (_%$%tl247827247895%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e247825247890%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl247827247895%_))
                                                 (let ((_%$%e247828247898%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl247827247895%_))))
                                                   (let ((_%$%hd247829247901%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e247828247898%_)))
                                                         (_%$%tl247830247903%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e247828247898%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%hd247829247901%_))
                                                         (let ((_%$%e247831247906%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd247829247901%_))))
                   (let ((_%$%hd247832247909%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e247831247906%_)))
                         (_%$%tl247833247911%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e247831247906%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%$%hd247832247909%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#call _%$%hd247832247909%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl247833247911%_))
                                 (let ((_%$%e247834247914%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl247833247911%_))))
                                   (let ((_%$%hd247835247917%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e247834247914%_)))
                                         (_%$%tl247836247919%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e247834247914%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd247835247917%_))
                                         (let ((_%$%e247837247922%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd247835247917%_))))
                                           (let ((_%$%hd247838247925%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e247837247922%_)))
                                                 (_%$%tl247839247927%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e247837247922%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd247838247925%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%$%hd247838247925%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl247839247927%_))
                                                         (let ((_%$%e247840247930%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl247839247927%_))))
                   (let ((_%$%hd247841247933%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e247840247930%_)))
                         (_%$%tl247842247935%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e247840247930%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl247842247935%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl247836247919%_))
                             (let ((_%$%e247843247938%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl247836247919%_))))
                               (let ((_%$%hd247844247941%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e247843247938%_)))
                                     (_%$%tl247845247943%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e247843247938%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd247844247941%_))
                                     (let ((_%$%e247846247946%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd247844247941%_))))
                                       (let ((_%$%hd247847247949%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e247846247946%_)))
                                             (_%$%tl247848247951%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e247846247946%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%hd247847247949%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#ref
                                                    _%$%hd247847247949%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl247848247951%_))
                                                     (let ((_%$%e247849247954%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl247848247951%_))))
                                                       (let ((_%$%hd247850247957%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e247849247954%_)))
                     (_%$%tl247851247959%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e247849247954%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl247851247959%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl247845247943%_))
                         (let ((_%$%e247852247962%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl247845247943%_))))
                           (let ((_%$%hd247853247965%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e247852247962%_)))
                                 (_%$%tl247854247967%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e247852247962%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd247853247965%_))
                                 (let ((_%$%e247855247970%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd247853247965%_))))
                                   (let ((_%$%hd247856247973%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e247855247970%_)))
                                         (_%$%tl247857247975%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e247855247970%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier?
                                            _%$%hd247856247973%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%$%hd247856247973%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl247857247975%_))
                                                 (let ((_%$%e247858247978%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl247857247975%_))))
                                                   (let ((_%$%hd247859247981%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e247858247978%_)))
                                                         (_%$%tl247860247983%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e247858247978%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl247860247983%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair/null? _%$%tl247854247967%_))
                     (if (let ((__tmp250236
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-length _%$%tl247854247967%_))))
                           (declare (not safe))
                           (##fx>= __tmp250236 '1))
                         (let ((_g250237_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-split-splice
                                   _%$%tl247854247967%_
                                   '1))))
                           (begin
                             (let ((_g250238_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g250237_)
                                          (##values-length _g250237_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g250238_ 2)))
                                   (error "Context expects 2 values"
                                          _g250238_)))
                             (let ((_%$%target247861247986%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g250237_ 0)))
                                   (_%$%tl247863247988%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g250237_ 1))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl247863247988%_))
                                   (let ((_%$%e247870247991%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl247863247988%_))))
                                     (let ((_%$%hd247871247994%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e247870247991%_)))
                                           (_%$%tl247872247996%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e247870247991%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl247872247996%_))
                                           (letrec ((_%$%loop247864247999%_
                                                     (lambda (_%$%hd247862248002%_
                                                              _%$%kw-ref247868248004%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd247862248002%_))
                                                           (let ((_%$%e247865248006%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd247862248002%_))))
                     (let ((_%$%lp-hd247866248009%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e247865248006%_)))
                           (_%$%lp-tl247867248011%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e247865248006%_))))
                       (_%$%loop247864247999%_
                        _%$%lp-tl247867248011%_
                        (cons _%$%lp-hd247866248009%_
                              _%$%kw-ref247868248004%_))))
                   (let ((_%$%kw-ref247869248014%_
                          (reverse _%$%kw-ref247868248004%_)))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl247830247903%_))
                         (let* ((_%kw-count248071%_
                                 (length (let ((__tmp250239
                                                (lambda (_%$%g248063248066%_
                                                         _%$%g248064248068%_)
                                                  (cons _%$%g248063248066%_
                                                        _%$%g248064248068%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp250239
                                            '()
                                            _%$%kw-ref247869248014%_))))
                                (_%self-index248073%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%kw-count248071%_ '1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#lambda-expr? _%$%hd247642247750%_))
                               (let* ((_%$%g248077248091%_
                                       (lambda (_%$%g248078248088%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g248078248088%_))))
                                      (_%$%g248076248214%_
                                       (lambda (_%$%g248078248094%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%g248078248094%_))
                                             (let ((_%$%e248081248096%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g248078248094%_))))
                                               (let ((_%$%hd248082248099%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e248081248096%_)))
                                                     (_%$%tl248083248101%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e248081248096%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl248083248101%_))
                                                     (let ((_%$%e248084248104%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl248083248101%_))))
                                                       (let ((_%$%hd248085248107%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e248084248104%_)))
                     (_%$%tl248086248109%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e248084248104%_))))
                 (let* ((_%self248130%_
                         (list-ref _%$%hd248085248107%_ _%self-index248073%_))
                        (_%receiver248135%_
                         (let ((_%$e248132%_
                                (gxc#apply-extract-receiver
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '%#begin))
                                       _%$%tl248086248109%_))))
                           (if _%$e248132%_ _%$e248132%_ _%self248130%_))))
                   (for-each
                    (lambda (_%$%g248137248139%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver248135%_
                       _%method-calls246075%_
                       _%slot-refs246076%_
                       _%$%g248137248139%_))
                    _%$%tl248086248109%_)
                   (if (_%no-specializer?246079%_)
                       _%stx245983%_
                       (let* ((_%specializer-id248148%_
                               (let* ((_%id248142%_
                                       (let ((__tmp250240
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%g245994246056%_))))
                                         (declare (not safe))
                                         (make-symbol__1
                                          __tmp250240
                                          '"::specialize")))
                                      (_%specializer-id248145%_
                                       (let ((__tmp250241
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-source
                                                 _%stx245983%_))))
                                         (declare (not safe))
                                         (gx#core-quote-syntax__1
                                          _%id248142%_
                                          __tmp250241))))
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-bind-runtime!__0
                                    _%specializer-id248145%_))
                                 _%specializer-id248145%_))
                              (_%$klass248150%_
                               (let ((__tmp250242
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__klass))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp250242)))
                              (_%$method-table248152%_
                               (let ((__tmp250243
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__method-table))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp250243)))
                              (_%methods248154%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%method-calls246075%_)))
                              (_%$methods248158%_
                               (let ((__tmp250244
                                      (lambda (_%id248156%_)
                                        (let ((__tmp250245
                                               (gensym _%id248156%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp250245)))))
                                 (declare (not safe))
                                 (##map __tmp250244 _%methods248154%_)))
                              (_%_248167%_
                               (let ((__tmp250246
                                      (lambda (_%$%g248159248162%_
                                               _%$%g248160248164%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%method-calls246075%_
                                           _%$%g248159248162%_
                                           _%$%g248160248164%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp250246
                                  _%methods248154%_
                                  _%$methods248158%_)))
                              (_%methods-bind248177%_
                               (let ((__tmp250247
                                      (lambda (_%$%g248169248172%_
                                               _%$%g248170248174%_)
                                        (_%generate-method-bind245985%_
                                         _%$klass248150%_
                                         _%$method-table248152%_
                                         _%$%g248169248172%_
                                         _%$%g248170248174%_))))
                                 (declare (not safe))
                                 (##map __tmp250247
                                        _%methods248154%_
                                        _%$methods248158%_)))
                              (_%slots248179%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%slot-refs246076%_)))
                              (_%$slots248183%_
                               (let ((__tmp250248
                                      (lambda (_%id248181%_)
                                        (let ((__tmp250249
                                               (gensym _%id248181%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp250249)))))
                                 (declare (not safe))
                                 (##map __tmp250248 _%slots248179%_)))
                              (_%_248192%_
                               (let ((__tmp250250
                                      (lambda (_%$%g248184248187%_
                                               _%$%g248185248189%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%slot-refs246076%_
                                           _%$%g248184248187%_
                                           _%$%g248185248189%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp250250
                                  _%slots248179%_
                                  _%$slots248183%_)))
                              (_%slots-bind248201%_
                               (let ((__tmp250251
                                      (lambda (_%$%g248193248196%_
                                               _%$%g248194248198%_)
                                        (_%generate-slot-bind245986%_
                                         _%$klass248150%_
                                         _%$%g248193248196%_
                                         _%$%g248194248198%_))))
                                 (declare (not safe))
                                 (##map __tmp250251
                                        _%slots248179%_
                                        _%$slots248183%_)))
                              (_%specializer-impl248209%_
                               (let* ((_%specializer-body248207%_
                                       (map (lambda (_%$%g248202248204%_)
                                              (gxc#apply-subst-object-refs__%
                                               '#f
                                               _%receiver248135%_
                                               _%$klass248150%_
                                               _%method-calls246075%_
                                               _%slot-refs246076%_
                                               _%$%g248202248204%_))
                                            _%$%tl248086248109%_))
                                      (__tmp250252
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _%$%hd247621247694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#let-values
                                   (cons (cons (cons (cons _%$%hd247639247742%_
                                                           '())
                                                     (cons (let ((__tmp250253
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#lambda
                                (cons _%$%hd248085248107%_
                                      _%specializer-body248207%_))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp250253 _%$%hd247642247750%_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%$%hd247645247758%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%$%hd247648247766%_
                                                         '())))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp250252
                                  _%stx245983%_)))
                              (_%specializer-impl248211%_
                               (_%generate-specializer-impl245987%_
                                _%$klass248150%_
                                _%$method-table248152%_
                                _%methods-bind248177%_
                                _%slots-bind248201%_
                                _%specializer-impl248209%_)))
                         (let ((__tmp250255
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g245994246056%_)))
                               (__tmp250254
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%specializer-id248148%_))))
                           (declare (not safe))
                           (gxc#verbose
                            '"generate method specializer "
                            __tmp250255
                            '" => "
                            __tmp250254))
                         (_%generate-specializer-def245988%_
                          _%$%g245994246056%_
                          _%specializer-id248148%_
                          _%specializer-impl248211%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248077248091%_
                                                      _%$%g248078248094%_))))
                                             (_%$%g248077248091%_
                                              _%$%g248078248094%_)))))
                                 (_%$%g248076248214%_ _%$%hd247642247750%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr?
                                      _%$%hd247642247750%_))
                                   (let* ((_%$%g248218248248%_
                                           (lambda (_%$%g248219248245%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g248219248245%_))))
                                          (_%$%g248217248812%_
                                           (lambda (_%$%g248219248251%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%g248219248251%_))
                                                 (let ((_%$%e248223248253%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g248219248251%_))))
                                                   (let ((_%$%hd248224248256%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e248223248253%_)))
                                                         (_%$%tl248225248258%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e248223248253%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl248225248258%_))
                                                         (let ((_%$%e248226248261%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl248225248258%_))))
                   (let ((_%$%hd248227248264%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e248226248261%_)))
                         (_%$%tl248228248266%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e248226248261%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd248227248264%_))
                         (let ((_%$%e248229248269%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd248227248264%_))))
                           (let ((_%$%hd248230248272%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e248229248269%_)))
                                 (_%$%tl248231248274%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e248229248269%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd248230248272%_))
                                 (let ((_%$%e248232248277%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd248230248272%_))))
                                   (let ((_%$%hd248233248280%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e248232248277%_)))
                                         (_%$%tl248234248282%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e248232248277%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd248233248280%_))
                                         (let ((_%$%e248235248285%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd248233248280%_))))
                                           (let ((_%$%hd248236248288%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e248235248285%_)))
                                                 (_%$%tl248237248290%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e248235248285%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl248237248290%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl248234248282%_))
                                                     (let ((_%$%e248238248293%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl248234248282%_))))
                                                       (let ((_%$%hd248239248296%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e248238248293%_)))
                     (_%$%tl248240248298%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e248238248293%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl248240248298%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl248231248274%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl248228248266%_))
                             (let ((_%$%e248241248301%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl248228248266%_))))
                               (let ((_%$%hd248242248304%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e248241248301%_)))
                                     (_%$%tl248243248306%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e248241248301%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl248243248306%_))
                                     (let ()
                                       (let* ((_%$%g248335248349%_
                                               (lambda (_%$%g248336248346%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g248336248346%_))))
                                              (_%$%g248334248396%_
                                               (lambda (_%$%g248336248352%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g248336248352%_))
                                                     (let ((_%$%e248339248354%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g248336248352%_))))
                                                       (let ((_%$%hd248340248357%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e248339248354%_)))
                     (_%$%tl248341248359%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e248339248354%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl248341248359%_))
                     (let ((_%$%e248342248362%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl248341248359%_))))
                       (let ((_%$%hd248343248365%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e248342248362%_)))
                             (_%$%tl248344248367%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e248342248362%_))))
                         (let* ((_%self248384%_
                                 (list-ref
                                  _%$%hd248343248365%_
                                  _%self-index248073%_))
                                (_%receiver248389%_
                                 (let ((_%$e248386%_
                                        (gxc#apply-extract-receiver
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin))
                                               _%$%tl248344248367%_))))
                                   (if _%$e248386%_
                                       _%$e248386%_
                                       _%self248384%_))))
                           (for-each
                            (lambda (_%$%g248391248393%_)
                              (gxc#apply-collect-object-refs__%
                               '#f
                               _%receiver248389%_
                               _%method-calls246075%_
                               _%slot-refs246076%_
                               _%$%g248391248393%_))
                            _%$%tl248344248367%_))))
                     (_%$%g248335248349%_ _%$%g248336248352%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248335248349%_
                                                      _%$%g248336248352%_)))))
                                         (_%$%g248334248396%_
                                          _%$%hd248239248296%_))
                                       (let* ((_%$%g248399248418%_
                                               (lambda (_%$%g248400248415%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g248400248415%_))))
                                              (_%$%g248398248527%_
                                               (lambda (_%$%g248400248421%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g248400248421%_))
                                                     (let ((_%$%e248402248423%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g248400248421%_))))
                                                       (let ((_%$%hd248403248426%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e248402248423%_)))
                     (_%$%tl248404248428%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e248402248423%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair/null? _%$%tl248404248428%_))
                     (let ((_g250256_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-split-splice
                               _%$%tl248404248428%_
                               '0))))
                       (begin
                         (let ((_g250257_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g250256_)
                                      (##values-length _g250256_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g250257_ 2)))
                               (error "Context expects 2 values" _g250257_)))
                         (let ((_%$%target248405248431%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g250256_ 0)))
                               (_%$%tl248407248433%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g250256_ 1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl248407248433%_))
                               (letrec ((_%$%loop248408248436%_
                                         (lambda (_%$%hd248406248439%_
                                                  _%$%clause248412248441%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd248406248439%_))
                                               (let ((_%$%e248409248443%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd248406248439%_))))
                                                 (let ((_%$%lp-hd248410248446%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e248409248443%_)))
                                                       (_%$%lp-tl248411248448%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e248409248443%_))))
                                                   (_%$%loop248408248436%_
                                                    _%$%lp-tl248411248448%_
                                                    (cons _%$%lp-hd248410248446%_
                                                          _%$%clause248412248441%_))))
                                               (let ((_%$%clause248413248451%_
                                                      (reverse _%$%clause248412248441%_)))
                                                 (for-each
                                                  (lambda (_%clause248466%_)
                                                    (let* ((_%$%g248468248479%_
                                                            (lambda (_%$%g248469248476%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g248469248476%_))))
                   (_%$%g248467248517%_
                    (lambda (_%$%g248469248482%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g248469248482%_))
                          (let ((_%$%e248472248484%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g248469248482%_))))
                            (let ((_%$%hd248473248487%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e248472248484%_)))
                                  (_%$%tl248474248489%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e248472248484%_))))
                              (let* ((_%self248505%_
                                      (list-ref
                                       _%$%hd248473248487%_
                                       _%self-index248073%_))
                                     (_%receiver248510%_
                                      (let ((_%$e248507%_
                                             (gxc#apply-extract-receiver
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#begin))
                                                    _%$%tl248474248489%_))))
                                        (if _%$e248507%_
                                            _%$e248507%_
                                            _%self248505%_))))
                                (for-each
                                 (lambda (_%$%g248512248514%_)
                                   (gxc#apply-collect-object-refs__%
                                    '#f
                                    _%receiver248510%_
                                    _%method-calls246075%_
                                    _%slot-refs246076%_
                                    _%$%g248512248514%_))
                                 _%$%tl248474248489%_))))
                          (_%$%g248468248479%_ _%$%g248469248482%_)))))
              (_%$%g248467248517%_ _%clause248466%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp250258
                                                         (lambda (_%$%g248519248522%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g248520248524%_)
                   (cons _%$%g248519248522%_ _%$%g248520248524%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp250258
                                                     '()
                                                     _%$%clause248413248451%_))))))))
                                 (_%$%loop248408248436%_
                                  _%$%target248405248431%_
                                  '()))
                               (_%$%g248399248418%_ _%$%g248400248421%_)))))
                     (_%$%g248399248418%_ _%$%g248400248421%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248399248418%_
                                                      _%$%g248400248421%_)))))
                                         (_%$%g248398248527%_
                                          _%$%hd248242248304%_))
                                       (if (_%no-specializer?246079%_)
                                           _%stx245983%_
                                           (let* ((_%specializer-id248536%_
                                                   (let* ((_%id248530%_
                                                           (let ((__tmp250259
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g245994246056%_))))
                     (declare (not safe))
                     (make-symbol__1 __tmp250259 '"::specialize")))
                  (_%specializer-id248533%_
                   (let ((__tmp250260
                          (let ()
                            (declare (not safe))
                            (gx#stx-source _%stx245983%_))))
                     (declare (not safe))
                     (gx#core-quote-syntax__1 _%id248530%_ __tmp250260))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#core-bind-runtime!__0
                                                        _%specializer-id248533%_))
                                                     _%specializer-id248533%_))
                                                  (_%$klass248538%_
                                                   (let ((__tmp250261
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__klass))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp250261)))
                                                  (_%$method-table248540%_
                                                   (let ((__tmp250262
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__method-table))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp250262)))
                                                  (_%methods248542%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%method-calls246075%_)))
                                                  (_%$methods248546%_
                                                   (let ((__tmp250263
                                                          (lambda (_%id248544%_)
                                                            (let ((__tmp250264
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id248544%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp250264)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp250263
                                                            _%methods248542%_)))
                                                  (_%_248555%_
                                                   (let ((__tmp250265
                                                          (lambda (_%$%g248547248550%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g248548248552%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%method-calls246075%_
                       _%$%g248547248550%_
                       _%$%g248548248552%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp250265
                                                      _%methods248542%_
                                                      _%$methods248546%_)))
                                                  (_%methods-bind248565%_
                                                   (let ((__tmp250266
                                                          (lambda (_%$%g248557248560%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g248558248562%_)
                    (_%generate-method-bind245985%_
                     _%$klass248538%_
                     _%$method-table248540%_
                     _%$%g248557248560%_
                     _%$%g248558248562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp250266
                                                            _%methods248542%_
                                                            _%$methods248546%_)))
                                                  (_%slots248567%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%slot-refs246076%_)))
                                                  (_%$slots248571%_
                                                   (let ((__tmp250267
                                                          (lambda (_%id248569%_)
                                                            (let ((__tmp250268
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id248569%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp250268)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp250267
                                                            _%slots248567%_)))
                                                  (_%_248580%_
                                                   (let ((__tmp250269
                                                          (lambda (_%$%g248572248575%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g248573248577%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%slot-refs246076%_
                       _%$%g248572248575%_
                       _%$%g248573248577%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp250269
                                                      _%slots248567%_
                                                      _%$slots248571%_)))
                                                  (_%slots-bind248589%_
                                                   (let ((__tmp250270
                                                          (lambda (_%$%g248581248584%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g248582248586%_)
                    (_%generate-slot-bind245986%_
                     _%$klass248538%_
                     _%$%g248581248584%_
                     _%$%g248582248586%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp250270
                                                            _%slots248567%_
                                                            _%$slots248571%_)))
                                                  (_%specializer-lambda-expr248667%_
                                                   (let* ((_%$%g248591248605%_
                                                           (lambda (_%$%g248592248602%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g248592248602%_))))
                  (_%$%g248590248664%_
                   (lambda (_%$%g248592248608%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g248592248608%_))
                         (let ((_%$%e248595248610%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g248592248608%_))))
                           (let ((_%$%hd248596248613%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e248595248610%_)))
                                 (_%$%tl248597248615%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e248595248610%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl248597248615%_))
                                 (let ((_%$%e248598248618%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl248597248615%_))))
                                   (let ((_%$%hd248599248621%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e248598248618%_)))
                                         (_%$%tl248600248623%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e248598248618%_))))
                                     (let* ((_%self248650%_
                                             (list-ref
                                              _%$%hd248599248621%_
                                              _%self-index248073%_))
                                            (_%receiver248655%_
                                             (let ((_%$e248652%_
                                                    (gxc#apply-extract-receiver
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%$%tl248600248623%_))))
                                               (if _%$e248652%_
                                                   _%$e248652%_
                                                   _%self248650%_)))
                                            (_%body248661%_
                                             (map (lambda (_%$%g248656248658%_)
                                                    (gxc#apply-subst-object-refs__%
                                                     '#f
                                                     _%receiver248655%_
                                                     _%$klass248538%_
                                                     _%method-calls246075%_
                                                     _%slot-refs246076%_
                                                     _%$%g248656248658%_))
                                                  _%$%tl248600248623%_))
                                            (__tmp250271
                                             (cons '%#lambda
                                                   (cons _%$%hd248599248621%_
                                                         _%body248661%_))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp250271
                                        _%$%hd248239248296%_))))
                                 (_%$%g248591248605%_ _%$%g248592248608%_))))
                         (_%$%g248591248605%_ _%$%g248592248608%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248590248664%_
                                                      _%$%hd248239248296%_)))
                                                  (_%specializer-case-lambda-expr248805%_
                                                   (let* ((_%$%g248669248688%_
                                                           (lambda (_%$%g248670248685%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g248670248685%_))))
                  (_%$%g248668248802%_
                   (lambda (_%$%g248670248691%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g248670248691%_))
                         (let ((_%$%e248672248693%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g248670248691%_))))
                           (let ((_%$%hd248673248696%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e248672248693%_)))
                                 (_%$%tl248674248698%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e248672248693%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair/null? _%$%tl248674248698%_))
                                 (let ((_g250272_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-split-splice
                                           _%$%tl248674248698%_
                                           '0))))
                                   (begin
                                     (let ((_g250273_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g250272_)
                                                  (##values-length _g250272_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g250273_ 2)))
                                           (error "Context expects 2 values"
                                                  _g250273_)))
                                     (let ((_%$%target248675248701%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g250272_ 0)))
                                           (_%$%tl248677248703%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g250272_ 1))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl248677248703%_))
                                           (letrec ((_%$%loop248678248706%_
                                                     (lambda (_%$%hd248676248709%_
                                                              _%$%clause248682248711%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd248676248709%_))
                                                           (let ((_%$%e248679248713%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd248676248709%_))))
                     (let ((_%$%lp-hd248680248716%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e248679248713%_)))
                           (_%$%lp-tl248681248718%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e248679248713%_))))
                       (_%$%loop248678248706%_
                        _%$%lp-tl248681248718%_
                        (cons _%$%lp-hd248680248716%_
                              _%$%clause248682248711%_))))
                   (let* ((_%$%clause248683248721%_
                           (reverse _%$%clause248682248711%_))
                          (_%clauses248800%_
                           (map (lambda (_%clause248737%_)
                                  (let* ((_%$%g248739248750%_
                                          (lambda (_%$%g248740248747%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g248740248747%_))))
                                         (_%$%g248738248790%_
                                          (lambda (_%$%g248740248753%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g248740248753%_))
                                                (let ((_%$%e248743248755%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g248740248753%_))))
                                                  (let ((_%$%hd248744248758%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e248743248755%_)))
                                                        (_%$%tl248745248760%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e248743248755%_))))
                                                    (let* ((_%self248776%_
                                                            (list-ref
                                                             _%$%hd248744248758%_
                                                             _%self-index248073%_))
                                                           (_%receiver248781%_
                                                            (let ((_%$e248778%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-extract-receiver
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#begin))
                                  _%$%tl248745248760%_))))
                      (if _%$e248778%_ _%$e248778%_ _%self248776%_)))
                   (_%body248787%_
                    (map (lambda (_%$%g248782248784%_)
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%receiver248781%_
                            _%$klass248538%_
                            _%method-calls246075%_
                            _%slot-refs246076%_
                            _%$%g248782248784%_))
                         _%$%tl248745248760%_)))
              (cons _%$%hd248744248758%_ _%body248787%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g248739248750%_
                                                 _%$%g248740248753%_)))))
                                    (_%$%g248738248790%_ _%clause248737%_)))
                                (let ((__tmp250274
                                       (lambda (_%$%g248792248795%_
                                                _%$%g248793248797%_)
                                         (cons _%$%g248792248795%_
                                               _%$%g248793248797%_))))
                                  (declare (not safe))
                                  (foldr__0
                                   __tmp250274
                                   '()
                                   _%$%clause248683248721%_))))
                          (__tmp250275
                           (cons '%#case-lambda _%clauses248800%_)))
                     (declare (not safe))
                     (gxc#xform-wrap-source
                      __tmp250275
                      _%$%hd248242248304%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop248678248706%_
                                              _%$%target248675248701%_
                                              '()))
                                           (_%$%g248669248688%_
                                            _%$%g248670248691%_)))))
                                 (_%$%g248669248688%_ _%$%g248670248691%_))))
                         (_%$%g248669248688%_ _%$%g248670248691%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248668248802%_
                                                      _%$%hd248242248304%_)))
                                                  (_%specializer-impl248807%_
                                                   (let ((__tmp250276
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$%hd247621247694%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons (cons '%#let-values
                                                      (cons (cons (cons (cons _%$%hd247639247742%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (let ((__tmp250277
                                             (cons '%#let-values
                                                   (cons (cons (cons (cons _%$%hd248236248288%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons _%specializer-lambda-expr248667%_ '()))
                       '())
                 (cons _%specializer-case-lambda-expr248805%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp250277
                                         _%stx245983%_))
                                      '()))
                          '())
                    (cons _%$%hd247645247758%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())
                              (cons _%$%hd247648247766%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp250276
                                                      _%stx245983%_)))
                                                  (_%specializer-impl248809%_
                                                   (_%generate-specializer-impl245987%_
                                                    _%$klass248538%_
                                                    _%$method-table248540%_
                                                    _%methods-bind248565%_
                                                    _%slots-bind248589%_
                                                    _%specializer-impl248807%_)))
                                             (let ((__tmp250279
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g245994246056%_)))
                                                   (__tmp250278
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%specializer-id248536%_))))
                                               (declare (not safe))
                                               (gxc#verbose
                                                '"generate method specializer "
                                                __tmp250279
                                                '" => "
                                                __tmp250278))
                                             (_%generate-specializer-def245988%_
                                              _%$%g245994246056%_
                                              _%specializer-id248536%_
                                              _%specializer-impl248809%_))))
                                     (_%$%g248218248248%_
                                      _%$%g248219248251%_))))
                             (_%$%g248218248248%_ _%$%g248219248251%_))
                         (_%$%g248218248248%_ _%$%g248219248251%_))
                     (_%$%g248218248248%_ _%$%g248219248251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g248218248248%_
                                                      _%$%g248219248251%_))
                                                 (_%$%g248218248248%_
                                                  _%$%g248219248251%_))))
                                         (_%$%g248218248248%_
                                          _%$%g248219248251%_))))
                                 (_%$%g248218248248%_ _%$%g248219248251%_))))
                         (_%$%g248218248248%_ _%$%g248219248251%_))))
                 (_%$%g248218248248%_ _%$%g248219248251%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g248218248248%_
                                                  _%$%g248219248251%_)))))
                                     (_%$%g248217248812%_
                                      _%$%hd247642247750%_))
                                   _%stx245983%_)))
                         (_%$%g247815247877%_ _%$%g247816247880%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop247864247999%_
                                              _%$%target247861247986%_
                                              '()))
                                           (_%$%g247815247877%_
                                            _%$%g247816247880%_))))
                                   (_%$%g247815247877%_
                                    _%$%g247816247880%_)))))
                         (_%$%g247815247877%_ _%$%g247816247880%_))
                     (_%$%g247815247877%_ _%$%g247816247880%_))
                 (_%$%g247815247877%_ _%$%g247816247880%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g247815247877%_
                                                  _%$%g247816247880%_))
                                             (_%$%g247815247877%_
                                              _%$%g247816247880%_))
                                         (_%$%g247815247877%_
                                          _%$%g247816247880%_))))
                                 (_%$%g247815247877%_ _%$%g247816247880%_))))
                         (_%$%g247815247877%_ _%$%g247816247880%_))
                     (_%$%g247815247877%_ _%$%g247816247880%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g247815247877%_
                                                      _%$%g247816247880%_))
                                                 (_%$%g247815247877%_
                                                  _%$%g247816247880%_))
                                             (_%$%g247815247877%_
                                              _%$%g247816247880%_))))
                                     (_%$%g247815247877%_
                                      _%$%g247816247880%_))))
                             (_%$%g247815247877%_ _%$%g247816247880%_))
                         (_%$%g247815247877%_ _%$%g247816247880%_))))
                 (_%$%g247815247877%_ _%$%g247816247880%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g247815247877%_
                                                      _%$%g247816247880%_))
                                                 (_%$%g247815247877%_
                                                  _%$%g247816247880%_))))
                                         (_%$%g247815247877%_
                                          _%$%g247816247880%_))))
                                 (_%$%g247815247877%_ _%$%g247816247880%_))
                             (_%$%g247815247877%_ _%$%g247816247880%_))
                         (_%$%g247815247877%_ _%$%g247816247880%_))))
                 (_%$%g247815247877%_ _%$%g247816247880%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g247815247877%_
                                                  _%$%g247816247880%_))))
                                         (_%$%g247815247877%_
                                          _%$%g247816247880%_))
                                     (_%$%g247815247877%_ _%$%g247816247880%_))
                                 (_%$%g247815247877%_ _%$%g247816247880%_))))
                         (_%$%g247815247877%_ _%$%g247816247880%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g247814248816%_
                                                      _%$%hd247645247758%_))
                                                   (_%$%g247601247654%_
                                                    _%$%g247602247657%_))))
                                           (_%$%g247601247654%_
                                            _%$%g247602247657%_))
                                       (_%$%g247601247654%_
                                        _%$%g247602247657%_))
                                   (_%$%g247601247654%_ _%$%g247602247657%_))
                               (_%$%g247601247654%_ _%$%g247602247657%_))))
                       (_%$%g247601247654%_ _%$%g247602247657%_))
                   (_%$%g247601247654%_ _%$%g247602247657%_))
               (_%$%g247601247654%_ _%$%g247602247657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g247601247654%_
                                                _%$%g247602247657%_))
                                           (_%$%g247601247654%_
                                            _%$%g247602247657%_))))
                                   (_%$%g247601247654%_ _%$%g247602247657%_))))
                           (_%$%g247601247654%_ _%$%g247602247657%_))))
                   (_%$%g247601247654%_ _%$%g247602247657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g247601247654%_
                                                    _%$%g247602247657%_))
                                               (_%$%g247601247654%_
                                                _%$%g247602247657%_))
                                           (_%$%g247601247654%_
                                            _%$%g247602247657%_))))
                                   (_%$%g247601247654%_ _%$%g247602247657%_))))
                           (_%$%g247601247654%_ _%$%g247602247657%_))
                       (_%$%g247601247654%_ _%$%g247602247657%_))))
               (_%$%g247601247654%_ _%$%g247602247657%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g247601247654%_
                                                _%$%g247602247657%_))))
                                       (_%$%g247601247654%_
                                        _%$%g247602247657%_))))
                               (_%$%g247601247654%_ _%$%g247602247657%_))
                           (_%$%g247601247654%_ _%$%g247602247657%_))
                       (_%$%g247601247654%_ _%$%g247602247657%_))))
               (_%$%g247601247654%_ _%$%g247602247657%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g247600248819%_
                                            _%$%g245993246055%_))
                                         _%stx245983%_))))))))
                  (_%__kont249046249047%_ (lambda () _%stx245983%_)))
              (let ((_%__match249075249076%_
                     (lambda (_%$%e245995246023%_
                              _%$%hd245996246026%_
                              _%$%tl245997246028%_
                              _%$%e245998246031%_
                              _%$%hd245999246034%_
                              _%$%tl246000246036%_
                              _%$%e246001246039%_
                              _%$%hd246002246042%_
                              _%$%tl246003246044%_
                              _%$%e246004246047%_
                              _%$%hd246005246050%_
                              _%$%tl246006246052%_)
                       (let ((_%$%g245993246055%_ _%$%hd246005246050%_)
                             (_%$%g245994246056%_ _%$%hd246002246042%_))
                         (if (let ((__tmp250280
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g245994246056%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp250280))
                             (_%__kont249044249045%_
                              _%$%g245993246055%_
                              _%$%g245994246056%_)
                             (_%__kont249046249047%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx249042249043%_))
                    (let ((_%$%e245995246023%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx249042249043%_))))
                      (let ((_%$%tl245997246028%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e245995246023%_)))
                            (_%$%hd245996246026%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e245995246023%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl245997246028%_))
                            (let ((_%$%e245998246031%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl245997246028%_))))
                              (let ((_%$%tl246000246036%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e245998246031%_)))
                                    (_%$%hd245999246034%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e245998246031%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd245999246034%_))
                                    (let ((_%$%e246001246039%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd245999246034%_))))
                                      (let ((_%$%tl246003246044%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e246001246039%_)))
                                            (_%$%hd246002246042%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e246001246039%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl246003246044%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl246000246036%_))
                                                (let ((_%$%e246004246047%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl246000246036%_))))
                                                  (let ((_%$%tl246006246052%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e246004246047%_)))
                                                        (_%$%hd246005246050%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e246004246047%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl246006246052%_))
                                                        (_%__match249075249076%_
                                                         _%$%e245995246023%_
                                                         _%$%hd245996246026%_
                                                         _%$%tl245997246028%_
                                                         _%$%e245998246031%_
                                                         _%$%hd245999246034%_
                                                         _%$%tl246000246036%_
                                                         _%$%e246001246039%_
                                                         _%$%hd246002246042%_
                                                         _%$%tl246003246044%_
                                                         _%$%e246004246047%_
                                                         _%$%hd246005246050%_
                                                         _%$%tl246006246052%_)
                                                        (_%__kont249046249047%_))))
                                                (_%__kont249046249047%_))
                                            (_%__kont249046249047%_))))
                                    (_%__kont249046249047%_))))
                            (_%__kont249046249047%_))))
                    (_%__kont249046249047%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self245835%_ _%stx245836%_)
        (let* ((_%__stx249078249079%_ _%stx245836%_)
               (_%$%g245839245872%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx249078249079%_)))))
          (let ((_%__kont249080249081%_
                 (lambda (_%$%g245841245962%_) _%$%g245841245962%_))
                (_%__kont249082249083%_
                 (lambda (_%$%g245857245901%_ _%$%g245858245902%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self245835%_ _%$%g245857245901%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx249078249079%_))
                (let ((_%$%e245842245922%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx249078249079%_))))
                  (let ((_%$%tl245844245927%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e245842245922%_)))
                        (_%$%hd245843245925%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e245842245922%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl245844245927%_))
                        (let ((_%$%e245845245930%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl245844245927%_))))
                          (let ((_%$%tl245847245935%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e245845245930%_)))
                                (_%$%hd245846245933%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e245845245930%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd245846245933%_))
                                (let ((_%$%e245848245938%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd245846245933%_))))
                                  (let ((_%$%tl245850245943%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e245848245938%_)))
                                        (_%$%hd245849245941%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e245848245938%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd245849245941%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%$%hd245849245941%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl245850245943%_))
                                                (let ((_%$%e245851245946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl245850245943%_))))
                                                  (let ((_%$%tl245853245951%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e245851245946%_)))
                                                        (_%$%hd245852245949%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e245851245946%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl245853245951%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl245847245935%_))
                                                            (let ((_%$%e245854245954%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl245847245935%_))))
                      (let ((_%$%tl245856245959%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e245854245954%_)))
                            (_%$%hd245855245957%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e245854245954%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl245856245959%_))
                            (_%__kont249080249081%_ _%$%hd245852245949%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g245839245872%_)))))
                    (let () (declare (not safe)) (_%$%g245839245872%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl245847245935%_))
                    (let ((_%$%e245865245893%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl245847245935%_))))
                      (let ((_%$%tl245867245898%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e245865245893%_)))
                            (_%$%hd245866245896%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e245865245893%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl245867245898%_))
                            (_%__kont249082249083%_
                             _%$%hd245866245896%_
                             _%$%hd245846245933%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g245839245872%_)))))
                    (let () (declare (not safe)) (_%$%g245839245872%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl245847245935%_))
                                                    (let ((_%$%e245865245893%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl245847245935%_))))
                                                      (let ((_%$%tl245867245898%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e245865245893%_)))
                    (_%$%hd245866245896%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e245865245893%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl245867245898%_))
                    (_%__kont249082249083%_
                     _%$%hd245866245896%_
                     _%$%hd245846245933%_)
                    (let () (declare (not safe)) (_%$%g245839245872%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g245839245872%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl245847245935%_))
                                                (let ((_%$%e245865245893%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl245847245935%_))))
                                                  (let ((_%$%tl245867245898%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e245865245893%_)))
                                                        (_%$%hd245866245896%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e245865245893%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl245867245898%_))
                                                        (_%__kont249082249083%_
                                                         _%$%hd245866245896%_
                                                         _%$%hd245846245933%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g245839245872%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g245839245872%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl245847245935%_))
                                            (let ((_%$%e245865245893%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl245847245935%_))))
                                              (let ((_%$%tl245867245898%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e245865245893%_)))
                                                    (_%$%hd245866245896%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e245865245893%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl245867245898%_))
                                                    (_%__kont249082249083%_
                                                     _%$%hd245866245896%_
                                                     _%$%hd245846245933%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g245839245872%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g245839245872%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl245847245935%_))
                                    (let ((_%$%e245865245893%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl245847245935%_))))
                                      (let ((_%$%tl245867245898%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e245865245893%_)))
                                            (_%$%hd245866245896%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e245865245893%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl245867245898%_))
                                            (_%__kont249082249083%_
                                             _%$%hd245866245896%_
                                             _%$%hd245846245933%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g245839245872%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g245839245872%_))))))
                        (let () (declare (not safe)) (_%$%g245839245872%_)))))
                (let () (declare (not safe)) (_%$%g245839245872%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self245751%_ _%stx245752%_)
        (let* ((_%$%g245754245775%_
                (lambda (_%$%g245755245772%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g245755245772%_))))
               (_%$%g245753245832%_
                (lambda (_%$%g245755245778%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g245755245778%_))
                      (let ((_%$%e245759245780%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g245755245778%_))))
                        (let ((_%$%hd245760245783%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e245759245780%_)))
                              (_%$%tl245761245785%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e245759245780%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl245761245785%_))
                              (let ((_%$%e245762245788%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl245761245785%_))))
                                (let ((_%$%hd245763245791%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e245762245788%_)))
                                      (_%$%tl245764245793%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e245762245788%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl245764245793%_))
                                      (let ((_%$%e245765245796%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl245764245793%_))))
                                        (let ((_%$%hd245766245799%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e245765245796%_)))
                                              (_%$%tl245767245801%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e245765245796%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl245767245801%_))
                                              (let ((_%$%e245768245804%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl245767245801%_))))
                                                (let ((_%$%hd245769245807%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e245768245804%_)))
                                                      (_%$%tl245770245809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e245768245804%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl245770245809%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self245751%_
                                                         _%$%hd245766245799%_))
                                                      (_%$%g245754245775%_
                                                       _%$%g245755245778%_))))
                                              (_%$%g245754245775%_
                                               _%$%g245755245778%_))))
                                      (_%$%g245754245775%_
                                       _%$%g245755245778%_))))
                              (_%$%g245754245775%_ _%$%g245755245778%_))))
                      (_%$%g245754245775%_ _%$%g245755245778%_)))))
          (_%$%g245753245832%_ _%stx245752%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self244716%_ _%stx244717%_)
        (let* ((_%__stx249144249145%_ _%stx244717%_)
               (_%$%g244725244947%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx249144249145%_)))))
          (let ((_%__kont249146249147%_
                 (lambda (_%$%g244727245700%_
                          _%$%g244728245701%_
                          _%$%g244729245702%_
                          _%$%g244730245703%_)
                   (let ((__tmp250282
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self244716%_ 'methods)))
                         (__tmp250281
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g244728245701%_))))
                     (declare (not safe))
                     (hash-put! __tmp250282 __tmp250281 '#t))
                   (for-each
                    (lambda (_%$%g245736245738%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self244716%_ _%$%g245736245738%_)))
                    (let ((__tmp250283
                           (lambda (_%$%g245740245743%_ _%$%g245741245745%_)
                             (cons _%$%g245740245743%_ _%$%g245741245745%_))))
                      (declare (not safe))
                      (foldr__0 __tmp250283 '() _%$%g244727245700%_)))))
                (_%__kont249150249151%_
                 (lambda (_%$%g244770245537%_
                          _%$%g244771245538%_
                          _%$%g244772245539%_
                          _%$%g244773245540%_
                          _%$%g244774245541%_)
                   (let ((__tmp250285
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self244716%_ 'methods)))
                         (__tmp250284
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g244771245538%_))))
                     (declare (not safe))
                     (hash-put! __tmp250285 __tmp250284 '#t))
                   (for-each
                    (lambda (_%$%g245581245583%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self244716%_ _%$%g245581245583%_)))
                    (let ((__tmp250286
                           (lambda (_%$%g245585245588%_ _%$%g245586245590%_)
                             (cons _%$%g245585245588%_ _%$%g245586245590%_))))
                      (declare (not safe))
                      (foldr__0 __tmp250286 '() _%$%g244770245537%_)))))
                (_%__kont249154249155%_
                 (lambda (_%$%g244823245372%_
                          _%$%g244824245373%_
                          _%$%g244825245374%_)
                   (let ((__tmp250288
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self244716%_ 'slots)))
                         (__tmp250287
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g244823245372%_))))
                     (declare (not safe))
                     (hash-put! __tmp250288 __tmp250287 '#t))))
                (_%__kont249156249157%_
                 (lambda (_%$%g244856245249%_
                          _%$%g244857245250%_
                          _%$%g244858245251%_
                          _%$%g244859245252%_)
                   (let ((__tmp250290
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self244716%_ 'slots)))
                         (__tmp250289
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g244857245250%_))))
                     (declare (not safe))
                     (hash-put! __tmp250290 __tmp250289 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self244716%_ _%$%g244856245249%_))))
                (_%__kont249158249159%_
                 (lambda (_%$%g244893245123%_ _%$%g244894245124%_)
                   (let* ((_%accessor245146%_
                           (let ((__tmp250291
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g244894245124%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp250291)))
                          (_%klass245148%_
                           (let ((__tmp250292
                                  (##structure-ref
                                   _%accessor245146%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx244717%_
                              __tmp250292)))
                          (_%slot245150%_
                           (##structure-ref
                            _%accessor245146%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor245146%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass245148%_
                                    _%slot245150%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass245148%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp250294
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self244716%_ 'slots)))
                               (__tmp250293
                                (##structure-ref
                                 _%accessor245146%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp250294 __tmp250293 '#t))))))
                (_%__kont249160249161%_
                 (lambda (_%$%g244916245023%_
                          _%$%g244917245024%_
                          _%$%g244918245025%_)
                   (let* ((_%mutator245052%_
                           (let ((__tmp250295
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g244918245025%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp250295)))
                          (_%klass245054%_
                           (let ((__tmp250296
                                  (##structure-ref
                                   _%mutator245052%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx244717%_
                              __tmp250296)))
                          (_%slot245056%_
                           (##structure-ref
                            _%mutator245052%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator245052%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass245054%_
                                    _%slot245056%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass245054%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp250297
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self244716%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp250297 _%slot245056%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1
                        _%self244716%_
                        _%$%g244916245023%_)))))
                (_%__kont249162249163%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self244716%_ _%stx244717%_)))))
            (let* ((_%__match249643249644%_
                    (lambda (_%$%e244919244959%_
                             _%$%hd244920244962%_
                             _%$%tl244921244964%_
                             _%$%e244922244967%_
                             _%$%hd244923244970%_
                             _%$%tl244924244972%_
                             _%$%e244925244975%_
                             _%$%hd244926244978%_
                             _%$%tl244927244980%_
                             _%$%e244928244983%_
                             _%$%hd244929244986%_
                             _%$%tl244930244988%_
                             _%$%e244931244991%_
                             _%$%hd244932244994%_
                             _%$%tl244933244996%_
                             _%$%e244934244999%_
                             _%$%hd244935245002%_
                             _%$%tl244936245004%_
                             _%$%e244937245007%_
                             _%$%hd244938245010%_
                             _%$%tl244939245012%_
                             _%$%e244940245015%_
                             _%$%hd244941245018%_
                             _%$%tl244942245020%_)
                      (let ((_%$%g244916245023%_ _%$%hd244941245018%_)
                            (_%$%g244917245024%_ _%$%hd244938245010%_)
                            (_%$%g244918245025%_ _%$%hd244929244986%_))
                        (if (and (let ((__tmp250298
                                        (let ((__tmp250299
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g244918245025%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp250299))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp250298
                                    'gxc#!mutator::t))
                                 (let ((__tmp250300
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self244716%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g244917245024%_
                                    __tmp250300)))
                            (_%__kont249160249161%_
                             _%$%g244916245023%_
                             _%$%g244917245024%_
                             _%$%g244918245025%_)
                            (_%__kont249162249163%_)))))
                   (_%__match249641249642%_
                    (lambda (_%$%e244919244959%_
                             _%$%hd244920244962%_
                             _%$%tl244921244964%_
                             _%$%e244922244967%_
                             _%$%hd244923244970%_
                             _%$%tl244924244972%_
                             _%$%e244925244975%_
                             _%$%hd244926244978%_
                             _%$%tl244927244980%_
                             _%$%e244928244983%_
                             _%$%hd244929244986%_
                             _%$%tl244930244988%_
                             _%$%e244931244991%_
                             _%$%hd244932244994%_
                             _%$%tl244933244996%_
                             _%$%e244934244999%_
                             _%$%hd244935245002%_
                             _%$%tl244936245004%_
                             _%$%e244937245007%_
                             _%$%hd244938245010%_
                             _%$%tl244939245012%_
                             _%$%e244940245015%_
                             _%$%hd244941245018%_
                             _%$%tl244942245020%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl244942245020%_))
                          (_%__match249643249644%_
                           _%$%e244919244959%_
                           _%$%hd244920244962%_
                           _%$%tl244921244964%_
                           _%$%e244922244967%_
                           _%$%hd244923244970%_
                           _%$%tl244924244972%_
                           _%$%e244925244975%_
                           _%$%hd244926244978%_
                           _%$%tl244927244980%_
                           _%$%e244928244983%_
                           _%$%hd244929244986%_
                           _%$%tl244930244988%_
                           _%$%e244931244991%_
                           _%$%hd244932244994%_
                           _%$%tl244933244996%_
                           _%$%e244934244999%_
                           _%$%hd244935245002%_
                           _%$%tl244936245004%_
                           _%$%e244937245007%_
                           _%$%hd244938245010%_
                           _%$%tl244939245012%_
                           _%$%e244940245015%_
                           _%$%hd244941245018%_
                           _%$%tl244942245020%_)
                          (_%__kont249162249163%_))))
                   (_%__match249635249636%_
                    (lambda (_%$%e244919244959%_
                             _%$%hd244920244962%_
                             _%$%tl244921244964%_
                             _%$%e244922244967%_
                             _%$%hd244923244970%_
                             _%$%tl244924244972%_
                             _%$%e244925244975%_
                             _%$%hd244926244978%_
                             _%$%tl244927244980%_
                             _%$%e244928244983%_
                             _%$%hd244929244986%_
                             _%$%tl244930244988%_
                             _%$%e244931244991%_
                             _%$%hd244932244994%_
                             _%$%tl244933244996%_
                             _%$%e244934244999%_
                             _%$%hd244935245002%_
                             _%$%tl244936245004%_
                             _%$%e244937245007%_
                             _%$%hd244938245010%_
                             _%$%tl244939245012%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl244933244996%_))
                          (let ((_%$%e244940245015%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl244933244996%_))))
                            (let ((_%$%tl244942245020%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e244940245015%_)))
                                  (_%$%hd244941245018%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e244940245015%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl244942245020%_))
                                  (_%__match249643249644%_
                                   _%$%e244919244959%_
                                   _%$%hd244920244962%_
                                   _%$%tl244921244964%_
                                   _%$%e244922244967%_
                                   _%$%hd244923244970%_
                                   _%$%tl244924244972%_
                                   _%$%e244925244975%_
                                   _%$%hd244926244978%_
                                   _%$%tl244927244980%_
                                   _%$%e244928244983%_
                                   _%$%hd244929244986%_
                                   _%$%tl244930244988%_
                                   _%$%e244931244991%_
                                   _%$%hd244932244994%_
                                   _%$%tl244933244996%_
                                   _%$%e244934244999%_
                                   _%$%hd244935245002%_
                                   _%$%tl244936245004%_
                                   _%$%e244937245007%_
                                   _%$%hd244938245010%_
                                   _%$%tl244939245012%_
                                   _%$%e244940245015%_
                                   _%$%hd244941245018%_
                                   _%$%tl244942245020%_)
                                  (_%__kont249162249163%_))))
                          (_%__kont249162249163%_))))
                   (_%__match249581249582%_
                    (lambda (_%$%e244895245067%_
                             _%$%hd244896245070%_
                             _%$%tl244897245072%_
                             _%$%e244898245075%_
                             _%$%hd244899245078%_
                             _%$%tl244900245080%_
                             _%$%e244901245083%_
                             _%$%hd244902245086%_
                             _%$%tl244903245088%_
                             _%$%e244904245091%_
                             _%$%hd244905245094%_
                             _%$%tl244906245096%_
                             _%$%e244907245099%_
                             _%$%hd244908245102%_
                             _%$%tl244909245104%_
                             _%$%e244910245107%_
                             _%$%hd244911245110%_
                             _%$%tl244912245112%_
                             _%$%e244913245115%_
                             _%$%hd244914245118%_
                             _%$%tl244915245120%_)
                      (let ((_%$%g244893245123%_ _%$%hd244914245118%_)
                            (_%$%g244894245124%_ _%$%hd244905245094%_))
                        (if (and (let ((__tmp250301
                                        (let ((__tmp250302
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g244894245124%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp250302))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp250301
                                    'gxc#!accessor::t))
                                 (let ((__tmp250303
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self244716%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g244893245123%_
                                    __tmp250303)))
                            (_%__kont249158249159%_
                             _%$%g244893245123%_
                             _%$%g244894245124%_)
                            (_%__kont249162249163%_)))))
                   (_%__match249579249580%_
                    (lambda (_%$%e244895245067%_
                             _%$%hd244896245070%_
                             _%$%tl244897245072%_
                             _%$%e244898245075%_
                             _%$%hd244899245078%_
                             _%$%tl244900245080%_
                             _%$%e244901245083%_
                             _%$%hd244902245086%_
                             _%$%tl244903245088%_
                             _%$%e244904245091%_
                             _%$%hd244905245094%_
                             _%$%tl244906245096%_
                             _%$%e244907245099%_
                             _%$%hd244908245102%_
                             _%$%tl244909245104%_
                             _%$%e244910245107%_
                             _%$%hd244911245110%_
                             _%$%tl244912245112%_
                             _%$%e244913245115%_
                             _%$%hd244914245118%_
                             _%$%tl244915245120%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl244909245104%_))
                          (_%__match249581249582%_
                           _%$%e244895245067%_
                           _%$%hd244896245070%_
                           _%$%tl244897245072%_
                           _%$%e244898245075%_
                           _%$%hd244899245078%_
                           _%$%tl244900245080%_
                           _%$%e244901245083%_
                           _%$%hd244902245086%_
                           _%$%tl244903245088%_
                           _%$%e244904245091%_
                           _%$%hd244905245094%_
                           _%$%tl244906245096%_
                           _%$%e244907245099%_
                           _%$%hd244908245102%_
                           _%$%tl244909245104%_
                           _%$%e244910245107%_
                           _%$%hd244911245110%_
                           _%$%tl244912245112%_
                           _%$%e244913245115%_
                           _%$%hd244914245118%_
                           _%$%tl244915245120%_)
                          (_%__match249635249636%_
                           _%$%e244895245067%_
                           _%$%hd244896245070%_
                           _%$%tl244897245072%_
                           _%$%e244898245075%_
                           _%$%hd244899245078%_
                           _%$%tl244900245080%_
                           _%$%e244901245083%_
                           _%$%hd244902245086%_
                           _%$%tl244903245088%_
                           _%$%e244904245091%_
                           _%$%hd244905245094%_
                           _%$%tl244906245096%_
                           _%$%e244907245099%_
                           _%$%hd244908245102%_
                           _%$%tl244909245104%_
                           _%$%e244910245107%_
                           _%$%hd244911245110%_
                           _%$%tl244912245112%_
                           _%$%e244913245115%_
                           _%$%hd244914245118%_
                           _%$%tl244915245120%_))))
                   (_%__match249525249526%_
                    (lambda (_%$%e244860245161%_
                             _%$%hd244861245164%_
                             _%$%tl244862245166%_
                             _%$%e244863245169%_
                             _%$%hd244864245172%_
                             _%$%tl244865245174%_
                             _%$%e244866245177%_
                             _%$%hd244867245180%_
                             _%$%tl244868245182%_
                             _%$%e244869245185%_
                             _%$%hd244870245188%_
                             _%$%tl244871245190%_
                             _%$%e244872245193%_
                             _%$%hd244873245196%_
                             _%$%tl244874245198%_
                             _%$%e244875245201%_
                             _%$%hd244876245204%_
                             _%$%tl244877245206%_
                             _%$%e244878245209%_
                             _%$%hd244879245212%_
                             _%$%tl244880245214%_
                             _%$%e244881245217%_
                             _%$%hd244882245220%_
                             _%$%tl244883245222%_
                             _%$%e244884245225%_
                             _%$%hd244885245228%_
                             _%$%tl244886245230%_
                             _%$%e244887245233%_
                             _%$%hd244888245236%_
                             _%$%tl244889245238%_
                             _%$%e244890245241%_
                             _%$%hd244891245244%_
                             _%$%tl244892245246%_)
                      (let ((_%$%g244856245249%_ _%$%hd244891245244%_)
                            (_%$%g244857245250%_ _%$%hd244888245236%_)
                            (_%$%g244858245251%_ _%$%hd244879245212%_)
                            (_%$%g244859245252%_ _%$%hd244870245188%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g244859245252%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g244859245252%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp250304
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self244716%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g244858245251%_
                                    __tmp250304)))
                            (_%__kont249156249157%_
                             _%$%g244856245249%_
                             _%$%g244857245250%_
                             _%$%g244858245251%_
                             _%$%g244859245252%_)
                            (_%__kont249162249163%_)))))
                   (_%__match249517249518%_
                    (lambda (_%$%e244860245161%_
                             _%$%hd244861245164%_
                             _%$%tl244862245166%_
                             _%$%e244863245169%_
                             _%$%hd244864245172%_
                             _%$%tl244865245174%_
                             _%$%e244866245177%_
                             _%$%hd244867245180%_
                             _%$%tl244868245182%_
                             _%$%e244869245185%_
                             _%$%hd244870245188%_
                             _%$%tl244871245190%_
                             _%$%e244872245193%_
                             _%$%hd244873245196%_
                             _%$%tl244874245198%_
                             _%$%e244875245201%_
                             _%$%hd244876245204%_
                             _%$%tl244877245206%_
                             _%$%e244878245209%_
                             _%$%hd244879245212%_
                             _%$%tl244880245214%_
                             _%$%e244881245217%_
                             _%$%hd244882245220%_
                             _%$%tl244883245222%_
                             _%$%e244884245225%_
                             _%$%hd244885245228%_
                             _%$%tl244886245230%_
                             _%$%e244887245233%_
                             _%$%hd244888245236%_
                             _%$%tl244889245238%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl244883245222%_))
                          (let ((_%$%e244890245241%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl244883245222%_))))
                            (let ((_%$%tl244892245246%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e244890245241%_)))
                                  (_%$%hd244891245244%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e244890245241%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl244892245246%_))
                                  (_%__match249525249526%_
                                   _%$%e244860245161%_
                                   _%$%hd244861245164%_
                                   _%$%tl244862245166%_
                                   _%$%e244863245169%_
                                   _%$%hd244864245172%_
                                   _%$%tl244865245174%_
                                   _%$%e244866245177%_
                                   _%$%hd244867245180%_
                                   _%$%tl244868245182%_
                                   _%$%e244869245185%_
                                   _%$%hd244870245188%_
                                   _%$%tl244871245190%_
                                   _%$%e244872245193%_
                                   _%$%hd244873245196%_
                                   _%$%tl244874245198%_
                                   _%$%e244875245201%_
                                   _%$%hd244876245204%_
                                   _%$%tl244877245206%_
                                   _%$%e244878245209%_
                                   _%$%hd244879245212%_
                                   _%$%tl244880245214%_
                                   _%$%e244881245217%_
                                   _%$%hd244882245220%_
                                   _%$%tl244883245222%_
                                   _%$%e244884245225%_
                                   _%$%hd244885245228%_
                                   _%$%tl244886245230%_
                                   _%$%e244887245233%_
                                   _%$%hd244888245236%_
                                   _%$%tl244889245238%_
                                   _%$%e244890245241%_
                                   _%$%hd244891245244%_
                                   _%$%tl244892245246%_)
                                  (_%__kont249162249163%_))))
                          (_%__match249641249642%_
                           _%$%e244860245161%_
                           _%$%hd244861245164%_
                           _%$%tl244862245166%_
                           _%$%e244863245169%_
                           _%$%hd244864245172%_
                           _%$%tl244865245174%_
                           _%$%e244866245177%_
                           _%$%hd244867245180%_
                           _%$%tl244868245182%_
                           _%$%e244869245185%_
                           _%$%hd244870245188%_
                           _%$%tl244871245190%_
                           _%$%e244872245193%_
                           _%$%hd244873245196%_
                           _%$%tl244874245198%_
                           _%$%e244875245201%_
                           _%$%hd244876245204%_
                           _%$%tl244877245206%_
                           _%$%e244878245209%_
                           _%$%hd244879245212%_
                           _%$%tl244880245214%_
                           _%$%e244881245217%_
                           _%$%hd244882245220%_
                           _%$%tl244883245222%_))))
                   (_%__match249439249440%_
                    (lambda (_%$%e244826245292%_
                             _%$%hd244827245295%_
                             _%$%tl244828245297%_
                             _%$%e244829245300%_
                             _%$%hd244830245303%_
                             _%$%tl244831245305%_
                             _%$%e244832245308%_
                             _%$%hd244833245311%_
                             _%$%tl244834245313%_
                             _%$%e244835245316%_
                             _%$%hd244836245319%_
                             _%$%tl244837245321%_
                             _%$%e244838245324%_
                             _%$%hd244839245327%_
                             _%$%tl244840245329%_
                             _%$%e244841245332%_
                             _%$%hd244842245335%_
                             _%$%tl244843245337%_
                             _%$%e244844245340%_
                             _%$%hd244845245343%_
                             _%$%tl244846245345%_
                             _%$%e244847245348%_
                             _%$%hd244848245351%_
                             _%$%tl244849245353%_
                             _%$%e244850245356%_
                             _%$%hd244851245359%_
                             _%$%tl244852245361%_
                             _%$%e244853245364%_
                             _%$%hd244854245367%_
                             _%$%tl244855245369%_)
                      (let ((_%$%g244823245372%_ _%$%hd244854245367%_)
                            (_%$%g244824245373%_ _%$%hd244845245343%_)
                            (_%$%g244825245374%_ _%$%hd244836245319%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g244825245374%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g244825245374%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp250305
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self244716%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g244824245373%_
                                    __tmp250305)))
                            (_%__kont249154249155%_
                             _%$%g244823245372%_
                             _%$%g244824245373%_
                             _%$%g244825245374%_)
                            (_%__match249643249644%_
                             _%$%e244826245292%_
                             _%$%hd244827245295%_
                             _%$%tl244828245297%_
                             _%$%e244829245300%_
                             _%$%hd244830245303%_
                             _%$%tl244831245305%_
                             _%$%e244832245308%_
                             _%$%hd244833245311%_
                             _%$%tl244834245313%_
                             _%$%e244835245316%_
                             _%$%hd244836245319%_
                             _%$%tl244837245321%_
                             _%$%e244838245324%_
                             _%$%hd244839245327%_
                             _%$%tl244840245329%_
                             _%$%e244841245332%_
                             _%$%hd244842245335%_
                             _%$%tl244843245337%_
                             _%$%e244844245340%_
                             _%$%hd244845245343%_
                             _%$%tl244846245345%_
                             _%$%e244847245348%_
                             _%$%hd244848245351%_
                             _%$%tl244849245353%_)))))
                   (_%__match249437249438%_
                    (lambda (_%$%e244826245292%_
                             _%$%hd244827245295%_
                             _%$%tl244828245297%_
                             _%$%e244829245300%_
                             _%$%hd244830245303%_
                             _%$%tl244831245305%_
                             _%$%e244832245308%_
                             _%$%hd244833245311%_
                             _%$%tl244834245313%_
                             _%$%e244835245316%_
                             _%$%hd244836245319%_
                             _%$%tl244837245321%_
                             _%$%e244838245324%_
                             _%$%hd244839245327%_
                             _%$%tl244840245329%_
                             _%$%e244841245332%_
                             _%$%hd244842245335%_
                             _%$%tl244843245337%_
                             _%$%e244844245340%_
                             _%$%hd244845245343%_
                             _%$%tl244846245345%_
                             _%$%e244847245348%_
                             _%$%hd244848245351%_
                             _%$%tl244849245353%_
                             _%$%e244850245356%_
                             _%$%hd244851245359%_
                             _%$%tl244852245361%_
                             _%$%e244853245364%_
                             _%$%hd244854245367%_
                             _%$%tl244855245369%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl244849245353%_))
                          (_%__match249439249440%_
                           _%$%e244826245292%_
                           _%$%hd244827245295%_
                           _%$%tl244828245297%_
                           _%$%e244829245300%_
                           _%$%hd244830245303%_
                           _%$%tl244831245305%_
                           _%$%e244832245308%_
                           _%$%hd244833245311%_
                           _%$%tl244834245313%_
                           _%$%e244835245316%_
                           _%$%hd244836245319%_
                           _%$%tl244837245321%_
                           _%$%e244838245324%_
                           _%$%hd244839245327%_
                           _%$%tl244840245329%_
                           _%$%e244841245332%_
                           _%$%hd244842245335%_
                           _%$%tl244843245337%_
                           _%$%e244844245340%_
                           _%$%hd244845245343%_
                           _%$%tl244846245345%_
                           _%$%e244847245348%_
                           _%$%hd244848245351%_
                           _%$%tl244849245353%_
                           _%$%e244850245356%_
                           _%$%hd244851245359%_
                           _%$%tl244852245361%_
                           _%$%e244853245364%_
                           _%$%hd244854245367%_
                           _%$%tl244855245369%_)
                          (_%__match249517249518%_
                           _%$%e244826245292%_
                           _%$%hd244827245295%_
                           _%$%tl244828245297%_
                           _%$%e244829245300%_
                           _%$%hd244830245303%_
                           _%$%tl244831245305%_
                           _%$%e244832245308%_
                           _%$%hd244833245311%_
                           _%$%tl244834245313%_
                           _%$%e244835245316%_
                           _%$%hd244836245319%_
                           _%$%tl244837245321%_
                           _%$%e244838245324%_
                           _%$%hd244839245327%_
                           _%$%tl244840245329%_
                           _%$%e244841245332%_
                           _%$%hd244842245335%_
                           _%$%tl244843245337%_
                           _%$%e244844245340%_
                           _%$%hd244845245343%_
                           _%$%tl244846245345%_
                           _%$%e244847245348%_
                           _%$%hd244848245351%_
                           _%$%tl244849245353%_
                           _%$%e244850245356%_
                           _%$%hd244851245359%_
                           _%$%tl244852245361%_
                           _%$%e244853245364%_
                           _%$%hd244854245367%_
                           _%$%tl244855245369%_))))
                   (_%__match249427249428%_
                    (lambda (_%$%e244826245292%_
                             _%$%hd244827245295%_
                             _%$%tl244828245297%_
                             _%$%e244829245300%_
                             _%$%hd244830245303%_
                             _%$%tl244831245305%_
                             _%$%e244832245308%_
                             _%$%hd244833245311%_
                             _%$%tl244834245313%_
                             _%$%e244835245316%_
                             _%$%hd244836245319%_
                             _%$%tl244837245321%_
                             _%$%e244838245324%_
                             _%$%hd244839245327%_
                             _%$%tl244840245329%_
                             _%$%e244841245332%_
                             _%$%hd244842245335%_
                             _%$%tl244843245337%_
                             _%$%e244844245340%_
                             _%$%hd244845245343%_
                             _%$%tl244846245345%_
                             _%$%e244847245348%_
                             _%$%hd244848245351%_
                             _%$%tl244849245353%_
                             _%$%e244850245356%_
                             _%$%hd244851245359%_
                             _%$%tl244852245361%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%$%hd244851245359%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl244852245361%_))
                              (let ((_%$%e244853245364%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl244852245361%_))))
                                (let ((_%$%tl244855245369%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e244853245364%_)))
                                      (_%$%hd244854245367%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e244853245364%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl244855245369%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl244849245353%_))
                                          (_%__match249439249440%_
                                           _%$%e244826245292%_
                                           _%$%hd244827245295%_
                                           _%$%tl244828245297%_
                                           _%$%e244829245300%_
                                           _%$%hd244830245303%_
                                           _%$%tl244831245305%_
                                           _%$%e244832245308%_
                                           _%$%hd244833245311%_
                                           _%$%tl244834245313%_
                                           _%$%e244835245316%_
                                           _%$%hd244836245319%_
                                           _%$%tl244837245321%_
                                           _%$%e244838245324%_
                                           _%$%hd244839245327%_
                                           _%$%tl244840245329%_
                                           _%$%e244841245332%_
                                           _%$%hd244842245335%_
                                           _%$%tl244843245337%_
                                           _%$%e244844245340%_
                                           _%$%hd244845245343%_
                                           _%$%tl244846245345%_
                                           _%$%e244847245348%_
                                           _%$%hd244848245351%_
                                           _%$%tl244849245353%_
                                           _%$%e244850245356%_
                                           _%$%hd244851245359%_
                                           _%$%tl244852245361%_
                                           _%$%e244853245364%_
                                           _%$%hd244854245367%_
                                           _%$%tl244855245369%_)
                                          (_%__match249517249518%_
                                           _%$%e244826245292%_
                                           _%$%hd244827245295%_
                                           _%$%tl244828245297%_
                                           _%$%e244829245300%_
                                           _%$%hd244830245303%_
                                           _%$%tl244831245305%_
                                           _%$%e244832245308%_
                                           _%$%hd244833245311%_
                                           _%$%tl244834245313%_
                                           _%$%e244835245316%_
                                           _%$%hd244836245319%_
                                           _%$%tl244837245321%_
                                           _%$%e244838245324%_
                                           _%$%hd244839245327%_
                                           _%$%tl244840245329%_
                                           _%$%e244841245332%_
                                           _%$%hd244842245335%_
                                           _%$%tl244843245337%_
                                           _%$%e244844245340%_
                                           _%$%hd244845245343%_
                                           _%$%tl244846245345%_
                                           _%$%e244847245348%_
                                           _%$%hd244848245351%_
                                           _%$%tl244849245353%_
                                           _%$%e244850245356%_
                                           _%$%hd244851245359%_
                                           _%$%tl244852245361%_
                                           _%$%e244853245364%_
                                           _%$%hd244854245367%_
                                           _%$%tl244855245369%_))
                                      (_%__match249641249642%_
                                       _%$%e244826245292%_
                                       _%$%hd244827245295%_
                                       _%$%tl244828245297%_
                                       _%$%e244829245300%_
                                       _%$%hd244830245303%_
                                       _%$%tl244831245305%_
                                       _%$%e244832245308%_
                                       _%$%hd244833245311%_
                                       _%$%tl244834245313%_
                                       _%$%e244835245316%_
                                       _%$%hd244836245319%_
                                       _%$%tl244837245321%_
                                       _%$%e244838245324%_
                                       _%$%hd244839245327%_
                                       _%$%tl244840245329%_
                                       _%$%e244841245332%_
                                       _%$%hd244842245335%_
                                       _%$%tl244843245337%_
                                       _%$%e244844245340%_
                                       _%$%hd244845245343%_
                                       _%$%tl244846245345%_
                                       _%$%e244847245348%_
                                       _%$%hd244848245351%_
                                       _%$%tl244849245353%_))))
                              (_%__match249641249642%_
                               _%$%e244826245292%_
                               _%$%hd244827245295%_
                               _%$%tl244828245297%_
                               _%$%e244829245300%_
                               _%$%hd244830245303%_
                               _%$%tl244831245305%_
                               _%$%e244832245308%_
                               _%$%hd244833245311%_
                               _%$%tl244834245313%_
                               _%$%e244835245316%_
                               _%$%hd244836245319%_
                               _%$%tl244837245321%_
                               _%$%e244838245324%_
                               _%$%hd244839245327%_
                               _%$%tl244840245329%_
                               _%$%e244841245332%_
                               _%$%hd244842245335%_
                               _%$%tl244843245337%_
                               _%$%e244844245340%_
                               _%$%hd244845245343%_
                               _%$%tl244846245345%_
                               _%$%e244847245348%_
                               _%$%hd244848245351%_
                               _%$%tl244849245353%_))
                          (_%__match249641249642%_
                           _%$%e244826245292%_
                           _%$%hd244827245295%_
                           _%$%tl244828245297%_
                           _%$%e244829245300%_
                           _%$%hd244830245303%_
                           _%$%tl244831245305%_
                           _%$%e244832245308%_
                           _%$%hd244833245311%_
                           _%$%tl244834245313%_
                           _%$%e244835245316%_
                           _%$%hd244836245319%_
                           _%$%tl244837245321%_
                           _%$%e244838245324%_
                           _%$%hd244839245327%_
                           _%$%tl244840245329%_
                           _%$%e244841245332%_
                           _%$%hd244842245335%_
                           _%$%tl244843245337%_
                           _%$%e244844245340%_
                           _%$%hd244845245343%_
                           _%$%tl244846245345%_
                           _%$%e244847245348%_
                           _%$%hd244848245351%_
                           _%$%tl244849245353%_))))
                   (_%__match249359249360%_
                    (lambda (_%$%e244775245411%_
                             _%$%hd244776245414%_
                             _%$%tl244777245416%_
                             _%$%e244778245419%_
                             _%$%hd244779245422%_
                             _%$%tl244780245424%_
                             _%$%e244781245427%_
                             _%$%hd244782245430%_
                             _%$%tl244783245432%_
                             _%$%e244784245435%_
                             _%$%hd244785245438%_
                             _%$%tl244786245440%_
                             _%$%e244787245443%_
                             _%$%hd244788245446%_
                             _%$%tl244789245448%_
                             _%$%e244790245451%_
                             _%$%hd244791245454%_
                             _%$%tl244792245456%_
                             _%$%e244793245459%_
                             _%$%hd244794245462%_
                             _%$%tl244795245464%_
                             _%$%e244796245467%_
                             _%$%hd244797245470%_
                             _%$%tl244798245472%_
                             _%$%e244799245475%_
                             _%$%hd244800245478%_
                             _%$%tl244801245480%_
                             _%$%e244802245483%_
                             _%$%hd244803245486%_
                             _%$%tl244804245488%_
                             _%$%e244805245491%_
                             _%$%hd244806245494%_
                             _%$%tl244807245496%_
                             _%$%e244808245499%_
                             _%$%hd244809245502%_
                             _%$%tl244810245504%_
                             _%$%e244811245507%_
                             _%$%hd244812245510%_
                             _%$%tl244813245512%_
                             _%__splice249152249153%_
                             _%$%target244814245515%_
                             _%$%tl244816245517%_)
                      (letrec ((_%$%loop244817245520%_
                                (lambda (_%$%hd244815245523%_
                                         _%$%args244821245525%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd244815245523%_))
                                      (let ((_%$%e244818245527%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd244815245523%_))))
                                        (let ((_%$%lp-tl244820245532%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e244818245527%_)))
                                              (_%$%lp-hd244819245530%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e244818245527%_))))
                                          (_%$%loop244817245520%_
                                           _%$%lp-tl244820245532%_
                                           (cons _%$%lp-hd244819245530%_
                                                 _%$%args244821245525%_))))
                                      (let ((_%$%args244822245535%_
                                             (reverse _%$%args244821245525%_)))
                                        (let ((_%$%g244770245537%_
                                               _%$%args244822245535%_)
                                              (_%$%g244771245538%_
                                               _%$%hd244812245510%_)
                                              (_%$%g244772245539%_
                                               _%$%hd244803245486%_)
                                              (_%$%g244773245540%_
                                               _%$%hd244794245462%_)
                                              (_%$%g244774245541%_
                                               _%$%hd244785245438%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g244774245541%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g244773245540%_
                                                      'call-method))
                                                   (let ((__tmp250306
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self244716%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g244772245539%_
                                                      __tmp250306)))
                                              (_%__kont249150249151%_
                                               _%$%g244770245537%_
                                               _%$%g244771245538%_
                                               _%$%g244772245539%_
                                               _%$%g244773245540%_
                                               _%$%g244774245541%_)
                                              (_%__kont249162249163%_))))))))
                        (_%$%loop244817245520%_
                         _%$%target244814245515%_
                         '()))))
                   (_%__match249317249318%_
                    (lambda (_%$%e244775245411%_
                             _%$%hd244776245414%_
                             _%$%tl244777245416%_
                             _%$%e244778245419%_
                             _%$%hd244779245422%_
                             _%$%tl244780245424%_
                             _%$%e244781245427%_
                             _%$%hd244782245430%_
                             _%$%tl244783245432%_
                             _%$%e244784245435%_
                             _%$%hd244785245438%_
                             _%$%tl244786245440%_
                             _%$%e244787245443%_
                             _%$%hd244788245446%_
                             _%$%tl244789245448%_
                             _%$%e244790245451%_
                             _%$%hd244791245454%_
                             _%$%tl244792245456%_
                             _%$%e244793245459%_
                             _%$%hd244794245462%_
                             _%$%tl244795245464%_
                             _%$%e244796245467%_
                             _%$%hd244797245470%_
                             _%$%tl244798245472%_
                             _%$%e244799245475%_
                             _%$%hd244800245478%_
                             _%$%tl244801245480%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%$%hd244800245478%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl244801245480%_))
                              (let ((_%$%e244802245483%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl244801245480%_))))
                                (let ((_%$%tl244804245488%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e244802245483%_)))
                                      (_%$%hd244803245486%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e244802245483%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl244804245488%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl244798245472%_))
                                          (let ((_%$%e244805245491%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl244798245472%_))))
                                            (let ((_%$%tl244807245496%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e244805245491%_)))
                                                  (_%$%hd244806245494%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e244805245491%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd244806245494%_))
                                                  (let ((_%$%e244808245499%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd244806245494%_))))
                                                    (let ((_%$%tl244810245504%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e244808245499%_)))
                                                          (_%$%hd244809245502%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e244808245499%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd244809245502%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%$%hd244809245502%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl244810245504%_))
                          (let ((_%$%e244811245507%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl244810245504%_))))
                            (let ((_%$%tl244813245512%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e244811245507%_)))
                                  (_%$%hd244812245510%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e244811245507%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl244813245512%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl244807245496%_))
                                      (let ((_%__splice249152249153%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl244807245496%_
                                                '0))))
                                        (let ((_%$%tl244816245517%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice249152249153%_
                                                  '1)))
                                              (_%$%target244814245515%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice249152249153%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl244816245517%_))
                                              (_%__match249359249360%_
                                               _%$%e244775245411%_
                                               _%$%hd244776245414%_
                                               _%$%tl244777245416%_
                                               _%$%e244778245419%_
                                               _%$%hd244779245422%_
                                               _%$%tl244780245424%_
                                               _%$%e244781245427%_
                                               _%$%hd244782245430%_
                                               _%$%tl244783245432%_
                                               _%$%e244784245435%_
                                               _%$%hd244785245438%_
                                               _%$%tl244786245440%_
                                               _%$%e244787245443%_
                                               _%$%hd244788245446%_
                                               _%$%tl244789245448%_
                                               _%$%e244790245451%_
                                               _%$%hd244791245454%_
                                               _%$%tl244792245456%_
                                               _%$%e244793245459%_
                                               _%$%hd244794245462%_
                                               _%$%tl244795245464%_
                                               _%$%e244796245467%_
                                               _%$%hd244797245470%_
                                               _%$%tl244798245472%_
                                               _%$%e244799245475%_
                                               _%$%hd244800245478%_
                                               _%$%tl244801245480%_
                                               _%$%e244802245483%_
                                               _%$%hd244803245486%_
                                               _%$%tl244804245488%_
                                               _%$%e244805245491%_
                                               _%$%hd244806245494%_
                                               _%$%tl244807245496%_
                                               _%$%e244808245499%_
                                               _%$%hd244809245502%_
                                               _%$%tl244810245504%_
                                               _%$%e244811245507%_
                                               _%$%hd244812245510%_
                                               _%$%tl244813245512%_
                                               _%__splice249152249153%_
                                               _%$%target244814245515%_
                                               _%$%tl244816245517%_)
                                              (_%__kont249162249163%_))))
                                      (_%__kont249162249163%_))
                                  (_%__kont249162249163%_))))
                          (_%__kont249162249163%_))
                      (_%__kont249162249163%_))
                  (_%__kont249162249163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont249162249163%_))))
                                          (_%__match249641249642%_
                                           _%$%e244775245411%_
                                           _%$%hd244776245414%_
                                           _%$%tl244777245416%_
                                           _%$%e244778245419%_
                                           _%$%hd244779245422%_
                                           _%$%tl244780245424%_
                                           _%$%e244781245427%_
                                           _%$%hd244782245430%_
                                           _%$%tl244783245432%_
                                           _%$%e244784245435%_
                                           _%$%hd244785245438%_
                                           _%$%tl244786245440%_
                                           _%$%e244787245443%_
                                           _%$%hd244788245446%_
                                           _%$%tl244789245448%_
                                           _%$%e244790245451%_
                                           _%$%hd244791245454%_
                                           _%$%tl244792245456%_
                                           _%$%e244793245459%_
                                           _%$%hd244794245462%_
                                           _%$%tl244795245464%_
                                           _%$%e244796245467%_
                                           _%$%hd244797245470%_
                                           _%$%tl244798245472%_))
                                      (_%__match249641249642%_
                                       _%$%e244775245411%_
                                       _%$%hd244776245414%_
                                       _%$%tl244777245416%_
                                       _%$%e244778245419%_
                                       _%$%hd244779245422%_
                                       _%$%tl244780245424%_
                                       _%$%e244781245427%_
                                       _%$%hd244782245430%_
                                       _%$%tl244783245432%_
                                       _%$%e244784245435%_
                                       _%$%hd244785245438%_
                                       _%$%tl244786245440%_
                                       _%$%e244787245443%_
                                       _%$%hd244788245446%_
                                       _%$%tl244789245448%_
                                       _%$%e244790245451%_
                                       _%$%hd244791245454%_
                                       _%$%tl244792245456%_
                                       _%$%e244793245459%_
                                       _%$%hd244794245462%_
                                       _%$%tl244795245464%_
                                       _%$%e244796245467%_
                                       _%$%hd244797245470%_
                                       _%$%tl244798245472%_))))
                              (_%__match249641249642%_
                               _%$%e244775245411%_
                               _%$%hd244776245414%_
                               _%$%tl244777245416%_
                               _%$%e244778245419%_
                               _%$%hd244779245422%_
                               _%$%tl244780245424%_
                               _%$%e244781245427%_
                               _%$%hd244782245430%_
                               _%$%tl244783245432%_
                               _%$%e244784245435%_
                               _%$%hd244785245438%_
                               _%$%tl244786245440%_
                               _%$%e244787245443%_
                               _%$%hd244788245446%_
                               _%$%tl244789245448%_
                               _%$%e244790245451%_
                               _%$%hd244791245454%_
                               _%$%tl244792245456%_
                               _%$%e244793245459%_
                               _%$%hd244794245462%_
                               _%$%tl244795245464%_
                               _%$%e244796245467%_
                               _%$%hd244797245470%_
                               _%$%tl244798245472%_))
                          (_%__match249427249428%_
                           _%$%e244775245411%_
                           _%$%hd244776245414%_
                           _%$%tl244777245416%_
                           _%$%e244778245419%_
                           _%$%hd244779245422%_
                           _%$%tl244780245424%_
                           _%$%e244781245427%_
                           _%$%hd244782245430%_
                           _%$%tl244783245432%_
                           _%$%e244784245435%_
                           _%$%hd244785245438%_
                           _%$%tl244786245440%_
                           _%$%e244787245443%_
                           _%$%hd244788245446%_
                           _%$%tl244789245448%_
                           _%$%e244790245451%_
                           _%$%hd244791245454%_
                           _%$%tl244792245456%_
                           _%$%e244793245459%_
                           _%$%hd244794245462%_
                           _%$%tl244795245464%_
                           _%$%e244796245467%_
                           _%$%hd244797245470%_
                           _%$%tl244798245472%_
                           _%$%e244799245475%_
                           _%$%hd244800245478%_
                           _%$%tl244801245480%_))))
                   (_%__match249249249250%_
                    (lambda (_%$%e244731245598%_
                             _%$%hd244732245601%_
                             _%$%tl244733245603%_
                             _%$%e244734245606%_
                             _%$%hd244735245609%_
                             _%$%tl244736245611%_
                             _%$%e244737245614%_
                             _%$%hd244738245617%_
                             _%$%tl244739245619%_
                             _%$%e244740245622%_
                             _%$%hd244741245625%_
                             _%$%tl244742245627%_
                             _%$%e244743245630%_
                             _%$%hd244744245633%_
                             _%$%tl244745245635%_
                             _%$%e244746245638%_
                             _%$%hd244747245641%_
                             _%$%tl244748245643%_
                             _%$%e244749245646%_
                             _%$%hd244750245649%_
                             _%$%tl244751245651%_
                             _%$%e244752245654%_
                             _%$%hd244753245657%_
                             _%$%tl244754245659%_
                             _%$%e244755245662%_
                             _%$%hd244756245665%_
                             _%$%tl244757245667%_
                             _%$%e244758245670%_
                             _%$%hd244759245673%_
                             _%$%tl244760245675%_
                             _%__splice249148249149%_
                             _%$%target244761245678%_
                             _%$%tl244763245680%_)
                      (letrec ((_%$%loop244764245683%_
                                (lambda (_%$%hd244762245686%_
                                         _%$%args244768245688%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd244762245686%_))
                                      (let ((_%$%e244765245690%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd244762245686%_))))
                                        (let ((_%$%lp-tl244767245695%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e244765245690%_)))
                                              (_%$%lp-hd244766245693%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e244765245690%_))))
                                          (_%$%loop244764245683%_
                                           _%$%lp-tl244767245695%_
                                           (cons _%$%lp-hd244766245693%_
                                                 _%$%args244768245688%_))))
                                      (let ((_%$%args244769245698%_
                                             (reverse _%$%args244768245688%_)))
                                        (let ((_%$%g244727245700%_
                                               _%$%args244769245698%_)
                                              (_%$%g244728245701%_
                                               _%$%hd244759245673%_)
                                              (_%$%g244729245702%_
                                               _%$%hd244750245649%_)
                                              (_%$%g244730245703%_
                                               _%$%hd244741245625%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g244730245703%_
                                                      'call-method))
                                                   (let ((__tmp250307
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self244716%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g244729245702%_
                                                      __tmp250307)))
                                              (_%__kont249146249147%_
                                               _%$%g244727245700%_
                                               _%$%g244728245701%_
                                               _%$%g244729245702%_
                                               _%$%g244730245703%_)
                                              (_%__match249437249438%_
                                               _%$%e244731245598%_
                                               _%$%hd244732245601%_
                                               _%$%tl244733245603%_
                                               _%$%e244734245606%_
                                               _%$%hd244735245609%_
                                               _%$%tl244736245611%_
                                               _%$%e244737245614%_
                                               _%$%hd244738245617%_
                                               _%$%tl244739245619%_
                                               _%$%e244740245622%_
                                               _%$%hd244741245625%_
                                               _%$%tl244742245627%_
                                               _%$%e244743245630%_
                                               _%$%hd244744245633%_
                                               _%$%tl244745245635%_
                                               _%$%e244746245638%_
                                               _%$%hd244747245641%_
                                               _%$%tl244748245643%_
                                               _%$%e244749245646%_
                                               _%$%hd244750245649%_
                                               _%$%tl244751245651%_
                                               _%$%e244752245654%_
                                               _%$%hd244753245657%_
                                               _%$%tl244754245659%_
                                               _%$%e244755245662%_
                                               _%$%hd244756245665%_
                                               _%$%tl244757245667%_
                                               _%$%e244758245670%_
                                               _%$%hd244759245673%_
                                               _%$%tl244760245675%_))))))))
                        (_%$%loop244764245683%_
                         _%$%target244761245678%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx249144249145%_))
                  (let ((_%$%e244731245598%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx249144249145%_))))
                    (let ((_%$%tl244733245603%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e244731245598%_)))
                          (_%$%hd244732245601%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e244731245598%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl244733245603%_))
                          (let ((_%$%e244734245606%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl244733245603%_))))
                            (let ((_%$%tl244736245611%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e244734245606%_)))
                                  (_%$%hd244735245609%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e244734245606%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd244735245609%_))
                                  (let ((_%$%e244737245614%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd244735245609%_))))
                                    (let ((_%$%tl244739245619%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e244737245614%_)))
                                          (_%$%hd244738245617%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e244737245614%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd244738245617%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd244738245617%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl244739245619%_))
                                                  (let ((_%$%e244740245622%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl244739245619%_))))
                                                    (let ((_%$%tl244742245627%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e244740245622%_)))
                                                          (_%$%hd244741245625%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e244740245622%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl244742245627%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl244736245611%_))
                      (let ((_%$%e244743245630%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl244736245611%_))))
                        (let ((_%$%tl244745245635%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e244743245630%_)))
                              (_%$%hd244744245633%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e244743245630%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd244744245633%_))
                              (let ((_%$%e244746245638%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd244744245633%_))))
                                (let ((_%$%tl244748245643%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e244746245638%_)))
                                      (_%$%hd244747245641%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e244746245638%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd244747245641%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd244747245641%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl244748245643%_))
                                              (let ((_%$%e244749245646%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl244748245643%_))))
                                                (let ((_%$%tl244751245651%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e244749245646%_)))
                                                      (_%$%hd244750245649%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e244749245646%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl244751245651%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl244745245635%_))
                                                          (let ((_%$%e244752245654%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl244745245635%_))))
                    (let ((_%$%tl244754245659%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e244752245654%_)))
                          (_%$%hd244753245657%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e244752245654%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd244753245657%_))
                          (let ((_%$%e244755245662%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd244753245657%_))))
                            (let ((_%$%tl244757245667%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e244755245662%_)))
                                  (_%$%hd244756245665%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e244755245662%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd244756245665%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd244756245665%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl244757245667%_))
                                          (let ((_%$%e244758245670%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl244757245667%_))))
                                            (let ((_%$%tl244760245675%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e244758245670%_)))
                                                  (_%$%hd244759245673%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e244758245670%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl244760245675%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl244754245659%_))
                                                      (let ((_%__splice249148249149%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl244754245659%_
                        '0))))
                (let ((_%$%tl244763245680%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice249148249149%_ '1)))
                      (_%$%target244761245678%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice249148249149%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl244763245680%_))
                      (_%__match249249249250%_
                       _%$%e244731245598%_
                       _%$%hd244732245601%_
                       _%$%tl244733245603%_
                       _%$%e244734245606%_
                       _%$%hd244735245609%_
                       _%$%tl244736245611%_
                       _%$%e244737245614%_
                       _%$%hd244738245617%_
                       _%$%tl244739245619%_
                       _%$%e244740245622%_
                       _%$%hd244741245625%_
                       _%$%tl244742245627%_
                       _%$%e244743245630%_
                       _%$%hd244744245633%_
                       _%$%tl244745245635%_
                       _%$%e244746245638%_
                       _%$%hd244747245641%_
                       _%$%tl244748245643%_
                       _%$%e244749245646%_
                       _%$%hd244750245649%_
                       _%$%tl244751245651%_
                       _%$%e244752245654%_
                       _%$%hd244753245657%_
                       _%$%tl244754245659%_
                       _%$%e244755245662%_
                       _%$%hd244756245665%_
                       _%$%tl244757245667%_
                       _%$%e244758245670%_
                       _%$%hd244759245673%_
                       _%$%tl244760245675%_
                       _%__splice249148249149%_
                       _%$%target244761245678%_
                       _%$%tl244763245680%_)
                      (_%__match249437249438%_
                       _%$%e244731245598%_
                       _%$%hd244732245601%_
                       _%$%tl244733245603%_
                       _%$%e244734245606%_
                       _%$%hd244735245609%_
                       _%$%tl244736245611%_
                       _%$%e244737245614%_
                       _%$%hd244738245617%_
                       _%$%tl244739245619%_
                       _%$%e244740245622%_
                       _%$%hd244741245625%_
                       _%$%tl244742245627%_
                       _%$%e244743245630%_
                       _%$%hd244744245633%_
                       _%$%tl244745245635%_
                       _%$%e244746245638%_
                       _%$%hd244747245641%_
                       _%$%tl244748245643%_
                       _%$%e244749245646%_
                       _%$%hd244750245649%_
                       _%$%tl244751245651%_
                       _%$%e244752245654%_
                       _%$%hd244753245657%_
                       _%$%tl244754245659%_
                       _%$%e244755245662%_
                       _%$%hd244756245665%_
                       _%$%tl244757245667%_
                       _%$%e244758245670%_
                       _%$%hd244759245673%_
                       _%$%tl244760245675%_))))
              (_%__match249437249438%_
               _%$%e244731245598%_
               _%$%hd244732245601%_
               _%$%tl244733245603%_
               _%$%e244734245606%_
               _%$%hd244735245609%_
               _%$%tl244736245611%_
               _%$%e244737245614%_
               _%$%hd244738245617%_
               _%$%tl244739245619%_
               _%$%e244740245622%_
               _%$%hd244741245625%_
               _%$%tl244742245627%_
               _%$%e244743245630%_
               _%$%hd244744245633%_
               _%$%tl244745245635%_
               _%$%e244746245638%_
               _%$%hd244747245641%_
               _%$%tl244748245643%_
               _%$%e244749245646%_
               _%$%hd244750245649%_
               _%$%tl244751245651%_
               _%$%e244752245654%_
               _%$%hd244753245657%_
               _%$%tl244754245659%_
               _%$%e244755245662%_
               _%$%hd244756245665%_
               _%$%tl244757245667%_
               _%$%e244758245670%_
               _%$%hd244759245673%_
               _%$%tl244760245675%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match249641249642%_
                                                   _%$%e244731245598%_
                                                   _%$%hd244732245601%_
                                                   _%$%tl244733245603%_
                                                   _%$%e244734245606%_
                                                   _%$%hd244735245609%_
                                                   _%$%tl244736245611%_
                                                   _%$%e244737245614%_
                                                   _%$%hd244738245617%_
                                                   _%$%tl244739245619%_
                                                   _%$%e244740245622%_
                                                   _%$%hd244741245625%_
                                                   _%$%tl244742245627%_
                                                   _%$%e244743245630%_
                                                   _%$%hd244744245633%_
                                                   _%$%tl244745245635%_
                                                   _%$%e244746245638%_
                                                   _%$%hd244747245641%_
                                                   _%$%tl244748245643%_
                                                   _%$%e244749245646%_
                                                   _%$%hd244750245649%_
                                                   _%$%tl244751245651%_
                                                   _%$%e244752245654%_
                                                   _%$%hd244753245657%_
                                                   _%$%tl244754245659%_))))
                                          (_%__match249641249642%_
                                           _%$%e244731245598%_
                                           _%$%hd244732245601%_
                                           _%$%tl244733245603%_
                                           _%$%e244734245606%_
                                           _%$%hd244735245609%_
                                           _%$%tl244736245611%_
                                           _%$%e244737245614%_
                                           _%$%hd244738245617%_
                                           _%$%tl244739245619%_
                                           _%$%e244740245622%_
                                           _%$%hd244741245625%_
                                           _%$%tl244742245627%_
                                           _%$%e244743245630%_
                                           _%$%hd244744245633%_
                                           _%$%tl244745245635%_
                                           _%$%e244746245638%_
                                           _%$%hd244747245641%_
                                           _%$%tl244748245643%_
                                           _%$%e244749245646%_
                                           _%$%hd244750245649%_
                                           _%$%tl244751245651%_
                                           _%$%e244752245654%_
                                           _%$%hd244753245657%_
                                           _%$%tl244754245659%_))
                                      (_%__match249317249318%_
                                       _%$%e244731245598%_
                                       _%$%hd244732245601%_
                                       _%$%tl244733245603%_
                                       _%$%e244734245606%_
                                       _%$%hd244735245609%_
                                       _%$%tl244736245611%_
                                       _%$%e244737245614%_
                                       _%$%hd244738245617%_
                                       _%$%tl244739245619%_
                                       _%$%e244740245622%_
                                       _%$%hd244741245625%_
                                       _%$%tl244742245627%_
                                       _%$%e244743245630%_
                                       _%$%hd244744245633%_
                                       _%$%tl244745245635%_
                                       _%$%e244746245638%_
                                       _%$%hd244747245641%_
                                       _%$%tl244748245643%_
                                       _%$%e244749245646%_
                                       _%$%hd244750245649%_
                                       _%$%tl244751245651%_
                                       _%$%e244752245654%_
                                       _%$%hd244753245657%_
                                       _%$%tl244754245659%_
                                       _%$%e244755245662%_
                                       _%$%hd244756245665%_
                                       _%$%tl244757245667%_))
                                  (_%__match249641249642%_
                                   _%$%e244731245598%_
                                   _%$%hd244732245601%_
                                   _%$%tl244733245603%_
                                   _%$%e244734245606%_
                                   _%$%hd244735245609%_
                                   _%$%tl244736245611%_
                                   _%$%e244737245614%_
                                   _%$%hd244738245617%_
                                   _%$%tl244739245619%_
                                   _%$%e244740245622%_
                                   _%$%hd244741245625%_
                                   _%$%tl244742245627%_
                                   _%$%e244743245630%_
                                   _%$%hd244744245633%_
                                   _%$%tl244745245635%_
                                   _%$%e244746245638%_
                                   _%$%hd244747245641%_
                                   _%$%tl244748245643%_
                                   _%$%e244749245646%_
                                   _%$%hd244750245649%_
                                   _%$%tl244751245651%_
                                   _%$%e244752245654%_
                                   _%$%hd244753245657%_
                                   _%$%tl244754245659%_))))
                          (_%__match249641249642%_
                           _%$%e244731245598%_
                           _%$%hd244732245601%_
                           _%$%tl244733245603%_
                           _%$%e244734245606%_
                           _%$%hd244735245609%_
                           _%$%tl244736245611%_
                           _%$%e244737245614%_
                           _%$%hd244738245617%_
                           _%$%tl244739245619%_
                           _%$%e244740245622%_
                           _%$%hd244741245625%_
                           _%$%tl244742245627%_
                           _%$%e244743245630%_
                           _%$%hd244744245633%_
                           _%$%tl244745245635%_
                           _%$%e244746245638%_
                           _%$%hd244747245641%_
                           _%$%tl244748245643%_
                           _%$%e244749245646%_
                           _%$%hd244750245649%_
                           _%$%tl244751245651%_
                           _%$%e244752245654%_
                           _%$%hd244753245657%_
                           _%$%tl244754245659%_))))
                  (_%__match249579249580%_
                   _%$%e244731245598%_
                   _%$%hd244732245601%_
                   _%$%tl244733245603%_
                   _%$%e244734245606%_
                   _%$%hd244735245609%_
                   _%$%tl244736245611%_
                   _%$%e244737245614%_
                   _%$%hd244738245617%_
                   _%$%tl244739245619%_
                   _%$%e244740245622%_
                   _%$%hd244741245625%_
                   _%$%tl244742245627%_
                   _%$%e244743245630%_
                   _%$%hd244744245633%_
                   _%$%tl244745245635%_
                   _%$%e244746245638%_
                   _%$%hd244747245641%_
                   _%$%tl244748245643%_
                   _%$%e244749245646%_
                   _%$%hd244750245649%_
                   _%$%tl244751245651%_))
              (_%__kont249162249163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont249162249163%_))
                                          (_%__kont249162249163%_))
                                      (_%__kont249162249163%_))))
                              (_%__kont249162249163%_))))
                      (_%__kont249162249163%_))
                  (_%__kont249162249163%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont249162249163%_))
                                              (_%__kont249162249163%_))
                                          (_%__kont249162249163%_))))
                                  (_%__kont249162249163%_))))
                          (_%__kont249162249163%_))))
                  (_%__kont249162249163%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self243659%_ _%stx243660%_)
        (letrec ((_%force-e243662%_
                  (lambda (_%target244714%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target244714%_ '()))
                                      '()))))))
          (let* ((_%__stx249646249647%_ _%stx243660%_)
                 (_%$%g243670243892%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx249646249647%_)))))
            (let ((_%__kont249648249649%_
                   (lambda (_%$%g243672244660%_
                            _%$%g243673244661%_
                            _%$%g243674244662%_
                            _%$%g243675244663%_)
                     (let ((_%$method244708%_
                            (let ((__tmp250309
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self243659%_ 'methods)))
                                  (__tmp250308
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g243673244661%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp250309 __tmp250308)))
                           (_%args244709%_
                            (map (lambda (_%$%g244696244698%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self243659%_
                                      _%$%g244696244698%_)))
                                 (let ((__tmp250310
                                        (lambda (_%$%g244700244703%_
                                                 _%$%g244701244705%_)
                                          (cons _%$%g244700244703%_
                                                _%$%g244701244705%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp250310
                                    '()
                                    _%$%g243672244660%_)))))
                       (let ((__tmp250311
                              (cons '%#call
                                    (cons (_%force-e243662%_ _%$method244708%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self243659%_
                                                               'receiver))
                                                            '()))
                                                _%args244709%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp250311 _%stx243660%_)))))
                  (_%__kont249652249653%_
                   (lambda (_%$%g243715244494%_
                            _%$%g243716244495%_
                            _%$%g243717244496%_
                            _%$%g243718244497%_
                            _%$%g243719244498%_)
                     (let ((_%$method244550%_
                            (let ((__tmp250313
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self243659%_ 'methods)))
                                  (__tmp250312
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g243716244495%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp250313 __tmp250312)))
                           (_%args244551%_
                            (map (lambda (_%$%g244538244540%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self243659%_
                                      _%$%g244538244540%_)))
                                 (let ((__tmp250314
                                        (lambda (_%$%g244542244545%_
                                                 _%$%g244543244547%_)
                                          (cons _%$%g244542244545%_
                                                _%$%g244543244547%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp250314
                                    '()
                                    _%$%g243715244494%_)))))
                       (let ((__tmp250315
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e243662%_
                                                 _%$method244550%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self243659%_ 'receiver))
                          '()))
              _%args244551%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp250315 _%stx243660%_)))))
                  (_%__kont249656249657%_
                   (lambda (_%$%g243768244327%_
                            _%$%g243769244328%_
                            _%$%g243770244329%_)
                     (let* ((_%$field244361%_
                             (let ((__tmp250317
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self243659%_ 'slots)))
                                   (__tmp250316
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%g243768244327%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp250317 __tmp250316)))
                            (__tmp250318
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self243659%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field244361%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self243659%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp250318 _%stx243660%_))))
                  (_%__kont249658249659%_
                   (lambda (_%$%g243801244201%_
                            _%$%g243802244202%_
                            _%$%g243803244203%_
                            _%$%g243804244204%_)
                     (let ((_%$field244239%_
                            (let ((__tmp250320
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self243659%_ 'slots)))
                                  (__tmp250319
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g243802244202%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp250320 __tmp250319)))
                           (_%expr244240%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self243659%_
                               _%$%g243801244201%_))))
                       (let ((__tmp250321
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self243659%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field244239%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self243659%_ 'receiver))
                          '()))
              (cons _%expr244240%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp250321 _%stx243660%_)))))
                  (_%__kont249660249661%_
                   (lambda (_%$%g243838244073%_ _%$%g243839244074%_)
                     (let* ((_%accessor244096%_
                             (let ((__tmp250322
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g243839244074%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp250322)))
                            (_%klass244098%_
                             (let ((__tmp250323
                                    (##structure-ref
                                     _%accessor244096%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx243660%_
                                __tmp250323)))
                            (_%slot244100%_
                             (##structure-ref
                              _%accessor244096%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor244096%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass244098%_
                                      _%slot244100%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass244098%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx243660%_
                           (let* ((_%$field244106%_
                                   (let ((__tmp250324
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243659%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp250324 _%slot244100%_)))
                                  (__tmp250325
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self243659%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field244106%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self243659%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp250325
                              _%stx243660%_))))))
                  (_%__kont249662249663%_
                   (lambda (_%$%g243861243968%_
                            _%$%g243862243969%_
                            _%$%g243863243970%_)
                     (let* ((_%mutator243998%_
                             (let ((__tmp250326
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g243863243970%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp250326)))
                            (_%klass244000%_
                             (let ((__tmp250327
                                    (##structure-ref
                                     _%mutator243998%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx243660%_
                                __tmp250327)))
                            (_%slot244002%_
                             (##structure-ref
                              _%mutator243998%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr244004%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self243659%_
                                _%$%g243861243968%_))))
                       (if (if (##structure-ref
                                _%mutator243998%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass244000%_
                                      _%slot244002%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass244000%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp250328
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%$%g243863243970%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g243862243969%_
                                                                '()))
                                                    (cons _%expr244004%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp250328 _%stx243660%_))
                           (let* ((_%$field244010%_
                                   (let ((__tmp250329
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243659%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp250329 _%slot244002%_)))
                                  (__tmp250330
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self243659%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field244010%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self243659%_ 'receiver))
                               '()))
                   (cons _%expr244004%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp250330
                              _%stx243660%_))))))
                  (_%__kont249664249665%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self243659%_ _%stx243660%_)))))
              (let* ((_%__match250145250146%_
                      (lambda (_%$%e243864243904%_
                               _%$%hd243865243907%_
                               _%$%tl243866243909%_
                               _%$%e243867243912%_
                               _%$%hd243868243915%_
                               _%$%tl243869243917%_
                               _%$%e243870243920%_
                               _%$%hd243871243923%_
                               _%$%tl243872243925%_
                               _%$%e243873243928%_
                               _%$%hd243874243931%_
                               _%$%tl243875243933%_
                               _%$%e243876243936%_
                               _%$%hd243877243939%_
                               _%$%tl243878243941%_
                               _%$%e243879243944%_
                               _%$%hd243880243947%_
                               _%$%tl243881243949%_
                               _%$%e243882243952%_
                               _%$%hd243883243955%_
                               _%$%tl243884243957%_
                               _%$%e243885243960%_
                               _%$%hd243886243963%_
                               _%$%tl243887243965%_)
                        (let ((_%$%g243861243968%_ _%$%hd243886243963%_)
                              (_%$%g243862243969%_ _%$%hd243883243955%_)
                              (_%$%g243863243970%_ _%$%hd243874243931%_))
                          (if (and (let ((__tmp250331
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243659%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g243862243969%_
                                      __tmp250331))
                                   (let ((__tmp250332
                                          (let ((__tmp250333
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g243863243970%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp250333))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp250332
                                      'gxc#!mutator::t)))
                              (_%__kont249662249663%_
                               _%$%g243861243968%_
                               _%$%g243862243969%_
                               _%$%g243863243970%_)
                              (_%__kont249664249665%_)))))
                     (_%__match250143250144%_
                      (lambda (_%$%e243864243904%_
                               _%$%hd243865243907%_
                               _%$%tl243866243909%_
                               _%$%e243867243912%_
                               _%$%hd243868243915%_
                               _%$%tl243869243917%_
                               _%$%e243870243920%_
                               _%$%hd243871243923%_
                               _%$%tl243872243925%_
                               _%$%e243873243928%_
                               _%$%hd243874243931%_
                               _%$%tl243875243933%_
                               _%$%e243876243936%_
                               _%$%hd243877243939%_
                               _%$%tl243878243941%_
                               _%$%e243879243944%_
                               _%$%hd243880243947%_
                               _%$%tl243881243949%_
                               _%$%e243882243952%_
                               _%$%hd243883243955%_
                               _%$%tl243884243957%_
                               _%$%e243885243960%_
                               _%$%hd243886243963%_
                               _%$%tl243887243965%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl243887243965%_))
                            (_%__match250145250146%_
                             _%$%e243864243904%_
                             _%$%hd243865243907%_
                             _%$%tl243866243909%_
                             _%$%e243867243912%_
                             _%$%hd243868243915%_
                             _%$%tl243869243917%_
                             _%$%e243870243920%_
                             _%$%hd243871243923%_
                             _%$%tl243872243925%_
                             _%$%e243873243928%_
                             _%$%hd243874243931%_
                             _%$%tl243875243933%_
                             _%$%e243876243936%_
                             _%$%hd243877243939%_
                             _%$%tl243878243941%_
                             _%$%e243879243944%_
                             _%$%hd243880243947%_
                             _%$%tl243881243949%_
                             _%$%e243882243952%_
                             _%$%hd243883243955%_
                             _%$%tl243884243957%_
                             _%$%e243885243960%_
                             _%$%hd243886243963%_
                             _%$%tl243887243965%_)
                            (_%__kont249664249665%_))))
                     (_%__match250137250138%_
                      (lambda (_%$%e243864243904%_
                               _%$%hd243865243907%_
                               _%$%tl243866243909%_
                               _%$%e243867243912%_
                               _%$%hd243868243915%_
                               _%$%tl243869243917%_
                               _%$%e243870243920%_
                               _%$%hd243871243923%_
                               _%$%tl243872243925%_
                               _%$%e243873243928%_
                               _%$%hd243874243931%_
                               _%$%tl243875243933%_
                               _%$%e243876243936%_
                               _%$%hd243877243939%_
                               _%$%tl243878243941%_
                               _%$%e243879243944%_
                               _%$%hd243880243947%_
                               _%$%tl243881243949%_
                               _%$%e243882243952%_
                               _%$%hd243883243955%_
                               _%$%tl243884243957%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl243878243941%_))
                            (let ((_%$%e243885243960%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl243878243941%_))))
                              (let ((_%$%tl243887243965%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e243885243960%_)))
                                    (_%$%hd243886243963%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e243885243960%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl243887243965%_))
                                    (_%__match250145250146%_
                                     _%$%e243864243904%_
                                     _%$%hd243865243907%_
                                     _%$%tl243866243909%_
                                     _%$%e243867243912%_
                                     _%$%hd243868243915%_
                                     _%$%tl243869243917%_
                                     _%$%e243870243920%_
                                     _%$%hd243871243923%_
                                     _%$%tl243872243925%_
                                     _%$%e243873243928%_
                                     _%$%hd243874243931%_
                                     _%$%tl243875243933%_
                                     _%$%e243876243936%_
                                     _%$%hd243877243939%_
                                     _%$%tl243878243941%_
                                     _%$%e243879243944%_
                                     _%$%hd243880243947%_
                                     _%$%tl243881243949%_
                                     _%$%e243882243952%_
                                     _%$%hd243883243955%_
                                     _%$%tl243884243957%_
                                     _%$%e243885243960%_
                                     _%$%hd243886243963%_
                                     _%$%tl243887243965%_)
                                    (_%__kont249664249665%_))))
                            (_%__kont249664249665%_))))
                     (_%__match250083250084%_
                      (lambda (_%$%e243840244017%_
                               _%$%hd243841244020%_
                               _%$%tl243842244022%_
                               _%$%e243843244025%_
                               _%$%hd243844244028%_
                               _%$%tl243845244030%_
                               _%$%e243846244033%_
                               _%$%hd243847244036%_
                               _%$%tl243848244038%_
                               _%$%e243849244041%_
                               _%$%hd243850244044%_
                               _%$%tl243851244046%_
                               _%$%e243852244049%_
                               _%$%hd243853244052%_
                               _%$%tl243854244054%_
                               _%$%e243855244057%_
                               _%$%hd243856244060%_
                               _%$%tl243857244062%_
                               _%$%e243858244065%_
                               _%$%hd243859244068%_
                               _%$%tl243860244070%_)
                        (let ((_%$%g243838244073%_ _%$%hd243859244068%_)
                              (_%$%g243839244074%_ _%$%hd243850244044%_))
                          (if (and (let ((__tmp250334
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243659%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g243838244073%_
                                      __tmp250334))
                                   (let ((__tmp250335
                                          (let ((__tmp250336
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g243839244074%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp250336))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp250335
                                      'gxc#!accessor::t)))
                              (_%__kont249660249661%_
                               _%$%g243838244073%_
                               _%$%g243839244074%_)
                              (_%__kont249664249665%_)))))
                     (_%__match250081250082%_
                      (lambda (_%$%e243840244017%_
                               _%$%hd243841244020%_
                               _%$%tl243842244022%_
                               _%$%e243843244025%_
                               _%$%hd243844244028%_
                               _%$%tl243845244030%_
                               _%$%e243846244033%_
                               _%$%hd243847244036%_
                               _%$%tl243848244038%_
                               _%$%e243849244041%_
                               _%$%hd243850244044%_
                               _%$%tl243851244046%_
                               _%$%e243852244049%_
                               _%$%hd243853244052%_
                               _%$%tl243854244054%_
                               _%$%e243855244057%_
                               _%$%hd243856244060%_
                               _%$%tl243857244062%_
                               _%$%e243858244065%_
                               _%$%hd243859244068%_
                               _%$%tl243860244070%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl243854244054%_))
                            (_%__match250083250084%_
                             _%$%e243840244017%_
                             _%$%hd243841244020%_
                             _%$%tl243842244022%_
                             _%$%e243843244025%_
                             _%$%hd243844244028%_
                             _%$%tl243845244030%_
                             _%$%e243846244033%_
                             _%$%hd243847244036%_
                             _%$%tl243848244038%_
                             _%$%e243849244041%_
                             _%$%hd243850244044%_
                             _%$%tl243851244046%_
                             _%$%e243852244049%_
                             _%$%hd243853244052%_
                             _%$%tl243854244054%_
                             _%$%e243855244057%_
                             _%$%hd243856244060%_
                             _%$%tl243857244062%_
                             _%$%e243858244065%_
                             _%$%hd243859244068%_
                             _%$%tl243860244070%_)
                            (_%__match250137250138%_
                             _%$%e243840244017%_
                             _%$%hd243841244020%_
                             _%$%tl243842244022%_
                             _%$%e243843244025%_
                             _%$%hd243844244028%_
                             _%$%tl243845244030%_
                             _%$%e243846244033%_
                             _%$%hd243847244036%_
                             _%$%tl243848244038%_
                             _%$%e243849244041%_
                             _%$%hd243850244044%_
                             _%$%tl243851244046%_
                             _%$%e243852244049%_
                             _%$%hd243853244052%_
                             _%$%tl243854244054%_
                             _%$%e243855244057%_
                             _%$%hd243856244060%_
                             _%$%tl243857244062%_
                             _%$%e243858244065%_
                             _%$%hd243859244068%_
                             _%$%tl243860244070%_))))
                     (_%__match250027250028%_
                      (lambda (_%$%e243805244113%_
                               _%$%hd243806244116%_
                               _%$%tl243807244118%_
                               _%$%e243808244121%_
                               _%$%hd243809244124%_
                               _%$%tl243810244126%_
                               _%$%e243811244129%_
                               _%$%hd243812244132%_
                               _%$%tl243813244134%_
                               _%$%e243814244137%_
                               _%$%hd243815244140%_
                               _%$%tl243816244142%_
                               _%$%e243817244145%_
                               _%$%hd243818244148%_
                               _%$%tl243819244150%_
                               _%$%e243820244153%_
                               _%$%hd243821244156%_
                               _%$%tl243822244158%_
                               _%$%e243823244161%_
                               _%$%hd243824244164%_
                               _%$%tl243825244166%_
                               _%$%e243826244169%_
                               _%$%hd243827244172%_
                               _%$%tl243828244174%_
                               _%$%e243829244177%_
                               _%$%hd243830244180%_
                               _%$%tl243831244182%_
                               _%$%e243832244185%_
                               _%$%hd243833244188%_
                               _%$%tl243834244190%_
                               _%$%e243835244193%_
                               _%$%hd243836244196%_
                               _%$%tl243837244198%_)
                        (let ((_%$%g243801244201%_ _%$%hd243836244196%_)
                              (_%$%g243802244202%_ _%$%hd243833244188%_)
                              (_%$%g243803244203%_ _%$%hd243824244164%_)
                              (_%$%g243804244204%_ _%$%hd243815244140%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g243804244204%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g243804244204%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp250337
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243659%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g243803244203%_
                                      __tmp250337)))
                              (_%__kont249658249659%_
                               _%$%g243801244201%_
                               _%$%g243802244202%_
                               _%$%g243803244203%_
                               _%$%g243804244204%_)
                              (_%__kont249664249665%_)))))
                     (_%__match250019250020%_
                      (lambda (_%$%e243805244113%_
                               _%$%hd243806244116%_
                               _%$%tl243807244118%_
                               _%$%e243808244121%_
                               _%$%hd243809244124%_
                               _%$%tl243810244126%_
                               _%$%e243811244129%_
                               _%$%hd243812244132%_
                               _%$%tl243813244134%_
                               _%$%e243814244137%_
                               _%$%hd243815244140%_
                               _%$%tl243816244142%_
                               _%$%e243817244145%_
                               _%$%hd243818244148%_
                               _%$%tl243819244150%_
                               _%$%e243820244153%_
                               _%$%hd243821244156%_
                               _%$%tl243822244158%_
                               _%$%e243823244161%_
                               _%$%hd243824244164%_
                               _%$%tl243825244166%_
                               _%$%e243826244169%_
                               _%$%hd243827244172%_
                               _%$%tl243828244174%_
                               _%$%e243829244177%_
                               _%$%hd243830244180%_
                               _%$%tl243831244182%_
                               _%$%e243832244185%_
                               _%$%hd243833244188%_
                               _%$%tl243834244190%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl243828244174%_))
                            (let ((_%$%e243835244193%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl243828244174%_))))
                              (let ((_%$%tl243837244198%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e243835244193%_)))
                                    (_%$%hd243836244196%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e243835244193%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl243837244198%_))
                                    (_%__match250027250028%_
                                     _%$%e243805244113%_
                                     _%$%hd243806244116%_
                                     _%$%tl243807244118%_
                                     _%$%e243808244121%_
                                     _%$%hd243809244124%_
                                     _%$%tl243810244126%_
                                     _%$%e243811244129%_
                                     _%$%hd243812244132%_
                                     _%$%tl243813244134%_
                                     _%$%e243814244137%_
                                     _%$%hd243815244140%_
                                     _%$%tl243816244142%_
                                     _%$%e243817244145%_
                                     _%$%hd243818244148%_
                                     _%$%tl243819244150%_
                                     _%$%e243820244153%_
                                     _%$%hd243821244156%_
                                     _%$%tl243822244158%_
                                     _%$%e243823244161%_
                                     _%$%hd243824244164%_
                                     _%$%tl243825244166%_
                                     _%$%e243826244169%_
                                     _%$%hd243827244172%_
                                     _%$%tl243828244174%_
                                     _%$%e243829244177%_
                                     _%$%hd243830244180%_
                                     _%$%tl243831244182%_
                                     _%$%e243832244185%_
                                     _%$%hd243833244188%_
                                     _%$%tl243834244190%_
                                     _%$%e243835244193%_
                                     _%$%hd243836244196%_
                                     _%$%tl243837244198%_)
                                    (_%__kont249664249665%_))))
                            (_%__match250143250144%_
                             _%$%e243805244113%_
                             _%$%hd243806244116%_
                             _%$%tl243807244118%_
                             _%$%e243808244121%_
                             _%$%hd243809244124%_
                             _%$%tl243810244126%_
                             _%$%e243811244129%_
                             _%$%hd243812244132%_
                             _%$%tl243813244134%_
                             _%$%e243814244137%_
                             _%$%hd243815244140%_
                             _%$%tl243816244142%_
                             _%$%e243817244145%_
                             _%$%hd243818244148%_
                             _%$%tl243819244150%_
                             _%$%e243820244153%_
                             _%$%hd243821244156%_
                             _%$%tl243822244158%_
                             _%$%e243823244161%_
                             _%$%hd243824244164%_
                             _%$%tl243825244166%_
                             _%$%e243826244169%_
                             _%$%hd243827244172%_
                             _%$%tl243828244174%_))))
                     (_%__match249941249942%_
                      (lambda (_%$%e243771244247%_
                               _%$%hd243772244250%_
                               _%$%tl243773244252%_
                               _%$%e243774244255%_
                               _%$%hd243775244258%_
                               _%$%tl243776244260%_
                               _%$%e243777244263%_
                               _%$%hd243778244266%_
                               _%$%tl243779244268%_
                               _%$%e243780244271%_
                               _%$%hd243781244274%_
                               _%$%tl243782244276%_
                               _%$%e243783244279%_
                               _%$%hd243784244282%_
                               _%$%tl243785244284%_
                               _%$%e243786244287%_
                               _%$%hd243787244290%_
                               _%$%tl243788244292%_
                               _%$%e243789244295%_
                               _%$%hd243790244298%_
                               _%$%tl243791244300%_
                               _%$%e243792244303%_
                               _%$%hd243793244306%_
                               _%$%tl243794244308%_
                               _%$%e243795244311%_
                               _%$%hd243796244314%_
                               _%$%tl243797244316%_
                               _%$%e243798244319%_
                               _%$%hd243799244322%_
                               _%$%tl243800244324%_)
                        (let ((_%$%g243768244327%_ _%$%hd243799244322%_)
                              (_%$%g243769244328%_ _%$%hd243790244298%_)
                              (_%$%g243770244329%_ _%$%hd243781244274%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g243770244329%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g243770244329%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp250338
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self243659%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g243769244328%_
                                      __tmp250338)))
                              (_%__kont249656249657%_
                               _%$%g243768244327%_
                               _%$%g243769244328%_
                               _%$%g243770244329%_)
                              (_%__match250145250146%_
                               _%$%e243771244247%_
                               _%$%hd243772244250%_
                               _%$%tl243773244252%_
                               _%$%e243774244255%_
                               _%$%hd243775244258%_
                               _%$%tl243776244260%_
                               _%$%e243777244263%_
                               _%$%hd243778244266%_
                               _%$%tl243779244268%_
                               _%$%e243780244271%_
                               _%$%hd243781244274%_
                               _%$%tl243782244276%_
                               _%$%e243783244279%_
                               _%$%hd243784244282%_
                               _%$%tl243785244284%_
                               _%$%e243786244287%_
                               _%$%hd243787244290%_
                               _%$%tl243788244292%_
                               _%$%e243789244295%_
                               _%$%hd243790244298%_
                               _%$%tl243791244300%_
                               _%$%e243792244303%_
                               _%$%hd243793244306%_
                               _%$%tl243794244308%_)))))
                     (_%__match249939249940%_
                      (lambda (_%$%e243771244247%_
                               _%$%hd243772244250%_
                               _%$%tl243773244252%_
                               _%$%e243774244255%_
                               _%$%hd243775244258%_
                               _%$%tl243776244260%_
                               _%$%e243777244263%_
                               _%$%hd243778244266%_
                               _%$%tl243779244268%_
                               _%$%e243780244271%_
                               _%$%hd243781244274%_
                               _%$%tl243782244276%_
                               _%$%e243783244279%_
                               _%$%hd243784244282%_
                               _%$%tl243785244284%_
                               _%$%e243786244287%_
                               _%$%hd243787244290%_
                               _%$%tl243788244292%_
                               _%$%e243789244295%_
                               _%$%hd243790244298%_
                               _%$%tl243791244300%_
                               _%$%e243792244303%_
                               _%$%hd243793244306%_
                               _%$%tl243794244308%_
                               _%$%e243795244311%_
                               _%$%hd243796244314%_
                               _%$%tl243797244316%_
                               _%$%e243798244319%_
                               _%$%hd243799244322%_
                               _%$%tl243800244324%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl243794244308%_))
                            (_%__match249941249942%_
                             _%$%e243771244247%_
                             _%$%hd243772244250%_
                             _%$%tl243773244252%_
                             _%$%e243774244255%_
                             _%$%hd243775244258%_
                             _%$%tl243776244260%_
                             _%$%e243777244263%_
                             _%$%hd243778244266%_
                             _%$%tl243779244268%_
                             _%$%e243780244271%_
                             _%$%hd243781244274%_
                             _%$%tl243782244276%_
                             _%$%e243783244279%_
                             _%$%hd243784244282%_
                             _%$%tl243785244284%_
                             _%$%e243786244287%_
                             _%$%hd243787244290%_
                             _%$%tl243788244292%_
                             _%$%e243789244295%_
                             _%$%hd243790244298%_
                             _%$%tl243791244300%_
                             _%$%e243792244303%_
                             _%$%hd243793244306%_
                             _%$%tl243794244308%_
                             _%$%e243795244311%_
                             _%$%hd243796244314%_
                             _%$%tl243797244316%_
                             _%$%e243798244319%_
                             _%$%hd243799244322%_
                             _%$%tl243800244324%_)
                            (_%__match250019250020%_
                             _%$%e243771244247%_
                             _%$%hd243772244250%_
                             _%$%tl243773244252%_
                             _%$%e243774244255%_
                             _%$%hd243775244258%_
                             _%$%tl243776244260%_
                             _%$%e243777244263%_
                             _%$%hd243778244266%_
                             _%$%tl243779244268%_
                             _%$%e243780244271%_
                             _%$%hd243781244274%_
                             _%$%tl243782244276%_
                             _%$%e243783244279%_
                             _%$%hd243784244282%_
                             _%$%tl243785244284%_
                             _%$%e243786244287%_
                             _%$%hd243787244290%_
                             _%$%tl243788244292%_
                             _%$%e243789244295%_
                             _%$%hd243790244298%_
                             _%$%tl243791244300%_
                             _%$%e243792244303%_
                             _%$%hd243793244306%_
                             _%$%tl243794244308%_
                             _%$%e243795244311%_
                             _%$%hd243796244314%_
                             _%$%tl243797244316%_
                             _%$%e243798244319%_
                             _%$%hd243799244322%_
                             _%$%tl243800244324%_))))
                     (_%__match249929249930%_
                      (lambda (_%$%e243771244247%_
                               _%$%hd243772244250%_
                               _%$%tl243773244252%_
                               _%$%e243774244255%_
                               _%$%hd243775244258%_
                               _%$%tl243776244260%_
                               _%$%e243777244263%_
                               _%$%hd243778244266%_
                               _%$%tl243779244268%_
                               _%$%e243780244271%_
                               _%$%hd243781244274%_
                               _%$%tl243782244276%_
                               _%$%e243783244279%_
                               _%$%hd243784244282%_
                               _%$%tl243785244284%_
                               _%$%e243786244287%_
                               _%$%hd243787244290%_
                               _%$%tl243788244292%_
                               _%$%e243789244295%_
                               _%$%hd243790244298%_
                               _%$%tl243791244300%_
                               _%$%e243792244303%_
                               _%$%hd243793244306%_
                               _%$%tl243794244308%_
                               _%$%e243795244311%_
                               _%$%hd243796244314%_
                               _%$%tl243797244316%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%$%hd243796244314%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl243797244316%_))
                                (let ((_%$%e243798244319%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl243797244316%_))))
                                  (let ((_%$%tl243800244324%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e243798244319%_)))
                                        (_%$%hd243799244322%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e243798244319%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl243800244324%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl243794244308%_))
                                            (_%__match249941249942%_
                                             _%$%e243771244247%_
                                             _%$%hd243772244250%_
                                             _%$%tl243773244252%_
                                             _%$%e243774244255%_
                                             _%$%hd243775244258%_
                                             _%$%tl243776244260%_
                                             _%$%e243777244263%_
                                             _%$%hd243778244266%_
                                             _%$%tl243779244268%_
                                             _%$%e243780244271%_
                                             _%$%hd243781244274%_
                                             _%$%tl243782244276%_
                                             _%$%e243783244279%_
                                             _%$%hd243784244282%_
                                             _%$%tl243785244284%_
                                             _%$%e243786244287%_
                                             _%$%hd243787244290%_
                                             _%$%tl243788244292%_
                                             _%$%e243789244295%_
                                             _%$%hd243790244298%_
                                             _%$%tl243791244300%_
                                             _%$%e243792244303%_
                                             _%$%hd243793244306%_
                                             _%$%tl243794244308%_
                                             _%$%e243795244311%_
                                             _%$%hd243796244314%_
                                             _%$%tl243797244316%_
                                             _%$%e243798244319%_
                                             _%$%hd243799244322%_
                                             _%$%tl243800244324%_)
                                            (_%__match250019250020%_
                                             _%$%e243771244247%_
                                             _%$%hd243772244250%_
                                             _%$%tl243773244252%_
                                             _%$%e243774244255%_
                                             _%$%hd243775244258%_
                                             _%$%tl243776244260%_
                                             _%$%e243777244263%_
                                             _%$%hd243778244266%_
                                             _%$%tl243779244268%_
                                             _%$%e243780244271%_
                                             _%$%hd243781244274%_
                                             _%$%tl243782244276%_
                                             _%$%e243783244279%_
                                             _%$%hd243784244282%_
                                             _%$%tl243785244284%_
                                             _%$%e243786244287%_
                                             _%$%hd243787244290%_
                                             _%$%tl243788244292%_
                                             _%$%e243789244295%_
                                             _%$%hd243790244298%_
                                             _%$%tl243791244300%_
                                             _%$%e243792244303%_
                                             _%$%hd243793244306%_
                                             _%$%tl243794244308%_
                                             _%$%e243795244311%_
                                             _%$%hd243796244314%_
                                             _%$%tl243797244316%_
                                             _%$%e243798244319%_
                                             _%$%hd243799244322%_
                                             _%$%tl243800244324%_))
                                        (_%__match250143250144%_
                                         _%$%e243771244247%_
                                         _%$%hd243772244250%_
                                         _%$%tl243773244252%_
                                         _%$%e243774244255%_
                                         _%$%hd243775244258%_
                                         _%$%tl243776244260%_
                                         _%$%e243777244263%_
                                         _%$%hd243778244266%_
                                         _%$%tl243779244268%_
                                         _%$%e243780244271%_
                                         _%$%hd243781244274%_
                                         _%$%tl243782244276%_
                                         _%$%e243783244279%_
                                         _%$%hd243784244282%_
                                         _%$%tl243785244284%_
                                         _%$%e243786244287%_
                                         _%$%hd243787244290%_
                                         _%$%tl243788244292%_
                                         _%$%e243789244295%_
                                         _%$%hd243790244298%_
                                         _%$%tl243791244300%_
                                         _%$%e243792244303%_
                                         _%$%hd243793244306%_
                                         _%$%tl243794244308%_))))
                                (_%__match250143250144%_
                                 _%$%e243771244247%_
                                 _%$%hd243772244250%_
                                 _%$%tl243773244252%_
                                 _%$%e243774244255%_
                                 _%$%hd243775244258%_
                                 _%$%tl243776244260%_
                                 _%$%e243777244263%_
                                 _%$%hd243778244266%_
                                 _%$%tl243779244268%_
                                 _%$%e243780244271%_
                                 _%$%hd243781244274%_
                                 _%$%tl243782244276%_
                                 _%$%e243783244279%_
                                 _%$%hd243784244282%_
                                 _%$%tl243785244284%_
                                 _%$%e243786244287%_
                                 _%$%hd243787244290%_
                                 _%$%tl243788244292%_
                                 _%$%e243789244295%_
                                 _%$%hd243790244298%_
                                 _%$%tl243791244300%_
                                 _%$%e243792244303%_
                                 _%$%hd243793244306%_
                                 _%$%tl243794244308%_))
                            (_%__match250143250144%_
                             _%$%e243771244247%_
                             _%$%hd243772244250%_
                             _%$%tl243773244252%_
                             _%$%e243774244255%_
                             _%$%hd243775244258%_
                             _%$%tl243776244260%_
                             _%$%e243777244263%_
                             _%$%hd243778244266%_
                             _%$%tl243779244268%_
                             _%$%e243780244271%_
                             _%$%hd243781244274%_
                             _%$%tl243782244276%_
                             _%$%e243783244279%_
                             _%$%hd243784244282%_
                             _%$%tl243785244284%_
                             _%$%e243786244287%_
                             _%$%hd243787244290%_
                             _%$%tl243788244292%_
                             _%$%e243789244295%_
                             _%$%hd243790244298%_
                             _%$%tl243791244300%_
                             _%$%e243792244303%_
                             _%$%hd243793244306%_
                             _%$%tl243794244308%_))))
                     (_%__match249861249862%_
                      (lambda (_%$%e243720244368%_
                               _%$%hd243721244371%_
                               _%$%tl243722244373%_
                               _%$%e243723244376%_
                               _%$%hd243724244379%_
                               _%$%tl243725244381%_
                               _%$%e243726244384%_
                               _%$%hd243727244387%_
                               _%$%tl243728244389%_
                               _%$%e243729244392%_
                               _%$%hd243730244395%_
                               _%$%tl243731244397%_
                               _%$%e243732244400%_
                               _%$%hd243733244403%_
                               _%$%tl243734244405%_
                               _%$%e243735244408%_
                               _%$%hd243736244411%_
                               _%$%tl243737244413%_
                               _%$%e243738244416%_
                               _%$%hd243739244419%_
                               _%$%tl243740244421%_
                               _%$%e243741244424%_
                               _%$%hd243742244427%_
                               _%$%tl243743244429%_
                               _%$%e243744244432%_
                               _%$%hd243745244435%_
                               _%$%tl243746244437%_
                               _%$%e243747244440%_
                               _%$%hd243748244443%_
                               _%$%tl243749244445%_
                               _%$%e243750244448%_
                               _%$%hd243751244451%_
                               _%$%tl243752244453%_
                               _%$%e243753244456%_
                               _%$%hd243754244459%_
                               _%$%tl243755244461%_
                               _%$%e243756244464%_
                               _%$%hd243757244467%_
                               _%$%tl243758244469%_
                               _%__splice249654249655%_
                               _%$%target243759244472%_
                               _%$%tl243761244474%_)
                        (letrec ((_%$%loop243762244477%_
                                  (lambda (_%$%hd243760244480%_
                                           _%$%args243766244482%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd243760244480%_))
                                        (let ((_%$%e243763244484%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd243760244480%_))))
                                          (let ((_%$%lp-tl243765244489%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e243763244484%_)))
                                                (_%$%lp-hd243764244487%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e243763244484%_))))
                                            (_%$%loop243762244477%_
                                             _%$%lp-tl243765244489%_
                                             (cons _%$%lp-hd243764244487%_
                                                   _%$%args243766244482%_))))
                                        (let ((_%$%args243767244492%_
                                               (reverse _%$%args243766244482%_)))
                                          (let ((_%$%g243715244494%_
                                                 _%$%args243767244492%_)
                                                (_%$%g243716244495%_
                                                 _%$%hd243757244467%_)
                                                (_%$%g243717244496%_
                                                 _%$%hd243748244443%_)
                                                (_%$%g243718244497%_
                                                 _%$%hd243739244419%_)
                                                (_%$%g243719244498%_
                                                 _%$%hd243730244395%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g243719244498%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g243718244497%_
                                                        'call-method))
                                                     (let ((__tmp250339
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self243659%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g243717244496%_
                                                        __tmp250339)))
                                                (_%__kont249652249653%_
                                                 _%$%g243715244494%_
                                                 _%$%g243716244495%_
                                                 _%$%g243717244496%_
                                                 _%$%g243718244497%_
                                                 _%$%g243719244498%_)
                                                (_%__kont249664249665%_))))))))
                          (_%$%loop243762244477%_
                           _%$%target243759244472%_
                           '()))))
                     (_%__match249819249820%_
                      (lambda (_%$%e243720244368%_
                               _%$%hd243721244371%_
                               _%$%tl243722244373%_
                               _%$%e243723244376%_
                               _%$%hd243724244379%_
                               _%$%tl243725244381%_
                               _%$%e243726244384%_
                               _%$%hd243727244387%_
                               _%$%tl243728244389%_
                               _%$%e243729244392%_
                               _%$%hd243730244395%_
                               _%$%tl243731244397%_
                               _%$%e243732244400%_
                               _%$%hd243733244403%_
                               _%$%tl243734244405%_
                               _%$%e243735244408%_
                               _%$%hd243736244411%_
                               _%$%tl243737244413%_
                               _%$%e243738244416%_
                               _%$%hd243739244419%_
                               _%$%tl243740244421%_
                               _%$%e243741244424%_
                               _%$%hd243742244427%_
                               _%$%tl243743244429%_
                               _%$%e243744244432%_
                               _%$%hd243745244435%_
                               _%$%tl243746244437%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%$%hd243745244435%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl243746244437%_))
                                (let ((_%$%e243747244440%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl243746244437%_))))
                                  (let ((_%$%tl243749244445%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e243747244440%_)))
                                        (_%$%hd243748244443%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e243747244440%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl243749244445%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl243743244429%_))
                                            (let ((_%$%e243750244448%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl243743244429%_))))
                                              (let ((_%$%tl243752244453%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e243750244448%_)))
                                                    (_%$%hd243751244451%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e243750244448%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd243751244451%_))
                                                    (let ((_%$%e243753244456%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd243751244451%_))))
                                                      (let ((_%$%tl243755244461%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e243753244456%_)))
                    (_%$%hd243754244459%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e243753244456%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd243754244459%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%$%hd243754244459%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl243755244461%_))
                            (let ((_%$%e243756244464%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl243755244461%_))))
                              (let ((_%$%tl243758244469%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e243756244464%_)))
                                    (_%$%hd243757244467%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e243756244464%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl243758244469%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl243752244453%_))
                                        (let ((_%__splice249654249655%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl243752244453%_
                                                  '0))))
                                          (let ((_%$%tl243761244474%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice249654249655%_
                                                    '1)))
                                                (_%$%target243759244472%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice249654249655%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl243761244474%_))
                                                (_%__match249861249862%_
                                                 _%$%e243720244368%_
                                                 _%$%hd243721244371%_
                                                 _%$%tl243722244373%_
                                                 _%$%e243723244376%_
                                                 _%$%hd243724244379%_
                                                 _%$%tl243725244381%_
                                                 _%$%e243726244384%_
                                                 _%$%hd243727244387%_
                                                 _%$%tl243728244389%_
                                                 _%$%e243729244392%_
                                                 _%$%hd243730244395%_
                                                 _%$%tl243731244397%_
                                                 _%$%e243732244400%_
                                                 _%$%hd243733244403%_
                                                 _%$%tl243734244405%_
                                                 _%$%e243735244408%_
                                                 _%$%hd243736244411%_
                                                 _%$%tl243737244413%_
                                                 _%$%e243738244416%_
                                                 _%$%hd243739244419%_
                                                 _%$%tl243740244421%_
                                                 _%$%e243741244424%_
                                                 _%$%hd243742244427%_
                                                 _%$%tl243743244429%_
                                                 _%$%e243744244432%_
                                                 _%$%hd243745244435%_
                                                 _%$%tl243746244437%_
                                                 _%$%e243747244440%_
                                                 _%$%hd243748244443%_
                                                 _%$%tl243749244445%_
                                                 _%$%e243750244448%_
                                                 _%$%hd243751244451%_
                                                 _%$%tl243752244453%_
                                                 _%$%e243753244456%_
                                                 _%$%hd243754244459%_
                                                 _%$%tl243755244461%_
                                                 _%$%e243756244464%_
                                                 _%$%hd243757244467%_
                                                 _%$%tl243758244469%_
                                                 _%__splice249654249655%_
                                                 _%$%target243759244472%_
                                                 _%$%tl243761244474%_)
                                                (_%__kont249664249665%_))))
                                        (_%__kont249664249665%_))
                                    (_%__kont249664249665%_))))
                            (_%__kont249664249665%_))
                        (_%__kont249664249665%_))
                    (_%__kont249664249665%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont249664249665%_))))
                                            (_%__match250143250144%_
                                             _%$%e243720244368%_
                                             _%$%hd243721244371%_
                                             _%$%tl243722244373%_
                                             _%$%e243723244376%_
                                             _%$%hd243724244379%_
                                             _%$%tl243725244381%_
                                             _%$%e243726244384%_
                                             _%$%hd243727244387%_
                                             _%$%tl243728244389%_
                                             _%$%e243729244392%_
                                             _%$%hd243730244395%_
                                             _%$%tl243731244397%_
                                             _%$%e243732244400%_
                                             _%$%hd243733244403%_
                                             _%$%tl243734244405%_
                                             _%$%e243735244408%_
                                             _%$%hd243736244411%_
                                             _%$%tl243737244413%_
                                             _%$%e243738244416%_
                                             _%$%hd243739244419%_
                                             _%$%tl243740244421%_
                                             _%$%e243741244424%_
                                             _%$%hd243742244427%_
                                             _%$%tl243743244429%_))
                                        (_%__match250143250144%_
                                         _%$%e243720244368%_
                                         _%$%hd243721244371%_
                                         _%$%tl243722244373%_
                                         _%$%e243723244376%_
                                         _%$%hd243724244379%_
                                         _%$%tl243725244381%_
                                         _%$%e243726244384%_
                                         _%$%hd243727244387%_
                                         _%$%tl243728244389%_
                                         _%$%e243729244392%_
                                         _%$%hd243730244395%_
                                         _%$%tl243731244397%_
                                         _%$%e243732244400%_
                                         _%$%hd243733244403%_
                                         _%$%tl243734244405%_
                                         _%$%e243735244408%_
                                         _%$%hd243736244411%_
                                         _%$%tl243737244413%_
                                         _%$%e243738244416%_
                                         _%$%hd243739244419%_
                                         _%$%tl243740244421%_
                                         _%$%e243741244424%_
                                         _%$%hd243742244427%_
                                         _%$%tl243743244429%_))))
                                (_%__match250143250144%_
                                 _%$%e243720244368%_
                                 _%$%hd243721244371%_
                                 _%$%tl243722244373%_
                                 _%$%e243723244376%_
                                 _%$%hd243724244379%_
                                 _%$%tl243725244381%_
                                 _%$%e243726244384%_
                                 _%$%hd243727244387%_
                                 _%$%tl243728244389%_
                                 _%$%e243729244392%_
                                 _%$%hd243730244395%_
                                 _%$%tl243731244397%_
                                 _%$%e243732244400%_
                                 _%$%hd243733244403%_
                                 _%$%tl243734244405%_
                                 _%$%e243735244408%_
                                 _%$%hd243736244411%_
                                 _%$%tl243737244413%_
                                 _%$%e243738244416%_
                                 _%$%hd243739244419%_
                                 _%$%tl243740244421%_
                                 _%$%e243741244424%_
                                 _%$%hd243742244427%_
                                 _%$%tl243743244429%_))
                            (_%__match249929249930%_
                             _%$%e243720244368%_
                             _%$%hd243721244371%_
                             _%$%tl243722244373%_
                             _%$%e243723244376%_
                             _%$%hd243724244379%_
                             _%$%tl243725244381%_
                             _%$%e243726244384%_
                             _%$%hd243727244387%_
                             _%$%tl243728244389%_
                             _%$%e243729244392%_
                             _%$%hd243730244395%_
                             _%$%tl243731244397%_
                             _%$%e243732244400%_
                             _%$%hd243733244403%_
                             _%$%tl243734244405%_
                             _%$%e243735244408%_
                             _%$%hd243736244411%_
                             _%$%tl243737244413%_
                             _%$%e243738244416%_
                             _%$%hd243739244419%_
                             _%$%tl243740244421%_
                             _%$%e243741244424%_
                             _%$%hd243742244427%_
                             _%$%tl243743244429%_
                             _%$%e243744244432%_
                             _%$%hd243745244435%_
                             _%$%tl243746244437%_))))
                     (_%__match249751249752%_
                      (lambda (_%$%e243676244558%_
                               _%$%hd243677244561%_
                               _%$%tl243678244563%_
                               _%$%e243679244566%_
                               _%$%hd243680244569%_
                               _%$%tl243681244571%_
                               _%$%e243682244574%_
                               _%$%hd243683244577%_
                               _%$%tl243684244579%_
                               _%$%e243685244582%_
                               _%$%hd243686244585%_
                               _%$%tl243687244587%_
                               _%$%e243688244590%_
                               _%$%hd243689244593%_
                               _%$%tl243690244595%_
                               _%$%e243691244598%_
                               _%$%hd243692244601%_
                               _%$%tl243693244603%_
                               _%$%e243694244606%_
                               _%$%hd243695244609%_
                               _%$%tl243696244611%_
                               _%$%e243697244614%_
                               _%$%hd243698244617%_
                               _%$%tl243699244619%_
                               _%$%e243700244622%_
                               _%$%hd243701244625%_
                               _%$%tl243702244627%_
                               _%$%e243703244630%_
                               _%$%hd243704244633%_
                               _%$%tl243705244635%_
                               _%__splice249650249651%_
                               _%$%target243706244638%_
                               _%$%tl243708244640%_)
                        (letrec ((_%$%loop243709244643%_
                                  (lambda (_%$%hd243707244646%_
                                           _%$%args243713244648%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd243707244646%_))
                                        (let ((_%$%e243710244650%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd243707244646%_))))
                                          (let ((_%$%lp-tl243712244655%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e243710244650%_)))
                                                (_%$%lp-hd243711244653%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e243710244650%_))))
                                            (_%$%loop243709244643%_
                                             _%$%lp-tl243712244655%_
                                             (cons _%$%lp-hd243711244653%_
                                                   _%$%args243713244648%_))))
                                        (let ((_%$%args243714244658%_
                                               (reverse _%$%args243713244648%_)))
                                          (let ((_%$%g243672244660%_
                                                 _%$%args243714244658%_)
                                                (_%$%g243673244661%_
                                                 _%$%hd243704244633%_)
                                                (_%$%g243674244662%_
                                                 _%$%hd243695244609%_)
                                                (_%$%g243675244663%_
                                                 _%$%hd243686244585%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g243675244663%_
                                                        'call-method))
                                                     (let ((__tmp250340
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self243659%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g243674244662%_
                                                        __tmp250340)))
                                                (_%__kont249648249649%_
                                                 _%$%g243672244660%_
                                                 _%$%g243673244661%_
                                                 _%$%g243674244662%_
                                                 _%$%g243675244663%_)
                                                (_%__match249939249940%_
                                                 _%$%e243676244558%_
                                                 _%$%hd243677244561%_
                                                 _%$%tl243678244563%_
                                                 _%$%e243679244566%_
                                                 _%$%hd243680244569%_
                                                 _%$%tl243681244571%_
                                                 _%$%e243682244574%_
                                                 _%$%hd243683244577%_
                                                 _%$%tl243684244579%_
                                                 _%$%e243685244582%_
                                                 _%$%hd243686244585%_
                                                 _%$%tl243687244587%_
                                                 _%$%e243688244590%_
                                                 _%$%hd243689244593%_
                                                 _%$%tl243690244595%_
                                                 _%$%e243691244598%_
                                                 _%$%hd243692244601%_
                                                 _%$%tl243693244603%_
                                                 _%$%e243694244606%_
                                                 _%$%hd243695244609%_
                                                 _%$%tl243696244611%_
                                                 _%$%e243697244614%_
                                                 _%$%hd243698244617%_
                                                 _%$%tl243699244619%_
                                                 _%$%e243700244622%_
                                                 _%$%hd243701244625%_
                                                 _%$%tl243702244627%_
                                                 _%$%e243703244630%_
                                                 _%$%hd243704244633%_
                                                 _%$%tl243705244635%_))))))))
                          (_%$%loop243709244643%_
                           _%$%target243706244638%_
                           '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx249646249647%_))
                    (let ((_%$%e243676244558%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx249646249647%_))))
                      (let ((_%$%tl243678244563%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e243676244558%_)))
                            (_%$%hd243677244561%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e243676244558%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl243678244563%_))
                            (let ((_%$%e243679244566%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl243678244563%_))))
                              (let ((_%$%tl243681244571%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e243679244566%_)))
                                    (_%$%hd243680244569%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e243679244566%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd243680244569%_))
                                    (let ((_%$%e243682244574%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd243680244569%_))))
                                      (let ((_%$%tl243684244579%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e243682244574%_)))
                                            (_%$%hd243683244577%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e243682244574%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd243683244577%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd243683244577%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl243684244579%_))
                                                    (let ((_%$%e243685244582%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl243684244579%_))))
                                                      (let ((_%$%tl243687244587%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e243685244582%_)))
                    (_%$%hd243686244585%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e243685244582%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl243687244587%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl243681244571%_))
                        (let ((_%$%e243688244590%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl243681244571%_))))
                          (let ((_%$%tl243690244595%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e243688244590%_)))
                                (_%$%hd243689244593%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e243688244590%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd243689244593%_))
                                (let ((_%$%e243691244598%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd243689244593%_))))
                                  (let ((_%$%tl243693244603%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e243691244598%_)))
                                        (_%$%hd243692244601%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e243691244598%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd243692244601%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%$%hd243692244601%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl243693244603%_))
                                                (let ((_%$%e243694244606%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl243693244603%_))))
                                                  (let ((_%$%tl243696244611%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e243694244606%_)))
                                                        (_%$%hd243695244609%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e243694244606%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl243696244611%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl243690244595%_))
                                                            (let ((_%$%e243697244614%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl243690244595%_))))
                      (let ((_%$%tl243699244619%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e243697244614%_)))
                            (_%$%hd243698244617%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e243697244614%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd243698244617%_))
                            (let ((_%$%e243700244622%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd243698244617%_))))
                              (let ((_%$%tl243702244627%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e243700244622%_)))
                                    (_%$%hd243701244625%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e243700244622%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd243701244625%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd243701244625%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl243702244627%_))
                                            (let ((_%$%e243703244630%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl243702244627%_))))
                                              (let ((_%$%tl243705244635%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e243703244630%_)))
                                                    (_%$%hd243704244633%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e243703244630%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl243705244635%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl243699244619%_))
                                                        (let ((_%__splice249650249651%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl243699244619%_
                          '0))))
                  (let ((_%$%tl243708244640%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice249650249651%_ '1)))
                        (_%$%target243706244638%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice249650249651%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl243708244640%_))
                        (_%__match249751249752%_
                         _%$%e243676244558%_
                         _%$%hd243677244561%_
                         _%$%tl243678244563%_
                         _%$%e243679244566%_
                         _%$%hd243680244569%_
                         _%$%tl243681244571%_
                         _%$%e243682244574%_
                         _%$%hd243683244577%_
                         _%$%tl243684244579%_
                         _%$%e243685244582%_
                         _%$%hd243686244585%_
                         _%$%tl243687244587%_
                         _%$%e243688244590%_
                         _%$%hd243689244593%_
                         _%$%tl243690244595%_
                         _%$%e243691244598%_
                         _%$%hd243692244601%_
                         _%$%tl243693244603%_
                         _%$%e243694244606%_
                         _%$%hd243695244609%_
                         _%$%tl243696244611%_
                         _%$%e243697244614%_
                         _%$%hd243698244617%_
                         _%$%tl243699244619%_
                         _%$%e243700244622%_
                         _%$%hd243701244625%_
                         _%$%tl243702244627%_
                         _%$%e243703244630%_
                         _%$%hd243704244633%_
                         _%$%tl243705244635%_
                         _%__splice249650249651%_
                         _%$%target243706244638%_
                         _%$%tl243708244640%_)
                        (_%__match249939249940%_
                         _%$%e243676244558%_
                         _%$%hd243677244561%_
                         _%$%tl243678244563%_
                         _%$%e243679244566%_
                         _%$%hd243680244569%_
                         _%$%tl243681244571%_
                         _%$%e243682244574%_
                         _%$%hd243683244577%_
                         _%$%tl243684244579%_
                         _%$%e243685244582%_
                         _%$%hd243686244585%_
                         _%$%tl243687244587%_
                         _%$%e243688244590%_
                         _%$%hd243689244593%_
                         _%$%tl243690244595%_
                         _%$%e243691244598%_
                         _%$%hd243692244601%_
                         _%$%tl243693244603%_
                         _%$%e243694244606%_
                         _%$%hd243695244609%_
                         _%$%tl243696244611%_
                         _%$%e243697244614%_
                         _%$%hd243698244617%_
                         _%$%tl243699244619%_
                         _%$%e243700244622%_
                         _%$%hd243701244625%_
                         _%$%tl243702244627%_
                         _%$%e243703244630%_
                         _%$%hd243704244633%_
                         _%$%tl243705244635%_))))
                (_%__match249939249940%_
                 _%$%e243676244558%_
                 _%$%hd243677244561%_
                 _%$%tl243678244563%_
                 _%$%e243679244566%_
                 _%$%hd243680244569%_
                 _%$%tl243681244571%_
                 _%$%e243682244574%_
                 _%$%hd243683244577%_
                 _%$%tl243684244579%_
                 _%$%e243685244582%_
                 _%$%hd243686244585%_
                 _%$%tl243687244587%_
                 _%$%e243688244590%_
                 _%$%hd243689244593%_
                 _%$%tl243690244595%_
                 _%$%e243691244598%_
                 _%$%hd243692244601%_
                 _%$%tl243693244603%_
                 _%$%e243694244606%_
                 _%$%hd243695244609%_
                 _%$%tl243696244611%_
                 _%$%e243697244614%_
                 _%$%hd243698244617%_
                 _%$%tl243699244619%_
                 _%$%e243700244622%_
                 _%$%hd243701244625%_
                 _%$%tl243702244627%_
                 _%$%e243703244630%_
                 _%$%hd243704244633%_
                 _%$%tl243705244635%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match250143250144%_
                                                     _%$%e243676244558%_
                                                     _%$%hd243677244561%_
                                                     _%$%tl243678244563%_
                                                     _%$%e243679244566%_
                                                     _%$%hd243680244569%_
                                                     _%$%tl243681244571%_
                                                     _%$%e243682244574%_
                                                     _%$%hd243683244577%_
                                                     _%$%tl243684244579%_
                                                     _%$%e243685244582%_
                                                     _%$%hd243686244585%_
                                                     _%$%tl243687244587%_
                                                     _%$%e243688244590%_
                                                     _%$%hd243689244593%_
                                                     _%$%tl243690244595%_
                                                     _%$%e243691244598%_
                                                     _%$%hd243692244601%_
                                                     _%$%tl243693244603%_
                                                     _%$%e243694244606%_
                                                     _%$%hd243695244609%_
                                                     _%$%tl243696244611%_
                                                     _%$%e243697244614%_
                                                     _%$%hd243698244617%_
                                                     _%$%tl243699244619%_))))
                                            (_%__match250143250144%_
                                             _%$%e243676244558%_
                                             _%$%hd243677244561%_
                                             _%$%tl243678244563%_
                                             _%$%e243679244566%_
                                             _%$%hd243680244569%_
                                             _%$%tl243681244571%_
                                             _%$%e243682244574%_
                                             _%$%hd243683244577%_
                                             _%$%tl243684244579%_
                                             _%$%e243685244582%_
                                             _%$%hd243686244585%_
                                             _%$%tl243687244587%_
                                             _%$%e243688244590%_
                                             _%$%hd243689244593%_
                                             _%$%tl243690244595%_
                                             _%$%e243691244598%_
                                             _%$%hd243692244601%_
                                             _%$%tl243693244603%_
                                             _%$%e243694244606%_
                                             _%$%hd243695244609%_
                                             _%$%tl243696244611%_
                                             _%$%e243697244614%_
                                             _%$%hd243698244617%_
                                             _%$%tl243699244619%_))
                                        (_%__match249819249820%_
                                         _%$%e243676244558%_
                                         _%$%hd243677244561%_
                                         _%$%tl243678244563%_
                                         _%$%e243679244566%_
                                         _%$%hd243680244569%_
                                         _%$%tl243681244571%_
                                         _%$%e243682244574%_
                                         _%$%hd243683244577%_
                                         _%$%tl243684244579%_
                                         _%$%e243685244582%_
                                         _%$%hd243686244585%_
                                         _%$%tl243687244587%_
                                         _%$%e243688244590%_
                                         _%$%hd243689244593%_
                                         _%$%tl243690244595%_
                                         _%$%e243691244598%_
                                         _%$%hd243692244601%_
                                         _%$%tl243693244603%_
                                         _%$%e243694244606%_
                                         _%$%hd243695244609%_
                                         _%$%tl243696244611%_
                                         _%$%e243697244614%_
                                         _%$%hd243698244617%_
                                         _%$%tl243699244619%_
                                         _%$%e243700244622%_
                                         _%$%hd243701244625%_
                                         _%$%tl243702244627%_))
                                    (_%__match250143250144%_
                                     _%$%e243676244558%_
                                     _%$%hd243677244561%_
                                     _%$%tl243678244563%_
                                     _%$%e243679244566%_
                                     _%$%hd243680244569%_
                                     _%$%tl243681244571%_
                                     _%$%e243682244574%_
                                     _%$%hd243683244577%_
                                     _%$%tl243684244579%_
                                     _%$%e243685244582%_
                                     _%$%hd243686244585%_
                                     _%$%tl243687244587%_
                                     _%$%e243688244590%_
                                     _%$%hd243689244593%_
                                     _%$%tl243690244595%_
                                     _%$%e243691244598%_
                                     _%$%hd243692244601%_
                                     _%$%tl243693244603%_
                                     _%$%e243694244606%_
                                     _%$%hd243695244609%_
                                     _%$%tl243696244611%_
                                     _%$%e243697244614%_
                                     _%$%hd243698244617%_
                                     _%$%tl243699244619%_))))
                            (_%__match250143250144%_
                             _%$%e243676244558%_
                             _%$%hd243677244561%_
                             _%$%tl243678244563%_
                             _%$%e243679244566%_
                             _%$%hd243680244569%_
                             _%$%tl243681244571%_
                             _%$%e243682244574%_
                             _%$%hd243683244577%_
                             _%$%tl243684244579%_
                             _%$%e243685244582%_
                             _%$%hd243686244585%_
                             _%$%tl243687244587%_
                             _%$%e243688244590%_
                             _%$%hd243689244593%_
                             _%$%tl243690244595%_
                             _%$%e243691244598%_
                             _%$%hd243692244601%_
                             _%$%tl243693244603%_
                             _%$%e243694244606%_
                             _%$%hd243695244609%_
                             _%$%tl243696244611%_
                             _%$%e243697244614%_
                             _%$%hd243698244617%_
                             _%$%tl243699244619%_))))
                    (_%__match250081250082%_
                     _%$%e243676244558%_
                     _%$%hd243677244561%_
                     _%$%tl243678244563%_
                     _%$%e243679244566%_
                     _%$%hd243680244569%_
                     _%$%tl243681244571%_
                     _%$%e243682244574%_
                     _%$%hd243683244577%_
                     _%$%tl243684244579%_
                     _%$%e243685244582%_
                     _%$%hd243686244585%_
                     _%$%tl243687244587%_
                     _%$%e243688244590%_
                     _%$%hd243689244593%_
                     _%$%tl243690244595%_
                     _%$%e243691244598%_
                     _%$%hd243692244601%_
                     _%$%tl243693244603%_
                     _%$%e243694244606%_
                     _%$%hd243695244609%_
                     _%$%tl243696244611%_))
                (_%__kont249664249665%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont249664249665%_))
                                            (_%__kont249664249665%_))
                                        (_%__kont249664249665%_))))
                                (_%__kont249664249665%_))))
                        (_%__kont249664249665%_))
                    (_%__kont249664249665%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont249664249665%_))
                                                (_%__kont249664249665%_))
                                            (_%__kont249664249665%_))))
                                    (_%__kont249664249665%_))))
                            (_%__kont249664249665%_))))
                    (_%__kont249664249665%_))))))))))
