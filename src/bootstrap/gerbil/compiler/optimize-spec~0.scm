(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-spec::timestamp 1789188912)
  (begin
    (define gxc#::generate-method-specializers::t
      (let ((__tmp248295 (list gxc#::identity::t))
            (__tmp248294 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-method-specializers::t
         '::generate-method-specializers
         __tmp248295
         '()
         __tmp248294
         '#f)))
    (define gxc#::generate-method-specializers?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-method-specializers::t)))
    (define gxc#make-::generate-method-specializers
      (lambda _%$args247092%_
        (apply make-instance
               gxc#::generate-method-specializers::t
               _%$args247092%_)))
    (define gxc#::generate-method-specializers-bind-methods!
      (let ((__tmp248296
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
        (__make-atomic-promise __tmp248296)))
    (define gxc#apply-generate-method-specializers
      (lambda (_%stx247084%_)
        (force gxc#::generate-method-specializers-bind-methods!)
        (let* ((_%self247087%_
                (let ((__obj248287
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-method-specializers::t))))
                  __obj248287))
               (__tmp248297
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self247087%_ _%stx247084%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp248297
           gxc#current-compile-method
           _%self247087%_))))
    (define gxc#::extract-receiver::t
      (let ((__tmp248299 (list gxc#::false::t))
            (__tmp248298 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::extract-receiver::t
         '::extract-receiver
         __tmp248299
         '()
         __tmp248298
         '#f)))
    (define gxc#::extract-receiver?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::extract-receiver::t)))
    (define gxc#make-::extract-receiver
      (lambda _%$args247081%_
        (apply make-instance gxc#::extract-receiver::t _%$args247081%_)))
    (define gxc#::extract-receiver-bind-methods!
      (let ((__tmp248300
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
        (__make-atomic-promise __tmp248300)))
    (define gxc#apply-extract-receiver
      (lambda (_%stx247073%_)
        (force gxc#::extract-receiver-bind-methods!)
        (let* ((_%self247076%_
                (let ((__obj248289
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::extract-receiver::t))))
                  __obj248289))
               (__tmp248301
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self247076%_ _%stx247073%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp248301
           gxc#current-compile-method
           _%self247076%_))))
    (define gxc#::collect-object-refs::t
      (let ((__tmp248303 (list gxc#::void::t))
            (__tmp248302 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::collect-object-refs::t
         '::collect-object-refs
         __tmp248303
         '(receiver methods slots)
         __tmp248302
         '#f)))
    (define gxc#::collect-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::collect-object-refs::t)))
    (define gxc#make-::collect-object-refs
      (lambda _%$args247070%_
        (apply make-instance gxc#::collect-object-refs::t _%$args247070%_)))
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
      (let ((__tmp248304
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
        (__make-atomic-promise __tmp248304)))
    (define gxc#apply-collect-object-refs__%
      (lambda (_%@@keywords247039%_
               _%$%receiver247034247040%_
               _%$%methods247035247041%_
               _%$%slots247036247042%_
               _%stx247043%_)
        (let* ((_%receiver247046%_
                (if (eq? _%$%receiver247034247040%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver247034247040%_))
               (_%methods247048%_
                (if (eq? _%$%methods247035247041%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods247035247041%_))
               (_%slots247050%_
                (if (eq? _%$%slots247036247042%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots247036247042%_)))
          (force gxc#::collect-object-refs-bind-methods!)
          (let* ((_%self247052%_
                  (let ((__obj248291
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
                       __obj248291
                       _%receiver247046%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj248291
                       _%methods247048%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj248291
                       _%slots247050%_
                       '3
                       '#f
                       '#f))
                    __obj248291))
                 (__tmp248305
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self247052%_ _%stx247043%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp248305
             gxc#current-compile-method
             _%self247052%_)))))
    (define gxc#apply-collect-object-refs__@
      (lambda (_%@@keywords247059%_ . _%args247060%_)
        (apply gxc#apply-collect-object-refs__%
               _%@@keywords247059%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247059%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247059%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247059%_
                  'slots:
                  absent-value))
               _%args247060%_)))
    (define gxc#apply-collect-object-refs
      (lambda _%$%args247037247066%_
        (apply keyword-dispatch
               '#(receiver: slots: methods:)
               gxc#apply-collect-object-refs__@
               _%$%args247037247066%_)))
    (define gxc#::subst-object-refs::t
      (let ((__tmp248307 (list gxc#::basic-xform-expression::t))
            (__tmp248306 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::subst-object-refs::t
         '::subst-object-refs
         __tmp248307
         '(receiver klass methods slots)
         __tmp248306
         '#f)))
    (define gxc#::subst-object-refs?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::subst-object-refs::t)))
    (define gxc#make-::subst-object-refs
      (lambda _%$args247030%_
        (apply make-instance gxc#::subst-object-refs::t _%$args247030%_)))
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
      (let ((__tmp248308
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
        (__make-atomic-promise __tmp248308)))
    (define gxc#apply-subst-object-refs__%
      (lambda (_%@@keywords246996%_
               _%$%receiver246990246997%_
               _%$%klass246991246998%_
               _%$%methods246992246999%_
               _%$%slots246993247000%_
               _%stx247001%_)
        (let* ((_%receiver247004%_
                (if (eq? _%$%receiver246990246997%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'receiver:))
                    _%$%receiver246990246997%_))
               (_%klass247006%_
                (if (eq? _%$%klass246991246998%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'klass:))
                    _%$%klass246991246998%_))
               (_%methods247008%_
                (if (eq? _%$%methods246992246999%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'methods:))
                    _%$%methods246992246999%_))
               (_%slots247010%_
                (if (eq? _%$%slots246993247000%_ absent-value)
                    (let ()
                      (declare (not safe))
                      (error '"Missing required keyword argument" 'slots:))
                    _%$%slots246993247000%_)))
          (force gxc#::subst-object-refs-bind-methods!)
          (let* ((_%self247012%_
                  (let ((__obj248293
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
                       __obj248293
                       _%receiver247004%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj248293
                       _%klass247006%_
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj248293
                       _%methods247008%_
                       '3
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj248293
                       _%slots247010%_
                       '4
                       '#f
                       '#f))
                    __obj248293))
                 (__tmp248309
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gxc#compile-e__1 _%self247012%_ _%stx247001%_)))))
            (declare (not safe))
            (call-with-parameters__1
             __tmp248309
             gxc#current-compile-method
             _%self247012%_)))))
    (define gxc#apply-subst-object-refs__@
      (lambda (_%@@keywords247019%_ . _%args247020%_)
        (apply gxc#apply-subst-object-refs__%
               _%@@keywords247019%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247019%_
                  'receiver:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247019%_
                  'klass:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247019%_
                  'methods:
                  absent-value))
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords247019%_
                  'slots:
                  absent-value))
               _%args247020%_)))
    (define gxc#apply-subst-object-refs
      (lambda _%$%args246994247026%_
        (apply keyword-dispatch
               '#(receiver: methods: slots: klass:)
               gxc#apply-subst-object-refs__@
               _%$%args246994247026%_)))
    (define gxc#generate-method-specializers-define-values%
      (lambda (_%self244121%_ _%stx244122%_)
        (letrec ((_%generate-method-bind244124%_
                  (lambda (_%$klass246982%_
                           _%$method-table246983%_
                           _%id246984%_
                           _%$id246985%_)
                    (let ((_%$tmp246987%_
                           (let ((__tmp248310
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__method))))
                             (declare (not safe))
                             (make-symbol__0 __tmp248310))))
                      (cons (cons _%$id246985%_ '())
                            (cons (cons '%#call
                                        (cons (cons '%#ref
                                                    (cons 'make-promise '()))
                                              (cons (cons '%#lambda
                                                          (cons '()
                                                                (cons (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons (cons (cons (cons _%$tmp246987%_ '())
                                                      (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons '%#ref (cons 'symbolic-table-ref '()))
                                (cons (cons '%#ref
                                            (cons _%$method-table246983%_ '()))
                                      (cons (cons '%#quote
                                                  (cons _%id246984%_ '()))
                                            (cons (cons '%#quote
                                                        (cons '#f '()))
                                                  '())))))
                    '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '())
                                          (cons (cons '%#if
                                                      (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%$tmp246987%_ '()))
                    (cons (cons '%#ref (cons _%$tmp246987%_ '()))
                          (cons (cons '%#call
                                      (cons (cons '%#ref (cons 'error '()))
                                            (cons (cons '%#quote
                                                        (cons '"Missing method"
                                                              '()))
                                                  (cons (cons '%#quote
                                                              (cons _%id246984%_
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
                 (_%generate-slot-bind244125%_
                  (lambda (_%$klass246976%_ _%id246977%_ _%$id246978%_)
                    (let ((_%$tmp246980%_
                           (let ((__tmp248311
                                  (let ()
                                    (declare (not safe))
                                    (##gensym '__slot))))
                             (declare (not safe))
                             (make-symbol__0 __tmp248311))))
                      (cons (cons _%$id246978%_ '())
                            (cons (cons '%#let-values
                                        (cons (cons (cons (cons _%$tmp246980%_
                                                                '())
                                                          (cons (cons '%#call
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (cons '%#ref (cons 'class-slot-offset '()))
                                    (cons (cons '%#ref
                                                (cons _%$klass246976%_ '()))
                                          (cons (cons '%#quote
                                                      (cons _%id246977%_ '()))
                                                '()))))
                        '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())
                                              (cons (cons '%#if
                                                          (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons _%$tmp246980%_ '()))
                        (cons (cons '%#ref (cons _%$tmp246980%_ '()))
                              (cons (cons '%#call
                                          (cons (cons '%#ref (cons 'error '()))
                                                (cons (cons '%#quote
                                                            (cons '"Unknown slot"
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          '()))
              (cons (cons '%#quote (cons _%id246977%_ '())) '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                    '()))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    '())))
                                  '())))))
                 (_%generate-specializer-impl244126%_
                  (lambda (_%$klass246970%_
                           _%$method-table246971%_
                           _%methods-bind246972%_
                           _%slots-bind246973%_
                           _%specializer-impl246974%_)
                    (let ((__tmp248312
                           (cons '%#lambda
                                 (cons (cons _%$klass246970%_
                                             (cons _%$method-table246971%_
                                                   '()))
                                       (cons (cons '%#let-values
                                                   (cons (append _%methods-bind246972%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%slots-bind246973%_)
                 (cons _%specializer-impl246974%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             '())))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp248312 _%stx244122%_))))
                 (_%generate-specializer-def244127%_
                  (lambda (_%id246966%_
                           _%specializer-id246967%_
                           _%specializer-impl246968%_)
                    (let ((__tmp248313
                           (cons '%#begin
                                 (cons _%stx244122%_
                                       (cons (let ((__tmp248314
                                                    (cons '%#define-values
                                                          (cons (cons _%specializer-id246967%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              '())
                        (cons _%specializer-impl246968%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (declare (not safe))
                                               (gxc#xform-wrap-source
                                                __tmp248314
                                                _%stx244122%_))
                                             (cons (let ((__tmp248315
                                                          (cons '%#call
                                                                (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                    (cons 'bind-specializer! '()))
                              (cons (cons '%#ref (cons _%id246966%_ '()))
                                    (cons (cons '%#ref
                                                (cons _%specializer-id246967%_
                                                      '()))
                                          '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp248315
                                                      _%stx244122%_))
                                                   '()))))))
                      (declare (not safe))
                      (gxc#xform-wrap-source __tmp248313 _%stx244122%_)))))
          (let* ((_%__stx247181247182%_ _%stx244122%_)
                 (_%$%g244130244150%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx247181247182%_)))))
            (let ((_%__kont247183247184%_
                   (lambda (_%$%g244132244194%_ _%$%g244133244195%_)
                     (let ((_%method-calls244214%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%slot-refs244215%_
                            (let () (declare (not safe)) (make-hash-table-eq)))
                           (_%empty244216%_
                            (let ()
                              (declare (not safe))
                              (make-hash-table-eq))))
                       (letrec ((_%no-specializer?244218%_
                                 (lambda ()
                                   (if (let ((__tmp248316
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%method-calls244214%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp248316))
                                       (let ((__tmp248317
                                              (let ()
                                                (declare (not safe))
                                                (__hash-length
                                                 _%slot-refs244215%_))))
                                         (declare (not safe))
                                         (##fxzero? __tmp248317))
                                       '#f))))
                         (if (let ()
                               (declare (not safe))
                               (gxc#lambda-expr? _%$%g244132244194%_))
                             (let* ((_%__stx247095247096%_ _%$%g244132244194%_)
                                    (_%$%g244602244620%_
                                     (lambda ()
                                       (let ()
                                         (declare (not safe))
                                         (gx#raise-syntax-error
                                          '#f
                                          '"Bad syntax; invalid match target"
                                          _%__stx247095247096%_)))))
                               (let ((_%__kont247097247098%_
                                      (lambda (_%$%g244604244656%_
                                               _%$%g244605244657%_
                                               _%$%g244606244658%_)
                                        (let ((_%receiver244678%_
                                               (let ((_%$e244675%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%g244604244656%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e244675%_
                                                     _%$e244675%_
                                                     _%$%g244606244658%_))))
                                          (for-each
                                           (lambda (_%$%g244679244681%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver244678%_
                                              _%method-calls244214%_
                                              _%slot-refs244215%_
                                              _%$%g244679244681%_))
                                           _%$%g244604244656%_)
                                          (if (_%no-specializer?244218%_)
                                              _%stx244122%_
                                              (let* ((_%specializer-id244690%_
                                                      (let* ((_%id244684%_
                                                              (let ((__tmp248318
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g244133244195%_))))
                        (declare (not safe))
                        (make-symbol__1 __tmp248318 '"::specialize")))
                     (_%specializer-id244687%_
                      (let ((__tmp248319
                             (let ()
                               (declare (not safe))
                               (gx#stx-source _%stx244122%_))))
                        (declare (not safe))
                        (gx#core-quote-syntax__1 _%id244684%_ __tmp248319))))
                (let ()
                  (declare (not safe))
                  (gx#core-bind-runtime!__0 _%specializer-id244687%_))
                _%specializer-id244687%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$klass244692%_
                                                      (let ((__tmp248320
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__klass))))
                (declare (not safe))
                (make-symbol__0 __tmp248320)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$method-table244694%_
                                                      (let ((__tmp248321
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##gensym '__method-table))))
                (declare (not safe))
                (make-symbol__0 __tmp248321)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods244696%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%method-calls244214%_)))
                                                     (_%$methods244700%_
                                                      (let ((__tmp248322
                                                             (lambda (_%id244698%_)
                                                               (let ((__tmp248323
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id244698%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp248323)))))
                (declare (not safe))
                (##map __tmp248322 _%methods244696%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_244709%_
                                                      (let ((__tmp248324
                                                             (lambda (_%$%g244701244704%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g244702244706%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%method-calls244214%_
                          _%$%g244701244704%_
                          _%$%g244702244706%_)))))
                (declare (not safe))
                (##for-each __tmp248324 _%methods244696%_ _%$methods244700%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%methods-bind244719%_
                                                      (let ((__tmp248325
                                                             (lambda (_%$%g244711244714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g244712244716%_)
                       (_%generate-method-bind244124%_
                        _%$klass244692%_
                        _%$method-table244694%_
                        _%$%g244711244714%_
                        _%$%g244712244716%_))))
                (declare (not safe))
                (##map __tmp248325 _%methods244696%_ _%$methods244700%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots244721%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (__hash-keys
                                                         _%slot-refs244215%_)))
                                                     (_%$slots244725%_
                                                      (let ((__tmp248326
                                                             (lambda (_%id244723%_)
                                                               (let ((__tmp248327
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (gensym _%id244723%_)))
                         (declare (not safe))
                         (make-symbol__1 '"__" __tmp248327)))))
                (declare (not safe))
                (##map __tmp248326 _%slots244721%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%_244734%_
                                                      (let ((__tmp248328
                                                             (lambda (_%$%g244726244729%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g244727244731%_)
                       (let ()
                         (declare (not safe))
                         (__hash-put!
                          _%slot-refs244215%_
                          _%$%g244726244729%_
                          _%$%g244727244731%_)))))
                (declare (not safe))
                (##for-each __tmp248328 _%slots244721%_ _%$slots244725%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%slots-bind244743%_
                                                      (let ((__tmp248329
                                                             (lambda (_%$%g244735244738%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              _%$%g244736244740%_)
                       (_%generate-slot-bind244125%_
                        _%$klass244692%_
                        _%$%g244735244738%_
                        _%$%g244736244740%_))))
                (declare (not safe))
                (##map __tmp248329 _%slots244721%_ _%$slots244725%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-body244749%_
                                                      (map (lambda (_%$%g244744244746%_)
                                                             (gxc#apply-subst-object-refs__%
                                                              '#f
                                                              _%receiver244678%_
                                                              _%$klass244692%_
                                                              _%method-calls244214%_
                                                              _%slot-refs244215%_
                                                              _%$%g244744244746%_))
                                                           _%$%g244604244656%_))
                                                     (_%specializer-impl244751%_
                                                      (let ((__tmp248330
                                                             (cons '%#lambda
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (cons (cons _%$%g244606244658%_ _%$%g244605244657%_)
                                 _%specializer-body244749%_))))
                (declare (not safe))
                (gxc#xform-wrap-source __tmp248330 _%stx244122%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%specializer-impl244753%_
                                                      (_%generate-specializer-impl244126%_
                                                       _%$klass244692%_
                                                       _%$method-table244694%_
                                                       _%methods-bind244719%_
                                                       _%slots-bind244743%_
                                                       _%specializer-impl244751%_)))
                                                (let ((__tmp248332
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g244133244195%_)))
                                                      (__tmp248331
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%specializer-id244690%_))))
                                                  (declare (not safe))
                                                  (gxc#verbose
                                                   '"generate method specializer "
                                                   __tmp248332
                                                   '" => "
                                                   __tmp248331))
                                                (_%generate-specializer-def244127%_
                                                 _%$%g244133244195%_
                                                 _%specializer-id244690%_
                                                 _%specializer-impl244753%_))))))
                                     (_%__kont247099247100%_
                                      (lambda () _%stx244122%_)))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%__stx247095247096%_))
                                     (let ((_%$%e244607244632%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%__stx247095247096%_))))
                                       (let ((_%$%tl244609244637%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e244607244632%_)))
                                             (_%$%hd244608244635%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e244607244632%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl244609244637%_))
                                             (let ((_%$%e244610244640%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl244609244637%_))))
                                               (let ((_%$%tl244612244645%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e244610244640%_)))
                                                     (_%$%hd244611244643%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e244610244640%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%hd244611244643%_))
                                                     (let ((_%$%e244613244648%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%hd244611244643%_))))
                                                       (let ((_%$%tl244615244653%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##cdr _%$%e244613244648%_)))
                     (_%$%hd244614244651%_
                      (let ()
                        (declare (not safe))
                        (##car _%$%e244613244648%_))))
                 (_%__kont247097247098%_
                  _%$%tl244612244645%_
                  _%$%tl244615244653%_
                  _%$%hd244614244651%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%__kont247099247100%_))))
                                             (_%__kont247099247100%_))))
                                     (_%__kont247099247100%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gxc#case-lambda-expr? _%$%g244132244194%_))
                                 (let* ((_%$%g244760244779%_
                                         (lambda (_%$%g244761244776%_)
                                           (let ()
                                             (declare (not safe))
                                             (gx#raise-syntax-error
                                              '#f
                                              '"Bad syntax; invalid match target"
                                              _%$%g244761244776%_))))
                                        (_%$%g244759245075%_
                                         (lambda (_%$%g244761244782%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%g244761244782%_))
                                               (let ((_%$%e244763244784%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g244761244782%_))))
                                                 (let ((_%$%hd244764244787%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e244763244784%_)))
                                                       (_%$%tl244765244789%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e244763244784%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair/null?
                                                          _%$%tl244765244789%_))
                                                       (let ((_g248333_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#syntax-split-splice _%$%tl244765244789%_ '0))))
                 (begin
                   (let ((_g248334_
                          (let ()
                            (declare (not safe))
                            (if (##values? _g248333_)
                                (##values-length _g248333_)
                                1))))
                     (if (not (let ()
                                (declare (not safe))
                                (##fx= _g248334_ 2)))
                         (error "Context expects 2 values" _g248334_)))
                   (let ((_%$%target244766244792%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g248333_ 0)))
                         (_%$%tl244768244794%_
                          (let ()
                            (declare (not safe))
                            (##values-ref _g248333_ 1))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl244768244794%_))
                         (letrec ((_%$%loop244769244797%_
                                   (lambda (_%$%hd244767244800%_
                                            _%$%clause244773244802%_)
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd244767244800%_))
                                         (let ((_%$%e244770244804%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd244767244800%_))))
                                           (let ((_%$%lp-hd244771244807%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e244770244804%_)))
                                                 (_%$%lp-tl244772244809%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e244770244804%_))))
                                             (_%$%loop244769244797%_
                                              _%$%lp-tl244772244809%_
                                              (cons _%$%lp-hd244771244807%_
                                                    _%$%clause244773244802%_))))
                                         (let ((_%$%clause244774244812%_
                                                (reverse _%$%clause244773244802%_)))
                                           (for-each
                                            (lambda (_%clause244828%_)
                                              (let* ((_%__stx247121247122%_
                                                      _%clause244828%_)
                                                     (_%$%g244831244846%_
                                                      (lambda ()
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#raise-syntax-error
                                                           '#f
                                                           '"Bad syntax; invalid match target"
                                                           _%__stx247121247122%_)))))
                                                (let ((_%__kont247123247124%_
                                                       (lambda (_%$%g244833244874%_
                                                                _%$%g244834244875%_
                                                                _%$%g244835244876%_)
                                                         (let ((_%receiver244895%_
                                                                (let ((_%$e244892%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (gxc#apply-extract-receiver
                                (cons (let ()
                                        (declare (not safe))
                                        (gx#datum->syntax__0 '#f '%#begin))
                                      _%$%g244833244874%_))))
                          (if _%$e244892%_ _%$e244892%_ _%$%g244835244876%_))))
                   (for-each
                    (lambda (_%$%g244896244898%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver244895%_
                       _%method-calls244214%_
                       _%slot-refs244215%_
                       _%$%g244896244898%_))
                    _%$%g244833244874%_))))
              (_%__kont247125247126%_ (lambda () '#!void)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%__stx247121247122%_))
                                                      (let ((_%$%e244836244858%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%__stx247121247122%_))))
                (let ((_%$%tl244838244863%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e244836244858%_)))
                      (_%$%hd244837244861%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e244836244858%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd244837244861%_))
                      (let ((_%$%e244839244866%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd244837244861%_))))
                        (let ((_%$%tl244841244871%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e244839244866%_)))
                              (_%$%hd244840244869%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e244839244866%_))))
                          (_%__kont247123247124%_
                           _%$%tl244838244863%_
                           _%$%tl244841244871%_
                           _%$%hd244840244869%_)))
                      '#!void)))
              '#!void))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                            (let ((__tmp248335
                                                   (lambda (_%$%g244903244906%_
                                                            _%$%g244904244908%_)
                                                     (cons _%$%g244903244906%_
                                                           _%$%g244904244908%_))))
                                              (declare (not safe))
                                              (foldr__0
                                               __tmp248335
                                               '()
                                               _%$%clause244774244812%_)))
                                           (if (_%no-specializer?244218%_)
                                               _%stx244122%_
                                               (let* ((_%specializer-id244917%_
                                                       (let* ((_%id244911%_
                                                               (let ((__tmp248336
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%g244133244195%_))))
                         (declare (not safe))
                         (make-symbol__1 __tmp248336 '"::specialize")))
                      (_%specializer-id244914%_
                       (let ((__tmp248337
                              (let ()
                                (declare (not safe))
                                (gx#stx-source _%stx244122%_))))
                         (declare (not safe))
                         (gx#core-quote-syntax__1 _%id244911%_ __tmp248337))))
                 (let ()
                   (declare (not safe))
                   (gx#core-bind-runtime!__0 _%specializer-id244914%_))
                 _%specializer-id244914%_))
              (_%$klass244919%_
               (let ((__tmp248338
                      (let () (declare (not safe)) (##gensym '__klass))))
                 (declare (not safe))
                 (make-symbol__0 __tmp248338)))
              (_%$method-table244921%_
               (let ((__tmp248339
                      (let ()
                        (declare (not safe))
                        (##gensym '__method-table))))
                 (declare (not safe))
                 (make-symbol__0 __tmp248339)))
              (_%methods244923%_
               (let ()
                 (declare (not safe))
                 (__hash-keys _%method-calls244214%_)))
              (_%$methods244927%_
               (let ((__tmp248340
                      (lambda (_%id244925%_)
                        (let ((__tmp248341 (gensym _%id244925%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp248341)))))
                 (declare (not safe))
                 (##map __tmp248340 _%methods244923%_)))
              (_%_244936%_
               (let ((__tmp248342
                      (lambda (_%$%g244928244931%_ _%$%g244929244933%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%method-calls244214%_
                           _%$%g244928244931%_
                           _%$%g244929244933%_)))))
                 (declare (not safe))
                 (##for-each
                  __tmp248342
                  _%methods244923%_
                  _%$methods244927%_)))
              (_%methods-bind244946%_
               (let ((__tmp248343
                      (lambda (_%$%g244938244941%_ _%$%g244939244943%_)
                        (_%generate-method-bind244124%_
                         _%$klass244919%_
                         _%$method-table244921%_
                         _%$%g244938244941%_
                         _%$%g244939244943%_))))
                 (declare (not safe))
                 (##map __tmp248343 _%methods244923%_ _%$methods244927%_)))
              (_%slots244948%_
               (let () (declare (not safe)) (__hash-keys _%slot-refs244215%_)))
              (_%$slots244952%_
               (let ((__tmp248344
                      (lambda (_%id244950%_)
                        (let ((__tmp248345 (gensym _%id244950%_)))
                          (declare (not safe))
                          (make-symbol__1 '"__" __tmp248345)))))
                 (declare (not safe))
                 (##map __tmp248344 _%slots244948%_)))
              (_%_244961%_
               (let ((__tmp248346
                      (lambda (_%$%g244953244956%_ _%$%g244954244958%_)
                        (let ()
                          (declare (not safe))
                          (__hash-put!
                           _%slot-refs244215%_
                           _%$%g244953244956%_
                           _%$%g244954244958%_)))))
                 (declare (not safe))
                 (##for-each __tmp248346 _%slots244948%_ _%$slots244952%_)))
              (_%slots-bind244970%_
               (let ((__tmp248347
                      (lambda (_%$%g244962244965%_ _%$%g244963244967%_)
                        (_%generate-slot-bind244125%_
                         _%$klass244919%_
                         _%$%g244962244965%_
                         _%$%g244963244967%_))))
                 (declare (not safe))
                 (##map __tmp248347 _%slots244948%_ _%$slots244952%_)))
              (_%specializer-clauses245068%_
               (map (lambda (_%clause244972%_)
                      (let* ((_%__stx247141247142%_ _%clause244972%_)
                             (_%$%g244975244990%_
                              (lambda ()
                                (let ()
                                  (declare (not safe))
                                  (gx#raise-syntax-error
                                   '#f
                                   '"Bad syntax; invalid match target"
                                   _%__stx247141247142%_)))))
                        (let ((_%__kont247143247144%_
                               (lambda (_%$%g244977245018%_
                                        _%$%g244978245019%_
                                        _%$%g244979245020%_)
                                 (let* ((_%receiver245049%_
                                         (let ((_%$e245046%_
                                                (gxc#apply-extract-receiver
                                                 (cons (let ()
                                                         (declare (not safe))
                                                         (gx#datum->syntax__0
                                                          '#f
                                                          '%#begin))
                                                       _%$%g244977245018%_))))
                                           (if _%$e245046%_
                                               _%$e245046%_
                                               _%$%g244979245020%_)))
                                        (_%body245055%_
                                         (map (lambda (_%$%g245050245052%_)
                                                (gxc#apply-subst-object-refs__%
                                                 '#f
                                                 _%receiver245049%_
                                                 _%$klass244919%_
                                                 _%method-calls244214%_
                                                 _%slot-refs244215%_
                                                 _%$%g245050245052%_))
                                              _%$%g244977245018%_)))
                                   (cons (cons _%$%g244979245020%_
                                               _%$%g244978245019%_)
                                         _%body245055%_))))
                              (_%__kont247145247146%_
                               (lambda () _%clause244972%_)))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%__stx247141247142%_))
                              (let ((_%$%e244980245002%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%__stx247141247142%_))))
                                (let ((_%$%tl244982245007%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e244980245002%_)))
                                      (_%$%hd244981245005%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e244980245002%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd244981245005%_))
                                      (let ((_%$%e244983245010%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd244981245005%_))))
                                        (let ((_%$%tl244985245015%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e244983245010%_)))
                                              (_%$%hd244984245013%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e244983245010%_))))
                                          (_%__kont247143247144%_
                                           _%$%tl244982245007%_
                                           _%$%tl244985245015%_
                                           _%$%hd244984245013%_)))
                                      (_%__kont247145247146%_))))
                              (_%__kont247145247146%_)))))
                    (let ((__tmp248348
                           (lambda (_%$%g245060245063%_ _%$%g245061245065%_)
                             (cons _%$%g245060245063%_ _%$%g245061245065%_))))
                      (declare (not safe))
                      (foldr__0 __tmp248348 '() _%$%clause244774244812%_))))
              (_%specializer-impl245070%_
               (let ((__tmp248349
                      (cons '%#case-lambda _%specializer-clauses245068%_)))
                 (declare (not safe))
                 (gxc#xform-wrap-source __tmp248349 _%stx244122%_)))
              (_%specializer-impl245072%_
               (_%generate-specializer-impl244126%_
                _%$klass244919%_
                _%$method-table244921%_
                _%methods-bind244946%_
                _%slots-bind244970%_
                _%specializer-impl245070%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (let ((__tmp248351
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g244133244195%_)))
                                                       (__tmp248350
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%specializer-id244917%_))))
                                                   (declare (not safe))
                                                   (gxc#verbose
                                                    '"generate method specializer "
                                                    __tmp248351
                                                    '" => "
                                                    __tmp248350))
                                                 (_%generate-specializer-def244127%_
                                                  _%$%g244133244195%_
                                                  _%specializer-id244917%_
                                                  _%specializer-impl245072%_))))))))
                           (_%$%loop244769244797%_
                            _%$%target244766244792%_
                            '()))
                         (_%$%g244760244779%_ _%$%g244761244782%_)))))
               (_%$%g244760244779%_ _%$%g244761244782%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g244760244779%_
                                                _%$%g244761244782%_)))))
                                   (_%$%g244759245075%_ _%$%g244132244194%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gxc#opt-lambda-expr?
                                        _%$%g244132244194%_))
                                     (let* ((_%$%g245079245109%_
                                             (lambda (_%$%g245080245106%_)
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#raise-syntax-error
                                                  '#f
                                                  '"Bad syntax; invalid match target"
                                                  _%$%g245080245106%_))))
                                            (_%$%g245078245736%_
                                             (lambda (_%$%g245080245112%_)
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%g245080245112%_))
                                                   (let ((_%$%e245084245114%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%g245080245112%_))))
                                                     (let ((_%$%hd245085245117%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e245084245114%_)))
                                                           (_%$%tl245086245119%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e245084245114%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%tl245086245119%_))
                                                           (let ((_%$%e245087245122%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%tl245086245119%_))))
                     (let ((_%$%hd245088245125%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e245087245122%_)))
                           (_%$%tl245089245127%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e245087245122%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd245088245125%_))
                           (let ((_%$%e245090245130%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd245088245125%_))))
                             (let ((_%$%hd245091245133%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e245090245130%_)))
                                   (_%$%tl245092245135%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e245090245130%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd245091245133%_))
                                   (let ((_%$%e245093245138%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd245091245133%_))))
                                     (let ((_%$%hd245094245141%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e245093245138%_)))
                                           (_%$%tl245095245143%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e245093245138%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd245094245141%_))
                                           (let ((_%$%e245096245146%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd245094245141%_))))
                                             (let ((_%$%hd245097245149%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e245096245146%_)))
                                                   (_%$%tl245098245151%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e245096245146%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl245098245151%_))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%tl245095245143%_))
                                                       (let ((_%$%e245099245154%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%tl245095245143%_))))
                 (let ((_%$%hd245100245157%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e245099245154%_)))
                       (_%$%tl245101245159%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e245099245154%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl245101245159%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-null? _%$%tl245092245135%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl245089245127%_))
                               (let ((_%$%e245102245162%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl245089245127%_))))
                                 (let ((_%$%hd245103245165%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e245102245162%_)))
                                       (_%$%tl245104245167%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e245102245162%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl245104245167%_))
                                       (let ()
                                         (let* ((_%$%g245196245214%_
                                                 (lambda (_%$%g245197245211%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g245197245211%_))))
                                                (_%$%g245195245270%_
                                                 (lambda (_%$%g245197245217%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g245197245217%_))
                                                       (let ((_%$%e245201245219%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g245197245217%_))))
                 (let ((_%$%hd245202245222%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e245201245219%_)))
                       (_%$%tl245203245224%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e245201245219%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl245203245224%_))
                       (let ((_%$%e245204245227%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl245203245224%_))))
                         (let ((_%$%hd245205245230%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e245204245227%_)))
                               (_%$%tl245206245232%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e245204245227%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%hd245205245230%_))
                               (let ((_%$%e245207245235%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%hd245205245230%_))))
                                 (let ((_%$%hd245208245238%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e245207245235%_)))
                                       (_%$%tl245209245240%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e245207245235%_))))
                                   (let ((_%receiver245264%_
                                          (let ((_%$e245261%_
                                                 (gxc#apply-extract-receiver
                                                  (cons (let ()
                                                          (declare (not safe))
                                                          (gx#datum->syntax__0
                                                           '#f
                                                           '%#begin))
                                                        _%$%tl245206245232%_))))
                                            (if _%$e245261%_
                                                _%$e245261%_
                                                _%$%hd245208245238%_))))
                                     (for-each
                                      (lambda (_%$%g245265245267%_)
                                        (gxc#apply-collect-object-refs__%
                                         '#f
                                         _%receiver245264%_
                                         _%method-calls244214%_
                                         _%slot-refs244215%_
                                         _%$%g245265245267%_))
                                      _%$%tl245206245232%_))))
                               (_%$%g245196245214%_ _%$%g245197245217%_))))
                       (_%$%g245196245214%_ _%$%g245197245217%_))))
               (_%$%g245196245214%_ _%$%g245197245217%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g245195245270%_
                                            _%$%hd245100245157%_))
                                         (let* ((_%$%g245273245292%_
                                                 (lambda (_%$%g245274245289%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g245274245289%_))))
                                                (_%$%g245272245414%_
                                                 (lambda (_%$%g245274245295%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g245274245295%_))
                                                       (let ((_%$%e245276245297%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g245274245295%_))))
                 (let ((_%$%hd245277245300%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e245276245297%_)))
                       (_%$%tl245278245302%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e245276245297%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-pair/null? _%$%tl245278245302%_))
                       (let ((_g248352_
                              (let ()
                                (declare (not safe))
                                (gx#syntax-split-splice
                                 _%$%tl245278245302%_
                                 '0))))
                         (begin
                           (let ((_g248353_
                                  (let ()
                                    (declare (not safe))
                                    (if (##values? _g248352_)
                                        (##values-length _g248352_)
                                        1))))
                             (if (not (let ()
                                        (declare (not safe))
                                        (##fx= _g248353_ 2)))
                                 (error "Context expects 2 values" _g248353_)))
                           (let ((_%$%target245279245305%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g248352_ 0)))
                                 (_%$%tl245281245307%_
                                  (let ()
                                    (declare (not safe))
                                    (##values-ref _g248352_ 1))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-null? _%$%tl245281245307%_))
                                 (letrec ((_%$%loop245282245310%_
                                           (lambda (_%$%hd245280245313%_
                                                    _%$%clause245286245315%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%hd245280245313%_))
                                                 (let ((_%$%e245283245317%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%hd245280245313%_))))
                                                   (let ((_%$%lp-hd245284245320%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e245283245317%_)))
                                                         (_%$%lp-tl245285245322%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e245283245317%_))))
                                                     (_%$%loop245282245310%_
                                                      _%$%lp-tl245285245322%_
                                                      (cons _%$%lp-hd245284245320%_
                                                            _%$%clause245286245315%_))))
                                                 (let ((_%$%clause245287245325%_
                                                        (reverse _%$%clause245286245315%_)))
                                                   (for-each
                                                    (lambda (_%clause245340%_)
                                                      (let* ((_%$%g245342245357%_
                                                              (lambda (_%$%g245343245354%_)
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#raise-syntax-error
                           '#f
                           '"Bad syntax; invalid match target"
                           _%$%g245343245354%_))))
                     (_%$%g245341245404%_
                      (lambda (_%$%g245343245360%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%g245343245360%_))
                            (let ((_%$%e245347245362%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g245343245360%_))))
                              (let ((_%$%hd245348245365%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e245347245362%_)))
                                    (_%$%tl245349245367%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e245347245362%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd245348245365%_))
                                    (let ((_%$%e245350245370%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd245348245365%_))))
                                      (let ((_%$%hd245351245373%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e245350245370%_)))
                                            (_%$%tl245352245375%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e245350245370%_))))
                                        (let ((_%receiver245398%_
                                               (let ((_%$e245395%_
                                                      (gxc#apply-extract-receiver
                                                       (cons (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#datum->syntax__0 '#f '%#begin))
                     _%$%tl245349245367%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (if _%$e245395%_
                                                     _%$e245395%_
                                                     _%$%hd245351245373%_))))
                                          (for-each
                                           (lambda (_%$%g245399245401%_)
                                             (gxc#apply-collect-object-refs__%
                                              '#f
                                              _%receiver245398%_
                                              _%method-calls244214%_
                                              _%slot-refs244215%_
                                              _%$%g245399245401%_))
                                           _%$%tl245349245367%_))))
                                    (_%$%g245342245357%_
                                     _%$%g245343245360%_))))
                            (_%$%g245342245357%_ _%$%g245343245360%_)))))
                (_%$%g245341245404%_ _%clause245340%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ((__tmp248354
                                                           (lambda (_%$%g245406245409%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            _%$%g245407245411%_)
                     (cons _%$%g245406245409%_ _%$%g245407245411%_))))
              (declare (not safe))
              (foldr__0 __tmp248354 '() _%$%clause245287245325%_))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%$%loop245282245310%_
                                    _%$%target245279245305%_
                                    '()))
                                 (_%$%g245273245292%_ _%$%g245274245295%_)))))
                       (_%$%g245273245292%_ _%$%g245274245295%_))))
               (_%$%g245273245292%_ _%$%g245274245295%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g245272245414%_
                                            _%$%hd245103245165%_))
                                         (if (_%no-specializer?244218%_)
                                             _%stx244122%_
                                             (let* ((_%specializer-id245423%_
                                                     (let* ((_%id245417%_
                                                             (let ((__tmp248355
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%g244133244195%_))))
                       (declare (not safe))
                       (make-symbol__1 __tmp248355 '"::specialize")))
                    (_%specializer-id245420%_
                     (let ((__tmp248356
                            (let ()
                              (declare (not safe))
                              (gx#stx-source _%stx244122%_))))
                       (declare (not safe))
                       (gx#core-quote-syntax__1 _%id245417%_ __tmp248356))))
               (let ()
                 (declare (not safe))
                 (gx#core-bind-runtime!__0 _%specializer-id245420%_))
               _%specializer-id245420%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%$klass245425%_
                                                     (let ((__tmp248357
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__klass))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp248357)))
                                                    (_%$method-table245427%_
                                                     (let ((__tmp248358
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##gensym
                                                               '__method-table))))
                                                       (declare (not safe))
                                                       (make-symbol__0
                                                        __tmp248358)))
                                                    (_%methods245429%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%method-calls244214%_)))
                                                    (_%$methods245433%_
                                                     (let ((__tmp248359
                                                            (lambda (_%id245431%_)
                                                              (let ((__tmp248360
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id245431%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp248360)))))
               (declare (not safe))
               (##map __tmp248359 _%methods245429%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_245442%_
                                                     (let ((__tmp248361
                                                            (lambda (_%$%g245434245437%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g245435245439%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%method-calls244214%_
                         _%$%g245434245437%_
                         _%$%g245435245439%_)))))
               (declare (not safe))
               (##for-each __tmp248361 _%methods245429%_ _%$methods245433%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%methods-bind245452%_
                                                     (let ((__tmp248362
                                                            (lambda (_%$%g245444245447%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g245445245449%_)
                      (_%generate-method-bind244124%_
                       _%$klass245425%_
                       _%$method-table245427%_
                       _%$%g245444245447%_
                       _%$%g245445245449%_))))
               (declare (not safe))
               (##map __tmp248362 _%methods245429%_ _%$methods245433%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots245454%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (__hash-keys
                                                        _%slot-refs244215%_)))
                                                    (_%$slots245458%_
                                                     (let ((__tmp248363
                                                            (lambda (_%id245456%_)
                                                              (let ((__tmp248364
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             (gensym _%id245456%_)))
                        (declare (not safe))
                        (make-symbol__1 '"__" __tmp248364)))))
               (declare (not safe))
               (##map __tmp248363 _%slots245454%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%_245467%_
                                                     (let ((__tmp248365
                                                            (lambda (_%$%g245459245462%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g245460245464%_)
                      (let ()
                        (declare (not safe))
                        (__hash-put!
                         _%slot-refs244215%_
                         _%$%g245459245462%_
                         _%$%g245460245464%_)))))
               (declare (not safe))
               (##for-each __tmp248365 _%slots245454%_ _%$slots245458%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%slots-bind245476%_
                                                     (let ((__tmp248366
                                                            (lambda (_%$%g245468245471%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             _%$%g245469245473%_)
                      (_%generate-slot-bind244125%_
                       _%$klass245425%_
                       _%$%g245468245471%_
                       _%$%g245469245473%_))))
               (declare (not safe))
               (##map __tmp248366 _%slots245454%_ _%$slots245458%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-lambda-expr245568%_
                                                     (let* ((_%$%g245478245496%_
                                                             (lambda (_%$%g245479245493%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g245479245493%_))))
                    (_%$%g245477245565%_
                     (lambda (_%$%g245479245499%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g245479245499%_))
                           (let ((_%$%e245483245501%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g245479245499%_))))
                             (let ((_%$%hd245484245504%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e245483245501%_)))
                                   (_%$%tl245485245506%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e245483245501%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl245485245506%_))
                                   (let ((_%$%e245486245509%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl245485245506%_))))
                                     (let ((_%$%hd245487245512%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e245486245509%_)))
                                           (_%$%tl245488245514%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e245486245509%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%hd245487245512%_))
                                           (let ((_%$%e245489245517%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%hd245487245512%_))))
                                             (let ((_%$%hd245490245520%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e245489245517%_)))
                                                   (_%$%tl245491245522%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e245489245517%_))))
                                               (let* ((_%receiver245556%_
                                                       (let ((_%$e245553%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%tl245488245514%_))))
                 (if _%$e245553%_ _%$e245553%_ _%$%hd245490245520%_)))
              (_%body245562%_
               (map (lambda (_%$%g245557245559%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver245556%_
                       _%$klass245425%_
                       _%method-calls244214%_
                       _%slot-refs244215%_
                       _%$%g245557245559%_))
                    _%$%tl245488245514%_))
              (__tmp248367
               (cons '%#lambda
                     (cons (cons _%$%hd245490245520%_ _%$%tl245491245522%_)
                           _%body245562%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (declare (not safe))
                                                 (gxc#xform-wrap-source
                                                  __tmp248367
                                                  _%$%hd245100245157%_))))
                                           (_%$%g245478245496%_
                                            _%$%g245479245499%_))))
                                   (_%$%g245478245496%_ _%$%g245479245499%_))))
                           (_%$%g245478245496%_ _%$%g245479245499%_)))))
               (_%$%g245477245565%_ _%$%hd245100245157%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-case-lambda-expr245729%_
                                                     (let* ((_%$%g245570245589%_
                                                             (lambda (_%$%g245571245586%_)
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#raise-syntax-error
                          '#f
                          '"Bad syntax; invalid match target"
                          _%$%g245571245586%_))))
                    (_%$%g245569245726%_
                     (lambda (_%$%g245571245592%_)
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%g245571245592%_))
                           (let ((_%$%e245573245594%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%g245571245592%_))))
                             (let ((_%$%hd245574245597%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e245573245594%_)))
                                   (_%$%tl245575245599%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e245573245594%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair/null? _%$%tl245575245599%_))
                                   (let ((_g248368_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-split-splice
                                             _%$%tl245575245599%_
                                             '0))))
                                     (begin
                                       (let ((_g248369_
                                              (let ()
                                                (declare (not safe))
                                                (if (##values? _g248368_)
                                                    (##values-length _g248368_)
                                                    1))))
                                         (if (not (let ()
                                                    (declare (not safe))
                                                    (##fx= _g248369_ 2)))
                                             (error "Context expects 2 values"
                                                    _g248369_)))
                                       (let ((_%$%target245576245602%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g248368_ 0)))
                                             (_%$%tl245578245604%_
                                              (let ()
                                                (declare (not safe))
                                                (##values-ref _g248368_ 1))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-null?
                                                _%$%tl245578245604%_))
                                             (letrec ((_%$%loop245579245607%_
                                                       (lambda (_%$%hd245577245610%_
                                                                _%$%clause245583245612%_)
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair? _%$%hd245577245610%_))
                     (let ((_%$%e245580245614%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%hd245577245610%_))))
                       (let ((_%$%lp-hd245581245617%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e245580245614%_)))
                             (_%$%lp-tl245582245619%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e245580245614%_))))
                         (_%$%loop245579245607%_
                          _%$%lp-tl245582245619%_
                          (cons _%$%lp-hd245581245617%_
                                _%$%clause245583245612%_))))
                     (let* ((_%$%clause245584245622%_
                             (reverse _%$%clause245583245612%_))
                            (_%clauses245724%_
                             (map (lambda (_%clause245638%_)
                                    (let* ((_%__stx247161247162%_
                                            _%clause245638%_)
                                           (_%$%g245641245656%_
                                            (lambda ()
                                              (let ()
                                                (declare (not safe))
                                                (gx#raise-syntax-error
                                                 '#f
                                                 '"Bad syntax; invalid match target"
                                                 _%__stx247161247162%_)))))
                                      (let ((_%__kont247163247164%_
                                             (lambda (_%$%g245643245684%_
                                                      _%$%g245644245685%_
                                                      _%$%g245645245686%_)
                                               (let* ((_%receiver245705%_
                                                       (let ((_%$e245702%_
                                                              (gxc#apply-extract-receiver
                                                               (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                               (declare (not safe))
                               (gx#datum->syntax__0 '#f '%#begin))
                             _%$%g245643245684%_))))
                 (if _%$e245702%_ _%$e245702%_ _%$%g245645245686%_)))
              (_%body245711%_
               (map (lambda (_%$%g245706245708%_)
                      (gxc#apply-subst-object-refs__%
                       '#f
                       _%receiver245705%_
                       _%$klass245425%_
                       _%method-calls244214%_
                       _%slot-refs244215%_
                       _%$%g245706245708%_))
                    _%$%g245643245684%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (cons (cons _%$%g245645245686%_
                                                             _%$%g245644245685%_)
                                                       _%body245711%_))))
                                            (_%__kont247165247166%_
                                             (lambda () _%clause245638%_)))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%__stx247161247162%_))
                                            (let ((_%$%e245646245668%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%__stx247161247162%_))))
                                              (let ((_%$%tl245648245673%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e245646245668%_)))
                                                    (_%$%hd245647245671%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e245646245668%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd245647245671%_))
                                                    (let ((_%$%e245649245676%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd245647245671%_))))
                                                      (let ((_%$%tl245651245681%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e245649245676%_)))
                    (_%$%hd245650245679%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e245649245676%_))))
                (_%__kont247163247164%_
                 _%$%tl245648245673%_
                 _%$%tl245651245681%_
                 _%$%hd245650245679%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont247165247166%_))))
                                            (_%__kont247165247166%_)))))
                                  (let ((__tmp248370
                                         (lambda (_%$%g245716245719%_
                                                  _%$%g245717245721%_)
                                           (cons _%$%g245716245719%_
                                                 _%$%g245717245721%_))))
                                    (declare (not safe))
                                    (foldr__0
                                     __tmp248370
                                     '()
                                     _%$%clause245584245622%_))))
                            (__tmp248371
                             (cons '%#case-lambda _%clauses245724%_)))
                       (declare (not safe))
                       (gxc#xform-wrap-source
                        __tmp248371
                        _%$%hd245103245165%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%loop245579245607%_
                                                _%$%target245576245602%_
                                                '()))
                                             (_%$%g245570245589%_
                                              _%$%g245571245592%_)))))
                                   (_%$%g245570245589%_ _%$%g245571245592%_))))
                           (_%$%g245570245589%_ _%$%g245571245592%_)))))
               (_%$%g245569245726%_ _%$%hd245103245165%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl245731%_
                                                     (let ((__tmp248372
                                                            (cons '%#let-values
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons (cons (cons (cons _%$%hd245097245149%_ '())
                                            (cons _%specializer-lambda-expr245568%_
                                                  '()))
                                      '())
                                (cons _%specializer-case-lambda-expr245729%_
                                      '())))))
               (declare (not safe))
               (gxc#xform-wrap-source __tmp248372 _%stx244122%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%specializer-impl245733%_
                                                     (_%generate-specializer-impl244126%_
                                                      _%$klass245425%_
                                                      _%$method-table245427%_
                                                      _%methods-bind245452%_
                                                      _%slots-bind245476%_
                                                      _%specializer-impl245731%_)))
                                               (let ((__tmp248374
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%g244133244195%_)))
                                                     (__tmp248373
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%specializer-id245423%_))))
                                                 (declare (not safe))
                                                 (gxc#verbose
                                                  '"generate method specializer "
                                                  __tmp248374
                                                  '" => "
                                                  __tmp248373))
                                               (_%generate-specializer-def244127%_
                                                _%$%g244133244195%_
                                                _%specializer-id245423%_
                                                _%specializer-impl245733%_))))
                                       (_%$%g245079245109%_
                                        _%$%g245080245112%_))))
                               (_%$%g245079245109%_ _%$%g245080245112%_))
                           (_%$%g245079245109%_ _%$%g245080245112%_))
                       (_%$%g245079245109%_ _%$%g245080245112%_))))
               (_%$%g245079245109%_ _%$%g245080245112%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g245079245109%_
                                                    _%$%g245080245112%_))))
                                           (_%$%g245079245109%_
                                            _%$%g245080245112%_))))
                                   (_%$%g245079245109%_ _%$%g245080245112%_))))
                           (_%$%g245079245109%_ _%$%g245080245112%_))))
                   (_%$%g245079245109%_ _%$%g245080245112%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g245079245109%_
                                                    _%$%g245080245112%_)))))
                                       (_%$%g245078245736%_
                                        _%$%g244132244194%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gxc#kw-lambda-expr?
                                            _%$%g244132244194%_))
                                         (let* ((_%$%g245740245793%_
                                                 (lambda (_%$%g245741245790%_)
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#raise-syntax-error
                                                      '#f
                                                      '"Bad syntax; invalid match target"
                                                      _%$%g245741245790%_))))
                                                (_%$%g245739246958%_
                                                 (lambda (_%$%g245741245796%_)
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%g245741245796%_))
                                                       (let ((_%$%e245747245798%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%g245741245796%_))))
                 (let ((_%$%hd245748245801%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e245747245798%_)))
                       (_%$%tl245749245803%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e245747245798%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#identifier? _%$%hd245748245801%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-eq? '%#let-values _%$%hd245748245801%_))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-pair? _%$%tl245749245803%_))
                               (let ((_%$%e245750245806%_
                                      (let ()
                                        (declare (not safe))
                                        (gx#stx-e _%$%tl245749245803%_))))
                                 (let ((_%$%hd245751245809%_
                                        (let ()
                                          (declare (not safe))
                                          (##car _%$%e245750245806%_)))
                                       (_%$%tl245752245811%_
                                        (let ()
                                          (declare (not safe))
                                          (##cdr _%$%e245750245806%_))))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd245751245809%_))
                                       (let ((_%$%e245753245814%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd245751245809%_))))
                                         (let ((_%$%hd245754245817%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e245753245814%_)))
                                               (_%$%tl245755245819%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e245753245814%_))))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd245754245817%_))
                                               (let ((_%$%e245756245822%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd245754245817%_))))
                                                 (let ((_%$%hd245757245825%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e245756245822%_)))
                                                       (_%$%tl245758245827%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e245756245822%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-pair?
                                                          _%$%hd245757245825%_))
                                                       (let ((_%$%e245759245830%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-e _%$%hd245757245825%_))))
                 (let ((_%$%hd245760245833%_
                        (let ()
                          (declare (not safe))
                          (##car _%$%e245759245830%_)))
                       (_%$%tl245761245835%_
                        (let ()
                          (declare (not safe))
                          (##cdr _%$%e245759245830%_))))
                   (if (let ()
                         (declare (not safe))
                         (gx#stx-null? _%$%tl245761245835%_))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%tl245758245827%_))
                           (let ((_%$%e245762245838%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%tl245758245827%_))))
                             (let ((_%$%hd245763245841%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e245762245838%_)))
                                   (_%$%tl245764245843%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e245762245838%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd245763245841%_))
                                   (let ((_%$%e245765245846%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd245763245841%_))))
                                     (let ((_%$%hd245766245849%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e245765245846%_)))
                                           (_%$%tl245767245851%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e245765245846%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#identifier?
                                              _%$%hd245766245849%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-eq?
                                                  '%#let-values
                                                  _%$%hd245766245849%_))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-pair?
                                                      _%$%tl245767245851%_))
                                                   (let ((_%$%e245768245854%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-e
                                                             _%$%tl245767245851%_))))
                                                     (let ((_%$%hd245769245857%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##car _%$%e245768245854%_)))
                                                           (_%$%tl245770245859%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (##cdr _%$%e245768245854%_))))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd245769245857%_))
                                                           (let ((_%$%e245771245862%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd245769245857%_))))
                     (let ((_%$%hd245772245865%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e245771245862%_)))
                           (_%$%tl245773245867%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e245771245862%_))))
                       (if (let ()
                             (declare (not safe))
                             (gx#stx-pair? _%$%hd245772245865%_))
                           (let ((_%$%e245774245870%_
                                  (let ()
                                    (declare (not safe))
                                    (gx#stx-e _%$%hd245772245865%_))))
                             (let ((_%$%hd245775245873%_
                                    (let ()
                                      (declare (not safe))
                                      (##car _%$%e245774245870%_)))
                                   (_%$%tl245776245875%_
                                    (let ()
                                      (declare (not safe))
                                      (##cdr _%$%e245774245870%_))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%hd245775245873%_))
                                   (let ((_%$%e245777245878%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%hd245775245873%_))))
                                     (let ((_%$%hd245778245881%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e245777245878%_)))
                                           (_%$%tl245779245883%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e245777245878%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl245779245883%_))
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%tl245776245875%_))
                                               (let ((_%$%e245780245886%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%tl245776245875%_))))
                                                 (let ((_%$%hd245781245889%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e245780245886%_)))
                                                       (_%$%tl245782245891%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e245780245886%_))))
                                                   (if (let ()
                                                         (declare (not safe))
                                                         (gx#stx-null?
                                                          _%$%tl245782245891%_))
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-null?
                                                              _%$%tl245773245867%_))
                                                           (if (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#stx-pair? _%$%tl245770245859%_))
                       (let ((_%$%e245783245894%_
                              (let ()
                                (declare (not safe))
                                (gx#stx-e _%$%tl245770245859%_))))
                         (let ((_%$%hd245784245897%_
                                (let ()
                                  (declare (not safe))
                                  (##car _%$%e245783245894%_)))
                               (_%$%tl245785245899%_
                                (let ()
                                  (declare (not safe))
                                  (##cdr _%$%e245783245894%_))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl245785245899%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-null? _%$%tl245764245843%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-null? _%$%tl245755245819%_))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-pair?
                                              _%$%tl245752245811%_))
                                           (let ((_%$%e245786245902%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (gx#stx-e
                                                     _%$%tl245752245811%_))))
                                             (let ((_%$%hd245787245905%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##car _%$%e245786245902%_)))
                                                   (_%$%tl245788245907%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (##cdr _%$%e245786245902%_))))
                                               (if (let ()
                                                     (declare (not safe))
                                                     (gx#stx-null?
                                                      _%$%tl245788245907%_))
                                                   (let* ((_%$%g245954246016%_
                                                           (lambda (_%$%g245955246013%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g245955246013%_))))
                  (_%$%g245953246955%_
                   (lambda (_%$%g245955246019%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g245955246019%_))
                         (let ((_%$%e245961246021%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g245955246019%_))))
                           (let ((_%$%hd245962246024%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e245961246021%_)))
                                 (_%$%tl245963246026%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e245961246021%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#identifier? _%$%hd245962246024%_))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-eq?
                                        '%#lambda
                                        _%$%hd245962246024%_))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%tl245963246026%_))
                                         (let ((_%$%e245964246029%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%tl245963246026%_))))
                                           (let ((_%$%hd245965246032%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e245964246029%_)))
                                                 (_%$%tl245966246034%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e245964246029%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl245966246034%_))
                                                 (let ((_%$%e245967246037%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl245966246034%_))))
                                                   (let ((_%$%hd245968246040%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e245967246037%_)))
                                                         (_%$%tl245969246042%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e245967246037%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%hd245968246040%_))
                                                         (let ((_%$%e245970246045%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%hd245968246040%_))))
                   (let ((_%$%hd245971246048%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e245970246045%_)))
                         (_%$%tl245972246050%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e245970246045%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#identifier? _%$%hd245971246048%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-eq? '%#call _%$%hd245971246048%_))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl245972246050%_))
                                 (let ((_%$%e245973246053%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl245972246050%_))))
                                   (let ((_%$%hd245974246056%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e245973246053%_)))
                                         (_%$%tl245975246058%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e245973246053%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd245974246056%_))
                                         (let ((_%$%e245976246061%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd245974246056%_))))
                                           (let ((_%$%hd245977246064%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e245976246061%_)))
                                                 (_%$%tl245978246066%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e245976246061%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#identifier?
                                                    _%$%hd245977246064%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-eq?
                                                        '%#ref
                                                        _%$%hd245977246064%_))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl245978246066%_))
                                                         (let ((_%$%e245979246069%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl245978246066%_))))
                   (let ((_%$%hd245980246072%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e245979246069%_)))
                         (_%$%tl245981246074%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e245979246069%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl245981246074%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl245975246058%_))
                             (let ((_%$%e245982246077%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl245975246058%_))))
                               (let ((_%$%hd245983246080%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e245982246077%_)))
                                     (_%$%tl245984246082%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e245982246077%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-pair? _%$%hd245983246080%_))
                                     (let ((_%$%e245985246085%_
                                            (let ()
                                              (declare (not safe))
                                              (gx#stx-e
                                               _%$%hd245983246080%_))))
                                       (let ((_%$%hd245986246088%_
                                              (let ()
                                                (declare (not safe))
                                                (##car _%$%e245985246085%_)))
                                             (_%$%tl245987246090%_
                                              (let ()
                                                (declare (not safe))
                                                (##cdr _%$%e245985246085%_))))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#identifier?
                                                _%$%hd245986246088%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-eq?
                                                    '%#ref
                                                    _%$%hd245986246088%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl245987246090%_))
                                                     (let ((_%$%e245988246093%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl245987246090%_))))
                                                       (let ((_%$%hd245989246096%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e245988246093%_)))
                     (_%$%tl245990246098%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e245988246093%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl245990246098%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%tl245984246082%_))
                         (let ((_%$%e245991246101%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%tl245984246082%_))))
                           (let ((_%$%hd245992246104%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e245991246101%_)))
                                 (_%$%tl245993246106%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e245991246101%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd245992246104%_))
                                 (let ((_%$%e245994246109%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd245992246104%_))))
                                   (let ((_%$%hd245995246112%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e245994246109%_)))
                                         (_%$%tl245996246114%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e245994246109%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#identifier?
                                            _%$%hd245995246112%_))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-eq?
                                                '%#ref
                                                _%$%hd245995246112%_))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%tl245996246114%_))
                                                 (let ((_%$%e245997246117%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%tl245996246114%_))))
                                                   (let ((_%$%hd245998246120%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e245997246117%_)))
                                                         (_%$%tl245999246122%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e245997246117%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-null?
                                                            _%$%tl245999246122%_))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-pair/null? _%$%tl245993246106%_))
                     (if (let ((__tmp248375
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-length _%$%tl245993246106%_))))
                           (declare (not safe))
                           (##fx>= __tmp248375 '1))
                         (let ((_g248376_
                                (let ()
                                  (declare (not safe))
                                  (gx#syntax-split-splice
                                   _%$%tl245993246106%_
                                   '1))))
                           (begin
                             (let ((_g248377_
                                    (let ()
                                      (declare (not safe))
                                      (if (##values? _g248376_)
                                          (##values-length _g248376_)
                                          1))))
                               (if (not (let ()
                                          (declare (not safe))
                                          (##fx= _g248377_ 2)))
                                   (error "Context expects 2 values"
                                          _g248377_)))
                             (let ((_%$%target246000246125%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g248376_ 0)))
                                   (_%$%tl246002246127%_
                                    (let ()
                                      (declare (not safe))
                                      (##values-ref _g248376_ 1))))
                               (if (let ()
                                     (declare (not safe))
                                     (gx#stx-pair? _%$%tl246002246127%_))
                                   (let ((_%$%e246009246130%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#stx-e _%$%tl246002246127%_))))
                                     (let ((_%$%hd246010246133%_
                                            (let ()
                                              (declare (not safe))
                                              (##car _%$%e246009246130%_)))
                                           (_%$%tl246011246135%_
                                            (let ()
                                              (declare (not safe))
                                              (##cdr _%$%e246009246130%_))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl246011246135%_))
                                           (letrec ((_%$%loop246003246138%_
                                                     (lambda (_%$%hd246001246141%_
                                                              _%$%kw-ref246007246143%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd246001246141%_))
                                                           (let ((_%$%e246004246145%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd246001246141%_))))
                     (let ((_%$%lp-hd246005246148%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e246004246145%_)))
                           (_%$%lp-tl246006246150%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e246004246145%_))))
                       (_%$%loop246003246138%_
                        _%$%lp-tl246006246150%_
                        (cons _%$%lp-hd246005246148%_
                              _%$%kw-ref246007246143%_))))
                   (let ((_%$%kw-ref246008246153%_
                          (reverse _%$%kw-ref246007246143%_)))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl245969246042%_))
                         (let* ((_%kw-count246210%_
                                 (length (let ((__tmp248378
                                                (lambda (_%$%g246202246205%_
                                                         _%$%g246203246207%_)
                                                  (cons _%$%g246202246205%_
                                                        _%$%g246203246207%_))))
                                           (declare (not safe))
                                           (foldr__0
                                            __tmp248378
                                            '()
                                            _%$%kw-ref246008246153%_))))
                                (_%self-index246212%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%kw-count246210%_ '1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gxc#lambda-expr? _%$%hd245781245889%_))
                               (let* ((_%$%g246216246230%_
                                       (lambda (_%$%g246217246227%_)
                                         (let ()
                                           (declare (not safe))
                                           (gx#raise-syntax-error
                                            '#f
                                            '"Bad syntax; invalid match target"
                                            _%$%g246217246227%_))))
                                      (_%$%g246215246353%_
                                       (lambda (_%$%g246217246233%_)
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%g246217246233%_))
                                             (let ((_%$%e246220246235%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g246217246233%_))))
                                               (let ((_%$%hd246221246238%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e246220246235%_)))
                                                     (_%$%tl246222246240%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e246220246235%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl246222246240%_))
                                                     (let ((_%$%e246223246243%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl246222246240%_))))
                                                       (let ((_%$%hd246224246246%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e246223246243%_)))
                     (_%$%tl246225246248%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e246223246243%_))))
                 (let* ((_%self246269%_
                         (list-ref _%$%hd246224246246%_ _%self-index246212%_))
                        (_%receiver246274%_
                         (let ((_%$e246271%_
                                (gxc#apply-extract-receiver
                                 (cons (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f '%#begin))
                                       _%$%tl246225246248%_))))
                           (if _%$e246271%_ _%$e246271%_ _%self246269%_))))
                   (for-each
                    (lambda (_%$%g246276246278%_)
                      (gxc#apply-collect-object-refs__%
                       '#f
                       _%receiver246274%_
                       _%method-calls244214%_
                       _%slot-refs244215%_
                       _%$%g246276246278%_))
                    _%$%tl246225246248%_)
                   (if (_%no-specializer?244218%_)
                       _%stx244122%_
                       (let* ((_%specializer-id246287%_
                               (let* ((_%id246281%_
                                       (let ((__tmp248379
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%g244133244195%_))))
                                         (declare (not safe))
                                         (make-symbol__1
                                          __tmp248379
                                          '"::specialize")))
                                      (_%specializer-id246284%_
                                       (let ((__tmp248380
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-source
                                                 _%stx244122%_))))
                                         (declare (not safe))
                                         (gx#core-quote-syntax__1
                                          _%id246281%_
                                          __tmp248380))))
                                 (let ()
                                   (declare (not safe))
                                   (gx#core-bind-runtime!__0
                                    _%specializer-id246284%_))
                                 _%specializer-id246284%_))
                              (_%$klass246289%_
                               (let ((__tmp248381
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__klass))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp248381)))
                              (_%$method-table246291%_
                               (let ((__tmp248382
                                      (let ()
                                        (declare (not safe))
                                        (##gensym '__method-table))))
                                 (declare (not safe))
                                 (make-symbol__0 __tmp248382)))
                              (_%methods246293%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%method-calls244214%_)))
                              (_%$methods246297%_
                               (let ((__tmp248383
                                      (lambda (_%id246295%_)
                                        (let ((__tmp248384
                                               (gensym _%id246295%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp248384)))))
                                 (declare (not safe))
                                 (##map __tmp248383 _%methods246293%_)))
                              (_%_246306%_
                               (let ((__tmp248385
                                      (lambda (_%$%g246298246301%_
                                               _%$%g246299246303%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%method-calls244214%_
                                           _%$%g246298246301%_
                                           _%$%g246299246303%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp248385
                                  _%methods246293%_
                                  _%$methods246297%_)))
                              (_%methods-bind246316%_
                               (let ((__tmp248386
                                      (lambda (_%$%g246308246311%_
                                               _%$%g246309246313%_)
                                        (_%generate-method-bind244124%_
                                         _%$klass246289%_
                                         _%$method-table246291%_
                                         _%$%g246308246311%_
                                         _%$%g246309246313%_))))
                                 (declare (not safe))
                                 (##map __tmp248386
                                        _%methods246293%_
                                        _%$methods246297%_)))
                              (_%slots246318%_
                               (let ()
                                 (declare (not safe))
                                 (__hash-keys _%slot-refs244215%_)))
                              (_%$slots246322%_
                               (let ((__tmp248387
                                      (lambda (_%id246320%_)
                                        (let ((__tmp248388
                                               (gensym _%id246320%_)))
                                          (declare (not safe))
                                          (make-symbol__1
                                           '"__"
                                           __tmp248388)))))
                                 (declare (not safe))
                                 (##map __tmp248387 _%slots246318%_)))
                              (_%_246331%_
                               (let ((__tmp248389
                                      (lambda (_%$%g246323246326%_
                                               _%$%g246324246328%_)
                                        (let ()
                                          (declare (not safe))
                                          (__hash-put!
                                           _%slot-refs244215%_
                                           _%$%g246323246326%_
                                           _%$%g246324246328%_)))))
                                 (declare (not safe))
                                 (##for-each
                                  __tmp248389
                                  _%slots246318%_
                                  _%$slots246322%_)))
                              (_%slots-bind246340%_
                               (let ((__tmp248390
                                      (lambda (_%$%g246332246335%_
                                               _%$%g246333246337%_)
                                        (_%generate-slot-bind244125%_
                                         _%$klass246289%_
                                         _%$%g246332246335%_
                                         _%$%g246333246337%_))))
                                 (declare (not safe))
                                 (##map __tmp248390
                                        _%slots246318%_
                                        _%$slots246322%_)))
                              (_%specializer-impl246348%_
                               (let* ((_%specializer-body246346%_
                                       (map (lambda (_%$%g246341246343%_)
                                              (gxc#apply-subst-object-refs__%
                                               '#f
                                               _%receiver246274%_
                                               _%$klass246289%_
                                               _%method-calls244214%_
                                               _%slot-refs244215%_
                                               _%$%g246341246343%_))
                                            _%$%tl246225246248%_))
                                      (__tmp248391
                                       (cons '%#let-values
                                             (cons (cons (cons (cons _%$%hd245760245833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                             '())
                       (cons (cons '%#let-values
                                   (cons (cons (cons (cons _%$%hd245778245881%_
                                                           '())
                                                     (cons (let ((__tmp248392
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons '%#lambda
                                (cons _%$%hd246224246246%_
                                      _%specializer-body246346%_))))
                     (declare (not safe))
                     (gxc#xform-wrap-source __tmp248392 _%$%hd245781245889%_))
                   '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               '())
                                         (cons _%$%hd245784245897%_ '())))
                             '()))
                 '())
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (cons _%$%hd245787245905%_
                                                         '())))))
                                 (declare (not safe))
                                 (gxc#xform-wrap-source
                                  __tmp248391
                                  _%stx244122%_)))
                              (_%specializer-impl246350%_
                               (_%generate-specializer-impl244126%_
                                _%$klass246289%_
                                _%$method-table246291%_
                                _%methods-bind246316%_
                                _%slots-bind246340%_
                                _%specializer-impl246348%_)))
                         (let ((__tmp248394
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g244133244195%_)))
                               (__tmp248393
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%specializer-id246287%_))))
                           (declare (not safe))
                           (gxc#verbose
                            '"generate method specializer "
                            __tmp248394
                            '" => "
                            __tmp248393))
                         (_%generate-specializer-def244127%_
                          _%$%g244133244195%_
                          _%specializer-id246287%_
                          _%specializer-impl246350%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246216246230%_
                                                      _%$%g246217246233%_))))
                                             (_%$%g246216246230%_
                                              _%$%g246217246233%_)))))
                                 (_%$%g246215246353%_ _%$%hd245781245889%_))
                               (if (let ()
                                     (declare (not safe))
                                     (gxc#opt-lambda-expr?
                                      _%$%hd245781245889%_))
                                   (let* ((_%$%g246357246387%_
                                           (lambda (_%$%g246358246384%_)
                                             (let ()
                                               (declare (not safe))
                                               (gx#raise-syntax-error
                                                '#f
                                                '"Bad syntax; invalid match target"
                                                _%$%g246358246384%_))))
                                          (_%$%g246356246951%_
                                           (lambda (_%$%g246358246390%_)
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-pair?
                                                    _%$%g246358246390%_))
                                                 (let ((_%$%e246362246392%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (gx#stx-e
                                                           _%$%g246358246390%_))))
                                                   (let ((_%$%hd246363246395%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##car _%$%e246362246392%_)))
                                                         (_%$%tl246364246397%_
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##cdr _%$%e246362246392%_))))
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (gx#stx-pair?
                                                            _%$%tl246364246397%_))
                                                         (let ((_%$%e246365246400%_
                                                                (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (declare (not safe))
                          (gx#stx-e _%$%tl246364246397%_))))
                   (let ((_%$%hd246366246403%_
                          (let ()
                            (declare (not safe))
                            (##car _%$%e246365246400%_)))
                         (_%$%tl246367246405%_
                          (let ()
                            (declare (not safe))
                            (##cdr _%$%e246365246400%_))))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%hd246366246403%_))
                         (let ((_%$%e246368246408%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%hd246366246403%_))))
                           (let ((_%$%hd246369246411%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e246368246408%_)))
                                 (_%$%tl246370246413%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e246368246408%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%hd246369246411%_))
                                 (let ((_%$%e246371246416%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%hd246369246411%_))))
                                   (let ((_%$%hd246372246419%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e246371246416%_)))
                                         (_%$%tl246373246421%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e246371246416%_))))
                                     (if (let ()
                                           (declare (not safe))
                                           (gx#stx-pair? _%$%hd246372246419%_))
                                         (let ((_%$%e246374246424%_
                                                (let ()
                                                  (declare (not safe))
                                                  (gx#stx-e
                                                   _%$%hd246372246419%_))))
                                           (let ((_%$%hd246375246427%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##car _%$%e246374246424%_)))
                                                 (_%$%tl246376246429%_
                                                  (let ()
                                                    (declare (not safe))
                                                    (##cdr _%$%e246374246424%_))))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (gx#stx-null?
                                                    _%$%tl246376246429%_))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%tl246373246421%_))
                                                     (let ((_%$%e246377246432%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%tl246373246421%_))))
                                                       (let ((_%$%hd246378246435%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e246377246432%_)))
                     (_%$%tl246379246437%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e246377246432%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-null? _%$%tl246379246437%_))
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-null? _%$%tl246370246413%_))
                         (if (let ()
                               (declare (not safe))
                               (gx#stx-pair? _%$%tl246367246405%_))
                             (let ((_%$%e246380246440%_
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%tl246367246405%_))))
                               (let ((_%$%hd246381246443%_
                                      (let ()
                                        (declare (not safe))
                                        (##car _%$%e246380246440%_)))
                                     (_%$%tl246382246445%_
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%$%e246380246440%_))))
                                 (if (let ()
                                       (declare (not safe))
                                       (gx#stx-null? _%$%tl246382246445%_))
                                     (let ()
                                       (let* ((_%$%g246474246488%_
                                               (lambda (_%$%g246475246485%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g246475246485%_))))
                                              (_%$%g246473246535%_
                                               (lambda (_%$%g246475246491%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g246475246491%_))
                                                     (let ((_%$%e246478246493%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g246475246491%_))))
                                                       (let ((_%$%hd246479246496%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e246478246493%_)))
                     (_%$%tl246480246498%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e246478246493%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair? _%$%tl246480246498%_))
                     (let ((_%$%e246481246501%_
                            (let ()
                              (declare (not safe))
                              (gx#stx-e _%$%tl246480246498%_))))
                       (let ((_%$%hd246482246504%_
                              (let ()
                                (declare (not safe))
                                (##car _%$%e246481246501%_)))
                             (_%$%tl246483246506%_
                              (let ()
                                (declare (not safe))
                                (##cdr _%$%e246481246501%_))))
                         (let* ((_%self246523%_
                                 (list-ref
                                  _%$%hd246482246504%_
                                  _%self-index246212%_))
                                (_%receiver246528%_
                                 (let ((_%$e246525%_
                                        (gxc#apply-extract-receiver
                                         (cons (let ()
                                                 (declare (not safe))
                                                 (gx#datum->syntax__0
                                                  '#f
                                                  '%#begin))
                                               _%$%tl246483246506%_))))
                                   (if _%$e246525%_
                                       _%$e246525%_
                                       _%self246523%_))))
                           (for-each
                            (lambda (_%$%g246530246532%_)
                              (gxc#apply-collect-object-refs__%
                               '#f
                               _%receiver246528%_
                               _%method-calls244214%_
                               _%slot-refs244215%_
                               _%$%g246530246532%_))
                            _%$%tl246483246506%_))))
                     (_%$%g246474246488%_ _%$%g246475246491%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246474246488%_
                                                      _%$%g246475246491%_)))))
                                         (_%$%g246473246535%_
                                          _%$%hd246378246435%_))
                                       (let* ((_%$%g246538246557%_
                                               (lambda (_%$%g246539246554%_)
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#raise-syntax-error
                                                    '#f
                                                    '"Bad syntax; invalid match target"
                                                    _%$%g246539246554%_))))
                                              (_%$%g246537246666%_
                                               (lambda (_%$%g246539246560%_)
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-pair?
                                                        _%$%g246539246560%_))
                                                     (let ((_%$%e246541246562%_
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-e
                                                               _%$%g246539246560%_))))
                                                       (let ((_%$%hd246542246565%_
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##car _%$%e246541246562%_)))
                     (_%$%tl246543246567%_
                      (let ()
                        (declare (not safe))
                        (##cdr _%$%e246541246562%_))))
                 (if (let ()
                       (declare (not safe))
                       (gx#stx-pair/null? _%$%tl246543246567%_))
                     (let ((_g248395_
                            (let ()
                              (declare (not safe))
                              (gx#syntax-split-splice
                               _%$%tl246543246567%_
                               '0))))
                       (begin
                         (let ((_g248396_
                                (let ()
                                  (declare (not safe))
                                  (if (##values? _g248395_)
                                      (##values-length _g248395_)
                                      1))))
                           (if (not (let ()
                                      (declare (not safe))
                                      (##fx= _g248396_ 2)))
                               (error "Context expects 2 values" _g248396_)))
                         (let ((_%$%target246544246570%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g248395_ 0)))
                               (_%$%tl246546246572%_
                                (let ()
                                  (declare (not safe))
                                  (##values-ref _g248395_ 1))))
                           (if (let ()
                                 (declare (not safe))
                                 (gx#stx-null? _%$%tl246546246572%_))
                               (letrec ((_%$%loop246547246575%_
                                         (lambda (_%$%hd246545246578%_
                                                  _%$%clause246551246580%_)
                                           (if (let ()
                                                 (declare (not safe))
                                                 (gx#stx-pair?
                                                  _%$%hd246545246578%_))
                                               (let ((_%$%e246548246582%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (gx#stx-e
                                                         _%$%hd246545246578%_))))
                                                 (let ((_%$%lp-hd246549246585%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##car _%$%e246548246582%_)))
                                                       (_%$%lp-tl246550246587%_
                                                        (let ()
                                                          (declare (not safe))
                                                          (##cdr _%$%e246548246582%_))))
                                                   (_%$%loop246547246575%_
                                                    _%$%lp-tl246550246587%_
                                                    (cons _%$%lp-hd246549246585%_
                                                          _%$%clause246551246580%_))))
                                               (let ((_%$%clause246552246590%_
                                                      (reverse _%$%clause246551246580%_)))
                                                 (for-each
                                                  (lambda (_%clause246605%_)
                                                    (let* ((_%$%g246607246618%_
                                                            (lambda (_%$%g246608246615%_)
                                                              (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#raise-syntax-error
                         '#f
                         '"Bad syntax; invalid match target"
                         _%$%g246608246615%_))))
                   (_%$%g246606246656%_
                    (lambda (_%$%g246608246621%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%g246608246621%_))
                          (let ((_%$%e246611246623%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g246608246621%_))))
                            (let ((_%$%hd246612246626%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e246611246623%_)))
                                  (_%$%tl246613246628%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e246611246623%_))))
                              (let* ((_%self246644%_
                                      (list-ref
                                       _%$%hd246612246626%_
                                       _%self-index246212%_))
                                     (_%receiver246649%_
                                      (let ((_%$e246646%_
                                             (gxc#apply-extract-receiver
                                              (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#begin))
                                                    _%$%tl246613246628%_))))
                                        (if _%$e246646%_
                                            _%$e246646%_
                                            _%self246644%_))))
                                (for-each
                                 (lambda (_%$%g246651246653%_)
                                   (gxc#apply-collect-object-refs__%
                                    '#f
                                    _%receiver246649%_
                                    _%method-calls244214%_
                                    _%slot-refs244215%_
                                    _%$%g246651246653%_))
                                 _%$%tl246613246628%_))))
                          (_%$%g246607246618%_ _%$%g246608246621%_)))))
              (_%$%g246606246656%_ _%clause246605%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (let ((__tmp248397
                                                         (lambda (_%$%g246658246661%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          _%$%g246659246663%_)
                   (cons _%$%g246658246661%_ _%$%g246659246663%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (declare (not safe))
                                                    (foldr__0
                                                     __tmp248397
                                                     '()
                                                     _%$%clause246552246590%_))))))))
                                 (_%$%loop246547246575%_
                                  _%$%target246544246570%_
                                  '()))
                               (_%$%g246538246557%_ _%$%g246539246560%_)))))
                     (_%$%g246538246557%_ _%$%g246539246560%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246538246557%_
                                                      _%$%g246539246560%_)))))
                                         (_%$%g246537246666%_
                                          _%$%hd246381246443%_))
                                       (if (_%no-specializer?244218%_)
                                           _%stx244122%_
                                           (let* ((_%specializer-id246675%_
                                                   (let* ((_%id246669%_
                                                           (let ((__tmp248398
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g244133244195%_))))
                     (declare (not safe))
                     (make-symbol__1 __tmp248398 '"::specialize")))
                  (_%specializer-id246672%_
                   (let ((__tmp248399
                          (let ()
                            (declare (not safe))
                            (gx#stx-source _%stx244122%_))))
                     (declare (not safe))
                     (gx#core-quote-syntax__1 _%id246669%_ __tmp248399))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#core-bind-runtime!__0
                                                        _%specializer-id246672%_))
                                                     _%specializer-id246672%_))
                                                  (_%$klass246677%_
                                                   (let ((__tmp248400
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__klass))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp248400)))
                                                  (_%$method-table246679%_
                                                   (let ((__tmp248401
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (##gensym
                                                             '__method-table))))
                                                     (declare (not safe))
                                                     (make-symbol__0
                                                      __tmp248401)))
                                                  (_%methods246681%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%method-calls244214%_)))
                                                  (_%$methods246685%_
                                                   (let ((__tmp248402
                                                          (lambda (_%id246683%_)
                                                            (let ((__tmp248403
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id246683%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp248403)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp248402
                                                            _%methods246681%_)))
                                                  (_%_246694%_
                                                   (let ((__tmp248404
                                                          (lambda (_%$%g246686246689%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g246687246691%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%method-calls244214%_
                       _%$%g246686246689%_
                       _%$%g246687246691%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp248404
                                                      _%methods246681%_
                                                      _%$methods246685%_)))
                                                  (_%methods-bind246704%_
                                                   (let ((__tmp248405
                                                          (lambda (_%$%g246696246699%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g246697246701%_)
                    (_%generate-method-bind244124%_
                     _%$klass246677%_
                     _%$method-table246679%_
                     _%$%g246696246699%_
                     _%$%g246697246701%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp248405
                                                            _%methods246681%_
                                                            _%$methods246685%_)))
                                                  (_%slots246706%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (__hash-keys
                                                      _%slot-refs244215%_)))
                                                  (_%$slots246710%_
                                                   (let ((__tmp248406
                                                          (lambda (_%id246708%_)
                                                            (let ((__tmp248407
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gensym _%id246708%_)))
                      (declare (not safe))
                      (make-symbol__1 '"__" __tmp248407)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp248406
                                                            _%slots246706%_)))
                                                  (_%_246719%_
                                                   (let ((__tmp248408
                                                          (lambda (_%$%g246711246714%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g246712246716%_)
                    (let ()
                      (declare (not safe))
                      (__hash-put!
                       _%slot-refs244215%_
                       _%$%g246711246714%_
                       _%$%g246712246716%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##for-each
                                                      __tmp248408
                                                      _%slots246706%_
                                                      _%$slots246710%_)))
                                                  (_%slots-bind246728%_
                                                   (let ((__tmp248409
                                                          (lambda (_%$%g246720246723%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           _%$%g246721246725%_)
                    (_%generate-slot-bind244125%_
                     _%$klass246677%_
                     _%$%g246720246723%_
                     _%$%g246721246725%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (##map __tmp248409
                                                            _%slots246706%_
                                                            _%$slots246710%_)))
                                                  (_%specializer-lambda-expr246806%_
                                                   (let* ((_%$%g246730246744%_
                                                           (lambda (_%$%g246731246741%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g246731246741%_))))
                  (_%$%g246729246803%_
                   (lambda (_%$%g246731246747%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g246731246747%_))
                         (let ((_%$%e246734246749%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g246731246747%_))))
                           (let ((_%$%hd246735246752%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e246734246749%_)))
                                 (_%$%tl246736246754%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e246734246749%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair? _%$%tl246736246754%_))
                                 (let ((_%$%e246737246757%_
                                        (let ()
                                          (declare (not safe))
                                          (gx#stx-e _%$%tl246736246754%_))))
                                   (let ((_%$%hd246738246760%_
                                          (let ()
                                            (declare (not safe))
                                            (##car _%$%e246737246757%_)))
                                         (_%$%tl246739246762%_
                                          (let ()
                                            (declare (not safe))
                                            (##cdr _%$%e246737246757%_))))
                                     (let* ((_%self246789%_
                                             (list-ref
                                              _%$%hd246738246760%_
                                              _%self-index246212%_))
                                            (_%receiver246794%_
                                             (let ((_%$e246791%_
                                                    (gxc#apply-extract-receiver
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#datum->syntax__0
                                                              '#f
                                                              '%#begin))
                                                           _%$%tl246739246762%_))))
                                               (if _%$e246791%_
                                                   _%$e246791%_
                                                   _%self246789%_)))
                                            (_%body246800%_
                                             (map (lambda (_%$%g246795246797%_)
                                                    (gxc#apply-subst-object-refs__%
                                                     '#f
                                                     _%receiver246794%_
                                                     _%$klass246677%_
                                                     _%method-calls244214%_
                                                     _%slot-refs244215%_
                                                     _%$%g246795246797%_))
                                                  _%$%tl246739246762%_))
                                            (__tmp248410
                                             (cons '%#lambda
                                                   (cons _%$%hd246738246760%_
                                                         _%body246800%_))))
                                       (declare (not safe))
                                       (gxc#xform-wrap-source
                                        __tmp248410
                                        _%$%hd246378246435%_))))
                                 (_%$%g246730246744%_ _%$%g246731246747%_))))
                         (_%$%g246730246744%_ _%$%g246731246747%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246729246803%_
                                                      _%$%hd246378246435%_)))
                                                  (_%specializer-case-lambda-expr246944%_
                                                   (let* ((_%$%g246808246827%_
                                                           (lambda (_%$%g246809246824%_)
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#raise-syntax-error
                        '#f
                        '"Bad syntax; invalid match target"
                        _%$%g246809246824%_))))
                  (_%$%g246807246941%_
                   (lambda (_%$%g246809246830%_)
                     (if (let ()
                           (declare (not safe))
                           (gx#stx-pair? _%$%g246809246830%_))
                         (let ((_%$%e246811246832%_
                                (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g246809246830%_))))
                           (let ((_%$%hd246812246835%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%e246811246832%_)))
                                 (_%$%tl246813246837%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%e246811246832%_))))
                             (if (let ()
                                   (declare (not safe))
                                   (gx#stx-pair/null? _%$%tl246813246837%_))
                                 (let ((_g248411_
                                        (let ()
                                          (declare (not safe))
                                          (gx#syntax-split-splice
                                           _%$%tl246813246837%_
                                           '0))))
                                   (begin
                                     (let ((_g248412_
                                            (let ()
                                              (declare (not safe))
                                              (if (##values? _g248411_)
                                                  (##values-length _g248411_)
                                                  1))))
                                       (if (not (let ()
                                                  (declare (not safe))
                                                  (##fx= _g248412_ 2)))
                                           (error "Context expects 2 values"
                                                  _g248412_)))
                                     (let ((_%$%target246814246840%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g248411_ 0)))
                                           (_%$%tl246816246842%_
                                            (let ()
                                              (declare (not safe))
                                              (##values-ref _g248411_ 1))))
                                       (if (let ()
                                             (declare (not safe))
                                             (gx#stx-null?
                                              _%$%tl246816246842%_))
                                           (letrec ((_%$%loop246817246845%_
                                                     (lambda (_%$%hd246815246848%_
                                                              _%$%clause246821246850%_)
                                                       (if (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-pair?
                                                              _%$%hd246815246848%_))
                                                           (let ((_%$%e246818246852%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%hd246815246848%_))))
                     (let ((_%$%lp-hd246819246855%_
                            (let ()
                              (declare (not safe))
                              (##car _%$%e246818246852%_)))
                           (_%$%lp-tl246820246857%_
                            (let ()
                              (declare (not safe))
                              (##cdr _%$%e246818246852%_))))
                       (_%$%loop246817246845%_
                        _%$%lp-tl246820246857%_
                        (cons _%$%lp-hd246819246855%_
                              _%$%clause246821246850%_))))
                   (let* ((_%$%clause246822246860%_
                           (reverse _%$%clause246821246850%_))
                          (_%clauses246939%_
                           (map (lambda (_%clause246876%_)
                                  (let* ((_%$%g246878246889%_
                                          (lambda (_%$%g246879246886%_)
                                            (let ()
                                              (declare (not safe))
                                              (gx#raise-syntax-error
                                               '#f
                                               '"Bad syntax; invalid match target"
                                               _%$%g246879246886%_))))
                                         (_%$%g246877246929%_
                                          (lambda (_%$%g246879246892%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%g246879246892%_))
                                                (let ((_%$%e246882246894%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%g246879246892%_))))
                                                  (let ((_%$%hd246883246897%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e246882246894%_)))
                                                        (_%$%tl246884246899%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e246882246894%_))))
                                                    (let* ((_%self246915%_
                                                            (list-ref
                                                             _%$%hd246883246897%_
                                                             _%self-index246212%_))
                                                           (_%receiver246920%_
                                                            (let ((_%$e246917%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (gxc#apply-extract-receiver
                            (cons (let ()
                                    (declare (not safe))
                                    (gx#datum->syntax__0 '#f '%#begin))
                                  _%$%tl246884246899%_))))
                      (if _%$e246917%_ _%$e246917%_ _%self246915%_)))
                   (_%body246926%_
                    (map (lambda (_%$%g246921246923%_)
                           (gxc#apply-subst-object-refs__%
                            '#f
                            _%receiver246920%_
                            _%$klass246677%_
                            _%method-calls244214%_
                            _%slot-refs244215%_
                            _%$%g246921246923%_))
                         _%$%tl246884246899%_)))
              (cons _%$%hd246883246897%_ _%body246926%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%$%g246878246889%_
                                                 _%$%g246879246892%_)))))
                                    (_%$%g246877246929%_ _%clause246876%_)))
                                (let ((__tmp248413
                                       (lambda (_%$%g246931246934%_
                                                _%$%g246932246936%_)
                                         (cons _%$%g246931246934%_
                                               _%$%g246932246936%_))))
                                  (declare (not safe))
                                  (foldr__0
                                   __tmp248413
                                   '()
                                   _%$%clause246822246860%_))))
                          (__tmp248414
                           (cons '%#case-lambda _%clauses246939%_)))
                     (declare (not safe))
                     (gxc#xform-wrap-source
                      __tmp248414
                      _%$%hd246381246443%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop246817246845%_
                                              _%$%target246814246840%_
                                              '()))
                                           (_%$%g246808246827%_
                                            _%$%g246809246830%_)))))
                                 (_%$%g246808246827%_ _%$%g246809246830%_))))
                         (_%$%g246808246827%_ _%$%g246809246830%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246807246941%_
                                                      _%$%hd246381246443%_)))
                                                  (_%specializer-impl246946%_
                                                   (let ((__tmp248415
                                                          (cons '%#let-values
                                                                (cons (cons (cons (cons _%$%hd245760245833%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                                '())
                                          (cons (cons '%#let-values
                                                      (cons (cons (cons (cons _%$%hd245778245881%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                      '())
                                (cons (let ((__tmp248416
                                             (cons '%#let-values
                                                   (cons (cons (cons (cons _%$%hd246375246427%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                   '())
                             (cons _%specializer-lambda-expr246806%_ '()))
                       '())
                 (cons _%specializer-case-lambda-expr246944%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (declare (not safe))
                                        (gxc#xform-wrap-source
                                         __tmp248416
                                         _%stx244122%_))
                                      '()))
                          '())
                    (cons _%$%hd245784245897%_ '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                '()))
                                    '())
                              (cons _%$%hd245787245905%_ '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (declare (not safe))
                                                     (gxc#xform-wrap-source
                                                      __tmp248415
                                                      _%stx244122%_)))
                                                  (_%specializer-impl246948%_
                                                   (_%generate-specializer-impl244126%_
                                                    _%$klass246677%_
                                                    _%$method-table246679%_
                                                    _%methods-bind246704%_
                                                    _%slots-bind246728%_
                                                    _%specializer-impl246946%_)))
                                             (let ((__tmp248418
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%g244133244195%_)))
                                                   (__tmp248417
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%specializer-id246675%_))))
                                               (declare (not safe))
                                               (gxc#verbose
                                                '"generate method specializer "
                                                __tmp248418
                                                '" => "
                                                __tmp248417))
                                             (_%generate-specializer-def244127%_
                                              _%$%g244133244195%_
                                              _%specializer-id246675%_
                                              _%specializer-impl246948%_))))
                                     (_%$%g246357246387%_
                                      _%$%g246358246390%_))))
                             (_%$%g246357246387%_ _%$%g246358246390%_))
                         (_%$%g246357246387%_ _%$%g246358246390%_))
                     (_%$%g246357246387%_ _%$%g246358246390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g246357246387%_
                                                      _%$%g246358246390%_))
                                                 (_%$%g246357246387%_
                                                  _%$%g246358246390%_))))
                                         (_%$%g246357246387%_
                                          _%$%g246358246390%_))))
                                 (_%$%g246357246387%_ _%$%g246358246390%_))))
                         (_%$%g246357246387%_ _%$%g246358246390%_))))
                 (_%$%g246357246387%_ _%$%g246358246390%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g246357246387%_
                                                  _%$%g246358246390%_)))))
                                     (_%$%g246356246951%_
                                      _%$%hd245781245889%_))
                                   _%stx244122%_)))
                         (_%$%g245954246016%_ _%$%g245955246019%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                             (_%$%loop246003246138%_
                                              _%$%target246000246125%_
                                              '()))
                                           (_%$%g245954246016%_
                                            _%$%g245955246019%_))))
                                   (_%$%g245954246016%_
                                    _%$%g245955246019%_)))))
                         (_%$%g245954246016%_ _%$%g245955246019%_))
                     (_%$%g245954246016%_ _%$%g245955246019%_))
                 (_%$%g245954246016%_ _%$%g245955246019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g245954246016%_
                                                  _%$%g245955246019%_))
                                             (_%$%g245954246016%_
                                              _%$%g245955246019%_))
                                         (_%$%g245954246016%_
                                          _%$%g245955246019%_))))
                                 (_%$%g245954246016%_ _%$%g245955246019%_))))
                         (_%$%g245954246016%_ _%$%g245955246019%_))
                     (_%$%g245954246016%_ _%$%g245955246019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g245954246016%_
                                                      _%$%g245955246019%_))
                                                 (_%$%g245954246016%_
                                                  _%$%g245955246019%_))
                                             (_%$%g245954246016%_
                                              _%$%g245955246019%_))))
                                     (_%$%g245954246016%_
                                      _%$%g245955246019%_))))
                             (_%$%g245954246016%_ _%$%g245955246019%_))
                         (_%$%g245954246016%_ _%$%g245955246019%_))))
                 (_%$%g245954246016%_ _%$%g245955246019%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g245954246016%_
                                                      _%$%g245955246019%_))
                                                 (_%$%g245954246016%_
                                                  _%$%g245955246019%_))))
                                         (_%$%g245954246016%_
                                          _%$%g245955246019%_))))
                                 (_%$%g245954246016%_ _%$%g245955246019%_))
                             (_%$%g245954246016%_ _%$%g245955246019%_))
                         (_%$%g245954246016%_ _%$%g245955246019%_))))
                 (_%$%g245954246016%_ _%$%g245955246019%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                 (_%$%g245954246016%_
                                                  _%$%g245955246019%_))))
                                         (_%$%g245954246016%_
                                          _%$%g245955246019%_))
                                     (_%$%g245954246016%_ _%$%g245955246019%_))
                                 (_%$%g245954246016%_ _%$%g245955246019%_))))
                         (_%$%g245954246016%_ _%$%g245955246019%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (_%$%g245953246955%_
                                                      _%$%hd245784245897%_))
                                                   (_%$%g245740245793%_
                                                    _%$%g245741245796%_))))
                                           (_%$%g245740245793%_
                                            _%$%g245741245796%_))
                                       (_%$%g245740245793%_
                                        _%$%g245741245796%_))
                                   (_%$%g245740245793%_ _%$%g245741245796%_))
                               (_%$%g245740245793%_ _%$%g245741245796%_))))
                       (_%$%g245740245793%_ _%$%g245741245796%_))
                   (_%$%g245740245793%_ _%$%g245741245796%_))
               (_%$%g245740245793%_ _%$%g245741245796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g245740245793%_
                                                _%$%g245741245796%_))
                                           (_%$%g245740245793%_
                                            _%$%g245741245796%_))))
                                   (_%$%g245740245793%_ _%$%g245741245796%_))))
                           (_%$%g245740245793%_ _%$%g245741245796%_))))
                   (_%$%g245740245793%_ _%$%g245741245796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                   (_%$%g245740245793%_
                                                    _%$%g245741245796%_))
                                               (_%$%g245740245793%_
                                                _%$%g245741245796%_))
                                           (_%$%g245740245793%_
                                            _%$%g245741245796%_))))
                                   (_%$%g245740245793%_ _%$%g245741245796%_))))
                           (_%$%g245740245793%_ _%$%g245741245796%_))
                       (_%$%g245740245793%_ _%$%g245741245796%_))))
               (_%$%g245740245793%_ _%$%g245741245796%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                               (_%$%g245740245793%_
                                                _%$%g245741245796%_))))
                                       (_%$%g245740245793%_
                                        _%$%g245741245796%_))))
                               (_%$%g245740245793%_ _%$%g245741245796%_))
                           (_%$%g245740245793%_ _%$%g245741245796%_))
                       (_%$%g245740245793%_ _%$%g245741245796%_))))
               (_%$%g245740245793%_ _%$%g245741245796%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                           (_%$%g245739246958%_
                                            _%$%g244132244194%_))
                                         _%stx244122%_))))))))
                  (_%__kont247185247186%_ (lambda () _%stx244122%_)))
              (let ((_%__match247214247215%_
                     (lambda (_%$%e244134244162%_
                              _%$%hd244135244165%_
                              _%$%tl244136244167%_
                              _%$%e244137244170%_
                              _%$%hd244138244173%_
                              _%$%tl244139244175%_
                              _%$%e244140244178%_
                              _%$%hd244141244181%_
                              _%$%tl244142244183%_
                              _%$%e244143244186%_
                              _%$%hd244144244189%_
                              _%$%tl244145244191%_)
                       (let ((_%$%g244132244194%_ _%$%hd244144244189%_)
                             (_%$%g244133244195%_ _%$%hd244141244181%_))
                         (if (let ((__tmp248419
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g244133244195%_))))
                               (declare (not safe))
                               (gxc#optimizer-top-level-method? __tmp248419))
                             (_%__kont247183247184%_
                              _%$%g244132244194%_
                              _%$%g244133244195%_)
                             (_%__kont247185247186%_))))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx247181247182%_))
                    (let ((_%$%e244134244162%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx247181247182%_))))
                      (let ((_%$%tl244136244167%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e244134244162%_)))
                            (_%$%hd244135244165%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e244134244162%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl244136244167%_))
                            (let ((_%$%e244137244170%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl244136244167%_))))
                              (let ((_%$%tl244139244175%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e244137244170%_)))
                                    (_%$%hd244138244173%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e244137244170%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd244138244173%_))
                                    (let ((_%$%e244140244178%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd244138244173%_))))
                                      (let ((_%$%tl244142244183%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e244140244178%_)))
                                            (_%$%hd244141244181%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e244140244178%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl244142244183%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl244139244175%_))
                                                (let ((_%$%e244143244186%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl244139244175%_))))
                                                  (let ((_%$%tl244145244191%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e244143244186%_)))
                                                        (_%$%hd244144244189%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e244143244186%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl244145244191%_))
                                                        (_%__match247214247215%_
                                                         _%$%e244134244162%_
                                                         _%$%hd244135244165%_
                                                         _%$%tl244136244167%_
                                                         _%$%e244137244170%_
                                                         _%$%hd244138244173%_
                                                         _%$%tl244139244175%_
                                                         _%$%e244140244178%_
                                                         _%$%hd244141244181%_
                                                         _%$%tl244142244183%_
                                                         _%$%e244143244186%_
                                                         _%$%hd244144244189%_
                                                         _%$%tl244145244191%_)
                                                        (_%__kont247185247186%_))))
                                                (_%__kont247185247186%_))
                                            (_%__kont247185247186%_))))
                                    (_%__kont247185247186%_))))
                            (_%__kont247185247186%_))))
                    (_%__kont247185247186%_))))))))
    (define gxc#extract-receiver-begin-annotation%
      (lambda (_%self243974%_ _%stx243975%_)
        (let* ((_%__stx247217247218%_ _%stx243975%_)
               (_%$%g243978244011%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx247217247218%_)))))
          (let ((_%__kont247219247220%_
                 (lambda (_%$%g243980244101%_) _%$%g243980244101%_))
                (_%__kont247221247222%_
                 (lambda (_%$%g243996244040%_ _%$%g243997244041%_)
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self243974%_ _%$%g243996244040%_)))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx247217247218%_))
                (let ((_%$%e243981244061%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx247217247218%_))))
                  (let ((_%$%tl243983244066%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e243981244061%_)))
                        (_%$%hd243982244064%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e243981244061%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl243983244066%_))
                        (let ((_%$%e243984244069%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl243983244066%_))))
                          (let ((_%$%tl243986244074%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e243984244069%_)))
                                (_%$%hd243985244072%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e243984244069%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd243985244072%_))
                                (let ((_%$%e243987244077%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd243985244072%_))))
                                  (let ((_%$%tl243989244082%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e243987244077%_)))
                                        (_%$%hd243988244080%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e243987244077%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd243988244080%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@receiver
                                               _%$%hd243988244080%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl243989244082%_))
                                                (let ((_%$%e243990244085%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl243989244082%_))))
                                                  (let ((_%$%tl243992244090%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e243990244085%_)))
                                                        (_%$%hd243991244088%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e243990244085%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl243992244090%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl243986244074%_))
                                                            (let ((_%$%e243993244093%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl243986244074%_))))
                      (let ((_%$%tl243995244098%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e243993244093%_)))
                            (_%$%hd243994244096%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e243993244093%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl243995244098%_))
                            (_%__kont247219247220%_ _%$%hd243991244088%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g243978244011%_)))))
                    (let () (declare (not safe)) (_%$%g243978244011%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl243986244074%_))
                    (let ((_%$%e244004244032%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl243986244074%_))))
                      (let ((_%$%tl244006244037%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e244004244032%_)))
                            (_%$%hd244005244035%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e244004244032%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl244006244037%_))
                            (_%__kont247221247222%_
                             _%$%hd244005244035%_
                             _%$%hd243985244072%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g243978244011%_)))))
                    (let () (declare (not safe)) (_%$%g243978244011%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl243986244074%_))
                                                    (let ((_%$%e244004244032%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl243986244074%_))))
                                                      (let ((_%$%tl244006244037%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e244004244032%_)))
                    (_%$%hd244005244035%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e244004244032%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl244006244037%_))
                    (_%__kont247221247222%_
                     _%$%hd244005244035%_
                     _%$%hd243985244072%_)
                    (let () (declare (not safe)) (_%$%g243978244011%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g243978244011%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl243986244074%_))
                                                (let ((_%$%e244004244032%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl243986244074%_))))
                                                  (let ((_%$%tl244006244037%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e244004244032%_)))
                                                        (_%$%hd244005244035%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e244004244032%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl244006244037%_))
                                                        (_%__kont247221247222%_
                                                         _%$%hd244005244035%_
                                                         _%$%hd243985244072%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g243978244011%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g243978244011%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl243986244074%_))
                                            (let ((_%$%e244004244032%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl243986244074%_))))
                                              (let ((_%$%tl244006244037%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e244004244032%_)))
                                                    (_%$%hd244005244035%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e244004244032%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl244006244037%_))
                                                    (_%__kont247221247222%_
                                                     _%$%hd244005244035%_
                                                     _%$%hd243985244072%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g243978244011%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g243978244011%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl243986244074%_))
                                    (let ((_%$%e244004244032%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl243986244074%_))))
                                      (let ((_%$%tl244006244037%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e244004244032%_)))
                                            (_%$%hd244005244035%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e244004244032%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl244006244037%_))
                                            (_%__kont247221247222%_
                                             _%$%hd244005244035%_
                                             _%$%hd243985244072%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g243978244011%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g243978244011%_))))))
                        (let () (declare (not safe)) (_%$%g243978244011%_)))))
                (let () (declare (not safe)) (_%$%g243978244011%_)))))))
    (define gxc#extract-receiver-if%
      (lambda (_%self243890%_ _%stx243891%_)
        (let* ((_%$%g243893243914%_
                (lambda (_%$%g243894243911%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g243894243911%_))))
               (_%$%g243892243971%_
                (lambda (_%$%g243894243917%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g243894243917%_))
                      (let ((_%$%e243898243919%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g243894243917%_))))
                        (let ((_%$%hd243899243922%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e243898243919%_)))
                              (_%$%tl243900243924%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e243898243919%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl243900243924%_))
                              (let ((_%$%e243901243927%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl243900243924%_))))
                                (let ((_%$%hd243902243930%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e243901243927%_)))
                                      (_%$%tl243903243932%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e243901243927%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl243903243932%_))
                                      (let ((_%$%e243904243935%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl243903243932%_))))
                                        (let ((_%$%hd243905243938%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e243904243935%_)))
                                              (_%$%tl243906243940%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e243904243935%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl243906243940%_))
                                              (let ((_%$%e243907243943%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl243906243940%_))))
                                                (let ((_%$%hd243908243946%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e243907243943%_)))
                                                      (_%$%tl243909243948%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e243907243943%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl243909243948%_))
                                                      (let ()
                                                        (declare (not safe))
                                                        (gxc#compile-e__1
                                                         _%self243890%_
                                                         _%$%hd243905243938%_))
                                                      (_%$%g243893243914%_
                                                       _%$%g243894243917%_))))
                                              (_%$%g243893243914%_
                                               _%$%g243894243917%_))))
                                      (_%$%g243893243914%_
                                       _%$%g243894243917%_))))
                              (_%$%g243893243914%_ _%$%g243894243917%_))))
                      (_%$%g243893243914%_ _%$%g243894243917%_)))))
          (_%$%g243892243971%_ _%stx243891%_))))
    (define gxc#collect-object-refs-call%
      (lambda (_%self242855%_ _%stx242856%_)
        (let* ((_%__stx247283247284%_ _%stx242856%_)
               (_%$%g242864243086%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx247283247284%_)))))
          (let ((_%__kont247285247286%_
                 (lambda (_%$%g242866243839%_
                          _%$%g242867243840%_
                          _%$%g242868243841%_
                          _%$%g242869243842%_)
                   (let ((__tmp248421
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self242855%_ 'methods)))
                         (__tmp248420
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g242867243840%_))))
                     (declare (not safe))
                     (hash-put! __tmp248421 __tmp248420 '#t))
                   (for-each
                    (lambda (_%$%g243875243877%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self242855%_ _%$%g243875243877%_)))
                    (let ((__tmp248422
                           (lambda (_%$%g243879243882%_ _%$%g243880243884%_)
                             (cons _%$%g243879243882%_ _%$%g243880243884%_))))
                      (declare (not safe))
                      (foldr__0 __tmp248422 '() _%$%g242866243839%_)))))
                (_%__kont247289247290%_
                 (lambda (_%$%g242909243676%_
                          _%$%g242910243677%_
                          _%$%g242911243678%_
                          _%$%g242912243679%_
                          _%$%g242913243680%_)
                   (let ((__tmp248424
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self242855%_ 'methods)))
                         (__tmp248423
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g242910243677%_))))
                     (declare (not safe))
                     (hash-put! __tmp248424 __tmp248423 '#t))
                   (for-each
                    (lambda (_%$%g243720243722%_)
                      (let ()
                        (declare (not safe))
                        (gxc#compile-e__1 _%self242855%_ _%$%g243720243722%_)))
                    (let ((__tmp248425
                           (lambda (_%$%g243724243727%_ _%$%g243725243729%_)
                             (cons _%$%g243724243727%_ _%$%g243725243729%_))))
                      (declare (not safe))
                      (foldr__0 __tmp248425 '() _%$%g242909243676%_)))))
                (_%__kont247293247294%_
                 (lambda (_%$%g242962243511%_
                          _%$%g242963243512%_
                          _%$%g242964243513%_)
                   (let ((__tmp248427
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self242855%_ 'slots)))
                         (__tmp248426
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g242962243511%_))))
                     (declare (not safe))
                     (hash-put! __tmp248427 __tmp248426 '#t))))
                (_%__kont247295247296%_
                 (lambda (_%$%g242995243388%_
                          _%$%g242996243389%_
                          _%$%g242997243390%_
                          _%$%g242998243391%_)
                   (let ((__tmp248429
                          (let ()
                            (declare (not safe))
                            (slot-ref__0 _%self242855%_ 'slots)))
                         (__tmp248428
                          (let ()
                            (declare (not safe))
                            (gx#stx-e _%$%g242996243389%_))))
                     (declare (not safe))
                     (hash-put! __tmp248429 __tmp248428 '#t))
                   (let ()
                     (declare (not safe))
                     (gxc#compile-e__1 _%self242855%_ _%$%g242995243388%_))))
                (_%__kont247297247298%_
                 (lambda (_%$%g243032243262%_ _%$%g243033243263%_)
                   (let* ((_%accessor243285%_
                           (let ((__tmp248430
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g243033243263%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp248430)))
                          (_%klass243287%_
                           (let ((__tmp248431
                                  (##structure-ref
                                   _%accessor243285%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx242856%_
                              __tmp248431)))
                          (_%slot243289%_
                           (##structure-ref
                            _%accessor243285%_
                            '3
                            gxc#!accessor::t
                            '#f)))
                     (if (if (##structure-ref
                              _%accessor243285%_
                              '4
                              gxc#!accessor::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass243287%_
                                    _%slot243289%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass243287%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp248433
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self242855%_ 'slots)))
                               (__tmp248432
                                (##structure-ref
                                 _%accessor243285%_
                                 '3
                                 gxc#!accessor::t
                                 '#f)))
                           (declare (not safe))
                           (hash-put! __tmp248433 __tmp248432 '#t))))))
                (_%__kont247299247300%_
                 (lambda (_%$%g243055243162%_
                          _%$%g243056243163%_
                          _%$%g243057243164%_)
                   (let* ((_%mutator243191%_
                           (let ((__tmp248434
                                  (let ()
                                    (declare (not safe))
                                    (gxc#identifier-symbol
                                     _%$%g243057243164%_))))
                             (declare (not safe))
                             (gxc#optimizer-resolve-type __tmp248434)))
                          (_%klass243193%_
                           (let ((__tmp248435
                                  (##structure-ref
                                   _%mutator243191%_
                                   '1
                                   gxc#!type::t
                                   '#f)))
                             (declare (not safe))
                             (gxc#optimizer-resolve-class
                              _%stx242856%_
                              __tmp248435)))
                          (_%slot243195%_
                           (##structure-ref
                            _%mutator243191%_
                            '3
                            gxc#!mutator::t
                            '#f)))
                     (if (if (##structure-ref
                              _%mutator243191%_
                              '4
                              gxc#!mutator::t
                              '#f)
                             '#f
                             (or (let ()
                                   (declare (not safe))
                                   (gxc#!class-struct-slot?
                                    _%klass243193%_
                                    _%slot243195%_))
                                 (let ()
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    _%klass243193%_
                                    '8
                                    '#f
                                    '#f))))
                         '#!void
                         (let ((__tmp248436
                                (let ()
                                  (declare (not safe))
                                  (slot-ref__0 _%self242855%_ 'slots))))
                           (declare (not safe))
                           (hash-put! __tmp248436 _%slot243195%_ '#t)))
                     (let ()
                       (declare (not safe))
                       (gxc#compile-e__1
                        _%self242855%_
                        _%$%g243055243162%_)))))
                (_%__kont247301247302%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#apply-operands _%self242855%_ _%stx242856%_)))))
            (let* ((_%__match247782247783%_
                    (lambda (_%$%e243058243098%_
                             _%$%hd243059243101%_
                             _%$%tl243060243103%_
                             _%$%e243061243106%_
                             _%$%hd243062243109%_
                             _%$%tl243063243111%_
                             _%$%e243064243114%_
                             _%$%hd243065243117%_
                             _%$%tl243066243119%_
                             _%$%e243067243122%_
                             _%$%hd243068243125%_
                             _%$%tl243069243127%_
                             _%$%e243070243130%_
                             _%$%hd243071243133%_
                             _%$%tl243072243135%_
                             _%$%e243073243138%_
                             _%$%hd243074243141%_
                             _%$%tl243075243143%_
                             _%$%e243076243146%_
                             _%$%hd243077243149%_
                             _%$%tl243078243151%_
                             _%$%e243079243154%_
                             _%$%hd243080243157%_
                             _%$%tl243081243159%_)
                      (let ((_%$%g243055243162%_ _%$%hd243080243157%_)
                            (_%$%g243056243163%_ _%$%hd243077243149%_)
                            (_%$%g243057243164%_ _%$%hd243068243125%_))
                        (if (and (let ((__tmp248437
                                        (let ((__tmp248438
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g243057243164%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp248438))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp248437
                                    'gxc#!mutator::t))
                                 (let ((__tmp248439
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self242855%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g243056243163%_
                                    __tmp248439)))
                            (_%__kont247299247300%_
                             _%$%g243055243162%_
                             _%$%g243056243163%_
                             _%$%g243057243164%_)
                            (_%__kont247301247302%_)))))
                   (_%__match247780247781%_
                    (lambda (_%$%e243058243098%_
                             _%$%hd243059243101%_
                             _%$%tl243060243103%_
                             _%$%e243061243106%_
                             _%$%hd243062243109%_
                             _%$%tl243063243111%_
                             _%$%e243064243114%_
                             _%$%hd243065243117%_
                             _%$%tl243066243119%_
                             _%$%e243067243122%_
                             _%$%hd243068243125%_
                             _%$%tl243069243127%_
                             _%$%e243070243130%_
                             _%$%hd243071243133%_
                             _%$%tl243072243135%_
                             _%$%e243073243138%_
                             _%$%hd243074243141%_
                             _%$%tl243075243143%_
                             _%$%e243076243146%_
                             _%$%hd243077243149%_
                             _%$%tl243078243151%_
                             _%$%e243079243154%_
                             _%$%hd243080243157%_
                             _%$%tl243081243159%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl243081243159%_))
                          (_%__match247782247783%_
                           _%$%e243058243098%_
                           _%$%hd243059243101%_
                           _%$%tl243060243103%_
                           _%$%e243061243106%_
                           _%$%hd243062243109%_
                           _%$%tl243063243111%_
                           _%$%e243064243114%_
                           _%$%hd243065243117%_
                           _%$%tl243066243119%_
                           _%$%e243067243122%_
                           _%$%hd243068243125%_
                           _%$%tl243069243127%_
                           _%$%e243070243130%_
                           _%$%hd243071243133%_
                           _%$%tl243072243135%_
                           _%$%e243073243138%_
                           _%$%hd243074243141%_
                           _%$%tl243075243143%_
                           _%$%e243076243146%_
                           _%$%hd243077243149%_
                           _%$%tl243078243151%_
                           _%$%e243079243154%_
                           _%$%hd243080243157%_
                           _%$%tl243081243159%_)
                          (_%__kont247301247302%_))))
                   (_%__match247774247775%_
                    (lambda (_%$%e243058243098%_
                             _%$%hd243059243101%_
                             _%$%tl243060243103%_
                             _%$%e243061243106%_
                             _%$%hd243062243109%_
                             _%$%tl243063243111%_
                             _%$%e243064243114%_
                             _%$%hd243065243117%_
                             _%$%tl243066243119%_
                             _%$%e243067243122%_
                             _%$%hd243068243125%_
                             _%$%tl243069243127%_
                             _%$%e243070243130%_
                             _%$%hd243071243133%_
                             _%$%tl243072243135%_
                             _%$%e243073243138%_
                             _%$%hd243074243141%_
                             _%$%tl243075243143%_
                             _%$%e243076243146%_
                             _%$%hd243077243149%_
                             _%$%tl243078243151%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl243072243135%_))
                          (let ((_%$%e243079243154%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl243072243135%_))))
                            (let ((_%$%tl243081243159%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e243079243154%_)))
                                  (_%$%hd243080243157%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e243079243154%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl243081243159%_))
                                  (_%__match247782247783%_
                                   _%$%e243058243098%_
                                   _%$%hd243059243101%_
                                   _%$%tl243060243103%_
                                   _%$%e243061243106%_
                                   _%$%hd243062243109%_
                                   _%$%tl243063243111%_
                                   _%$%e243064243114%_
                                   _%$%hd243065243117%_
                                   _%$%tl243066243119%_
                                   _%$%e243067243122%_
                                   _%$%hd243068243125%_
                                   _%$%tl243069243127%_
                                   _%$%e243070243130%_
                                   _%$%hd243071243133%_
                                   _%$%tl243072243135%_
                                   _%$%e243073243138%_
                                   _%$%hd243074243141%_
                                   _%$%tl243075243143%_
                                   _%$%e243076243146%_
                                   _%$%hd243077243149%_
                                   _%$%tl243078243151%_
                                   _%$%e243079243154%_
                                   _%$%hd243080243157%_
                                   _%$%tl243081243159%_)
                                  (_%__kont247301247302%_))))
                          (_%__kont247301247302%_))))
                   (_%__match247720247721%_
                    (lambda (_%$%e243034243206%_
                             _%$%hd243035243209%_
                             _%$%tl243036243211%_
                             _%$%e243037243214%_
                             _%$%hd243038243217%_
                             _%$%tl243039243219%_
                             _%$%e243040243222%_
                             _%$%hd243041243225%_
                             _%$%tl243042243227%_
                             _%$%e243043243230%_
                             _%$%hd243044243233%_
                             _%$%tl243045243235%_
                             _%$%e243046243238%_
                             _%$%hd243047243241%_
                             _%$%tl243048243243%_
                             _%$%e243049243246%_
                             _%$%hd243050243249%_
                             _%$%tl243051243251%_
                             _%$%e243052243254%_
                             _%$%hd243053243257%_
                             _%$%tl243054243259%_)
                      (let ((_%$%g243032243262%_ _%$%hd243053243257%_)
                            (_%$%g243033243263%_ _%$%hd243044243233%_))
                        (if (and (let ((__tmp248440
                                        (let ((__tmp248441
                                               (let ()
                                                 (declare (not safe))
                                                 (gxc#identifier-symbol
                                                  _%$%g243033243263%_))))
                                          (declare (not safe))
                                          (gxc#optimizer-resolve-type
                                           __tmp248441))))
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    __tmp248440
                                    'gxc#!accessor::t))
                                 (let ((__tmp248442
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self242855%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g243032243262%_
                                    __tmp248442)))
                            (_%__kont247297247298%_
                             _%$%g243032243262%_
                             _%$%g243033243263%_)
                            (_%__kont247301247302%_)))))
                   (_%__match247718247719%_
                    (lambda (_%$%e243034243206%_
                             _%$%hd243035243209%_
                             _%$%tl243036243211%_
                             _%$%e243037243214%_
                             _%$%hd243038243217%_
                             _%$%tl243039243219%_
                             _%$%e243040243222%_
                             _%$%hd243041243225%_
                             _%$%tl243042243227%_
                             _%$%e243043243230%_
                             _%$%hd243044243233%_
                             _%$%tl243045243235%_
                             _%$%e243046243238%_
                             _%$%hd243047243241%_
                             _%$%tl243048243243%_
                             _%$%e243049243246%_
                             _%$%hd243050243249%_
                             _%$%tl243051243251%_
                             _%$%e243052243254%_
                             _%$%hd243053243257%_
                             _%$%tl243054243259%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl243048243243%_))
                          (_%__match247720247721%_
                           _%$%e243034243206%_
                           _%$%hd243035243209%_
                           _%$%tl243036243211%_
                           _%$%e243037243214%_
                           _%$%hd243038243217%_
                           _%$%tl243039243219%_
                           _%$%e243040243222%_
                           _%$%hd243041243225%_
                           _%$%tl243042243227%_
                           _%$%e243043243230%_
                           _%$%hd243044243233%_
                           _%$%tl243045243235%_
                           _%$%e243046243238%_
                           _%$%hd243047243241%_
                           _%$%tl243048243243%_
                           _%$%e243049243246%_
                           _%$%hd243050243249%_
                           _%$%tl243051243251%_
                           _%$%e243052243254%_
                           _%$%hd243053243257%_
                           _%$%tl243054243259%_)
                          (_%__match247774247775%_
                           _%$%e243034243206%_
                           _%$%hd243035243209%_
                           _%$%tl243036243211%_
                           _%$%e243037243214%_
                           _%$%hd243038243217%_
                           _%$%tl243039243219%_
                           _%$%e243040243222%_
                           _%$%hd243041243225%_
                           _%$%tl243042243227%_
                           _%$%e243043243230%_
                           _%$%hd243044243233%_
                           _%$%tl243045243235%_
                           _%$%e243046243238%_
                           _%$%hd243047243241%_
                           _%$%tl243048243243%_
                           _%$%e243049243246%_
                           _%$%hd243050243249%_
                           _%$%tl243051243251%_
                           _%$%e243052243254%_
                           _%$%hd243053243257%_
                           _%$%tl243054243259%_))))
                   (_%__match247664247665%_
                    (lambda (_%$%e242999243300%_
                             _%$%hd243000243303%_
                             _%$%tl243001243305%_
                             _%$%e243002243308%_
                             _%$%hd243003243311%_
                             _%$%tl243004243313%_
                             _%$%e243005243316%_
                             _%$%hd243006243319%_
                             _%$%tl243007243321%_
                             _%$%e243008243324%_
                             _%$%hd243009243327%_
                             _%$%tl243010243329%_
                             _%$%e243011243332%_
                             _%$%hd243012243335%_
                             _%$%tl243013243337%_
                             _%$%e243014243340%_
                             _%$%hd243015243343%_
                             _%$%tl243016243345%_
                             _%$%e243017243348%_
                             _%$%hd243018243351%_
                             _%$%tl243019243353%_
                             _%$%e243020243356%_
                             _%$%hd243021243359%_
                             _%$%tl243022243361%_
                             _%$%e243023243364%_
                             _%$%hd243024243367%_
                             _%$%tl243025243369%_
                             _%$%e243026243372%_
                             _%$%hd243027243375%_
                             _%$%tl243028243377%_
                             _%$%e243029243380%_
                             _%$%hd243030243383%_
                             _%$%tl243031243385%_)
                      (let ((_%$%g242995243388%_ _%$%hd243030243383%_)
                            (_%$%g242996243389%_ _%$%hd243027243375%_)
                            (_%$%g242997243390%_ _%$%hd243018243351%_)
                            (_%$%g242998243391%_ _%$%hd243009243327%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g242998243391%_
                                        'slot-set!))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g242998243391%_
                                        'unchecked-slot-set!)))
                                 (let ((__tmp248443
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self242855%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g242997243390%_
                                    __tmp248443)))
                            (_%__kont247295247296%_
                             _%$%g242995243388%_
                             _%$%g242996243389%_
                             _%$%g242997243390%_
                             _%$%g242998243391%_)
                            (_%__kont247301247302%_)))))
                   (_%__match247656247657%_
                    (lambda (_%$%e242999243300%_
                             _%$%hd243000243303%_
                             _%$%tl243001243305%_
                             _%$%e243002243308%_
                             _%$%hd243003243311%_
                             _%$%tl243004243313%_
                             _%$%e243005243316%_
                             _%$%hd243006243319%_
                             _%$%tl243007243321%_
                             _%$%e243008243324%_
                             _%$%hd243009243327%_
                             _%$%tl243010243329%_
                             _%$%e243011243332%_
                             _%$%hd243012243335%_
                             _%$%tl243013243337%_
                             _%$%e243014243340%_
                             _%$%hd243015243343%_
                             _%$%tl243016243345%_
                             _%$%e243017243348%_
                             _%$%hd243018243351%_
                             _%$%tl243019243353%_
                             _%$%e243020243356%_
                             _%$%hd243021243359%_
                             _%$%tl243022243361%_
                             _%$%e243023243364%_
                             _%$%hd243024243367%_
                             _%$%tl243025243369%_
                             _%$%e243026243372%_
                             _%$%hd243027243375%_
                             _%$%tl243028243377%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl243022243361%_))
                          (let ((_%$%e243029243380%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl243022243361%_))))
                            (let ((_%$%tl243031243385%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e243029243380%_)))
                                  (_%$%hd243030243383%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e243029243380%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl243031243385%_))
                                  (_%__match247664247665%_
                                   _%$%e242999243300%_
                                   _%$%hd243000243303%_
                                   _%$%tl243001243305%_
                                   _%$%e243002243308%_
                                   _%$%hd243003243311%_
                                   _%$%tl243004243313%_
                                   _%$%e243005243316%_
                                   _%$%hd243006243319%_
                                   _%$%tl243007243321%_
                                   _%$%e243008243324%_
                                   _%$%hd243009243327%_
                                   _%$%tl243010243329%_
                                   _%$%e243011243332%_
                                   _%$%hd243012243335%_
                                   _%$%tl243013243337%_
                                   _%$%e243014243340%_
                                   _%$%hd243015243343%_
                                   _%$%tl243016243345%_
                                   _%$%e243017243348%_
                                   _%$%hd243018243351%_
                                   _%$%tl243019243353%_
                                   _%$%e243020243356%_
                                   _%$%hd243021243359%_
                                   _%$%tl243022243361%_
                                   _%$%e243023243364%_
                                   _%$%hd243024243367%_
                                   _%$%tl243025243369%_
                                   _%$%e243026243372%_
                                   _%$%hd243027243375%_
                                   _%$%tl243028243377%_
                                   _%$%e243029243380%_
                                   _%$%hd243030243383%_
                                   _%$%tl243031243385%_)
                                  (_%__kont247301247302%_))))
                          (_%__match247780247781%_
                           _%$%e242999243300%_
                           _%$%hd243000243303%_
                           _%$%tl243001243305%_
                           _%$%e243002243308%_
                           _%$%hd243003243311%_
                           _%$%tl243004243313%_
                           _%$%e243005243316%_
                           _%$%hd243006243319%_
                           _%$%tl243007243321%_
                           _%$%e243008243324%_
                           _%$%hd243009243327%_
                           _%$%tl243010243329%_
                           _%$%e243011243332%_
                           _%$%hd243012243335%_
                           _%$%tl243013243337%_
                           _%$%e243014243340%_
                           _%$%hd243015243343%_
                           _%$%tl243016243345%_
                           _%$%e243017243348%_
                           _%$%hd243018243351%_
                           _%$%tl243019243353%_
                           _%$%e243020243356%_
                           _%$%hd243021243359%_
                           _%$%tl243022243361%_))))
                   (_%__match247578247579%_
                    (lambda (_%$%e242965243431%_
                             _%$%hd242966243434%_
                             _%$%tl242967243436%_
                             _%$%e242968243439%_
                             _%$%hd242969243442%_
                             _%$%tl242970243444%_
                             _%$%e242971243447%_
                             _%$%hd242972243450%_
                             _%$%tl242973243452%_
                             _%$%e242974243455%_
                             _%$%hd242975243458%_
                             _%$%tl242976243460%_
                             _%$%e242977243463%_
                             _%$%hd242978243466%_
                             _%$%tl242979243468%_
                             _%$%e242980243471%_
                             _%$%hd242981243474%_
                             _%$%tl242982243476%_
                             _%$%e242983243479%_
                             _%$%hd242984243482%_
                             _%$%tl242985243484%_
                             _%$%e242986243487%_
                             _%$%hd242987243490%_
                             _%$%tl242988243492%_
                             _%$%e242989243495%_
                             _%$%hd242990243498%_
                             _%$%tl242991243500%_
                             _%$%e242992243503%_
                             _%$%hd242993243506%_
                             _%$%tl242994243508%_)
                      (let ((_%$%g242962243511%_ _%$%hd242993243506%_)
                            (_%$%g242963243512%_ _%$%hd242984243482%_)
                            (_%$%g242964243513%_ _%$%hd242975243458%_))
                        (if (and (or (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g242964243513%_
                                        'slot-ref))
                                     (let ()
                                       (declare (not safe))
                                       (gxc#runtime-identifier=?
                                        _%$%g242964243513%_
                                        'unchecked-slot-ref)))
                                 (let ((__tmp248444
                                        (let ()
                                          (declare (not safe))
                                          (slot-ref__0
                                           _%self242855%_
                                           'receiver))))
                                   (declare (not safe))
                                   (gx#free-identifier=?
                                    _%$%g242963243512%_
                                    __tmp248444)))
                            (_%__kont247293247294%_
                             _%$%g242962243511%_
                             _%$%g242963243512%_
                             _%$%g242964243513%_)
                            (_%__match247782247783%_
                             _%$%e242965243431%_
                             _%$%hd242966243434%_
                             _%$%tl242967243436%_
                             _%$%e242968243439%_
                             _%$%hd242969243442%_
                             _%$%tl242970243444%_
                             _%$%e242971243447%_
                             _%$%hd242972243450%_
                             _%$%tl242973243452%_
                             _%$%e242974243455%_
                             _%$%hd242975243458%_
                             _%$%tl242976243460%_
                             _%$%e242977243463%_
                             _%$%hd242978243466%_
                             _%$%tl242979243468%_
                             _%$%e242980243471%_
                             _%$%hd242981243474%_
                             _%$%tl242982243476%_
                             _%$%e242983243479%_
                             _%$%hd242984243482%_
                             _%$%tl242985243484%_
                             _%$%e242986243487%_
                             _%$%hd242987243490%_
                             _%$%tl242988243492%_)))))
                   (_%__match247576247577%_
                    (lambda (_%$%e242965243431%_
                             _%$%hd242966243434%_
                             _%$%tl242967243436%_
                             _%$%e242968243439%_
                             _%$%hd242969243442%_
                             _%$%tl242970243444%_
                             _%$%e242971243447%_
                             _%$%hd242972243450%_
                             _%$%tl242973243452%_
                             _%$%e242974243455%_
                             _%$%hd242975243458%_
                             _%$%tl242976243460%_
                             _%$%e242977243463%_
                             _%$%hd242978243466%_
                             _%$%tl242979243468%_
                             _%$%e242980243471%_
                             _%$%hd242981243474%_
                             _%$%tl242982243476%_
                             _%$%e242983243479%_
                             _%$%hd242984243482%_
                             _%$%tl242985243484%_
                             _%$%e242986243487%_
                             _%$%hd242987243490%_
                             _%$%tl242988243492%_
                             _%$%e242989243495%_
                             _%$%hd242990243498%_
                             _%$%tl242991243500%_
                             _%$%e242992243503%_
                             _%$%hd242993243506%_
                             _%$%tl242994243508%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%$%tl242988243492%_))
                          (_%__match247578247579%_
                           _%$%e242965243431%_
                           _%$%hd242966243434%_
                           _%$%tl242967243436%_
                           _%$%e242968243439%_
                           _%$%hd242969243442%_
                           _%$%tl242970243444%_
                           _%$%e242971243447%_
                           _%$%hd242972243450%_
                           _%$%tl242973243452%_
                           _%$%e242974243455%_
                           _%$%hd242975243458%_
                           _%$%tl242976243460%_
                           _%$%e242977243463%_
                           _%$%hd242978243466%_
                           _%$%tl242979243468%_
                           _%$%e242980243471%_
                           _%$%hd242981243474%_
                           _%$%tl242982243476%_
                           _%$%e242983243479%_
                           _%$%hd242984243482%_
                           _%$%tl242985243484%_
                           _%$%e242986243487%_
                           _%$%hd242987243490%_
                           _%$%tl242988243492%_
                           _%$%e242989243495%_
                           _%$%hd242990243498%_
                           _%$%tl242991243500%_
                           _%$%e242992243503%_
                           _%$%hd242993243506%_
                           _%$%tl242994243508%_)
                          (_%__match247656247657%_
                           _%$%e242965243431%_
                           _%$%hd242966243434%_
                           _%$%tl242967243436%_
                           _%$%e242968243439%_
                           _%$%hd242969243442%_
                           _%$%tl242970243444%_
                           _%$%e242971243447%_
                           _%$%hd242972243450%_
                           _%$%tl242973243452%_
                           _%$%e242974243455%_
                           _%$%hd242975243458%_
                           _%$%tl242976243460%_
                           _%$%e242977243463%_
                           _%$%hd242978243466%_
                           _%$%tl242979243468%_
                           _%$%e242980243471%_
                           _%$%hd242981243474%_
                           _%$%tl242982243476%_
                           _%$%e242983243479%_
                           _%$%hd242984243482%_
                           _%$%tl242985243484%_
                           _%$%e242986243487%_
                           _%$%hd242987243490%_
                           _%$%tl242988243492%_
                           _%$%e242989243495%_
                           _%$%hd242990243498%_
                           _%$%tl242991243500%_
                           _%$%e242992243503%_
                           _%$%hd242993243506%_
                           _%$%tl242994243508%_))))
                   (_%__match247566247567%_
                    (lambda (_%$%e242965243431%_
                             _%$%hd242966243434%_
                             _%$%tl242967243436%_
                             _%$%e242968243439%_
                             _%$%hd242969243442%_
                             _%$%tl242970243444%_
                             _%$%e242971243447%_
                             _%$%hd242972243450%_
                             _%$%tl242973243452%_
                             _%$%e242974243455%_
                             _%$%hd242975243458%_
                             _%$%tl242976243460%_
                             _%$%e242977243463%_
                             _%$%hd242978243466%_
                             _%$%tl242979243468%_
                             _%$%e242980243471%_
                             _%$%hd242981243474%_
                             _%$%tl242982243476%_
                             _%$%e242983243479%_
                             _%$%hd242984243482%_
                             _%$%tl242985243484%_
                             _%$%e242986243487%_
                             _%$%hd242987243490%_
                             _%$%tl242988243492%_
                             _%$%e242989243495%_
                             _%$%hd242990243498%_
                             _%$%tl242991243500%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#quote _%$%hd242990243498%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl242991243500%_))
                              (let ((_%$%e242992243503%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl242991243500%_))))
                                (let ((_%$%tl242994243508%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e242992243503%_)))
                                      (_%$%hd242993243506%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e242992243503%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl242994243508%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl242988243492%_))
                                          (_%__match247578247579%_
                                           _%$%e242965243431%_
                                           _%$%hd242966243434%_
                                           _%$%tl242967243436%_
                                           _%$%e242968243439%_
                                           _%$%hd242969243442%_
                                           _%$%tl242970243444%_
                                           _%$%e242971243447%_
                                           _%$%hd242972243450%_
                                           _%$%tl242973243452%_
                                           _%$%e242974243455%_
                                           _%$%hd242975243458%_
                                           _%$%tl242976243460%_
                                           _%$%e242977243463%_
                                           _%$%hd242978243466%_
                                           _%$%tl242979243468%_
                                           _%$%e242980243471%_
                                           _%$%hd242981243474%_
                                           _%$%tl242982243476%_
                                           _%$%e242983243479%_
                                           _%$%hd242984243482%_
                                           _%$%tl242985243484%_
                                           _%$%e242986243487%_
                                           _%$%hd242987243490%_
                                           _%$%tl242988243492%_
                                           _%$%e242989243495%_
                                           _%$%hd242990243498%_
                                           _%$%tl242991243500%_
                                           _%$%e242992243503%_
                                           _%$%hd242993243506%_
                                           _%$%tl242994243508%_)
                                          (_%__match247656247657%_
                                           _%$%e242965243431%_
                                           _%$%hd242966243434%_
                                           _%$%tl242967243436%_
                                           _%$%e242968243439%_
                                           _%$%hd242969243442%_
                                           _%$%tl242970243444%_
                                           _%$%e242971243447%_
                                           _%$%hd242972243450%_
                                           _%$%tl242973243452%_
                                           _%$%e242974243455%_
                                           _%$%hd242975243458%_
                                           _%$%tl242976243460%_
                                           _%$%e242977243463%_
                                           _%$%hd242978243466%_
                                           _%$%tl242979243468%_
                                           _%$%e242980243471%_
                                           _%$%hd242981243474%_
                                           _%$%tl242982243476%_
                                           _%$%e242983243479%_
                                           _%$%hd242984243482%_
                                           _%$%tl242985243484%_
                                           _%$%e242986243487%_
                                           _%$%hd242987243490%_
                                           _%$%tl242988243492%_
                                           _%$%e242989243495%_
                                           _%$%hd242990243498%_
                                           _%$%tl242991243500%_
                                           _%$%e242992243503%_
                                           _%$%hd242993243506%_
                                           _%$%tl242994243508%_))
                                      (_%__match247780247781%_
                                       _%$%e242965243431%_
                                       _%$%hd242966243434%_
                                       _%$%tl242967243436%_
                                       _%$%e242968243439%_
                                       _%$%hd242969243442%_
                                       _%$%tl242970243444%_
                                       _%$%e242971243447%_
                                       _%$%hd242972243450%_
                                       _%$%tl242973243452%_
                                       _%$%e242974243455%_
                                       _%$%hd242975243458%_
                                       _%$%tl242976243460%_
                                       _%$%e242977243463%_
                                       _%$%hd242978243466%_
                                       _%$%tl242979243468%_
                                       _%$%e242980243471%_
                                       _%$%hd242981243474%_
                                       _%$%tl242982243476%_
                                       _%$%e242983243479%_
                                       _%$%hd242984243482%_
                                       _%$%tl242985243484%_
                                       _%$%e242986243487%_
                                       _%$%hd242987243490%_
                                       _%$%tl242988243492%_))))
                              (_%__match247780247781%_
                               _%$%e242965243431%_
                               _%$%hd242966243434%_
                               _%$%tl242967243436%_
                               _%$%e242968243439%_
                               _%$%hd242969243442%_
                               _%$%tl242970243444%_
                               _%$%e242971243447%_
                               _%$%hd242972243450%_
                               _%$%tl242973243452%_
                               _%$%e242974243455%_
                               _%$%hd242975243458%_
                               _%$%tl242976243460%_
                               _%$%e242977243463%_
                               _%$%hd242978243466%_
                               _%$%tl242979243468%_
                               _%$%e242980243471%_
                               _%$%hd242981243474%_
                               _%$%tl242982243476%_
                               _%$%e242983243479%_
                               _%$%hd242984243482%_
                               _%$%tl242985243484%_
                               _%$%e242986243487%_
                               _%$%hd242987243490%_
                               _%$%tl242988243492%_))
                          (_%__match247780247781%_
                           _%$%e242965243431%_
                           _%$%hd242966243434%_
                           _%$%tl242967243436%_
                           _%$%e242968243439%_
                           _%$%hd242969243442%_
                           _%$%tl242970243444%_
                           _%$%e242971243447%_
                           _%$%hd242972243450%_
                           _%$%tl242973243452%_
                           _%$%e242974243455%_
                           _%$%hd242975243458%_
                           _%$%tl242976243460%_
                           _%$%e242977243463%_
                           _%$%hd242978243466%_
                           _%$%tl242979243468%_
                           _%$%e242980243471%_
                           _%$%hd242981243474%_
                           _%$%tl242982243476%_
                           _%$%e242983243479%_
                           _%$%hd242984243482%_
                           _%$%tl242985243484%_
                           _%$%e242986243487%_
                           _%$%hd242987243490%_
                           _%$%tl242988243492%_))))
                   (_%__match247498247499%_
                    (lambda (_%$%e242914243550%_
                             _%$%hd242915243553%_
                             _%$%tl242916243555%_
                             _%$%e242917243558%_
                             _%$%hd242918243561%_
                             _%$%tl242919243563%_
                             _%$%e242920243566%_
                             _%$%hd242921243569%_
                             _%$%tl242922243571%_
                             _%$%e242923243574%_
                             _%$%hd242924243577%_
                             _%$%tl242925243579%_
                             _%$%e242926243582%_
                             _%$%hd242927243585%_
                             _%$%tl242928243587%_
                             _%$%e242929243590%_
                             _%$%hd242930243593%_
                             _%$%tl242931243595%_
                             _%$%e242932243598%_
                             _%$%hd242933243601%_
                             _%$%tl242934243603%_
                             _%$%e242935243606%_
                             _%$%hd242936243609%_
                             _%$%tl242937243611%_
                             _%$%e242938243614%_
                             _%$%hd242939243617%_
                             _%$%tl242940243619%_
                             _%$%e242941243622%_
                             _%$%hd242942243625%_
                             _%$%tl242943243627%_
                             _%$%e242944243630%_
                             _%$%hd242945243633%_
                             _%$%tl242946243635%_
                             _%$%e242947243638%_
                             _%$%hd242948243641%_
                             _%$%tl242949243643%_
                             _%$%e242950243646%_
                             _%$%hd242951243649%_
                             _%$%tl242952243651%_
                             _%__splice247291247292%_
                             _%$%target242953243654%_
                             _%$%tl242955243656%_)
                      (letrec ((_%$%loop242956243659%_
                                (lambda (_%$%hd242954243662%_
                                         _%$%args242960243664%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd242954243662%_))
                                      (let ((_%$%e242957243666%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd242954243662%_))))
                                        (let ((_%$%lp-tl242959243671%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e242957243666%_)))
                                              (_%$%lp-hd242958243669%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e242957243666%_))))
                                          (_%$%loop242956243659%_
                                           _%$%lp-tl242959243671%_
                                           (cons _%$%lp-hd242958243669%_
                                                 _%$%args242960243664%_))))
                                      (let ((_%$%args242961243674%_
                                             (reverse _%$%args242960243664%_)))
                                        (let ((_%$%g242909243676%_
                                               _%$%args242961243674%_)
                                              (_%$%g242910243677%_
                                               _%$%hd242951243649%_)
                                              (_%$%g242911243678%_
                                               _%$%hd242942243625%_)
                                              (_%$%g242912243679%_
                                               _%$%hd242933243601%_)
                                              (_%$%g242913243680%_
                                               _%$%hd242924243577%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g242913243680%_
                                                      'apply))
                                                   (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g242912243679%_
                                                      'call-method))
                                                   (let ((__tmp248445
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self242855%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g242911243678%_
                                                      __tmp248445)))
                                              (_%__kont247289247290%_
                                               _%$%g242909243676%_
                                               _%$%g242910243677%_
                                               _%$%g242911243678%_
                                               _%$%g242912243679%_
                                               _%$%g242913243680%_)
                                              (_%__kont247301247302%_))))))))
                        (_%$%loop242956243659%_
                         _%$%target242953243654%_
                         '()))))
                   (_%__match247456247457%_
                    (lambda (_%$%e242914243550%_
                             _%$%hd242915243553%_
                             _%$%tl242916243555%_
                             _%$%e242917243558%_
                             _%$%hd242918243561%_
                             _%$%tl242919243563%_
                             _%$%e242920243566%_
                             _%$%hd242921243569%_
                             _%$%tl242922243571%_
                             _%$%e242923243574%_
                             _%$%hd242924243577%_
                             _%$%tl242925243579%_
                             _%$%e242926243582%_
                             _%$%hd242927243585%_
                             _%$%tl242928243587%_
                             _%$%e242929243590%_
                             _%$%hd242930243593%_
                             _%$%tl242931243595%_
                             _%$%e242932243598%_
                             _%$%hd242933243601%_
                             _%$%tl242934243603%_
                             _%$%e242935243606%_
                             _%$%hd242936243609%_
                             _%$%tl242937243611%_
                             _%$%e242938243614%_
                             _%$%hd242939243617%_
                             _%$%tl242940243619%_)
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-eq? '%#ref _%$%hd242939243617%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl242940243619%_))
                              (let ((_%$%e242941243622%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl242940243619%_))))
                                (let ((_%$%tl242943243627%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e242941243622%_)))
                                      (_%$%hd242942243625%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e242941243622%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-null? _%$%tl242943243627%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl242937243611%_))
                                          (let ((_%$%e242944243630%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl242937243611%_))))
                                            (let ((_%$%tl242946243635%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e242944243630%_)))
                                                  (_%$%hd242945243633%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e242944243630%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%hd242945243633%_))
                                                  (let ((_%$%e242947243638%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%hd242945243633%_))))
                                                    (let ((_%$%tl242949243643%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e242947243638%_)))
                                                          (_%$%hd242948243641%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e242947243638%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#identifier?
                                                             _%$%hd242948243641%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-eq? '%#quote _%$%hd242948243641%_))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl242949243643%_))
                          (let ((_%$%e242950243646%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl242949243643%_))))
                            (let ((_%$%tl242952243651%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e242950243646%_)))
                                  (_%$%hd242951243649%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e242950243646%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl242952243651%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair/null?
                                         _%$%tl242946243635%_))
                                      (let ((_%__splice247291247292%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#syntax-split-splice->vector
                                                _%$%tl242946243635%_
                                                '0))))
                                        (let ((_%$%tl242955243656%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice247291247292%_
                                                  '1)))
                                              (_%$%target242953243654%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##vector-ref
                                                  _%__splice247291247292%_
                                                  '0))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl242955243656%_))
                                              (_%__match247498247499%_
                                               _%$%e242914243550%_
                                               _%$%hd242915243553%_
                                               _%$%tl242916243555%_
                                               _%$%e242917243558%_
                                               _%$%hd242918243561%_
                                               _%$%tl242919243563%_
                                               _%$%e242920243566%_
                                               _%$%hd242921243569%_
                                               _%$%tl242922243571%_
                                               _%$%e242923243574%_
                                               _%$%hd242924243577%_
                                               _%$%tl242925243579%_
                                               _%$%e242926243582%_
                                               _%$%hd242927243585%_
                                               _%$%tl242928243587%_
                                               _%$%e242929243590%_
                                               _%$%hd242930243593%_
                                               _%$%tl242931243595%_
                                               _%$%e242932243598%_
                                               _%$%hd242933243601%_
                                               _%$%tl242934243603%_
                                               _%$%e242935243606%_
                                               _%$%hd242936243609%_
                                               _%$%tl242937243611%_
                                               _%$%e242938243614%_
                                               _%$%hd242939243617%_
                                               _%$%tl242940243619%_
                                               _%$%e242941243622%_
                                               _%$%hd242942243625%_
                                               _%$%tl242943243627%_
                                               _%$%e242944243630%_
                                               _%$%hd242945243633%_
                                               _%$%tl242946243635%_
                                               _%$%e242947243638%_
                                               _%$%hd242948243641%_
                                               _%$%tl242949243643%_
                                               _%$%e242950243646%_
                                               _%$%hd242951243649%_
                                               _%$%tl242952243651%_
                                               _%__splice247291247292%_
                                               _%$%target242953243654%_
                                               _%$%tl242955243656%_)
                                              (_%__kont247301247302%_))))
                                      (_%__kont247301247302%_))
                                  (_%__kont247301247302%_))))
                          (_%__kont247301247302%_))
                      (_%__kont247301247302%_))
                  (_%__kont247301247302%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont247301247302%_))))
                                          (_%__match247780247781%_
                                           _%$%e242914243550%_
                                           _%$%hd242915243553%_
                                           _%$%tl242916243555%_
                                           _%$%e242917243558%_
                                           _%$%hd242918243561%_
                                           _%$%tl242919243563%_
                                           _%$%e242920243566%_
                                           _%$%hd242921243569%_
                                           _%$%tl242922243571%_
                                           _%$%e242923243574%_
                                           _%$%hd242924243577%_
                                           _%$%tl242925243579%_
                                           _%$%e242926243582%_
                                           _%$%hd242927243585%_
                                           _%$%tl242928243587%_
                                           _%$%e242929243590%_
                                           _%$%hd242930243593%_
                                           _%$%tl242931243595%_
                                           _%$%e242932243598%_
                                           _%$%hd242933243601%_
                                           _%$%tl242934243603%_
                                           _%$%e242935243606%_
                                           _%$%hd242936243609%_
                                           _%$%tl242937243611%_))
                                      (_%__match247780247781%_
                                       _%$%e242914243550%_
                                       _%$%hd242915243553%_
                                       _%$%tl242916243555%_
                                       _%$%e242917243558%_
                                       _%$%hd242918243561%_
                                       _%$%tl242919243563%_
                                       _%$%e242920243566%_
                                       _%$%hd242921243569%_
                                       _%$%tl242922243571%_
                                       _%$%e242923243574%_
                                       _%$%hd242924243577%_
                                       _%$%tl242925243579%_
                                       _%$%e242926243582%_
                                       _%$%hd242927243585%_
                                       _%$%tl242928243587%_
                                       _%$%e242929243590%_
                                       _%$%hd242930243593%_
                                       _%$%tl242931243595%_
                                       _%$%e242932243598%_
                                       _%$%hd242933243601%_
                                       _%$%tl242934243603%_
                                       _%$%e242935243606%_
                                       _%$%hd242936243609%_
                                       _%$%tl242937243611%_))))
                              (_%__match247780247781%_
                               _%$%e242914243550%_
                               _%$%hd242915243553%_
                               _%$%tl242916243555%_
                               _%$%e242917243558%_
                               _%$%hd242918243561%_
                               _%$%tl242919243563%_
                               _%$%e242920243566%_
                               _%$%hd242921243569%_
                               _%$%tl242922243571%_
                               _%$%e242923243574%_
                               _%$%hd242924243577%_
                               _%$%tl242925243579%_
                               _%$%e242926243582%_
                               _%$%hd242927243585%_
                               _%$%tl242928243587%_
                               _%$%e242929243590%_
                               _%$%hd242930243593%_
                               _%$%tl242931243595%_
                               _%$%e242932243598%_
                               _%$%hd242933243601%_
                               _%$%tl242934243603%_
                               _%$%e242935243606%_
                               _%$%hd242936243609%_
                               _%$%tl242937243611%_))
                          (_%__match247566247567%_
                           _%$%e242914243550%_
                           _%$%hd242915243553%_
                           _%$%tl242916243555%_
                           _%$%e242917243558%_
                           _%$%hd242918243561%_
                           _%$%tl242919243563%_
                           _%$%e242920243566%_
                           _%$%hd242921243569%_
                           _%$%tl242922243571%_
                           _%$%e242923243574%_
                           _%$%hd242924243577%_
                           _%$%tl242925243579%_
                           _%$%e242926243582%_
                           _%$%hd242927243585%_
                           _%$%tl242928243587%_
                           _%$%e242929243590%_
                           _%$%hd242930243593%_
                           _%$%tl242931243595%_
                           _%$%e242932243598%_
                           _%$%hd242933243601%_
                           _%$%tl242934243603%_
                           _%$%e242935243606%_
                           _%$%hd242936243609%_
                           _%$%tl242937243611%_
                           _%$%e242938243614%_
                           _%$%hd242939243617%_
                           _%$%tl242940243619%_))))
                   (_%__match247388247389%_
                    (lambda (_%$%e242870243737%_
                             _%$%hd242871243740%_
                             _%$%tl242872243742%_
                             _%$%e242873243745%_
                             _%$%hd242874243748%_
                             _%$%tl242875243750%_
                             _%$%e242876243753%_
                             _%$%hd242877243756%_
                             _%$%tl242878243758%_
                             _%$%e242879243761%_
                             _%$%hd242880243764%_
                             _%$%tl242881243766%_
                             _%$%e242882243769%_
                             _%$%hd242883243772%_
                             _%$%tl242884243774%_
                             _%$%e242885243777%_
                             _%$%hd242886243780%_
                             _%$%tl242887243782%_
                             _%$%e242888243785%_
                             _%$%hd242889243788%_
                             _%$%tl242890243790%_
                             _%$%e242891243793%_
                             _%$%hd242892243796%_
                             _%$%tl242893243798%_
                             _%$%e242894243801%_
                             _%$%hd242895243804%_
                             _%$%tl242896243806%_
                             _%$%e242897243809%_
                             _%$%hd242898243812%_
                             _%$%tl242899243814%_
                             _%__splice247287247288%_
                             _%$%target242900243817%_
                             _%$%tl242902243819%_)
                      (letrec ((_%$%loop242903243822%_
                                (lambda (_%$%hd242901243825%_
                                         _%$%args242907243827%_)
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%hd242901243825%_))
                                      (let ((_%$%e242904243829%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%hd242901243825%_))))
                                        (let ((_%$%lp-tl242906243834%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e242904243829%_)))
                                              (_%$%lp-hd242905243832%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e242904243829%_))))
                                          (_%$%loop242903243822%_
                                           _%$%lp-tl242906243834%_
                                           (cons _%$%lp-hd242905243832%_
                                                 _%$%args242907243827%_))))
                                      (let ((_%$%args242908243837%_
                                             (reverse _%$%args242907243827%_)))
                                        (let ((_%$%g242866243839%_
                                               _%$%args242908243837%_)
                                              (_%$%g242867243840%_
                                               _%$%hd242898243812%_)
                                              (_%$%g242868243841%_
                                               _%$%hd242889243788%_)
                                              (_%$%g242869243842%_
                                               _%$%hd242880243764%_))
                                          (if (and (let ()
                                                     (declare (not safe))
                                                     (gxc#runtime-identifier=?
                                                      _%$%g242869243842%_
                                                      'call-method))
                                                   (let ((__tmp248446
                                                          (let ()
                                                            (declare
                                                              (not safe))
                                                            (slot-ref__0
                                                             _%self242855%_
                                                             'receiver))))
                                                     (declare (not safe))
                                                     (gx#free-identifier=?
                                                      _%$%g242868243841%_
                                                      __tmp248446)))
                                              (_%__kont247285247286%_
                                               _%$%g242866243839%_
                                               _%$%g242867243840%_
                                               _%$%g242868243841%_
                                               _%$%g242869243842%_)
                                              (_%__match247576247577%_
                                               _%$%e242870243737%_
                                               _%$%hd242871243740%_
                                               _%$%tl242872243742%_
                                               _%$%e242873243745%_
                                               _%$%hd242874243748%_
                                               _%$%tl242875243750%_
                                               _%$%e242876243753%_
                                               _%$%hd242877243756%_
                                               _%$%tl242878243758%_
                                               _%$%e242879243761%_
                                               _%$%hd242880243764%_
                                               _%$%tl242881243766%_
                                               _%$%e242882243769%_
                                               _%$%hd242883243772%_
                                               _%$%tl242884243774%_
                                               _%$%e242885243777%_
                                               _%$%hd242886243780%_
                                               _%$%tl242887243782%_
                                               _%$%e242888243785%_
                                               _%$%hd242889243788%_
                                               _%$%tl242890243790%_
                                               _%$%e242891243793%_
                                               _%$%hd242892243796%_
                                               _%$%tl242893243798%_
                                               _%$%e242894243801%_
                                               _%$%hd242895243804%_
                                               _%$%tl242896243806%_
                                               _%$%e242897243809%_
                                               _%$%hd242898243812%_
                                               _%$%tl242899243814%_))))))))
                        (_%$%loop242903243822%_
                         _%$%target242900243817%_
                         '())))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx247283247284%_))
                  (let ((_%$%e242870243737%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx247283247284%_))))
                    (let ((_%$%tl242872243742%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e242870243737%_)))
                          (_%$%hd242871243740%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e242870243737%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl242872243742%_))
                          (let ((_%$%e242873243745%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl242872243742%_))))
                            (let ((_%$%tl242875243750%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e242873243745%_)))
                                  (_%$%hd242874243748%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e242873243745%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd242874243748%_))
                                  (let ((_%$%e242876243753%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd242874243748%_))))
                                    (let ((_%$%tl242878243758%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e242876243753%_)))
                                          (_%$%hd242877243756%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e242876243753%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd242877243756%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd242877243756%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl242878243758%_))
                                                  (let ((_%$%e242879243761%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl242878243758%_))))
                                                    (let ((_%$%tl242881243766%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e242879243761%_)))
                                                          (_%$%hd242880243764%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e242879243761%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl242881243766%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl242875243750%_))
                      (let ((_%$%e242882243769%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl242875243750%_))))
                        (let ((_%$%tl242884243774%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e242882243769%_)))
                              (_%$%hd242883243772%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e242882243769%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd242883243772%_))
                              (let ((_%$%e242885243777%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd242883243772%_))))
                                (let ((_%$%tl242887243782%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e242885243777%_)))
                                      (_%$%hd242886243780%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e242885243777%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd242886243780%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd242886243780%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl242887243782%_))
                                              (let ((_%$%e242888243785%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl242887243782%_))))
                                                (let ((_%$%tl242890243790%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e242888243785%_)))
                                                      (_%$%hd242889243788%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e242888243785%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl242890243790%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl242884243774%_))
                                                          (let ((_%$%e242891243793%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl242884243774%_))))
                    (let ((_%$%tl242893243798%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e242891243793%_)))
                          (_%$%hd242892243796%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e242891243793%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd242892243796%_))
                          (let ((_%$%e242894243801%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd242892243796%_))))
                            (let ((_%$%tl242896243806%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e242894243801%_)))
                                  (_%$%hd242895243804%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e242894243801%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd242895243804%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd242895243804%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl242896243806%_))
                                          (let ((_%$%e242897243809%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl242896243806%_))))
                                            (let ((_%$%tl242899243814%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e242897243809%_)))
                                                  (_%$%hd242898243812%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e242897243809%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl242899243814%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair/null?
                                                         _%$%tl242893243798%_))
                                                      (let ((_%__splice247287247288%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#syntax-split-splice->vector
                        _%$%tl242893243798%_
                        '0))))
                (let ((_%$%tl242902243819%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice247287247288%_ '1)))
                      (_%$%target242900243817%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref _%__splice247287247288%_ '0))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-null? _%$%tl242902243819%_))
                      (_%__match247388247389%_
                       _%$%e242870243737%_
                       _%$%hd242871243740%_
                       _%$%tl242872243742%_
                       _%$%e242873243745%_
                       _%$%hd242874243748%_
                       _%$%tl242875243750%_
                       _%$%e242876243753%_
                       _%$%hd242877243756%_
                       _%$%tl242878243758%_
                       _%$%e242879243761%_
                       _%$%hd242880243764%_
                       _%$%tl242881243766%_
                       _%$%e242882243769%_
                       _%$%hd242883243772%_
                       _%$%tl242884243774%_
                       _%$%e242885243777%_
                       _%$%hd242886243780%_
                       _%$%tl242887243782%_
                       _%$%e242888243785%_
                       _%$%hd242889243788%_
                       _%$%tl242890243790%_
                       _%$%e242891243793%_
                       _%$%hd242892243796%_
                       _%$%tl242893243798%_
                       _%$%e242894243801%_
                       _%$%hd242895243804%_
                       _%$%tl242896243806%_
                       _%$%e242897243809%_
                       _%$%hd242898243812%_
                       _%$%tl242899243814%_
                       _%__splice247287247288%_
                       _%$%target242900243817%_
                       _%$%tl242902243819%_)
                      (_%__match247576247577%_
                       _%$%e242870243737%_
                       _%$%hd242871243740%_
                       _%$%tl242872243742%_
                       _%$%e242873243745%_
                       _%$%hd242874243748%_
                       _%$%tl242875243750%_
                       _%$%e242876243753%_
                       _%$%hd242877243756%_
                       _%$%tl242878243758%_
                       _%$%e242879243761%_
                       _%$%hd242880243764%_
                       _%$%tl242881243766%_
                       _%$%e242882243769%_
                       _%$%hd242883243772%_
                       _%$%tl242884243774%_
                       _%$%e242885243777%_
                       _%$%hd242886243780%_
                       _%$%tl242887243782%_
                       _%$%e242888243785%_
                       _%$%hd242889243788%_
                       _%$%tl242890243790%_
                       _%$%e242891243793%_
                       _%$%hd242892243796%_
                       _%$%tl242893243798%_
                       _%$%e242894243801%_
                       _%$%hd242895243804%_
                       _%$%tl242896243806%_
                       _%$%e242897243809%_
                       _%$%hd242898243812%_
                       _%$%tl242899243814%_))))
              (_%__match247576247577%_
               _%$%e242870243737%_
               _%$%hd242871243740%_
               _%$%tl242872243742%_
               _%$%e242873243745%_
               _%$%hd242874243748%_
               _%$%tl242875243750%_
               _%$%e242876243753%_
               _%$%hd242877243756%_
               _%$%tl242878243758%_
               _%$%e242879243761%_
               _%$%hd242880243764%_
               _%$%tl242881243766%_
               _%$%e242882243769%_
               _%$%hd242883243772%_
               _%$%tl242884243774%_
               _%$%e242885243777%_
               _%$%hd242886243780%_
               _%$%tl242887243782%_
               _%$%e242888243785%_
               _%$%hd242889243788%_
               _%$%tl242890243790%_
               _%$%e242891243793%_
               _%$%hd242892243796%_
               _%$%tl242893243798%_
               _%$%e242894243801%_
               _%$%hd242895243804%_
               _%$%tl242896243806%_
               _%$%e242897243809%_
               _%$%hd242898243812%_
               _%$%tl242899243814%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__match247780247781%_
                                                   _%$%e242870243737%_
                                                   _%$%hd242871243740%_
                                                   _%$%tl242872243742%_
                                                   _%$%e242873243745%_
                                                   _%$%hd242874243748%_
                                                   _%$%tl242875243750%_
                                                   _%$%e242876243753%_
                                                   _%$%hd242877243756%_
                                                   _%$%tl242878243758%_
                                                   _%$%e242879243761%_
                                                   _%$%hd242880243764%_
                                                   _%$%tl242881243766%_
                                                   _%$%e242882243769%_
                                                   _%$%hd242883243772%_
                                                   _%$%tl242884243774%_
                                                   _%$%e242885243777%_
                                                   _%$%hd242886243780%_
                                                   _%$%tl242887243782%_
                                                   _%$%e242888243785%_
                                                   _%$%hd242889243788%_
                                                   _%$%tl242890243790%_
                                                   _%$%e242891243793%_
                                                   _%$%hd242892243796%_
                                                   _%$%tl242893243798%_))))
                                          (_%__match247780247781%_
                                           _%$%e242870243737%_
                                           _%$%hd242871243740%_
                                           _%$%tl242872243742%_
                                           _%$%e242873243745%_
                                           _%$%hd242874243748%_
                                           _%$%tl242875243750%_
                                           _%$%e242876243753%_
                                           _%$%hd242877243756%_
                                           _%$%tl242878243758%_
                                           _%$%e242879243761%_
                                           _%$%hd242880243764%_
                                           _%$%tl242881243766%_
                                           _%$%e242882243769%_
                                           _%$%hd242883243772%_
                                           _%$%tl242884243774%_
                                           _%$%e242885243777%_
                                           _%$%hd242886243780%_
                                           _%$%tl242887243782%_
                                           _%$%e242888243785%_
                                           _%$%hd242889243788%_
                                           _%$%tl242890243790%_
                                           _%$%e242891243793%_
                                           _%$%hd242892243796%_
                                           _%$%tl242893243798%_))
                                      (_%__match247456247457%_
                                       _%$%e242870243737%_
                                       _%$%hd242871243740%_
                                       _%$%tl242872243742%_
                                       _%$%e242873243745%_
                                       _%$%hd242874243748%_
                                       _%$%tl242875243750%_
                                       _%$%e242876243753%_
                                       _%$%hd242877243756%_
                                       _%$%tl242878243758%_
                                       _%$%e242879243761%_
                                       _%$%hd242880243764%_
                                       _%$%tl242881243766%_
                                       _%$%e242882243769%_
                                       _%$%hd242883243772%_
                                       _%$%tl242884243774%_
                                       _%$%e242885243777%_
                                       _%$%hd242886243780%_
                                       _%$%tl242887243782%_
                                       _%$%e242888243785%_
                                       _%$%hd242889243788%_
                                       _%$%tl242890243790%_
                                       _%$%e242891243793%_
                                       _%$%hd242892243796%_
                                       _%$%tl242893243798%_
                                       _%$%e242894243801%_
                                       _%$%hd242895243804%_
                                       _%$%tl242896243806%_))
                                  (_%__match247780247781%_
                                   _%$%e242870243737%_
                                   _%$%hd242871243740%_
                                   _%$%tl242872243742%_
                                   _%$%e242873243745%_
                                   _%$%hd242874243748%_
                                   _%$%tl242875243750%_
                                   _%$%e242876243753%_
                                   _%$%hd242877243756%_
                                   _%$%tl242878243758%_
                                   _%$%e242879243761%_
                                   _%$%hd242880243764%_
                                   _%$%tl242881243766%_
                                   _%$%e242882243769%_
                                   _%$%hd242883243772%_
                                   _%$%tl242884243774%_
                                   _%$%e242885243777%_
                                   _%$%hd242886243780%_
                                   _%$%tl242887243782%_
                                   _%$%e242888243785%_
                                   _%$%hd242889243788%_
                                   _%$%tl242890243790%_
                                   _%$%e242891243793%_
                                   _%$%hd242892243796%_
                                   _%$%tl242893243798%_))))
                          (_%__match247780247781%_
                           _%$%e242870243737%_
                           _%$%hd242871243740%_
                           _%$%tl242872243742%_
                           _%$%e242873243745%_
                           _%$%hd242874243748%_
                           _%$%tl242875243750%_
                           _%$%e242876243753%_
                           _%$%hd242877243756%_
                           _%$%tl242878243758%_
                           _%$%e242879243761%_
                           _%$%hd242880243764%_
                           _%$%tl242881243766%_
                           _%$%e242882243769%_
                           _%$%hd242883243772%_
                           _%$%tl242884243774%_
                           _%$%e242885243777%_
                           _%$%hd242886243780%_
                           _%$%tl242887243782%_
                           _%$%e242888243785%_
                           _%$%hd242889243788%_
                           _%$%tl242890243790%_
                           _%$%e242891243793%_
                           _%$%hd242892243796%_
                           _%$%tl242893243798%_))))
                  (_%__match247718247719%_
                   _%$%e242870243737%_
                   _%$%hd242871243740%_
                   _%$%tl242872243742%_
                   _%$%e242873243745%_
                   _%$%hd242874243748%_
                   _%$%tl242875243750%_
                   _%$%e242876243753%_
                   _%$%hd242877243756%_
                   _%$%tl242878243758%_
                   _%$%e242879243761%_
                   _%$%hd242880243764%_
                   _%$%tl242881243766%_
                   _%$%e242882243769%_
                   _%$%hd242883243772%_
                   _%$%tl242884243774%_
                   _%$%e242885243777%_
                   _%$%hd242886243780%_
                   _%$%tl242887243782%_
                   _%$%e242888243785%_
                   _%$%hd242889243788%_
                   _%$%tl242890243790%_))
              (_%__kont247301247302%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont247301247302%_))
                                          (_%__kont247301247302%_))
                                      (_%__kont247301247302%_))))
                              (_%__kont247301247302%_))))
                      (_%__kont247301247302%_))
                  (_%__kont247301247302%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont247301247302%_))
                                              (_%__kont247301247302%_))
                                          (_%__kont247301247302%_))))
                                  (_%__kont247301247302%_))))
                          (_%__kont247301247302%_))))
                  (_%__kont247301247302%_)))))))
    (define gxc#subst-object-refs-call%
      (lambda (_%self241798%_ _%stx241799%_)
        (letrec ((_%force-e241801%_
                  (lambda (_%target242853%_)
                    (cons '%#call
                          (cons (cons '%#ref (cons 'force '()))
                                (cons (cons '%#ref (cons _%target242853%_ '()))
                                      '()))))))
          (let* ((_%__stx247785247786%_ _%stx241799%_)
                 (_%$%g241809242031%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx247785247786%_)))))
            (let ((_%__kont247787247788%_
                   (lambda (_%$%g241811242799%_
                            _%$%g241812242800%_
                            _%$%g241813242801%_
                            _%$%g241814242802%_)
                     (let ((_%$method242847%_
                            (let ((__tmp248448
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self241798%_ 'methods)))
                                  (__tmp248447
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g241812242800%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp248448 __tmp248447)))
                           (_%args242848%_
                            (map (lambda (_%$%g242835242837%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self241798%_
                                      _%$%g242835242837%_)))
                                 (let ((__tmp248449
                                        (lambda (_%$%g242839242842%_
                                                 _%$%g242840242844%_)
                                          (cons _%$%g242839242842%_
                                                _%$%g242840242844%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp248449
                                    '()
                                    _%$%g241811242799%_)))))
                       (let ((__tmp248450
                              (cons '%#call
                                    (cons (_%force-e241801%_ _%$method242847%_)
                                          (cons (cons '%#ref
                                                      (cons (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self241798%_
                                                               'receiver))
                                                            '()))
                                                _%args242848%_)))))
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248450 _%stx241799%_)))))
                  (_%__kont247791247792%_
                   (lambda (_%$%g241854242633%_
                            _%$%g241855242634%_
                            _%$%g241856242635%_
                            _%$%g241857242636%_
                            _%$%g241858242637%_)
                     (let ((_%$method242689%_
                            (let ((__tmp248452
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self241798%_ 'methods)))
                                  (__tmp248451
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g241855242634%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp248452 __tmp248451)))
                           (_%args242690%_
                            (map (lambda (_%$%g242677242679%_)
                                   (let ()
                                     (declare (not safe))
                                     (gxc#compile-e__1
                                      _%self241798%_
                                      _%$%g242677242679%_)))
                                 (let ((__tmp248453
                                        (lambda (_%$%g242681242684%_
                                                 _%$%g242682242686%_)
                                          (cons _%$%g242681242684%_
                                                _%$%g242682242686%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp248453
                                    '()
                                    _%$%g241854242633%_)))))
                       (let ((__tmp248454
                              (cons '%#call
                                    (cons (cons '%#ref (cons 'apply '()))
                                          (cons (_%force-e241801%_
                                                 _%$method242689%_)
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self241798%_ 'receiver))
                          '()))
              _%args242690%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248454 _%stx241799%_)))))
                  (_%__kont247795247796%_
                   (lambda (_%$%g241907242466%_
                            _%$%g241908242467%_
                            _%$%g241909242468%_)
                     (let* ((_%$field242500%_
                             (let ((__tmp248456
                                    (let ()
                                      (declare (not safe))
                                      (slot-ref__0 _%self241798%_ 'slots)))
                                   (__tmp248455
                                    (let ()
                                      (declare (not safe))
                                      (gx#stx-e _%$%g241907242466%_))))
                               (declare (not safe))
                               (hash-ref__0 __tmp248456 __tmp248455)))
                            (__tmp248457
                             (cons '%#struct-unchecked-ref
                                   (cons (cons '%#ref
                                               (cons (let ()
                                                       (declare (not safe))
                                                       (slot-ref__0
                                                        _%self241798%_
                                                        'klass))
                                                     '()))
                                         (cons (cons '%#ref
                                                     (cons _%$field242500%_
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (declare (not safe))
                           (slot-ref__0 _%self241798%_ 'receiver))
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     '()))))))
                       (declare (not safe))
                       (gxc#xform-wrap-source __tmp248457 _%stx241799%_))))
                  (_%__kont247797247798%_
                   (lambda (_%$%g241940242340%_
                            _%$%g241941242341%_
                            _%$%g241942242342%_
                            _%$%g241943242343%_)
                     (let ((_%$field242378%_
                            (let ((__tmp248459
                                   (let ()
                                     (declare (not safe))
                                     (slot-ref__0 _%self241798%_ 'slots)))
                                  (__tmp248458
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%g241941242341%_))))
                              (declare (not safe))
                              (hash-ref__0 __tmp248459 __tmp248458)))
                           (_%expr242379%_
                            (let ()
                              (declare (not safe))
                              (gxc#compile-e__1
                               _%self241798%_
                               _%$%g241940242340%_))))
                       (let ((__tmp248460
                              (cons '%#struct-unchecked-set!
                                    (cons (cons '%#ref
                                                (cons (let ()
                                                        (declare (not safe))
                                                        (slot-ref__0
                                                         _%self241798%_
                                                         'klass))
                                                      '()))
                                          (cons (cons '%#ref
                                                      (cons _%$field242378%_
                                                            '()))
                                                (cons (cons '%#ref
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (slot-ref__0 _%self241798%_ 'receiver))
                          '()))
              (cons _%expr242379%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                         (declare (not safe))
                         (gxc#xform-wrap-source __tmp248460 _%stx241799%_)))))
                  (_%__kont247799247800%_
                   (lambda (_%$%g241977242212%_ _%$%g241978242213%_)
                     (let* ((_%accessor242235%_
                             (let ((__tmp248461
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g241978242213%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp248461)))
                            (_%klass242237%_
                             (let ((__tmp248462
                                    (##structure-ref
                                     _%accessor242235%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx241799%_
                                __tmp248462)))
                            (_%slot242239%_
                             (##structure-ref
                              _%accessor242235%_
                              '3
                              gxc#!accessor::t
                              '#f)))
                       (if (if (##structure-ref
                                _%accessor242235%_
                                '4
                                gxc#!accessor::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass242237%_
                                      _%slot242239%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass242237%_
                                      '8
                                      '#f
                                      '#f))))
                           _%stx241799%_
                           (let* ((_%$field242245%_
                                   (let ((__tmp248463
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241798%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp248463 _%slot242239%_)))
                                  (__tmp248464
                                   (cons '%#struct-unchecked-ref
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self241798%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field242245%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self241798%_ 'receiver))
                               '()))
                   '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp248464
                              _%stx241799%_))))))
                  (_%__kont247801247802%_
                   (lambda (_%$%g242000242107%_
                            _%$%g242001242108%_
                            _%$%g242002242109%_)
                     (let* ((_%mutator242137%_
                             (let ((__tmp248465
                                    (let ()
                                      (declare (not safe))
                                      (gxc#identifier-symbol
                                       _%$%g242002242109%_))))
                               (declare (not safe))
                               (gxc#optimizer-resolve-type __tmp248465)))
                            (_%klass242139%_
                             (let ((__tmp248466
                                    (##structure-ref
                                     _%mutator242137%_
                                     '1
                                     gxc#!type::t
                                     '#f)))
                               (declare (not safe))
                               (gxc#optimizer-resolve-class
                                _%stx241799%_
                                __tmp248466)))
                            (_%slot242141%_
                             (##structure-ref
                              _%mutator242137%_
                              '3
                              gxc#!mutator::t
                              '#f))
                            (_%expr242143%_
                             (let ()
                               (declare (not safe))
                               (gxc#compile-e__1
                                _%self241798%_
                                _%$%g242000242107%_))))
                       (if (if (##structure-ref
                                _%mutator242137%_
                                '4
                                gxc#!mutator::t
                                '#f)
                               '#f
                               (or (let ()
                                     (declare (not safe))
                                     (gxc#!class-struct-slot?
                                      _%klass242139%_
                                      _%slot242141%_))
                                   (let ()
                                     (declare (not safe))
                                     (##unchecked-structure-ref
                                      _%klass242139%_
                                      '8
                                      '#f
                                      '#f))))
                           (let ((__tmp248467
                                  (cons '%#call
                                        (cons (cons (let ()
                                                      (declare (not safe))
                                                      (gx#datum->syntax__0
                                                       '#f
                                                       '%#ref))
                                                    (cons _%$%g242002242109%_
                                                          '()))
                                              (cons (cons (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#datum->syntax__0
                                                             '#f
                                                             '%#ref))
                                                          (cons _%$%g242001242108%_
                                                                '()))
                                                    (cons _%expr242143%_
                                                          '()))))))
                             (declare (not safe))
                             (gxc#xform-wrap-source __tmp248467 _%stx241799%_))
                           (let* ((_%$field242149%_
                                   (let ((__tmp248468
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241798%_
                                             'slots))))
                                     (declare (not safe))
                                     (hash-ref__0 __tmp248468 _%slot242141%_)))
                                  (__tmp248469
                                   (cons '%#struct-unchecked-set!
                                         (cons (cons '%#ref
                                                     (cons (let ()
                                                             (declare
                                                               (not safe))
                                                             (slot-ref__0
                                                              _%self241798%_
                                                              'klass))
                                                           '()))
                                               (cons (cons '%#ref
                                                           (cons _%$field242149%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         '()))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                     (cons (cons '%#ref
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (cons (let ()
                                 (declare (not safe))
                                 (slot-ref__0 _%self241798%_ 'receiver))
                               '()))
                   (cons _%expr242143%_ '())))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                             (declare (not safe))
                             (gxc#xform-wrap-source
                              __tmp248469
                              _%stx241799%_))))))
                  (_%__kont247803247804%_
                   (lambda ()
                     (let ()
                       (declare (not safe))
                       (gxc#xform-operands _%self241798%_ _%stx241799%_)))))
              (let* ((_%__match248284248285%_
                      (lambda (_%$%e242003242043%_
                               _%$%hd242004242046%_
                               _%$%tl242005242048%_
                               _%$%e242006242051%_
                               _%$%hd242007242054%_
                               _%$%tl242008242056%_
                               _%$%e242009242059%_
                               _%$%hd242010242062%_
                               _%$%tl242011242064%_
                               _%$%e242012242067%_
                               _%$%hd242013242070%_
                               _%$%tl242014242072%_
                               _%$%e242015242075%_
                               _%$%hd242016242078%_
                               _%$%tl242017242080%_
                               _%$%e242018242083%_
                               _%$%hd242019242086%_
                               _%$%tl242020242088%_
                               _%$%e242021242091%_
                               _%$%hd242022242094%_
                               _%$%tl242023242096%_
                               _%$%e242024242099%_
                               _%$%hd242025242102%_
                               _%$%tl242026242104%_)
                        (let ((_%$%g242000242107%_ _%$%hd242025242102%_)
                              (_%$%g242001242108%_ _%$%hd242022242094%_)
                              (_%$%g242002242109%_ _%$%hd242013242070%_))
                          (if (and (let ((__tmp248470
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241798%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g242001242108%_
                                      __tmp248470))
                                   (let ((__tmp248471
                                          (let ((__tmp248472
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g242002242109%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp248472))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp248471
                                      'gxc#!mutator::t)))
                              (_%__kont247801247802%_
                               _%$%g242000242107%_
                               _%$%g242001242108%_
                               _%$%g242002242109%_)
                              (_%__kont247803247804%_)))))
                     (_%__match248282248283%_
                      (lambda (_%$%e242003242043%_
                               _%$%hd242004242046%_
                               _%$%tl242005242048%_
                               _%$%e242006242051%_
                               _%$%hd242007242054%_
                               _%$%tl242008242056%_
                               _%$%e242009242059%_
                               _%$%hd242010242062%_
                               _%$%tl242011242064%_
                               _%$%e242012242067%_
                               _%$%hd242013242070%_
                               _%$%tl242014242072%_
                               _%$%e242015242075%_
                               _%$%hd242016242078%_
                               _%$%tl242017242080%_
                               _%$%e242018242083%_
                               _%$%hd242019242086%_
                               _%$%tl242020242088%_
                               _%$%e242021242091%_
                               _%$%hd242022242094%_
                               _%$%tl242023242096%_
                               _%$%e242024242099%_
                               _%$%hd242025242102%_
                               _%$%tl242026242104%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl242026242104%_))
                            (_%__match248284248285%_
                             _%$%e242003242043%_
                             _%$%hd242004242046%_
                             _%$%tl242005242048%_
                             _%$%e242006242051%_
                             _%$%hd242007242054%_
                             _%$%tl242008242056%_
                             _%$%e242009242059%_
                             _%$%hd242010242062%_
                             _%$%tl242011242064%_
                             _%$%e242012242067%_
                             _%$%hd242013242070%_
                             _%$%tl242014242072%_
                             _%$%e242015242075%_
                             _%$%hd242016242078%_
                             _%$%tl242017242080%_
                             _%$%e242018242083%_
                             _%$%hd242019242086%_
                             _%$%tl242020242088%_
                             _%$%e242021242091%_
                             _%$%hd242022242094%_
                             _%$%tl242023242096%_
                             _%$%e242024242099%_
                             _%$%hd242025242102%_
                             _%$%tl242026242104%_)
                            (_%__kont247803247804%_))))
                     (_%__match248276248277%_
                      (lambda (_%$%e242003242043%_
                               _%$%hd242004242046%_
                               _%$%tl242005242048%_
                               _%$%e242006242051%_
                               _%$%hd242007242054%_
                               _%$%tl242008242056%_
                               _%$%e242009242059%_
                               _%$%hd242010242062%_
                               _%$%tl242011242064%_
                               _%$%e242012242067%_
                               _%$%hd242013242070%_
                               _%$%tl242014242072%_
                               _%$%e242015242075%_
                               _%$%hd242016242078%_
                               _%$%tl242017242080%_
                               _%$%e242018242083%_
                               _%$%hd242019242086%_
                               _%$%tl242020242088%_
                               _%$%e242021242091%_
                               _%$%hd242022242094%_
                               _%$%tl242023242096%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl242017242080%_))
                            (let ((_%$%e242024242099%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl242017242080%_))))
                              (let ((_%$%tl242026242104%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e242024242099%_)))
                                    (_%$%hd242025242102%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e242024242099%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl242026242104%_))
                                    (_%__match248284248285%_
                                     _%$%e242003242043%_
                                     _%$%hd242004242046%_
                                     _%$%tl242005242048%_
                                     _%$%e242006242051%_
                                     _%$%hd242007242054%_
                                     _%$%tl242008242056%_
                                     _%$%e242009242059%_
                                     _%$%hd242010242062%_
                                     _%$%tl242011242064%_
                                     _%$%e242012242067%_
                                     _%$%hd242013242070%_
                                     _%$%tl242014242072%_
                                     _%$%e242015242075%_
                                     _%$%hd242016242078%_
                                     _%$%tl242017242080%_
                                     _%$%e242018242083%_
                                     _%$%hd242019242086%_
                                     _%$%tl242020242088%_
                                     _%$%e242021242091%_
                                     _%$%hd242022242094%_
                                     _%$%tl242023242096%_
                                     _%$%e242024242099%_
                                     _%$%hd242025242102%_
                                     _%$%tl242026242104%_)
                                    (_%__kont247803247804%_))))
                            (_%__kont247803247804%_))))
                     (_%__match248222248223%_
                      (lambda (_%$%e241979242156%_
                               _%$%hd241980242159%_
                               _%$%tl241981242161%_
                               _%$%e241982242164%_
                               _%$%hd241983242167%_
                               _%$%tl241984242169%_
                               _%$%e241985242172%_
                               _%$%hd241986242175%_
                               _%$%tl241987242177%_
                               _%$%e241988242180%_
                               _%$%hd241989242183%_
                               _%$%tl241990242185%_
                               _%$%e241991242188%_
                               _%$%hd241992242191%_
                               _%$%tl241993242193%_
                               _%$%e241994242196%_
                               _%$%hd241995242199%_
                               _%$%tl241996242201%_
                               _%$%e241997242204%_
                               _%$%hd241998242207%_
                               _%$%tl241999242209%_)
                        (let ((_%$%g241977242212%_ _%$%hd241998242207%_)
                              (_%$%g241978242213%_ _%$%hd241989242183%_))
                          (if (and (let ((__tmp248473
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241798%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g241977242212%_
                                      __tmp248473))
                                   (let ((__tmp248474
                                          (let ((__tmp248475
                                                 (let ()
                                                   (declare (not safe))
                                                   (gxc#identifier-symbol
                                                    _%$%g241978242213%_))))
                                            (declare (not safe))
                                            (gxc#optimizer-resolve-type
                                             __tmp248475))))
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      __tmp248474
                                      'gxc#!accessor::t)))
                              (_%__kont247799247800%_
                               _%$%g241977242212%_
                               _%$%g241978242213%_)
                              (_%__kont247803247804%_)))))
                     (_%__match248220248221%_
                      (lambda (_%$%e241979242156%_
                               _%$%hd241980242159%_
                               _%$%tl241981242161%_
                               _%$%e241982242164%_
                               _%$%hd241983242167%_
                               _%$%tl241984242169%_
                               _%$%e241985242172%_
                               _%$%hd241986242175%_
                               _%$%tl241987242177%_
                               _%$%e241988242180%_
                               _%$%hd241989242183%_
                               _%$%tl241990242185%_
                               _%$%e241991242188%_
                               _%$%hd241992242191%_
                               _%$%tl241993242193%_
                               _%$%e241994242196%_
                               _%$%hd241995242199%_
                               _%$%tl241996242201%_
                               _%$%e241997242204%_
                               _%$%hd241998242207%_
                               _%$%tl241999242209%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl241993242193%_))
                            (_%__match248222248223%_
                             _%$%e241979242156%_
                             _%$%hd241980242159%_
                             _%$%tl241981242161%_
                             _%$%e241982242164%_
                             _%$%hd241983242167%_
                             _%$%tl241984242169%_
                             _%$%e241985242172%_
                             _%$%hd241986242175%_
                             _%$%tl241987242177%_
                             _%$%e241988242180%_
                             _%$%hd241989242183%_
                             _%$%tl241990242185%_
                             _%$%e241991242188%_
                             _%$%hd241992242191%_
                             _%$%tl241993242193%_
                             _%$%e241994242196%_
                             _%$%hd241995242199%_
                             _%$%tl241996242201%_
                             _%$%e241997242204%_
                             _%$%hd241998242207%_
                             _%$%tl241999242209%_)
                            (_%__match248276248277%_
                             _%$%e241979242156%_
                             _%$%hd241980242159%_
                             _%$%tl241981242161%_
                             _%$%e241982242164%_
                             _%$%hd241983242167%_
                             _%$%tl241984242169%_
                             _%$%e241985242172%_
                             _%$%hd241986242175%_
                             _%$%tl241987242177%_
                             _%$%e241988242180%_
                             _%$%hd241989242183%_
                             _%$%tl241990242185%_
                             _%$%e241991242188%_
                             _%$%hd241992242191%_
                             _%$%tl241993242193%_
                             _%$%e241994242196%_
                             _%$%hd241995242199%_
                             _%$%tl241996242201%_
                             _%$%e241997242204%_
                             _%$%hd241998242207%_
                             _%$%tl241999242209%_))))
                     (_%__match248166248167%_
                      (lambda (_%$%e241944242252%_
                               _%$%hd241945242255%_
                               _%$%tl241946242257%_
                               _%$%e241947242260%_
                               _%$%hd241948242263%_
                               _%$%tl241949242265%_
                               _%$%e241950242268%_
                               _%$%hd241951242271%_
                               _%$%tl241952242273%_
                               _%$%e241953242276%_
                               _%$%hd241954242279%_
                               _%$%tl241955242281%_
                               _%$%e241956242284%_
                               _%$%hd241957242287%_
                               _%$%tl241958242289%_
                               _%$%e241959242292%_
                               _%$%hd241960242295%_
                               _%$%tl241961242297%_
                               _%$%e241962242300%_
                               _%$%hd241963242303%_
                               _%$%tl241964242305%_
                               _%$%e241965242308%_
                               _%$%hd241966242311%_
                               _%$%tl241967242313%_
                               _%$%e241968242316%_
                               _%$%hd241969242319%_
                               _%$%tl241970242321%_
                               _%$%e241971242324%_
                               _%$%hd241972242327%_
                               _%$%tl241973242329%_
                               _%$%e241974242332%_
                               _%$%hd241975242335%_
                               _%$%tl241976242337%_)
                        (let ((_%$%g241940242340%_ _%$%hd241975242335%_)
                              (_%$%g241941242341%_ _%$%hd241972242327%_)
                              (_%$%g241942242342%_ _%$%hd241963242303%_)
                              (_%$%g241943242343%_ _%$%hd241954242279%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g241943242343%_
                                          'slot-set!))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g241943242343%_
                                          'unchecked-slot-set!)))
                                   (let ((__tmp248476
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241798%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g241942242342%_
                                      __tmp248476)))
                              (_%__kont247797247798%_
                               _%$%g241940242340%_
                               _%$%g241941242341%_
                               _%$%g241942242342%_
                               _%$%g241943242343%_)
                              (_%__kont247803247804%_)))))
                     (_%__match248158248159%_
                      (lambda (_%$%e241944242252%_
                               _%$%hd241945242255%_
                               _%$%tl241946242257%_
                               _%$%e241947242260%_
                               _%$%hd241948242263%_
                               _%$%tl241949242265%_
                               _%$%e241950242268%_
                               _%$%hd241951242271%_
                               _%$%tl241952242273%_
                               _%$%e241953242276%_
                               _%$%hd241954242279%_
                               _%$%tl241955242281%_
                               _%$%e241956242284%_
                               _%$%hd241957242287%_
                               _%$%tl241958242289%_
                               _%$%e241959242292%_
                               _%$%hd241960242295%_
                               _%$%tl241961242297%_
                               _%$%e241962242300%_
                               _%$%hd241963242303%_
                               _%$%tl241964242305%_
                               _%$%e241965242308%_
                               _%$%hd241966242311%_
                               _%$%tl241967242313%_
                               _%$%e241968242316%_
                               _%$%hd241969242319%_
                               _%$%tl241970242321%_
                               _%$%e241971242324%_
                               _%$%hd241972242327%_
                               _%$%tl241973242329%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl241967242313%_))
                            (let ((_%$%e241974242332%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl241967242313%_))))
                              (let ((_%$%tl241976242337%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e241974242332%_)))
                                    (_%$%hd241975242335%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e241974242332%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl241976242337%_))
                                    (_%__match248166248167%_
                                     _%$%e241944242252%_
                                     _%$%hd241945242255%_
                                     _%$%tl241946242257%_
                                     _%$%e241947242260%_
                                     _%$%hd241948242263%_
                                     _%$%tl241949242265%_
                                     _%$%e241950242268%_
                                     _%$%hd241951242271%_
                                     _%$%tl241952242273%_
                                     _%$%e241953242276%_
                                     _%$%hd241954242279%_
                                     _%$%tl241955242281%_
                                     _%$%e241956242284%_
                                     _%$%hd241957242287%_
                                     _%$%tl241958242289%_
                                     _%$%e241959242292%_
                                     _%$%hd241960242295%_
                                     _%$%tl241961242297%_
                                     _%$%e241962242300%_
                                     _%$%hd241963242303%_
                                     _%$%tl241964242305%_
                                     _%$%e241965242308%_
                                     _%$%hd241966242311%_
                                     _%$%tl241967242313%_
                                     _%$%e241968242316%_
                                     _%$%hd241969242319%_
                                     _%$%tl241970242321%_
                                     _%$%e241971242324%_
                                     _%$%hd241972242327%_
                                     _%$%tl241973242329%_
                                     _%$%e241974242332%_
                                     _%$%hd241975242335%_
                                     _%$%tl241976242337%_)
                                    (_%__kont247803247804%_))))
                            (_%__match248282248283%_
                             _%$%e241944242252%_
                             _%$%hd241945242255%_
                             _%$%tl241946242257%_
                             _%$%e241947242260%_
                             _%$%hd241948242263%_
                             _%$%tl241949242265%_
                             _%$%e241950242268%_
                             _%$%hd241951242271%_
                             _%$%tl241952242273%_
                             _%$%e241953242276%_
                             _%$%hd241954242279%_
                             _%$%tl241955242281%_
                             _%$%e241956242284%_
                             _%$%hd241957242287%_
                             _%$%tl241958242289%_
                             _%$%e241959242292%_
                             _%$%hd241960242295%_
                             _%$%tl241961242297%_
                             _%$%e241962242300%_
                             _%$%hd241963242303%_
                             _%$%tl241964242305%_
                             _%$%e241965242308%_
                             _%$%hd241966242311%_
                             _%$%tl241967242313%_))))
                     (_%__match248080248081%_
                      (lambda (_%$%e241910242386%_
                               _%$%hd241911242389%_
                               _%$%tl241912242391%_
                               _%$%e241913242394%_
                               _%$%hd241914242397%_
                               _%$%tl241915242399%_
                               _%$%e241916242402%_
                               _%$%hd241917242405%_
                               _%$%tl241918242407%_
                               _%$%e241919242410%_
                               _%$%hd241920242413%_
                               _%$%tl241921242415%_
                               _%$%e241922242418%_
                               _%$%hd241923242421%_
                               _%$%tl241924242423%_
                               _%$%e241925242426%_
                               _%$%hd241926242429%_
                               _%$%tl241927242431%_
                               _%$%e241928242434%_
                               _%$%hd241929242437%_
                               _%$%tl241930242439%_
                               _%$%e241931242442%_
                               _%$%hd241932242445%_
                               _%$%tl241933242447%_
                               _%$%e241934242450%_
                               _%$%hd241935242453%_
                               _%$%tl241936242455%_
                               _%$%e241937242458%_
                               _%$%hd241938242461%_
                               _%$%tl241939242463%_)
                        (let ((_%$%g241907242466%_ _%$%hd241938242461%_)
                              (_%$%g241908242467%_ _%$%hd241929242437%_)
                              (_%$%g241909242468%_ _%$%hd241920242413%_))
                          (if (and (or (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g241909242468%_
                                          'slot-ref))
                                       (let ()
                                         (declare (not safe))
                                         (gxc#runtime-identifier=?
                                          _%$%g241909242468%_
                                          'unchecked-slot-ref)))
                                   (let ((__tmp248477
                                          (let ()
                                            (declare (not safe))
                                            (slot-ref__0
                                             _%self241798%_
                                             'receiver))))
                                     (declare (not safe))
                                     (gx#free-identifier=?
                                      _%$%g241908242467%_
                                      __tmp248477)))
                              (_%__kont247795247796%_
                               _%$%g241907242466%_
                               _%$%g241908242467%_
                               _%$%g241909242468%_)
                              (_%__match248284248285%_
                               _%$%e241910242386%_
                               _%$%hd241911242389%_
                               _%$%tl241912242391%_
                               _%$%e241913242394%_
                               _%$%hd241914242397%_
                               _%$%tl241915242399%_
                               _%$%e241916242402%_
                               _%$%hd241917242405%_
                               _%$%tl241918242407%_
                               _%$%e241919242410%_
                               _%$%hd241920242413%_
                               _%$%tl241921242415%_
                               _%$%e241922242418%_
                               _%$%hd241923242421%_
                               _%$%tl241924242423%_
                               _%$%e241925242426%_
                               _%$%hd241926242429%_
                               _%$%tl241927242431%_
                               _%$%e241928242434%_
                               _%$%hd241929242437%_
                               _%$%tl241930242439%_
                               _%$%e241931242442%_
                               _%$%hd241932242445%_
                               _%$%tl241933242447%_)))))
                     (_%__match248078248079%_
                      (lambda (_%$%e241910242386%_
                               _%$%hd241911242389%_
                               _%$%tl241912242391%_
                               _%$%e241913242394%_
                               _%$%hd241914242397%_
                               _%$%tl241915242399%_
                               _%$%e241916242402%_
                               _%$%hd241917242405%_
                               _%$%tl241918242407%_
                               _%$%e241919242410%_
                               _%$%hd241920242413%_
                               _%$%tl241921242415%_
                               _%$%e241922242418%_
                               _%$%hd241923242421%_
                               _%$%tl241924242423%_
                               _%$%e241925242426%_
                               _%$%hd241926242429%_
                               _%$%tl241927242431%_
                               _%$%e241928242434%_
                               _%$%hd241929242437%_
                               _%$%tl241930242439%_
                               _%$%e241931242442%_
                               _%$%hd241932242445%_
                               _%$%tl241933242447%_
                               _%$%e241934242450%_
                               _%$%hd241935242453%_
                               _%$%tl241936242455%_
                               _%$%e241937242458%_
                               _%$%hd241938242461%_
                               _%$%tl241939242463%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl241933242447%_))
                            (_%__match248080248081%_
                             _%$%e241910242386%_
                             _%$%hd241911242389%_
                             _%$%tl241912242391%_
                             _%$%e241913242394%_
                             _%$%hd241914242397%_
                             _%$%tl241915242399%_
                             _%$%e241916242402%_
                             _%$%hd241917242405%_
                             _%$%tl241918242407%_
                             _%$%e241919242410%_
                             _%$%hd241920242413%_
                             _%$%tl241921242415%_
                             _%$%e241922242418%_
                             _%$%hd241923242421%_
                             _%$%tl241924242423%_
                             _%$%e241925242426%_
                             _%$%hd241926242429%_
                             _%$%tl241927242431%_
                             _%$%e241928242434%_
                             _%$%hd241929242437%_
                             _%$%tl241930242439%_
                             _%$%e241931242442%_
                             _%$%hd241932242445%_
                             _%$%tl241933242447%_
                             _%$%e241934242450%_
                             _%$%hd241935242453%_
                             _%$%tl241936242455%_
                             _%$%e241937242458%_
                             _%$%hd241938242461%_
                             _%$%tl241939242463%_)
                            (_%__match248158248159%_
                             _%$%e241910242386%_
                             _%$%hd241911242389%_
                             _%$%tl241912242391%_
                             _%$%e241913242394%_
                             _%$%hd241914242397%_
                             _%$%tl241915242399%_
                             _%$%e241916242402%_
                             _%$%hd241917242405%_
                             _%$%tl241918242407%_
                             _%$%e241919242410%_
                             _%$%hd241920242413%_
                             _%$%tl241921242415%_
                             _%$%e241922242418%_
                             _%$%hd241923242421%_
                             _%$%tl241924242423%_
                             _%$%e241925242426%_
                             _%$%hd241926242429%_
                             _%$%tl241927242431%_
                             _%$%e241928242434%_
                             _%$%hd241929242437%_
                             _%$%tl241930242439%_
                             _%$%e241931242442%_
                             _%$%hd241932242445%_
                             _%$%tl241933242447%_
                             _%$%e241934242450%_
                             _%$%hd241935242453%_
                             _%$%tl241936242455%_
                             _%$%e241937242458%_
                             _%$%hd241938242461%_
                             _%$%tl241939242463%_))))
                     (_%__match248068248069%_
                      (lambda (_%$%e241910242386%_
                               _%$%hd241911242389%_
                               _%$%tl241912242391%_
                               _%$%e241913242394%_
                               _%$%hd241914242397%_
                               _%$%tl241915242399%_
                               _%$%e241916242402%_
                               _%$%hd241917242405%_
                               _%$%tl241918242407%_
                               _%$%e241919242410%_
                               _%$%hd241920242413%_
                               _%$%tl241921242415%_
                               _%$%e241922242418%_
                               _%$%hd241923242421%_
                               _%$%tl241924242423%_
                               _%$%e241925242426%_
                               _%$%hd241926242429%_
                               _%$%tl241927242431%_
                               _%$%e241928242434%_
                               _%$%hd241929242437%_
                               _%$%tl241930242439%_
                               _%$%e241931242442%_
                               _%$%hd241932242445%_
                               _%$%tl241933242447%_
                               _%$%e241934242450%_
                               _%$%hd241935242453%_
                               _%$%tl241936242455%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#quote _%$%hd241935242453%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl241936242455%_))
                                (let ((_%$%e241937242458%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl241936242455%_))))
                                  (let ((_%$%tl241939242463%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e241937242458%_)))
                                        (_%$%hd241938242461%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e241937242458%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl241939242463%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl241933242447%_))
                                            (_%__match248080248081%_
                                             _%$%e241910242386%_
                                             _%$%hd241911242389%_
                                             _%$%tl241912242391%_
                                             _%$%e241913242394%_
                                             _%$%hd241914242397%_
                                             _%$%tl241915242399%_
                                             _%$%e241916242402%_
                                             _%$%hd241917242405%_
                                             _%$%tl241918242407%_
                                             _%$%e241919242410%_
                                             _%$%hd241920242413%_
                                             _%$%tl241921242415%_
                                             _%$%e241922242418%_
                                             _%$%hd241923242421%_
                                             _%$%tl241924242423%_
                                             _%$%e241925242426%_
                                             _%$%hd241926242429%_
                                             _%$%tl241927242431%_
                                             _%$%e241928242434%_
                                             _%$%hd241929242437%_
                                             _%$%tl241930242439%_
                                             _%$%e241931242442%_
                                             _%$%hd241932242445%_
                                             _%$%tl241933242447%_
                                             _%$%e241934242450%_
                                             _%$%hd241935242453%_
                                             _%$%tl241936242455%_
                                             _%$%e241937242458%_
                                             _%$%hd241938242461%_
                                             _%$%tl241939242463%_)
                                            (_%__match248158248159%_
                                             _%$%e241910242386%_
                                             _%$%hd241911242389%_
                                             _%$%tl241912242391%_
                                             _%$%e241913242394%_
                                             _%$%hd241914242397%_
                                             _%$%tl241915242399%_
                                             _%$%e241916242402%_
                                             _%$%hd241917242405%_
                                             _%$%tl241918242407%_
                                             _%$%e241919242410%_
                                             _%$%hd241920242413%_
                                             _%$%tl241921242415%_
                                             _%$%e241922242418%_
                                             _%$%hd241923242421%_
                                             _%$%tl241924242423%_
                                             _%$%e241925242426%_
                                             _%$%hd241926242429%_
                                             _%$%tl241927242431%_
                                             _%$%e241928242434%_
                                             _%$%hd241929242437%_
                                             _%$%tl241930242439%_
                                             _%$%e241931242442%_
                                             _%$%hd241932242445%_
                                             _%$%tl241933242447%_
                                             _%$%e241934242450%_
                                             _%$%hd241935242453%_
                                             _%$%tl241936242455%_
                                             _%$%e241937242458%_
                                             _%$%hd241938242461%_
                                             _%$%tl241939242463%_))
                                        (_%__match248282248283%_
                                         _%$%e241910242386%_
                                         _%$%hd241911242389%_
                                         _%$%tl241912242391%_
                                         _%$%e241913242394%_
                                         _%$%hd241914242397%_
                                         _%$%tl241915242399%_
                                         _%$%e241916242402%_
                                         _%$%hd241917242405%_
                                         _%$%tl241918242407%_
                                         _%$%e241919242410%_
                                         _%$%hd241920242413%_
                                         _%$%tl241921242415%_
                                         _%$%e241922242418%_
                                         _%$%hd241923242421%_
                                         _%$%tl241924242423%_
                                         _%$%e241925242426%_
                                         _%$%hd241926242429%_
                                         _%$%tl241927242431%_
                                         _%$%e241928242434%_
                                         _%$%hd241929242437%_
                                         _%$%tl241930242439%_
                                         _%$%e241931242442%_
                                         _%$%hd241932242445%_
                                         _%$%tl241933242447%_))))
                                (_%__match248282248283%_
                                 _%$%e241910242386%_
                                 _%$%hd241911242389%_
                                 _%$%tl241912242391%_
                                 _%$%e241913242394%_
                                 _%$%hd241914242397%_
                                 _%$%tl241915242399%_
                                 _%$%e241916242402%_
                                 _%$%hd241917242405%_
                                 _%$%tl241918242407%_
                                 _%$%e241919242410%_
                                 _%$%hd241920242413%_
                                 _%$%tl241921242415%_
                                 _%$%e241922242418%_
                                 _%$%hd241923242421%_
                                 _%$%tl241924242423%_
                                 _%$%e241925242426%_
                                 _%$%hd241926242429%_
                                 _%$%tl241927242431%_
                                 _%$%e241928242434%_
                                 _%$%hd241929242437%_
                                 _%$%tl241930242439%_
                                 _%$%e241931242442%_
                                 _%$%hd241932242445%_
                                 _%$%tl241933242447%_))
                            (_%__match248282248283%_
                             _%$%e241910242386%_
                             _%$%hd241911242389%_
                             _%$%tl241912242391%_
                             _%$%e241913242394%_
                             _%$%hd241914242397%_
                             _%$%tl241915242399%_
                             _%$%e241916242402%_
                             _%$%hd241917242405%_
                             _%$%tl241918242407%_
                             _%$%e241919242410%_
                             _%$%hd241920242413%_
                             _%$%tl241921242415%_
                             _%$%e241922242418%_
                             _%$%hd241923242421%_
                             _%$%tl241924242423%_
                             _%$%e241925242426%_
                             _%$%hd241926242429%_
                             _%$%tl241927242431%_
                             _%$%e241928242434%_
                             _%$%hd241929242437%_
                             _%$%tl241930242439%_
                             _%$%e241931242442%_
                             _%$%hd241932242445%_
                             _%$%tl241933242447%_))))
                     (_%__match248000248001%_
                      (lambda (_%$%e241859242507%_
                               _%$%hd241860242510%_
                               _%$%tl241861242512%_
                               _%$%e241862242515%_
                               _%$%hd241863242518%_
                               _%$%tl241864242520%_
                               _%$%e241865242523%_
                               _%$%hd241866242526%_
                               _%$%tl241867242528%_
                               _%$%e241868242531%_
                               _%$%hd241869242534%_
                               _%$%tl241870242536%_
                               _%$%e241871242539%_
                               _%$%hd241872242542%_
                               _%$%tl241873242544%_
                               _%$%e241874242547%_
                               _%$%hd241875242550%_
                               _%$%tl241876242552%_
                               _%$%e241877242555%_
                               _%$%hd241878242558%_
                               _%$%tl241879242560%_
                               _%$%e241880242563%_
                               _%$%hd241881242566%_
                               _%$%tl241882242568%_
                               _%$%e241883242571%_
                               _%$%hd241884242574%_
                               _%$%tl241885242576%_
                               _%$%e241886242579%_
                               _%$%hd241887242582%_
                               _%$%tl241888242584%_
                               _%$%e241889242587%_
                               _%$%hd241890242590%_
                               _%$%tl241891242592%_
                               _%$%e241892242595%_
                               _%$%hd241893242598%_
                               _%$%tl241894242600%_
                               _%$%e241895242603%_
                               _%$%hd241896242606%_
                               _%$%tl241897242608%_
                               _%__splice247793247794%_
                               _%$%target241898242611%_
                               _%$%tl241900242613%_)
                        (letrec ((_%$%loop241901242616%_
                                  (lambda (_%$%hd241899242619%_
                                           _%$%args241905242621%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd241899242619%_))
                                        (let ((_%$%e241902242623%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd241899242619%_))))
                                          (let ((_%$%lp-tl241904242628%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e241902242623%_)))
                                                (_%$%lp-hd241903242626%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e241902242623%_))))
                                            (_%$%loop241901242616%_
                                             _%$%lp-tl241904242628%_
                                             (cons _%$%lp-hd241903242626%_
                                                   _%$%args241905242621%_))))
                                        (let ((_%$%args241906242631%_
                                               (reverse _%$%args241905242621%_)))
                                          (let ((_%$%g241854242633%_
                                                 _%$%args241906242631%_)
                                                (_%$%g241855242634%_
                                                 _%$%hd241896242606%_)
                                                (_%$%g241856242635%_
                                                 _%$%hd241887242582%_)
                                                (_%$%g241857242636%_
                                                 _%$%hd241878242558%_)
                                                (_%$%g241858242637%_
                                                 _%$%hd241869242534%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g241858242637%_
                                                        'apply))
                                                     (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g241857242636%_
                                                        'call-method))
                                                     (let ((__tmp248478
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self241798%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g241856242635%_
                                                        __tmp248478)))
                                                (_%__kont247791247792%_
                                                 _%$%g241854242633%_
                                                 _%$%g241855242634%_
                                                 _%$%g241856242635%_
                                                 _%$%g241857242636%_
                                                 _%$%g241858242637%_)
                                                (_%__kont247803247804%_))))))))
                          (_%$%loop241901242616%_
                           _%$%target241898242611%_
                           '()))))
                     (_%__match247958247959%_
                      (lambda (_%$%e241859242507%_
                               _%$%hd241860242510%_
                               _%$%tl241861242512%_
                               _%$%e241862242515%_
                               _%$%hd241863242518%_
                               _%$%tl241864242520%_
                               _%$%e241865242523%_
                               _%$%hd241866242526%_
                               _%$%tl241867242528%_
                               _%$%e241868242531%_
                               _%$%hd241869242534%_
                               _%$%tl241870242536%_
                               _%$%e241871242539%_
                               _%$%hd241872242542%_
                               _%$%tl241873242544%_
                               _%$%e241874242547%_
                               _%$%hd241875242550%_
                               _%$%tl241876242552%_
                               _%$%e241877242555%_
                               _%$%hd241878242558%_
                               _%$%tl241879242560%_
                               _%$%e241880242563%_
                               _%$%hd241881242566%_
                               _%$%tl241882242568%_
                               _%$%e241883242571%_
                               _%$%hd241884242574%_
                               _%$%tl241885242576%_)
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-eq? '%#ref _%$%hd241884242574%_))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%tl241885242576%_))
                                (let ((_%$%e241886242579%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%tl241885242576%_))))
                                  (let ((_%$%tl241888242584%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e241886242579%_)))
                                        (_%$%hd241887242582%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e241886242579%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl241888242584%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl241882242568%_))
                                            (let ((_%$%e241889242587%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl241882242568%_))))
                                              (let ((_%$%tl241891242592%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e241889242587%_)))
                                                    (_%$%hd241890242590%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e241889242587%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%hd241890242590%_))
                                                    (let ((_%$%e241892242595%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%hd241890242590%_))))
                                                      (let ((_%$%tl241894242600%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e241892242595%_)))
                    (_%$%hd241893242598%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e241892242595%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#identifier? _%$%hd241893242598%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-eq? '%#quote _%$%hd241893242598%_))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl241894242600%_))
                            (let ((_%$%e241895242603%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl241894242600%_))))
                              (let ((_%$%tl241897242608%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e241895242603%_)))
                                    (_%$%hd241896242606%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e241895242603%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-null? _%$%tl241897242608%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%tl241891242592%_))
                                        (let ((_%__splice247793247794%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%tl241891242592%_
                                                  '0))))
                                          (let ((_%$%tl241900242613%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice247793247794%_
                                                    '1)))
                                                (_%$%target241898242611%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice247793247794%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl241900242613%_))
                                                (_%__match248000248001%_
                                                 _%$%e241859242507%_
                                                 _%$%hd241860242510%_
                                                 _%$%tl241861242512%_
                                                 _%$%e241862242515%_
                                                 _%$%hd241863242518%_
                                                 _%$%tl241864242520%_
                                                 _%$%e241865242523%_
                                                 _%$%hd241866242526%_
                                                 _%$%tl241867242528%_
                                                 _%$%e241868242531%_
                                                 _%$%hd241869242534%_
                                                 _%$%tl241870242536%_
                                                 _%$%e241871242539%_
                                                 _%$%hd241872242542%_
                                                 _%$%tl241873242544%_
                                                 _%$%e241874242547%_
                                                 _%$%hd241875242550%_
                                                 _%$%tl241876242552%_
                                                 _%$%e241877242555%_
                                                 _%$%hd241878242558%_
                                                 _%$%tl241879242560%_
                                                 _%$%e241880242563%_
                                                 _%$%hd241881242566%_
                                                 _%$%tl241882242568%_
                                                 _%$%e241883242571%_
                                                 _%$%hd241884242574%_
                                                 _%$%tl241885242576%_
                                                 _%$%e241886242579%_
                                                 _%$%hd241887242582%_
                                                 _%$%tl241888242584%_
                                                 _%$%e241889242587%_
                                                 _%$%hd241890242590%_
                                                 _%$%tl241891242592%_
                                                 _%$%e241892242595%_
                                                 _%$%hd241893242598%_
                                                 _%$%tl241894242600%_
                                                 _%$%e241895242603%_
                                                 _%$%hd241896242606%_
                                                 _%$%tl241897242608%_
                                                 _%__splice247793247794%_
                                                 _%$%target241898242611%_
                                                 _%$%tl241900242613%_)
                                                (_%__kont247803247804%_))))
                                        (_%__kont247803247804%_))
                                    (_%__kont247803247804%_))))
                            (_%__kont247803247804%_))
                        (_%__kont247803247804%_))
                    (_%__kont247803247804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont247803247804%_))))
                                            (_%__match248282248283%_
                                             _%$%e241859242507%_
                                             _%$%hd241860242510%_
                                             _%$%tl241861242512%_
                                             _%$%e241862242515%_
                                             _%$%hd241863242518%_
                                             _%$%tl241864242520%_
                                             _%$%e241865242523%_
                                             _%$%hd241866242526%_
                                             _%$%tl241867242528%_
                                             _%$%e241868242531%_
                                             _%$%hd241869242534%_
                                             _%$%tl241870242536%_
                                             _%$%e241871242539%_
                                             _%$%hd241872242542%_
                                             _%$%tl241873242544%_
                                             _%$%e241874242547%_
                                             _%$%hd241875242550%_
                                             _%$%tl241876242552%_
                                             _%$%e241877242555%_
                                             _%$%hd241878242558%_
                                             _%$%tl241879242560%_
                                             _%$%e241880242563%_
                                             _%$%hd241881242566%_
                                             _%$%tl241882242568%_))
                                        (_%__match248282248283%_
                                         _%$%e241859242507%_
                                         _%$%hd241860242510%_
                                         _%$%tl241861242512%_
                                         _%$%e241862242515%_
                                         _%$%hd241863242518%_
                                         _%$%tl241864242520%_
                                         _%$%e241865242523%_
                                         _%$%hd241866242526%_
                                         _%$%tl241867242528%_
                                         _%$%e241868242531%_
                                         _%$%hd241869242534%_
                                         _%$%tl241870242536%_
                                         _%$%e241871242539%_
                                         _%$%hd241872242542%_
                                         _%$%tl241873242544%_
                                         _%$%e241874242547%_
                                         _%$%hd241875242550%_
                                         _%$%tl241876242552%_
                                         _%$%e241877242555%_
                                         _%$%hd241878242558%_
                                         _%$%tl241879242560%_
                                         _%$%e241880242563%_
                                         _%$%hd241881242566%_
                                         _%$%tl241882242568%_))))
                                (_%__match248282248283%_
                                 _%$%e241859242507%_
                                 _%$%hd241860242510%_
                                 _%$%tl241861242512%_
                                 _%$%e241862242515%_
                                 _%$%hd241863242518%_
                                 _%$%tl241864242520%_
                                 _%$%e241865242523%_
                                 _%$%hd241866242526%_
                                 _%$%tl241867242528%_
                                 _%$%e241868242531%_
                                 _%$%hd241869242534%_
                                 _%$%tl241870242536%_
                                 _%$%e241871242539%_
                                 _%$%hd241872242542%_
                                 _%$%tl241873242544%_
                                 _%$%e241874242547%_
                                 _%$%hd241875242550%_
                                 _%$%tl241876242552%_
                                 _%$%e241877242555%_
                                 _%$%hd241878242558%_
                                 _%$%tl241879242560%_
                                 _%$%e241880242563%_
                                 _%$%hd241881242566%_
                                 _%$%tl241882242568%_))
                            (_%__match248068248069%_
                             _%$%e241859242507%_
                             _%$%hd241860242510%_
                             _%$%tl241861242512%_
                             _%$%e241862242515%_
                             _%$%hd241863242518%_
                             _%$%tl241864242520%_
                             _%$%e241865242523%_
                             _%$%hd241866242526%_
                             _%$%tl241867242528%_
                             _%$%e241868242531%_
                             _%$%hd241869242534%_
                             _%$%tl241870242536%_
                             _%$%e241871242539%_
                             _%$%hd241872242542%_
                             _%$%tl241873242544%_
                             _%$%e241874242547%_
                             _%$%hd241875242550%_
                             _%$%tl241876242552%_
                             _%$%e241877242555%_
                             _%$%hd241878242558%_
                             _%$%tl241879242560%_
                             _%$%e241880242563%_
                             _%$%hd241881242566%_
                             _%$%tl241882242568%_
                             _%$%e241883242571%_
                             _%$%hd241884242574%_
                             _%$%tl241885242576%_))))
                     (_%__match247890247891%_
                      (lambda (_%$%e241815242697%_
                               _%$%hd241816242700%_
                               _%$%tl241817242702%_
                               _%$%e241818242705%_
                               _%$%hd241819242708%_
                               _%$%tl241820242710%_
                               _%$%e241821242713%_
                               _%$%hd241822242716%_
                               _%$%tl241823242718%_
                               _%$%e241824242721%_
                               _%$%hd241825242724%_
                               _%$%tl241826242726%_
                               _%$%e241827242729%_
                               _%$%hd241828242732%_
                               _%$%tl241829242734%_
                               _%$%e241830242737%_
                               _%$%hd241831242740%_
                               _%$%tl241832242742%_
                               _%$%e241833242745%_
                               _%$%hd241834242748%_
                               _%$%tl241835242750%_
                               _%$%e241836242753%_
                               _%$%hd241837242756%_
                               _%$%tl241838242758%_
                               _%$%e241839242761%_
                               _%$%hd241840242764%_
                               _%$%tl241841242766%_
                               _%$%e241842242769%_
                               _%$%hd241843242772%_
                               _%$%tl241844242774%_
                               _%__splice247789247790%_
                               _%$%target241845242777%_
                               _%$%tl241847242779%_)
                        (letrec ((_%$%loop241848242782%_
                                  (lambda (_%$%hd241846242785%_
                                           _%$%args241852242787%_)
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair? _%$%hd241846242785%_))
                                        (let ((_%$%e241849242789%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#stx-e
                                                  _%$%hd241846242785%_))))
                                          (let ((_%$%lp-tl241851242794%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%e241849242789%_)))
                                                (_%$%lp-hd241850242792%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%e241849242789%_))))
                                            (_%$%loop241848242782%_
                                             _%$%lp-tl241851242794%_
                                             (cons _%$%lp-hd241850242792%_
                                                   _%$%args241852242787%_))))
                                        (let ((_%$%args241853242797%_
                                               (reverse _%$%args241852242787%_)))
                                          (let ((_%$%g241811242799%_
                                                 _%$%args241853242797%_)
                                                (_%$%g241812242800%_
                                                 _%$%hd241843242772%_)
                                                (_%$%g241813242801%_
                                                 _%$%hd241834242748%_)
                                                (_%$%g241814242802%_
                                                 _%$%hd241825242724%_))
                                            (if (and (let ()
                                                       (declare (not safe))
                                                       (gxc#runtime-identifier=?
                                                        _%$%g241814242802%_
                                                        'call-method))
                                                     (let ((__tmp248479
                                                            (let ()
                                                              (declare
                                                                (not safe))
                                                              (slot-ref__0
                                                               _%self241798%_
                                                               'receiver))))
                                                       (declare (not safe))
                                                       (gx#free-identifier=?
                                                        _%$%g241813242801%_
                                                        __tmp248479)))
                                                (_%__kont247787247788%_
                                                 _%$%g241811242799%_
                                                 _%$%g241812242800%_
                                                 _%$%g241813242801%_
                                                 _%$%g241814242802%_)
                                                (_%__match248078248079%_
                                                 _%$%e241815242697%_
                                                 _%$%hd241816242700%_
                                                 _%$%tl241817242702%_
                                                 _%$%e241818242705%_
                                                 _%$%hd241819242708%_
                                                 _%$%tl241820242710%_
                                                 _%$%e241821242713%_
                                                 _%$%hd241822242716%_
                                                 _%$%tl241823242718%_
                                                 _%$%e241824242721%_
                                                 _%$%hd241825242724%_
                                                 _%$%tl241826242726%_
                                                 _%$%e241827242729%_
                                                 _%$%hd241828242732%_
                                                 _%$%tl241829242734%_
                                                 _%$%e241830242737%_
                                                 _%$%hd241831242740%_
                                                 _%$%tl241832242742%_
                                                 _%$%e241833242745%_
                                                 _%$%hd241834242748%_
                                                 _%$%tl241835242750%_
                                                 _%$%e241836242753%_
                                                 _%$%hd241837242756%_
                                                 _%$%tl241838242758%_
                                                 _%$%e241839242761%_
                                                 _%$%hd241840242764%_
                                                 _%$%tl241841242766%_
                                                 _%$%e241842242769%_
                                                 _%$%hd241843242772%_
                                                 _%$%tl241844242774%_))))))))
                          (_%$%loop241848242782%_
                           _%$%target241845242777%_
                           '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx247785247786%_))
                    (let ((_%$%e241815242697%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx247785247786%_))))
                      (let ((_%$%tl241817242702%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e241815242697%_)))
                            (_%$%hd241816242700%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e241815242697%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl241817242702%_))
                            (let ((_%$%e241818242705%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl241817242702%_))))
                              (let ((_%$%tl241820242710%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e241818242705%_)))
                                    (_%$%hd241819242708%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e241818242705%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd241819242708%_))
                                    (let ((_%$%e241821242713%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd241819242708%_))))
                                      (let ((_%$%tl241823242718%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e241821242713%_)))
                                            (_%$%hd241822242716%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e241821242713%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#identifier?
                                               _%$%hd241822242716%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-eq?
                                                   '%#ref
                                                   _%$%hd241822242716%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl241823242718%_))
                                                    (let ((_%$%e241824242721%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl241823242718%_))))
                                                      (let ((_%$%tl241826242726%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e241824242721%_)))
                    (_%$%hd241825242724%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e241824242721%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl241826242726%_))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl241820242710%_))
                        (let ((_%$%e241827242729%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl241820242710%_))))
                          (let ((_%$%tl241829242734%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e241827242729%_)))
                                (_%$%hd241828242732%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e241827242729%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd241828242732%_))
                                (let ((_%$%e241830242737%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd241828242732%_))))
                                  (let ((_%$%tl241832242742%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e241830242737%_)))
                                        (_%$%hd241831242740%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e241830242737%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd241831242740%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '%#ref
                                               _%$%hd241831242740%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl241832242742%_))
                                                (let ((_%$%e241833242745%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl241832242742%_))))
                                                  (let ((_%$%tl241835242750%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e241833242745%_)))
                                                        (_%$%hd241834242748%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e241833242745%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl241835242750%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl241829242734%_))
                                                            (let ((_%$%e241836242753%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl241829242734%_))))
                      (let ((_%$%tl241838242758%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e241836242753%_)))
                            (_%$%hd241837242756%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e241836242753%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd241837242756%_))
                            (let ((_%$%e241839242761%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd241837242756%_))))
                              (let ((_%$%tl241841242766%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e241839242761%_)))
                                    (_%$%hd241840242764%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e241839242761%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd241840242764%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd241840242764%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl241841242766%_))
                                            (let ((_%$%e241842242769%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl241841242766%_))))
                                              (let ((_%$%tl241844242774%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e241842242769%_)))
                                                    (_%$%hd241843242772%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e241842242769%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl241844242774%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-pair/null?
                                                           _%$%tl241838242758%_))
                                                        (let ((_%__splice247789247790%_
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (gx#syntax-split-splice->vector
                          _%$%tl241838242758%_
                          '0))))
                  (let ((_%$%tl241847242779%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice247789247790%_ '1)))
                        (_%$%target241845242777%_
                         (let ()
                           (declare (not safe))
                           (##vector-ref _%__splice247789247790%_ '0))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-null? _%$%tl241847242779%_))
                        (_%__match247890247891%_
                         _%$%e241815242697%_
                         _%$%hd241816242700%_
                         _%$%tl241817242702%_
                         _%$%e241818242705%_
                         _%$%hd241819242708%_
                         _%$%tl241820242710%_
                         _%$%e241821242713%_
                         _%$%hd241822242716%_
                         _%$%tl241823242718%_
                         _%$%e241824242721%_
                         _%$%hd241825242724%_
                         _%$%tl241826242726%_
                         _%$%e241827242729%_
                         _%$%hd241828242732%_
                         _%$%tl241829242734%_
                         _%$%e241830242737%_
                         _%$%hd241831242740%_
                         _%$%tl241832242742%_
                         _%$%e241833242745%_
                         _%$%hd241834242748%_
                         _%$%tl241835242750%_
                         _%$%e241836242753%_
                         _%$%hd241837242756%_
                         _%$%tl241838242758%_
                         _%$%e241839242761%_
                         _%$%hd241840242764%_
                         _%$%tl241841242766%_
                         _%$%e241842242769%_
                         _%$%hd241843242772%_
                         _%$%tl241844242774%_
                         _%__splice247789247790%_
                         _%$%target241845242777%_
                         _%$%tl241847242779%_)
                        (_%__match248078248079%_
                         _%$%e241815242697%_
                         _%$%hd241816242700%_
                         _%$%tl241817242702%_
                         _%$%e241818242705%_
                         _%$%hd241819242708%_
                         _%$%tl241820242710%_
                         _%$%e241821242713%_
                         _%$%hd241822242716%_
                         _%$%tl241823242718%_
                         _%$%e241824242721%_
                         _%$%hd241825242724%_
                         _%$%tl241826242726%_
                         _%$%e241827242729%_
                         _%$%hd241828242732%_
                         _%$%tl241829242734%_
                         _%$%e241830242737%_
                         _%$%hd241831242740%_
                         _%$%tl241832242742%_
                         _%$%e241833242745%_
                         _%$%hd241834242748%_
                         _%$%tl241835242750%_
                         _%$%e241836242753%_
                         _%$%hd241837242756%_
                         _%$%tl241838242758%_
                         _%$%e241839242761%_
                         _%$%hd241840242764%_
                         _%$%tl241841242766%_
                         _%$%e241842242769%_
                         _%$%hd241843242772%_
                         _%$%tl241844242774%_))))
                (_%__match248078248079%_
                 _%$%e241815242697%_
                 _%$%hd241816242700%_
                 _%$%tl241817242702%_
                 _%$%e241818242705%_
                 _%$%hd241819242708%_
                 _%$%tl241820242710%_
                 _%$%e241821242713%_
                 _%$%hd241822242716%_
                 _%$%tl241823242718%_
                 _%$%e241824242721%_
                 _%$%hd241825242724%_
                 _%$%tl241826242726%_
                 _%$%e241827242729%_
                 _%$%hd241828242732%_
                 _%$%tl241829242734%_
                 _%$%e241830242737%_
                 _%$%hd241831242740%_
                 _%$%tl241832242742%_
                 _%$%e241833242745%_
                 _%$%hd241834242748%_
                 _%$%tl241835242750%_
                 _%$%e241836242753%_
                 _%$%hd241837242756%_
                 _%$%tl241838242758%_
                 _%$%e241839242761%_
                 _%$%hd241840242764%_
                 _%$%tl241841242766%_
                 _%$%e241842242769%_
                 _%$%hd241843242772%_
                 _%$%tl241844242774%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__match248282248283%_
                                                     _%$%e241815242697%_
                                                     _%$%hd241816242700%_
                                                     _%$%tl241817242702%_
                                                     _%$%e241818242705%_
                                                     _%$%hd241819242708%_
                                                     _%$%tl241820242710%_
                                                     _%$%e241821242713%_
                                                     _%$%hd241822242716%_
                                                     _%$%tl241823242718%_
                                                     _%$%e241824242721%_
                                                     _%$%hd241825242724%_
                                                     _%$%tl241826242726%_
                                                     _%$%e241827242729%_
                                                     _%$%hd241828242732%_
                                                     _%$%tl241829242734%_
                                                     _%$%e241830242737%_
                                                     _%$%hd241831242740%_
                                                     _%$%tl241832242742%_
                                                     _%$%e241833242745%_
                                                     _%$%hd241834242748%_
                                                     _%$%tl241835242750%_
                                                     _%$%e241836242753%_
                                                     _%$%hd241837242756%_
                                                     _%$%tl241838242758%_))))
                                            (_%__match248282248283%_
                                             _%$%e241815242697%_
                                             _%$%hd241816242700%_
                                             _%$%tl241817242702%_
                                             _%$%e241818242705%_
                                             _%$%hd241819242708%_
                                             _%$%tl241820242710%_
                                             _%$%e241821242713%_
                                             _%$%hd241822242716%_
                                             _%$%tl241823242718%_
                                             _%$%e241824242721%_
                                             _%$%hd241825242724%_
                                             _%$%tl241826242726%_
                                             _%$%e241827242729%_
                                             _%$%hd241828242732%_
                                             _%$%tl241829242734%_
                                             _%$%e241830242737%_
                                             _%$%hd241831242740%_
                                             _%$%tl241832242742%_
                                             _%$%e241833242745%_
                                             _%$%hd241834242748%_
                                             _%$%tl241835242750%_
                                             _%$%e241836242753%_
                                             _%$%hd241837242756%_
                                             _%$%tl241838242758%_))
                                        (_%__match247958247959%_
                                         _%$%e241815242697%_
                                         _%$%hd241816242700%_
                                         _%$%tl241817242702%_
                                         _%$%e241818242705%_
                                         _%$%hd241819242708%_
                                         _%$%tl241820242710%_
                                         _%$%e241821242713%_
                                         _%$%hd241822242716%_
                                         _%$%tl241823242718%_
                                         _%$%e241824242721%_
                                         _%$%hd241825242724%_
                                         _%$%tl241826242726%_
                                         _%$%e241827242729%_
                                         _%$%hd241828242732%_
                                         _%$%tl241829242734%_
                                         _%$%e241830242737%_
                                         _%$%hd241831242740%_
                                         _%$%tl241832242742%_
                                         _%$%e241833242745%_
                                         _%$%hd241834242748%_
                                         _%$%tl241835242750%_
                                         _%$%e241836242753%_
                                         _%$%hd241837242756%_
                                         _%$%tl241838242758%_
                                         _%$%e241839242761%_
                                         _%$%hd241840242764%_
                                         _%$%tl241841242766%_))
                                    (_%__match248282248283%_
                                     _%$%e241815242697%_
                                     _%$%hd241816242700%_
                                     _%$%tl241817242702%_
                                     _%$%e241818242705%_
                                     _%$%hd241819242708%_
                                     _%$%tl241820242710%_
                                     _%$%e241821242713%_
                                     _%$%hd241822242716%_
                                     _%$%tl241823242718%_
                                     _%$%e241824242721%_
                                     _%$%hd241825242724%_
                                     _%$%tl241826242726%_
                                     _%$%e241827242729%_
                                     _%$%hd241828242732%_
                                     _%$%tl241829242734%_
                                     _%$%e241830242737%_
                                     _%$%hd241831242740%_
                                     _%$%tl241832242742%_
                                     _%$%e241833242745%_
                                     _%$%hd241834242748%_
                                     _%$%tl241835242750%_
                                     _%$%e241836242753%_
                                     _%$%hd241837242756%_
                                     _%$%tl241838242758%_))))
                            (_%__match248282248283%_
                             _%$%e241815242697%_
                             _%$%hd241816242700%_
                             _%$%tl241817242702%_
                             _%$%e241818242705%_
                             _%$%hd241819242708%_
                             _%$%tl241820242710%_
                             _%$%e241821242713%_
                             _%$%hd241822242716%_
                             _%$%tl241823242718%_
                             _%$%e241824242721%_
                             _%$%hd241825242724%_
                             _%$%tl241826242726%_
                             _%$%e241827242729%_
                             _%$%hd241828242732%_
                             _%$%tl241829242734%_
                             _%$%e241830242737%_
                             _%$%hd241831242740%_
                             _%$%tl241832242742%_
                             _%$%e241833242745%_
                             _%$%hd241834242748%_
                             _%$%tl241835242750%_
                             _%$%e241836242753%_
                             _%$%hd241837242756%_
                             _%$%tl241838242758%_))))
                    (_%__match248220248221%_
                     _%$%e241815242697%_
                     _%$%hd241816242700%_
                     _%$%tl241817242702%_
                     _%$%e241818242705%_
                     _%$%hd241819242708%_
                     _%$%tl241820242710%_
                     _%$%e241821242713%_
                     _%$%hd241822242716%_
                     _%$%tl241823242718%_
                     _%$%e241824242721%_
                     _%$%hd241825242724%_
                     _%$%tl241826242726%_
                     _%$%e241827242729%_
                     _%$%hd241828242732%_
                     _%$%tl241829242734%_
                     _%$%e241830242737%_
                     _%$%hd241831242740%_
                     _%$%tl241832242742%_
                     _%$%e241833242745%_
                     _%$%hd241834242748%_
                     _%$%tl241835242750%_))
                (_%__kont247803247804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (_%__kont247803247804%_))
                                            (_%__kont247803247804%_))
                                        (_%__kont247803247804%_))))
                                (_%__kont247803247804%_))))
                        (_%__kont247803247804%_))
                    (_%__kont247803247804%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%__kont247803247804%_))
                                                (_%__kont247803247804%_))
                                            (_%__kont247803247804%_))))
                                    (_%__kont247803247804%_))))
                            (_%__kont247803247804%_))))
                    (_%__kont247803247804%_))))))))))
