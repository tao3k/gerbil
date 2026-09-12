(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1789188910)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp222294 (list)) (__tmp222293 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp222294
         '(type classes ssxi methods)
         __tmp222293
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args221927%_
        (apply make-instance gxc#optimizer-info::t _%$args221927%_)))
    (define gxc#optimizer-info-type
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#optimizer-info::t 'type)))
    (define gxc#optimizer-info-classes
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#optimizer-info::t 'classes)))
    (define gxc#optimizer-info-ssxi
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#optimizer-info::t 'ssxi)))
    (define gxc#optimizer-info-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#optimizer-info::t 'methods)))
    (define gxc#optimizer-info-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#optimizer-info::t 'type)))
    (define gxc#optimizer-info-classes-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#optimizer-info::t 'classes)))
    (define gxc#optimizer-info-ssxi-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#optimizer-info::t 'ssxi)))
    (define gxc#optimizer-info-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#optimizer-info::t 'methods)))
    (define gxc#&optimizer-info-type
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#optimizer-info::t 'type)))
    (define gxc#&optimizer-info-classes
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#optimizer-info::t 'classes)))
    (define gxc#&optimizer-info-ssxi
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#optimizer-info::t 'ssxi)))
    (define gxc#&optimizer-info-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#optimizer-info::t 'methods)))
    (define gxc#&optimizer-info-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#optimizer-info::t 'type)))
    (define gxc#&optimizer-info-classes-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#optimizer-info::t 'classes)))
    (define gxc#&optimizer-info-ssxi-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#optimizer-info::t 'ssxi)))
    (define gxc#&optimizer-info-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#optimizer-info::t 'methods)))
    (define gxc#optimizer-info:::init!
      (lambda (_%self221914%_)
        (let ((_%self221917%_ _%self221914%_))
          (if (let ((__tmp222295
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self221917%_))))
                (declare (not safe))
                (##fx< '4 __tmp222295))
              (begin
                (let ((__tmp222296
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self221917%_
                   __tmp222296
                   '1
                   '#f
                   '#f))
                (let ((__tmp222297
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self221917%_
                   __tmp222297
                   '2
                   '#f
                   '#f))
                (let ((__tmp222298
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self221917%_
                   __tmp222298
                   '3
                   '#f
                   '#f))
                (let ((__tmp222299
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self221917%_
                   __tmp222299
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp222300
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self221917%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self221917%_
                       '4
                       __tmp222300))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp222302 (list))
            (__tmp222301
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp222302
         '(id)
         __tmp222301
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args221789%_
        (apply make-instance gxc#!type::t _%$args221789%_)))
    (define gxc#!type-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!type::t 'id)))
    (define gxc#!type-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!type::t 'id)))
    (define gxc#&!type-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!type::t 'id)))
    (define gxc#&!type-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!type::t 'id)))
    (define gxc#!abort::t
      (let ((__tmp222304 (list gxc#!type::t))
            (__tmp222303 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp222304
         '()
         __tmp222303
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args221786%_
        (apply make-instance gxc#!abort::t _%$args221786%_)))
    (define gxc#!abort-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!abort::t 'id)))
    (define gxc#!abort-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!abort::t 'id)))
    (define gxc#&!abort-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!abort::t 'id)))
    (define gxc#&!abort-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!abort::t 'id)))
    (define gxc#!alias::t
      (let ((__tmp222306 (list gxc#!type::t))
            (__tmp222305 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp222306
         '()
         __tmp222305
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args221783%_
        (apply make-instance gxc#!alias::t _%$args221783%_)))
    (define gxc#!alias-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!alias::t 'id)))
    (define gxc#!alias-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!alias::t 'id)))
    (define gxc#&!alias-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!alias::t 'id)))
    (define gxc#&!alias-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!alias::t 'id)))
    (define gxc#!signature::t
      (let ((__tmp222308 (list))
            (__tmp222307
             (cons (cons 'final: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp222308
         '(return effect arguments unchecked origin)
         __tmp222307
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args221780%_
        (apply make-instance gxc#!signature::t _%$args221780%_)))
    (define gxc#!signature-return
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!signature::t 'return)))
    (define gxc#!signature-effect
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!signature::t 'effect)))
    (define gxc#!signature-arguments
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!signature::t 'arguments)))
    (define gxc#!signature-unchecked
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!signature::t 'unchecked)))
    (define gxc#!signature-origin
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!signature::t 'origin)))
    (define gxc#!signature-return-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!signature::t 'return)))
    (define gxc#!signature-effect-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!signature::t 'effect)))
    (define gxc#!signature-arguments-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!signature::t 'arguments)))
    (define gxc#!signature-unchecked-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!signature::t 'unchecked)))
    (define gxc#!signature-origin-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!signature::t 'origin)))
    (define gxc#&!signature-return
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!signature::t 'return)))
    (define gxc#&!signature-effect
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!signature::t 'effect)))
    (define gxc#&!signature-arguments
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!signature::t 'arguments)))
    (define gxc#&!signature-unchecked
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!signature::t 'unchecked)))
    (define gxc#&!signature-origin
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!signature::t 'origin)))
    (define gxc#&!signature-return-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!signature::t 'return)))
    (define gxc#&!signature-effect-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!signature::t 'effect)))
    (define gxc#&!signature-arguments-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!signature::t 'arguments)))
    (define gxc#&!signature-unchecked-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!signature::t 'unchecked)))
    (define gxc#&!signature-origin-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!signature::t 'origin)))
    (define gxc#!procedure::t
      (let ((__tmp222310 (list gxc#!type::t))
            (__tmp222309
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp222310
         '(signature)
         __tmp222309
         '#f)))
    (define gxc#!procedure?
      (let () (declare (not safe)) (__make-class-predicate gxc#!procedure::t)))
    (define gxc#!procedure-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!procedure::t 'signature)))
    (define gxc#!procedure-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!procedure::t 'id)))
    (define gxc#!procedure-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!procedure::t 'signature)))
    (define gxc#!procedure-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!procedure::t 'id)))
    (define gxc#&!procedure-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!procedure::t 'signature)))
    (define gxc#&!procedure-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!procedure::t 'id)))
    (define gxc#&!procedure-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!procedure::t 'signature)))
    (define gxc#&!procedure-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!procedure::t 'id)))
    (define gxc#__make-!procedure
      (lambda (_%id221767%_ _%signature221768%_)
        (let ((_%signature221771%_ _%signature221768%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id221767%_ _%signature221771%_))))
    (define gxc#make-!procedure
      (lambda (_%id221745%_ _%signature221747%_)
        (if (or (not _%signature221747%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%signature221747%_
                   'gxc#!signature::t)))
            (let ((_%signature221757%_ _%signature221747%_))
              (gxc#__make-!procedure _%id221745%_ _%signature221757%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature221747%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj221724%_ _%signature221725%_)
        (let* ((_%$obj221728%_ _%$obj221724%_)
               (_%signature221736%_ _%signature221725%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221728%_
           _%signature221736%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj221691%_ _%signature221693%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221691%_ 'gxc#!procedure::t))
            (let ((_%$obj221698%_ _%$obj221691%_))
              (if (or (not _%signature221693%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221693%_
                         'gxc#!signature::t)))
                  (let ((_%signature221714%_ _%signature221693%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj221698%_
                     _%signature221714%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221693%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj221691%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp222312 (list gxc#!type::t))
            (__tmp222311 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp222312
         '(class)
         __tmp222311
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args221688%_
        (apply make-instance gxc#!class-meta::t _%$args221688%_)))
    (define gxc#!class-meta-class
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class-meta::t 'class)))
    (define gxc#!class-meta-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class-meta::t 'id)))
    (define gxc#!class-meta-class-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class-meta::t 'class)))
    (define gxc#!class-meta-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class-meta::t 'id)))
    (define gxc#&!class-meta-class
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class-meta::t 'class)))
    (define gxc#&!class-meta-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class-meta::t 'id)))
    (define gxc#&!class-meta-class-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class-meta::t 'class)))
    (define gxc#&!class-meta-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class-meta::t 'id)))
    (define gxc#!class::t
      (let ((__tmp222314 (list gxc#!type::t))
            (__tmp222313
             (cons (cons 'struct: '#t)
                   '((equal: . #t) (print: super precedence-list)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp222314
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp222313
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args221685%_
        (apply make-instance gxc#!class::t _%$args221685%_)))
    (define gxc#!class-super
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'super)))
    (define gxc#!class-precedence-list
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'precedence-list)))
    (define gxc#!class-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'slots)))
    (define gxc#!class-fields
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'fields)))
    (define gxc#!class-constructor
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'constructor)))
    (define gxc#!class-struct?
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'struct?)))
    (define gxc#!class-final?
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'final?)))
    (define gxc#!class-system?
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'system?)))
    (define gxc#!class-metaclass
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'metaclass)))
    (define gxc#!class-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'methods)))
    (define gxc#!class-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!class::t 'id)))
    (define gxc#!class-super-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'super)))
    (define gxc#!class-precedence-list-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'precedence-list)))
    (define gxc#!class-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'slots)))
    (define gxc#!class-fields-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'fields)))
    (define gxc#!class-constructor-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'constructor)))
    (define gxc#!class-struct?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'struct?)))
    (define gxc#!class-final?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'final?)))
    (define gxc#!class-system?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'system?)))
    (define gxc#!class-metaclass-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'metaclass)))
    (define gxc#!class-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'methods)))
    (define gxc#!class-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!class::t 'id)))
    (define gxc#&!class-super
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'super)))
    (define gxc#&!class-precedence-list
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'precedence-list)))
    (define gxc#&!class-slots
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'slots)))
    (define gxc#&!class-fields
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'fields)))
    (define gxc#&!class-constructor
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'constructor)))
    (define gxc#&!class-struct?
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'struct?)))
    (define gxc#&!class-final?
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'final?)))
    (define gxc#&!class-system?
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'system?)))
    (define gxc#&!class-metaclass
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'metaclass)))
    (define gxc#&!class-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'methods)))
    (define gxc#&!class-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!class::t 'id)))
    (define gxc#&!class-super-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'super)))
    (define gxc#&!class-precedence-list-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'precedence-list)))
    (define gxc#&!class-slots-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'slots)))
    (define gxc#&!class-fields-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'fields)))
    (define gxc#&!class-constructor-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'constructor)))
    (define gxc#&!class-struct?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'struct?)))
    (define gxc#&!class-final?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'final?)))
    (define gxc#&!class-system?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'system?)))
    (define gxc#&!class-metaclass-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'metaclass)))
    (define gxc#&!class-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'methods)))
    (define gxc#&!class-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!class::t 'id)))
    (define gxc#!predicate::t
      (let ((__tmp222316 (list gxc#!procedure::t))
            (__tmp222315 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp222316
         '()
         __tmp222315
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args221682%_
        (apply make-instance gxc#!predicate::t _%$args221682%_)))
    (define gxc#!predicate-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!predicate::t 'signature)))
    (define gxc#!predicate-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!predicate::t 'id)))
    (define gxc#!predicate-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!predicate::t 'signature)))
    (define gxc#!predicate-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!predicate::t 'id)))
    (define gxc#&!predicate-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!predicate::t 'signature)))
    (define gxc#&!predicate-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!predicate::t 'id)))
    (define gxc#&!predicate-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!predicate::t 'signature)))
    (define gxc#&!predicate-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!predicate::t 'id)))
    (define gxc#__!predicate-signature-set!
      (lambda (_%$obj221661%_ _%signature221662%_)
        (let* ((_%$obj221665%_ _%$obj221661%_)
               (_%signature221673%_ _%signature221662%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221665%_
           _%signature221673%_
           '2
           '#f
           '#f))))
    (define gxc#!predicate-signature-set!
      (lambda (_%$obj221628%_ _%signature221630%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221628%_ 'gxc#!predicate::t))
            (let ((_%$obj221635%_ _%$obj221628%_))
              (if (or (not _%signature221630%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221630%_
                         'gxc#!signature::t)))
                  (let ((_%signature221651%_ _%signature221630%_))
                    (gxc#__!predicate-signature-set!
                     _%$obj221635%_
                     _%signature221651%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221630%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!predicate?
               'value:
               _%$obj221628%_)
              '#!void))))
    (define gxc#!constructor::t
      (let ((__tmp222318 (list gxc#!procedure::t))
            (__tmp222317 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp222318
         '()
         __tmp222317
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args221625%_
        (apply make-instance gxc#!constructor::t _%$args221625%_)))
    (define gxc#!constructor-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!constructor::t 'signature)))
    (define gxc#!constructor-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!constructor::t 'id)))
    (define gxc#!constructor-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!constructor::t 'signature)))
    (define gxc#!constructor-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!constructor::t 'id)))
    (define gxc#&!constructor-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!constructor::t 'signature)))
    (define gxc#&!constructor-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!constructor::t 'id)))
    (define gxc#&!constructor-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!constructor::t 'signature)))
    (define gxc#&!constructor-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!constructor::t 'id)))
    (define gxc#__!constructor-signature-set!
      (lambda (_%$obj221604%_ _%signature221605%_)
        (let* ((_%$obj221608%_ _%$obj221604%_)
               (_%signature221616%_ _%signature221605%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221608%_
           _%signature221616%_
           '2
           '#f
           '#f))))
    (define gxc#!constructor-signature-set!
      (lambda (_%$obj221571%_ _%signature221573%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221571%_ 'gxc#!constructor::t))
            (let ((_%$obj221578%_ _%$obj221571%_))
              (if (or (not _%signature221573%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221573%_
                         'gxc#!signature::t)))
                  (let ((_%signature221594%_ _%signature221573%_))
                    (gxc#__!constructor-signature-set!
                     _%$obj221578%_
                     _%signature221594%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221573%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!constructor?
               'value:
               _%$obj221571%_)
              '#!void))))
    (define gxc#!accessor::t
      (let ((__tmp222320 (list gxc#!procedure::t))
            (__tmp222319 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp222320
         '(slot checked?)
         __tmp222319
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args221568%_
        (apply make-instance gxc#!accessor::t _%$args221568%_)))
    (define gxc#!accessor-slot
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!accessor::t 'slot)))
    (define gxc#!accessor-checked?
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!accessor::t 'checked?)))
    (define gxc#!accessor-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!accessor::t 'signature)))
    (define gxc#!accessor-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!accessor::t 'id)))
    (define gxc#!accessor-slot-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!accessor::t 'slot)))
    (define gxc#!accessor-checked?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!accessor::t 'checked?)))
    (define gxc#!accessor-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!accessor::t 'signature)))
    (define gxc#!accessor-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!accessor::t 'id)))
    (define gxc#&!accessor-slot
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!accessor::t 'slot)))
    (define gxc#&!accessor-checked?
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!accessor::t 'checked?)))
    (define gxc#&!accessor-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!accessor::t 'signature)))
    (define gxc#&!accessor-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!accessor::t 'id)))
    (define gxc#&!accessor-slot-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!accessor::t 'slot)))
    (define gxc#&!accessor-checked?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!accessor::t 'checked?)))
    (define gxc#&!accessor-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!accessor::t 'signature)))
    (define gxc#&!accessor-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!accessor::t 'id)))
    (define gxc#__!accessor-signature-set!
      (lambda (_%$obj221547%_ _%signature221548%_)
        (let* ((_%$obj221551%_ _%$obj221547%_)
               (_%signature221559%_ _%signature221548%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221551%_
           _%signature221559%_
           '2
           '#f
           '#f))))
    (define gxc#!accessor-signature-set!
      (lambda (_%$obj221514%_ _%signature221516%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221514%_ 'gxc#!accessor::t))
            (let ((_%$obj221521%_ _%$obj221514%_))
              (if (or (not _%signature221516%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221516%_
                         'gxc#!signature::t)))
                  (let ((_%signature221537%_ _%signature221516%_))
                    (gxc#__!accessor-signature-set!
                     _%$obj221521%_
                     _%signature221537%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221516%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!accessor?
               'value:
               _%$obj221514%_)
              '#!void))))
    (define gxc#!mutator::t
      (let ((__tmp222322 (list gxc#!procedure::t))
            (__tmp222321 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp222322
         '(slot checked?)
         __tmp222321
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args221511%_
        (apply make-instance gxc#!mutator::t _%$args221511%_)))
    (define gxc#!mutator-slot
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!mutator::t 'slot)))
    (define gxc#!mutator-checked?
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!mutator::t 'checked?)))
    (define gxc#!mutator-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!mutator::t 'signature)))
    (define gxc#!mutator-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!mutator::t 'id)))
    (define gxc#!mutator-slot-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!mutator::t 'slot)))
    (define gxc#!mutator-checked?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!mutator::t 'checked?)))
    (define gxc#!mutator-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!mutator::t 'signature)))
    (define gxc#!mutator-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!mutator::t 'id)))
    (define gxc#&!mutator-slot
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!mutator::t 'slot)))
    (define gxc#&!mutator-checked?
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!mutator::t 'checked?)))
    (define gxc#&!mutator-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!mutator::t 'signature)))
    (define gxc#&!mutator-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!mutator::t 'id)))
    (define gxc#&!mutator-slot-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!mutator::t 'slot)))
    (define gxc#&!mutator-checked?-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!mutator::t 'checked?)))
    (define gxc#&!mutator-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!mutator::t 'signature)))
    (define gxc#&!mutator-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!mutator::t 'id)))
    (define gxc#__!mutator-signature-set!
      (lambda (_%$obj221490%_ _%signature221491%_)
        (let* ((_%$obj221494%_ _%$obj221490%_)
               (_%signature221502%_ _%signature221491%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221494%_
           _%signature221502%_
           '2
           '#f
           '#f))))
    (define gxc#!mutator-signature-set!
      (lambda (_%$obj221457%_ _%signature221459%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221457%_ 'gxc#!mutator::t))
            (let ((_%$obj221464%_ _%$obj221457%_))
              (if (or (not _%signature221459%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221459%_
                         'gxc#!signature::t)))
                  (let ((_%signature221480%_ _%signature221459%_))
                    (gxc#__!mutator-signature-set!
                     _%$obj221464%_
                     _%signature221480%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221459%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!mutator?
               'value:
               _%$obj221457%_)
              '#!void))))
    (define gxc#!interface::t
      (let ((__tmp222324 (list gxc#!type::t))
            (__tmp222323 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp222324
         '(methods)
         __tmp222323
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args221454%_
        (apply make-instance gxc#!interface::t _%$args221454%_)))
    (define gxc#!interface-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!interface::t 'methods)))
    (define gxc#!interface-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!interface::t 'id)))
    (define gxc#!interface-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!interface::t 'methods)))
    (define gxc#!interface-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!interface::t 'id)))
    (define gxc#&!interface-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!interface::t 'methods)))
    (define gxc#&!interface-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!interface::t 'id)))
    (define gxc#&!interface-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!interface::t 'methods)))
    (define gxc#&!interface-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!interface::t 'id)))
    (define gxc#!lambda::t
      (let ((__tmp222326 (list gxc#!procedure::t))
            (__tmp222325 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp222326
         '(arity dispatch inline inline-typedecl)
         __tmp222325
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args221451%_
        (apply make-instance gxc#!lambda::t _%$args221451%_)))
    (define gxc#!lambda-arity
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!lambda::t 'arity)))
    (define gxc#!lambda-dispatch
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!lambda::t 'dispatch)))
    (define gxc#!lambda-inline
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!lambda::t 'inline)))
    (define gxc#!lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!lambda::t 'inline-typedecl)))
    (define gxc#!lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!lambda::t 'signature)))
    (define gxc#!lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!lambda::t 'id)))
    (define gxc#!lambda-arity-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!lambda::t 'arity)))
    (define gxc#!lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!lambda::t 'dispatch)))
    (define gxc#!lambda-inline-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!lambda::t 'inline)))
    (define gxc#!lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!lambda::t 'inline-typedecl)))
    (define gxc#!lambda-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!lambda::t 'signature)))
    (define gxc#!lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!lambda::t 'id)))
    (define gxc#&!lambda-arity
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!lambda::t 'arity)))
    (define gxc#&!lambda-dispatch
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!lambda::t 'dispatch)))
    (define gxc#&!lambda-inline
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!lambda::t 'inline)))
    (define gxc#&!lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!lambda::t
         'inline-typedecl)))
    (define gxc#&!lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!lambda::t 'signature)))
    (define gxc#&!lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!lambda::t 'id)))
    (define gxc#&!lambda-arity-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!lambda::t 'arity)))
    (define gxc#&!lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!lambda::t 'dispatch)))
    (define gxc#&!lambda-inline-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!lambda::t 'inline)))
    (define gxc#&!lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!lambda::t 'inline-typedecl)))
    (define gxc#&!lambda-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!lambda::t 'signature)))
    (define gxc#&!lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!lambda::t 'id)))
    (define gxc#__!lambda-signature-set!
      (lambda (_%$obj221430%_ _%signature221431%_)
        (let* ((_%$obj221434%_ _%$obj221430%_)
               (_%signature221442%_ _%signature221431%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221434%_
           _%signature221442%_
           '2
           '#f
           '#f))))
    (define gxc#!lambda-signature-set!
      (lambda (_%$obj221397%_ _%signature221399%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221397%_ 'gxc#!lambda::t))
            (let ((_%$obj221404%_ _%$obj221397%_))
              (if (or (not _%signature221399%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221399%_
                         'gxc#!signature::t)))
                  (let ((_%signature221420%_ _%signature221399%_))
                    (gxc#__!lambda-signature-set!
                     _%$obj221404%_
                     _%signature221420%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221399%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!lambda?
               'value:
               _%$obj221397%_)
              '#!void))))
    (define gxc#!case-lambda::t
      (let ((__tmp222328 (list gxc#!procedure::t))
            (__tmp222327 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp222328
         '(clauses)
         __tmp222327
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args221394%_
        (apply make-instance gxc#!case-lambda::t _%$args221394%_)))
    (define gxc#!case-lambda-clauses
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!case-lambda::t 'clauses)))
    (define gxc#!case-lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!case-lambda::t 'signature)))
    (define gxc#!case-lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!case-lambda::t 'id)))
    (define gxc#!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!case-lambda::t 'clauses)))
    (define gxc#!case-lambda-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!case-lambda::t 'signature)))
    (define gxc#!case-lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!case-lambda::t 'id)))
    (define gxc#&!case-lambda-clauses
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!case-lambda::t 'clauses)))
    (define gxc#&!case-lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!case-lambda::t 'signature)))
    (define gxc#&!case-lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!case-lambda::t 'id)))
    (define gxc#&!case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!case-lambda::t 'clauses)))
    (define gxc#&!case-lambda-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!case-lambda::t 'signature)))
    (define gxc#&!case-lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!case-lambda::t 'id)))
    (define gxc#__!case-lambda-signature-set!
      (lambda (_%$obj221373%_ _%signature221374%_)
        (let* ((_%$obj221377%_ _%$obj221373%_)
               (_%signature221385%_ _%signature221374%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221377%_
           _%signature221385%_
           '2
           '#f
           '#f))))
    (define gxc#!case-lambda-signature-set!
      (lambda (_%$obj221340%_ _%signature221342%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221340%_ 'gxc#!case-lambda::t))
            (let ((_%$obj221347%_ _%$obj221340%_))
              (if (or (not _%signature221342%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221342%_
                         'gxc#!signature::t)))
                  (let ((_%signature221363%_ _%signature221342%_))
                    (gxc#__!case-lambda-signature-set!
                     _%$obj221347%_
                     _%signature221363%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221342%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!case-lambda?
               'value:
               _%$obj221340%_)
              '#!void))))
    (define gxc#!kw-lambda::t
      (let ((__tmp222330 (list gxc#!procedure::t))
            (__tmp222329 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp222330
         '(table dispatch)
         __tmp222329
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args221337%_
        (apply make-instance gxc#!kw-lambda::t _%$args221337%_)))
    (define gxc#!kw-lambda-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!kw-lambda::t 'table)))
    (define gxc#!kw-lambda-dispatch
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!kw-lambda::t 'dispatch)))
    (define gxc#!kw-lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!kw-lambda::t 'signature)))
    (define gxc#!kw-lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!kw-lambda::t 'id)))
    (define gxc#!kw-lambda-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!kw-lambda::t 'table)))
    (define gxc#!kw-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!kw-lambda::t 'dispatch)))
    (define gxc#!kw-lambda-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!kw-lambda::t 'signature)))
    (define gxc#!kw-lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!kw-lambda::t 'id)))
    (define gxc#&!kw-lambda-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'table)))
    (define gxc#&!kw-lambda-dispatch
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'dispatch)))
    (define gxc#&!kw-lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'signature)))
    (define gxc#&!kw-lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!kw-lambda::t 'id)))
    (define gxc#&!kw-lambda-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'table)))
    (define gxc#&!kw-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'dispatch)))
    (define gxc#&!kw-lambda-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'signature)))
    (define gxc#&!kw-lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!kw-lambda::t 'id)))
    (define gxc#__!kw-lambda-signature-set!
      (lambda (_%$obj221316%_ _%signature221317%_)
        (let* ((_%$obj221320%_ _%$obj221316%_)
               (_%signature221328%_ _%signature221317%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221320%_
           _%signature221328%_
           '2
           '#f
           '#f))))
    (define gxc#!kw-lambda-signature-set!
      (lambda (_%$obj221283%_ _%signature221285%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221283%_ 'gxc#!kw-lambda::t))
            (let ((_%$obj221290%_ _%$obj221283%_))
              (if (or (not _%signature221285%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221285%_
                         'gxc#!signature::t)))
                  (let ((_%signature221306%_ _%signature221285%_))
                    (gxc#__!kw-lambda-signature-set!
                     _%$obj221290%_
                     _%signature221306%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221285%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!kw-lambda?
               'value:
               _%$obj221283%_)
              '#!void))))
    (define gxc#!kw-lambda-primary::t
      (let ((__tmp222332 (list gxc#!procedure::t))
            (__tmp222331 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp222332
         '(keys main)
         __tmp222331
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args221280%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args221280%_)))
    (define gxc#!kw-lambda-primary-keys
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#!kw-lambda-primary-main
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!kw-lambda-primary::t 'main)))
    (define gxc#!kw-lambda-primary-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!kw-lambda-primary::t 'signature)))
    (define gxc#!kw-lambda-primary-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!kw-lambda-primary::t 'id)))
    (define gxc#!kw-lambda-primary-keys-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#!kw-lambda-primary-main-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!kw-lambda-primary::t 'main)))
    (define gxc#!kw-lambda-primary-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!kw-lambda-primary::t 'signature)))
    (define gxc#!kw-lambda-primary-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!kw-lambda-primary::t 'id)))
    (define gxc#&!kw-lambda-primary-keys
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!kw-lambda-primary::t
         'keys)))
    (define gxc#&!kw-lambda-primary-main
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!kw-lambda-primary::t
         'main)))
    (define gxc#&!kw-lambda-primary-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!kw-lambda-primary::t
         'signature)))
    (define gxc#&!kw-lambda-primary-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!kw-lambda-primary::t 'id)))
    (define gxc#&!kw-lambda-primary-keys-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'keys)))
    (define gxc#&!kw-lambda-primary-main-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'main)))
    (define gxc#&!kw-lambda-primary-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!kw-lambda-primary::t
         'signature)))
    (define gxc#&!kw-lambda-primary-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!kw-lambda-primary::t 'id)))
    (define gxc#__!kw-lambda-primary-signature-set!
      (lambda (_%$obj221259%_ _%signature221260%_)
        (let* ((_%$obj221263%_ _%$obj221259%_)
               (_%signature221271%_ _%signature221260%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221263%_
           _%signature221271%_
           '2
           '#f
           '#f))))
    (define gxc#!kw-lambda-primary-signature-set!
      (lambda (_%$obj221226%_ _%signature221228%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj221226%_
               'gxc#!kw-lambda-primary::t))
            (let ((_%$obj221233%_ _%$obj221226%_))
              (if (or (not _%signature221228%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221228%_
                         'gxc#!signature::t)))
                  (let ((_%signature221249%_ _%signature221228%_))
                    (gxc#__!kw-lambda-primary-signature-set!
                     _%$obj221233%_
                     _%signature221249%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221228%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!kw-lambda-primary?
               'value:
               _%$obj221226%_)
              '#!void))))
    (define gxc#!primitive::t
      (let ((__tmp222333 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp222333
         '()
         '((equal: . #t))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args221223%_
        (apply make-instance gxc#!primitive::t _%$args221223%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp222335 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp222334 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp222335
         '()
         __tmp222334
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args221220%_
        (apply make-instance gxc#!primitive-predicate::t _%$args221220%_)))
    (define gxc#!primitive-predicate-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-predicate::t 'signature)))
    (define gxc#!primitive-predicate-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-predicate::t 'id)))
    (define gxc#!primitive-predicate-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-predicate::t 'signature)))
    (define gxc#!primitive-predicate-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-predicate::t 'id)))
    (define gxc#&!primitive-predicate-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-predicate::t
         'signature)))
    (define gxc#&!primitive-predicate-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-predicate::t
         'id)))
    (define gxc#&!primitive-predicate-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!primitive-predicate::t
         'signature)))
    (define gxc#&!primitive-predicate-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!primitive-predicate::t 'id)))
    (define gxc#__!primitive-predicate-signature-set!
      (lambda (_%$obj221199%_ _%signature221200%_)
        (let* ((_%$obj221203%_ _%$obj221199%_)
               (_%signature221211%_ _%signature221200%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221203%_
           _%signature221211%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-predicate-signature-set!
      (lambda (_%$obj221166%_ _%signature221168%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj221166%_
               'gxc#!primitive-predicate::t))
            (let ((_%$obj221173%_ _%$obj221166%_))
              (if (or (not _%signature221168%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221168%_
                         'gxc#!signature::t)))
                  (let ((_%signature221189%_ _%signature221168%_))
                    (gxc#__!primitive-predicate-signature-set!
                     _%$obj221173%_
                     _%signature221189%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221168%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-predicate?
               'value:
               _%$obj221166%_)
              '#!void))))
    (define gxc#!primitive-lambda::t
      (let ((__tmp222337 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp222336 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp222337
         '()
         __tmp222336
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args221163%_
        (apply make-instance gxc#!primitive-lambda::t _%$args221163%_)))
    (define gxc#!primitive-lambda-arity
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-lambda::t 'arity)))
    (define gxc#!primitive-lambda-dispatch
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-lambda::t 'dispatch)))
    (define gxc#!primitive-lambda-inline
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-lambda::t 'inline)))
    (define gxc#!primitive-lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor
         gxc#!primitive-lambda::t
         'inline-typedecl)))
    (define gxc#!primitive-lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-lambda::t 'signature)))
    (define gxc#!primitive-lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-lambda::t 'id)))
    (define gxc#!primitive-lambda-arity-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-lambda::t 'arity)))
    (define gxc#!primitive-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-lambda::t 'dispatch)))
    (define gxc#!primitive-lambda-inline-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-lambda::t 'inline)))
    (define gxc#!primitive-lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-lambda::t 'inline-typedecl)))
    (define gxc#!primitive-lambda-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-lambda::t 'signature)))
    (define gxc#!primitive-lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-lambda::t 'id)))
    (define gxc#&!primitive-lambda-arity
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-lambda::t
         'arity)))
    (define gxc#&!primitive-lambda-dispatch
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-lambda::t
         'dispatch)))
    (define gxc#&!primitive-lambda-inline
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-lambda::t
         'inline)))
    (define gxc#&!primitive-lambda-inline-typedecl
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-lambda::t
         'inline-typedecl)))
    (define gxc#&!primitive-lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-lambda::t
         'signature)))
    (define gxc#&!primitive-lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!primitive-lambda::t 'id)))
    (define gxc#&!primitive-lambda-arity-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!primitive-lambda::t 'arity)))
    (define gxc#&!primitive-lambda-dispatch-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!primitive-lambda::t
         'dispatch)))
    (define gxc#&!primitive-lambda-inline-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!primitive-lambda::t
         'inline)))
    (define gxc#&!primitive-lambda-inline-typedecl-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!primitive-lambda::t
         'inline-typedecl)))
    (define gxc#&!primitive-lambda-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!primitive-lambda::t
         'signature)))
    (define gxc#&!primitive-lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!primitive-lambda::t 'id)))
    (define gxc#__!primitive-lambda-signature-set!
      (lambda (_%$obj221142%_ _%signature221143%_)
        (let* ((_%$obj221146%_ _%$obj221142%_)
               (_%signature221154%_ _%signature221143%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221146%_
           _%signature221154%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-lambda-signature-set!
      (lambda (_%$obj221109%_ _%signature221111%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj221109%_
               'gxc#!primitive-lambda::t))
            (let ((_%$obj221116%_ _%$obj221109%_))
              (if (or (not _%signature221111%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221111%_
                         'gxc#!signature::t)))
                  (let ((_%signature221132%_ _%signature221111%_))
                    (gxc#__!primitive-lambda-signature-set!
                     _%$obj221116%_
                     _%signature221132%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221111%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-lambda?
               'value:
               _%$obj221109%_)
              '#!void))))
    (define gxc#!primitive-case-lambda::t
      (let ((__tmp222339 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp222338 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp222339
         '()
         __tmp222338
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args221106%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args221106%_)))
    (define gxc#!primitive-case-lambda-clauses
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-case-lambda::t 'clauses)))
    (define gxc#!primitive-case-lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-case-lambda::t 'signature)))
    (define gxc#!primitive-case-lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!primitive-case-lambda::t 'id)))
    (define gxc#!primitive-case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-case-lambda::t 'clauses)))
    (define gxc#!primitive-case-lambda-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-case-lambda::t 'signature)))
    (define gxc#!primitive-case-lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!primitive-case-lambda::t 'id)))
    (define gxc#&!primitive-case-lambda-clauses
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-case-lambda::t
         'clauses)))
    (define gxc#&!primitive-case-lambda-signature
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-case-lambda::t
         'signature)))
    (define gxc#&!primitive-case-lambda-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         gxc#!primitive-case-lambda::t
         'id)))
    (define gxc#&!primitive-case-lambda-clauses-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!primitive-case-lambda::t
         'clauses)))
    (define gxc#&!primitive-case-lambda-unchecked-signature-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!primitive-case-lambda::t
         'signature)))
    (define gxc#&!primitive-case-lambda-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         gxc#!primitive-case-lambda::t
         'id)))
    (define gxc#__!primitive-case-lambda-signature-set!
      (lambda (_%$obj221085%_ _%signature221086%_)
        (let* ((_%$obj221089%_ _%$obj221085%_)
               (_%signature221097%_ _%signature221086%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221089%_
           _%signature221097%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-case-lambda-signature-set!
      (lambda (_%$obj221052%_ _%signature221054%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj221052%_
               'gxc#!primitive-case-lambda::t))
            (let ((_%$obj221059%_ _%$obj221052%_))
              (if (or (not _%signature221054%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221054%_
                         'gxc#!signature::t)))
                  (let ((_%signature221075%_ _%signature221054%_))
                    (gxc#__!primitive-case-lambda-signature-set!
                     _%$obj221059%_
                     _%signature221075%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221054%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-case-lambda?
               'value:
               _%$obj221052%_)
              '#!void))))
    (define gxc#!abort:::init!
      (lambda (_%self221039%_)
        (let ((_%self221042%_ _%self221039%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self221042%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self220902%_ _%klass220903%_)
        (let ((_%self220906%_ _%self220902%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self220906%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220906%_
             _%klass220903%_
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!class-meta::t
       ':init!
       gxc#!class-meta:::init!
       '#f))
    (define gxc#!class:::init!__0
      (lambda (_%self220592%_
               _%id220593%_
               _%super220594%_
               _%slots220595%_
               _%ctor-method220596%_
               _%struct?220597%_
               _%final?220598%_
               _%system?220599%_
               _%metaclass220600%_)
        (let ((_%self220603%_ _%self220592%_))
          (let _%lp220614%_ ((_%rest220616%_ _%super220594%_))
            (let* ((_%$%rest220617220625%_ _%rest220616%_)
                   (_%$%else220619220633%_ (lambda () '#!void))
                   (_%$%K220621220639%_
                    (lambda (_%rest220636%_ _%super-id220637%_)
                      (if (let ((__tmp222340
                                 (gxc#optimizer-resolve-class
                                  (list '!class _%id220593%_)
                                  _%super-id220637%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp222340 '8 '#f '#f))
                          (let ((__tmp222341 (list '!class _%id220593%_)))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp222341
                             _%super-id220637%_))
                          '#!void)
                      (_%lp220614%_ _%rest220636%_))))
              (if (pair? _%$%rest220617220625%_)
                  (let ((_%$%hd220622220642%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest220617220625%_)))
                        (_%$%tl220623220644%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest220617220625%_))))
                    (let* ((_%super-id220647%_ _%$%hd220622220642%_)
                           (_%rest220649%_ _%$%tl220623220644%_))
                      (_%$%K220621220639%_ _%rest220649%_ _%super-id220647%_)))
                  '#!void)))
          (let* ((_%ctor-method220700%_
                  (let ((_%$e220651%_ _%ctor-method220596%_))
                    (if _%$e220651%_
                        _%$e220651%_
                        (let _%lp220654%_ ((_%rest220656%_ _%super220594%_)
                                           (_%method220657%_ '#f))
                          (let* ((_%$%rest220658220666%_ _%rest220656%_)
                                 (_%$%else220660220674%_
                                  (lambda () _%method220657%_))
                                 (_%$%K220662220688%_
                                  (lambda (_%rest220677%_ _%super-id220678%_)
                                    (let* ((_%klass220680%_
                                            (gxc#optimizer-resolve-class
                                             (list '!class _%id220593%_)
                                             _%super-id220678%_))
                                           (_%$e220682%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass220680%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e220682%_
                                          (if _%method220657%_
                                              (if (eq? _%$e220682%_
                                                       _%method220657%_)
                                                  (_%lp220654%_
                                                   _%rest220677%_
                                                   _%$e220682%_)
                                                  (let ((__tmp222342
                                                         (list '!class
                                                               _%id220593%_)))
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"conflicting implicit constructor methods"
                                                     __tmp222342
                                                     _%method220657%_
                                                     _%$e220682%_)))
                                              (_%lp220654%_
                                               _%rest220677%_
                                               _%$e220682%_))
                                          (_%lp220654%_
                                           _%rest220677%_
                                           _%method220657%_))))))
                            (if (pair? _%$%rest220658220666%_)
                                (let ((_%$%hd220663220691%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest220658220666%_)))
                                      (_%$%tl220664220693%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest220658220666%_))))
                                  (let* ((_%super-id220696%_
                                          _%$%hd220663220691%_)
                                         (_%rest220698%_ _%$%tl220664220693%_))
                                    (_%$%K220662220688%_
                                     _%rest220698%_
                                     _%super-id220696%_)))
                                (_%$%else220660220674%_)))))))
                 (_g222343_
                  (let ((__tmp222347
                         (lambda (_%klass-id220702%_)
                           (cons _%klass-id220702%_
                                 (let ((__tmp222348
                                        (gxc#optimizer-resolve-class
                                         (list '!class _%id220593%_)
                                         _%klass-id220702%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp222348
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp222345
                         (lambda (_%klass-id220704%_)
                           (let ((__tmp222346
                                  (gxc#optimizer-resolve-class
                                   (list '!class _%id220593%_)
                                   _%klass-id220704%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp222346
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp222347
                     __tmp222345
                     eq?
                     identity
                     '()
                     _%super220594%_))))
            (begin
              (let ((_g222344_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g222343_)
                           (##values-length _g222343_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g222344_ 2)))
                    (error "Context expects 2 values" _g222344_)))
              (let ((_%precedence-list220706%_
                     (let () (declare (not safe)) (##values-ref _g222343_ 0)))
                    (_%base-struct220707%_
                     (let () (declare (not safe)) (##values-ref _g222343_ 1))))
                (let* ((_%precedence-list220751%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id220593%_ '(t object class)))
                            _%precedence-list220706%_
                            (if (memq 'object::t _%precedence-list220706%_)
                                _%precedence-list220706%_
                                (if _%system?220599%_
                                    (if (memq 't::t _%precedence-list220706%_)
                                        _%precedence-list220706%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list220706%_
                                           '(t::t))))
                                    (let _%loop220713%_ ((_%tail220715%_
                                                          _%precedence-list220706%_)
                                                         (_%head220716%_ '()))
                                      (let* ((_%$%tail220717220725%_
                                              _%tail220715%_)
                                             (_%$%else220719220733%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head220716%_))))
                                             (_%$%K220721220739%_
                                              (lambda (_%rest220736%_
                                                       _%hd220737%_)
                                                (if (eq? _%hd220737%_ 't::t)
                                                    (let ((__tmp222349
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail220715%_)))
              (declare (not safe))
              (foldl__0 cons __tmp222349 _%head220716%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop220713%_
                                                     _%rest220736%_
                                                     (cons _%hd220737%_
                                                           _%head220716%_))))))
                                        (if (pair? _%$%tail220717220725%_)
                                            (let ((_%$%hd220722220742%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tail220717220725%_)))
                                                  (_%$%tl220723220744%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tail220717220725%_))))
                                              (let* ((_%hd220747%_
                                                      _%$%hd220722220742%_)
                                                     (_%rest220749%_
                                                      _%$%tl220723220744%_))
                                                (_%$%K220721220739%_
                                                 _%rest220749%_
                                                 _%hd220747%_)))
                                            (_%$%else220719220733%_))))))))
                       (_%fields220753%_
                        (gxc#compute-class-fields
                         (list '!class _%id220593%_)
                         _%precedence-list220751%_
                         _%slots220595%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220603%_
                     _%id220593%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220603%_
                     _%super220594%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220603%_
                     _%precedence-list220751%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220603%_
                     _%slots220595%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220603%_
                     _%fields220753%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220603%_
                     _%ctor-method220700%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220603%_
                     _%struct?220597%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220603%_
                     _%final?220598%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220603%_
                     _%metaclass220600%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self220756%_
               _%id220757%_
               _%super220758%_
               _%precedence-list220759%_
               _%slots220760%_
               _%fields220761%_
               _%constructor220762%_
               _%struct?220763%_
               _%final?220764%_
               _%system?220765%_
               _%metaclass220766%_
               _%methods220767%_)
        (let ((_%self220770%_ _%self220756%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220770%_
             _%id220757%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220770%_
             _%super220758%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220770%_
             _%precedence-list220759%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220770%_
             _%slots220760%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220770%_
             _%fields220761%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220770%_
             _%constructor220762%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220770%_
             _%struct?220763%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220770%_
             _%final?220764%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220770%_
             _%metaclass220766%_
             '10
             '#f
             '#f))
          (if _%methods220767%_
              (let ((__tmp222350
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods220767%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self220770%_
                 __tmp222350
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g222351_
        (let ((_g222352_ (let () (declare (not safe)) (##length _g222351_))))
          (cond ((let () (declare (not safe)) (##fx= _g222352_ 9))
                 (apply gxc#!class:::init!__0 _g222351_))
                ((let () (declare (not safe)) (##fx= _g222352_ 12))
                 (apply gxc#!class:::init!__1 _g222351_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g222351_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where220461%_
               _%precedence-list220462%_
               _%direct-slots220463%_)
        (let ((__tmp222354
               (lambda (_%mixin220465%_)
                 (let ((__tmp222355
                        (gxc#optimizer-resolve-class
                         _%where220461%_
                         _%mixin220465%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp222355 '5 '#f '#f))))
              (__tmp222353
               (lambda (_%slot-list220467%_ _%slot-table220468%_)
                 (cdr _%slot-list220467%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list220462%_
           _%direct-slots220463%_
           __tmp222354
           __tmp222353))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass220420%_ _%slot220421%_)
        (let _%lp220423%_ ((_%rest220425%_
                            (##structure-ref
                             _%klass220420%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset220426%_ '1))
          (let* ((_%$%rest220427220435%_ _%rest220425%_)
                 (_%$%else220429220443%_
                  (lambda ()
                    (let ((__tmp222357
                           (##structure-ref
                            _%klass220420%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp222356
                           (##structure-ref
                            _%klass220420%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp222357
                       __tmp222356
                       _%slot220421%_))))
                 (_%$%K220431220449%_
                  (lambda (_%rest220446%_ _%s220447%_)
                    (if (eq? _%s220447%_ _%slot220421%_)
                        _%offset220426%_
                        (_%lp220423%_
                         _%rest220446%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset220426%_ '1)))))))
            (if (pair? _%$%rest220427220435%_)
                (let ((_%$%hd220432220452%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest220427220435%_)))
                      (_%$%tl220433220454%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest220427220435%_))))
                  (let* ((_%s220457%_ _%$%hd220432220452%_)
                         (_%rest220459%_ _%$%tl220433220454%_))
                    (_%$%K220431220449%_ _%rest220459%_ _%s220457%_)))
                (_%$%else220429220443%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass220378%_ _%slot220379%_)
        (if (gxc#!class-struct-slot? _%klass220378%_ _%slot220379%_)
            _%klass220378%_
            (let _%lp220381%_ ((_%rest220383%_
                                (##structure-ref
                                 _%klass220378%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%$%rest220384220392%_ _%rest220383%_)
                     (_%$%else220386220400%_ (lambda () '#f))
                     (_%$%K220388220408%_
                      (lambda (_%rest220403%_ _%super220404%_)
                        (let ((_%super-class220406%_
                               (gxc#optimizer-resolve-class
                                (list '!class-slot-find-struct
                                      (##structure-ref
                                       _%klass220378%_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      _%slot220379%_)
                                _%super220404%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class220406%_
                               _%slot220379%_)
                              _%super-class220406%_
                              (_%lp220381%_ _%rest220403%_))))))
                (if (pair? _%$%rest220384220392%_)
                    (let ((_%$%hd220389220411%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest220384220392%_)))
                          (_%$%tl220390220413%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest220384220392%_))))
                      (let* ((_%super220416%_ _%$%hd220389220411%_)
                             (_%rest220418%_ _%$%tl220390220413%_))
                        (_%$%K220388220408%_ _%rest220418%_ _%super220416%_)))
                    (_%$%else220386220400%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass220375%_ _%slot220376%_)
        (if (##structure-ref _%klass220375%_ '7 gxc#!class::t '#f)
            (memq _%slot220376%_
                  (##structure-ref _%klass220375%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self220321%_ _%id220322%_)
        (let ((_%self220325%_ _%self220321%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220325%_
             _%id220322%_
             '1
             '#f
             '#f))
          (let* ((_%$obj220336%_ _%self220325%_)
                 (_%signature220339%_
                  (let ((__obj222288
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#!signature::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222288
                       'boolean::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222288
                       '(pure predicate)
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222288
                       '(t::t)
                       '3
                       '#f
                       '#f))
                    __obj222288))
                 (_%$obj220344%_ _%$obj220336%_))
            (if (or (not _%signature220339%_) '#t)
                (let ((_%signature220365%_ _%signature220339%_))
                  (gxc#__!predicate-signature-set!
                   _%$obj220344%_
                   _%signature220365%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature220339%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self220145%_ _%id220146%_)
        (let ((_%self220149%_ _%self220145%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220149%_
             _%id220146%_
             '1
             '#f
             '#f))
          (let* ((_%$obj220160%_ _%self220149%_)
                 (_%signature220163%_
                  (let ((__obj222289
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#!signature::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222289
                       _%id220146%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222289
                       '(alloc)
                       '2
                       '#f
                       '#f))
                    __obj222289))
                 (_%$obj220168%_ _%$obj220160%_))
            (if (or (not _%signature220163%_) '#t)
                (let ((_%signature220189%_ _%signature220163%_))
                  (gxc#__!constructor-signature-set!
                   _%$obj220168%_
                   _%signature220189%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature220163%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       ':init!
       gxc#!constructor:::init!
       '#f))
    (define gxc#!accessor:::init!
      (lambda (_%self219967%_ _%id219968%_ _%slot219969%_ _%checked?219970%_)
        (let ((_%self219973%_ _%self219967%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219973%_
             _%id219968%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219973%_
             _%slot219969%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219973%_
             _%checked?219970%_
             '4
             '#f
             '#f))
          (let* ((_%$obj219984%_ _%self219973%_)
                 (_%signature219987%_
                  (let ((__obj222290
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#!signature::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222290
                       't::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222290
                       '(pure)
                       '2
                       '#f
                       '#f))
                    (let ((__tmp222358 (cons _%id219968%_ '())))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222290
                       __tmp222358
                       '3
                       '#f
                       '#f))
                    __obj222290))
                 (_%$obj219992%_ _%$obj219984%_))
            (if (or (not _%signature219987%_) '#t)
                (let ((_%signature220013%_ _%signature219987%_))
                  (gxc#__!accessor-signature-set!
                   _%$obj219992%_
                   _%signature220013%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature219987%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self219789%_ _%id219790%_ _%slot219791%_ _%checked?219792%_)
        (let ((_%self219795%_ _%self219789%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219795%_
             _%id219790%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219795%_
             _%slot219791%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219795%_
             _%checked?219792%_
             '4
             '#f
             '#f))
          (let* ((_%$obj219806%_ _%self219795%_)
                 (_%signature219809%_
                  (let ((__obj222291
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#!signature::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222291
                       'void::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222291
                       '(mut)
                       '2
                       '#f
                       '#f))
                    (let ((__tmp222359 (cons _%id219790%_ (cons 't::t '()))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222291
                       __tmp222359
                       '3
                       '#f
                       '#f))
                    __obj222291))
                 (_%$obj219814%_ _%$obj219806%_))
            (if (or (not _%signature219809%_) '#t)
                (let ((_%signature219835%_ _%signature219809%_))
                  (gxc#__!mutator-signature-set!
                   _%$obj219814%_
                   _%signature219835%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature219809%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords219594%_
               _%$%signature219591219595%_
               _%self219596%_
               _%arity219597%_
               _%dispatch219598%_)
        (let* ((_%signature219600%_
                (if (eq? _%$%signature219591219595%_ absent-value)
                    '#f
                    _%$%signature219591219595%_))
               (_%self219603%_ _%self219596%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self219603%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219603%_
             _%arity219597%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219603%_
             _%dispatch219598%_
             '4
             '#f
             '#f))
          (let* ((_%$obj219615%_ _%self219603%_)
                 (_%signature219618%_ _%signature219600%_)
                 (_%$obj219623%_ _%$obj219615%_))
            (if (or (not _%signature219618%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%signature219618%_
                       'gxc#!signature::t)))
                (let ((_%signature219644%_ _%signature219618%_))
                  (gxc#__!lambda-signature-set!
                   _%$obj219623%_
                   _%signature219644%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature219618%_)
                  '#!void))))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords219657%_ . _%args219658%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords219657%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords219657%_
                  'signature:
                  absent-value))
               _%args219658%_)))
    (define gxc#!lambda:::init!
      (lambda _%$%args219592219664%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%$%args219592219664%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords219396%_
               _%$%signature219393219397%_
               _%self219398%_
               _%clauses219399%_)
        (let* ((_%signature219401%_
                (if (eq? _%$%signature219393219397%_ absent-value)
                    '#f
                    _%$%signature219393219397%_))
               (_%self219404%_ _%self219398%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self219404%_ 'procedure '1 '#f '#f))
          (let* ((_%$obj219416%_ _%self219404%_)
                 (_%signature219419%_ _%signature219401%_)
                 (_%$obj219424%_ _%$obj219416%_))
            (if (or (not _%signature219419%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%signature219419%_
                       'gxc#!signature::t)))
                (let ((_%signature219445%_ _%signature219419%_))
                  (gxc#__!case-lambda-signature-set!
                   _%$obj219424%_
                   _%signature219445%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature219419%_)
                  '#!void)))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219404%_
             _%clauses219399%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords219458%_ . _%args219459%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords219458%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords219458%_
                  'signature:
                  absent-value))
               _%args219459%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%$%args219394219465%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%$%args219394219465%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self219254%_ _%tab219255%_ _%dispatch219256%_)
        (let ((_%self219259%_ _%self219254%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self219259%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219259%_
             _%tab219255%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219259%_
             _%dispatch219256%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self219116%_ _%keys219117%_ _%main219118%_)
        (let ((_%self219121%_ _%self219116%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self219121%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219121%_
             _%keys219117%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219121%_
             _%main219118%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       ':init!
       gxc#!kw-lambda-primary:::init!
       '#f))
    (define gxc#!primitive-lambda:::init! gxc#!lambda:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-lambda::t
       ':init!
       gxc#!primitive-lambda:::init!
       '#f))
    (define gxc#!primitive-case-lambda:::init! gxc#!case-lambda:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-case-lambda::t
       ':init!
       gxc#!primitive-case-lambda:::init!
       '#f))
    (define gxc#!primitive-predicate:::init!
      (lambda (_%self218696%_ _%id218697%_)
        (let ((_%self218700%_ _%self218696%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218700%_
             _%id218697%_
             '1
             '#f
             '#f))
          (let* ((_%$obj218711%_ _%self218700%_)
                 (_%signature218714%_
                  (let ((__obj222292
                         (let ()
                           (declare (not safe))
                           (##structure
                            gxc#!signature::t
                            '#f
                            '#f
                            '#f
                            '#f
                            '#f))))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222292
                       'boolean::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222292
                       '(pure)
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222292
                       '(t::t)
                       '3
                       '#f
                       '#f))
                    __obj222292))
                 (_%$obj218719%_ _%$obj218711%_))
            (if (or (not _%signature218714%_) '#t)
                (let ((_%signature218740%_ _%signature218714%_))
                  (gxc#__!primitive-predicate-signature-set!
                   _%$obj218719%_
                   _%signature218740%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature218714%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       ':init!
       gxc#!primitive-predicate:::init!
       '#f))
    (define gxc#!class-method-table
      (lambda (_%klass218566%_)
        (let ((_%$e218568%_
               (##structure-ref _%klass218566%_ '11 gxc#!class::t '#f)))
          (if _%$e218568%_
              _%$e218568%_
              (let ((_%tab218572%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass218566%_
                 _%tab218572%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab218572%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass218558%_ _%method218559%_)
        (let ((_%$%tab218560218562%_
               (##structure-ref _%klass218558%_ '11 gxc#!class::t '#f)))
          (if _%$%tab218560218562%_
              (let ((_%tab218564%_ _%$%tab218560218562%_))
                (declare (not safe))
                (hash-get _%tab218564%_ _%method218559%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a218543%_ _%type-b218544%_)
        (if _%type-a218543%_
            (if _%type-b218544%_
                (let ((_%$e218546%_ (eq? _%type-a218543%_ _%type-b218544%_)))
                  (if _%$e218546%_
                      _%$e218546%_
                      (let ((_%$e218549%_
                             (eq? (##structure-ref
                                   _%type-b218544%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e218549%_
                            _%$e218549%_
                            (let ((_%$e218552%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a218543%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b218544%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e218552%_
                                  _%$e218552%_
                                  (let ((_%$e218555%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a218543%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b218544%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a218543%_
                                                  _%type-b218544%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e218555%_
                                        _%$e218555%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a218543%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b218544%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a218494%_ _%klass-b218495%_)
        (let ((_%$e218497%_
               (eq? (##structure-ref _%klass-a218494%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b218495%_ '1 gxc#!type::t '#f))))
          (if _%$e218497%_
              _%$e218497%_
              (let ((_%klass-id-b218500%_
                     (##structure-ref _%klass-b218495%_ '1 gxc#!type::t '#f))
                    (_%precedence-list218501%_
                     (##structure-ref _%klass-a218494%_ '3 gxc#!class::t '#f)))
                (let _%loop218503%_ ((_%rest218505%_
                                      _%precedence-list218501%_))
                  (let* ((_%$%rest218506218514%_ _%rest218505%_)
                         (_%$%else218508218522%_ (lambda () '#f))
                         (_%$%K218510218531%_
                          (lambda (_%rest218525%_ _%klass-name218526%_)
                            (let ((_%$e218528%_
                                   (eq? (let ((__tmp222360
                                               (gxc#optimizer-resolve-class
                                                (list 'subclass?
                                                      _%klass-a218494%_
                                                      _%klass-b218495%_)
                                                _%klass-name218526%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp222360
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b218500%_)))
                              (if _%$e218528%_
                                  _%$e218528%_
                                  (_%loop218503%_ _%rest218525%_))))))
                    (if (pair? _%$%rest218506218514%_)
                        (let ((_%$%hd218511218534%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest218506218514%_)))
                              (_%$%tl218512218536%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest218506218514%_))))
                          (let* ((_%klass-name218539%_ _%$%hd218511218534%_)
                                 (_%rest218541%_ _%$%tl218512218536%_))
                            (_%$%K218510218531%_
                             _%rest218541%_
                             _%klass-name218539%_)))
                        (_%$%else218508218522%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type218492%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type218492%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type218492%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc218481%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc218481%_ 'gxc#!procedure::t))
            (let ((_%proc218484%_ _%proc218481%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc218484%_ '2 '#f '#f))
                  (let ((__tmp222361
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc218484%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp222361 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@365.11-365.15"
               'contract:
               '!procedure?
               'value:
               _%proc218481%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym218463%_ _%type218464%_ _%local?218465%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type218464%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym218463%_
                     _%type218464%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym218463%_ '" " _%type218464%_))
        (let ((_%table218467%_
               (if _%local?218465%_
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-local-type))
                   (##structure-ref
                    (let ()
                      (declare (not safe))
                      (gxc#current-compile-optimizer-info))
                    '1
                    gxc#optimizer-info::t
                    '#f))))
          (declare (not safe))
          (hash-put! _%table218467%_ _%sym218463%_ _%type218464%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym218472%_ _%type218473%_)
        (let ((_%local?218475%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym218472%_
           _%type218473%_
           _%local?218475%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g222362_
        (let ((_g222363_ (let () (declare (not safe)) (##length _g222362_))))
          (cond ((let () (declare (not safe)) (##fx= _g222363_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g222362_))
                ((let () (declare (not safe)) (##fx= _g222363_ 3))
                 (apply gxc#optimizer-declare-type!__% _g222362_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g222362_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym218457%_ _%type218458%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type218458%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym218457%_
                     _%type218458%_)))
        (let ((_%table218460%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp222364
                 (let () (declare (not safe)) (struct->list _%type218458%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym218457%_ '" " __tmp222364))
          (let ()
            (declare (not safe))
            (hash-put! _%table218460%_ _%sym218457%_ _%type218458%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table218460%_ _%type218458%_ _%sym218457%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym218452%_ _%type218453%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type218453%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym218452%_
                     _%type218453%_)))
        (let ((_%table218455%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table218455%_ _%sym218452%_))
              '#!void
              (begin
                (let ((__tmp222365
                       (let ()
                         (declare (not safe))
                         (struct->list _%type218453%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym218452%_
                   '" "
                   __tmp222365))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table218455%_ _%sym218452%_ _%type218453%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table218455%_
                   _%type218453%_
                   _%sym218452%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym218450%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym218450%_))
        (let ((__tmp222366
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp222366 _%sym218450%_))
        (let ((__tmp222367
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp222367 _%sym218450%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t218418%_
               _%method218419%_
               _%sym218420%_
               _%rebind?218421%_)
        (let ((__tmp222368
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp222368 _%sym218420%_ '#t))
        (let ((_%klass218423%_ (gxc#optimizer-lookup-class _%type-t218418%_)))
          (if _%klass218423%_
              (let* ((_%vtab218425%_ (gxc#!class-method-table _%klass218423%_))
                     (_%$e218427%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab218425%_ _%method218419%_))))
                (if _%$e218427%_
                    (if _%rebind?218421%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose
                             '"declare-method: rebind existing method"
                             _%type-t218418%_
                             '" "
                             _%method218419%_))
                          (let ()
                            (declare (not safe))
                            (hash-put!
                             _%vtab218425%_
                             _%method218419%_
                             _%sym218420%_)))
                        (if (eq? _%$e218427%_ _%sym218420%_)
                            '#!void
                            (let ((__tmp222369
                                   (list 'bind-method!
                                         _%type-t218418%_
                                         _%method218419%_
                                         _%sym218420%_)))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"declare-method: duplicate method declaration"
                               __tmp222369
                               _%method218419%_))))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t218418%_
                         '" "
                         _%method218419%_
                         '" => "
                         _%sym218420%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab218425%_
                         _%method218419%_
                         _%sym218420%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t218418%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t218439%_ _%method218440%_ _%sym218441%_)
        (let ((_%rebind?218443%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t218439%_
           _%method218440%_
           _%sym218441%_
           _%rebind?218443%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g222370_
        (let ((_g222371_ (let () (declare (not safe)) (##length _g222370_))))
          (cond ((let () (declare (not safe)) (##fx= _g222371_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g222370_))
                ((let () (declare (not safe)) (##fx= _g222371_ 4))
                 (apply gxc#optimizer-declare-method!__% _g222370_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g222370_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym218404%_)
        (let ((_%$e218406%_
               (let ((__tmp222372
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym218404%_ __tmp222372))))
          (if _%$e218406%_
              _%$e218406%_
              (let ((_%$e218414%_
                     (let ((_%$%ht218408218410%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%$%ht218408218410%_
                           (let ((_%ht218412%_ _%$%ht218408218410%_))
                             (declare (not safe))
                             (hash-get _%ht218412%_ _%sym218404%_))
                           '#f))))
                (if _%$e218414%_
                    _%$e218414%_
                    (let ((__tmp222373
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp222373 _%sym218404%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym218397%_)
        (let ((_%$%type218398218400%_
               (gxc#optimizer-lookup-type _%sym218397%_)))
          (if _%$%type218398218400%_
              (let ((_%type218402%_ _%$%type218398218400%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type218402%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type218402%_ '1 '#f '#f)))
                    _%type218402%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym218393%_)
        (let ((_%table218395%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table218395%_ _%sym218393%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where218378%_ _%sym218379%_)
        (let ((_%$e218382%_ (gxc#optimizer-lookup-class _%sym218379%_)))
          (if _%$e218382%_
              (let ((_%val218389%_ _%$e218382%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%val218389%_ 'gxc#!class::t))
                    _%val218389%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/compiler/optimize-base
                       'contract:
                       '(!class? val)
                       'value:
                       _%val218389%_)
                      '#!void)))
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where218378%_
                   _%sym218379%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass218376%_)
        (let ((__tmp222374
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp222374 _%klass218376%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t218373%_ _%method218374%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t218373%_)
         _%method218374%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym218371%_)
        (let ((__tmp222375
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp222375 _%sym218371%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e217846%_
                  (lambda (_%t218312%_)
                    (if (symbol? _%t218312%_)
                        (_%type-e217846%_
                         (gxc#optimizer-lookup-type _%t218312%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t218312%_
                               'gxc#!lambda::t))
                            (let* ((_%t218316%_ _%t218312%_)
                                   (_%t218320%_ _%t218316%_))
                              (_%__lambda-type217972%_ _%t218320%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t218312%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t218332%_ _%t218312%_)
                                       (_%t218336%_ _%t218332%_))
                                  (_%__kw-lambda-type218095%_ _%t218336%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t218312%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t218347%_ _%t218312%_)
                                           (_%t218351%_ _%t218347%_))
                                      (_%__kw-lambda-primary-type218218%_
                                       _%t218351%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t218312%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t218362%_ _%t218312%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t218362%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp222376
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t218362%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp222376
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t218312%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t218312%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type217972%_
                  (lambda (_%t218300%_)
                    (let ((_%t218303%_ _%t218300%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t218303%_ '4 '#f '#f))
                          (_%type-e217846%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t218303%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t218303%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp222377
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t218303%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp222377
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type217973%_
                  (lambda (_%t218288%_)
                    (let ((_%t218291%_ _%t218288%_))
                      (_%__lambda-type217972%_ _%t218291%_))))
                 (_%__kw-lambda-type218095%_
                  (lambda (_%t218276%_)
                    (let ((_%t218279%_ _%t218276%_))
                      (_%type-e217846%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t218279%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type218096%_
                  (lambda (_%t218264%_)
                    (let ((_%t218267%_ _%t218264%_))
                      (_%__kw-lambda-type218095%_ _%t218267%_))))
                 (_%__kw-lambda-primary-type218218%_
                  (lambda (_%t218252%_)
                    (let ((_%t218255%_ _%t218252%_))
                      (_%type-e217846%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t218255%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type218219%_
                  (lambda (_%t218240%_)
                    (let ((_%t218243%_ _%t218240%_))
                      (_%__kw-lambda-primary-type218218%_ _%t218243%_)))))
          (let* ((_%ht1218221%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2218223%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result218225%_
                  (if _%ht1218221%_
                      (let () (declare (not safe)) (hash->list _%ht1218221%_))
                      '()))
                 (_%result218227%_
                  (if _%ht2218223%_
                      (let ((__tmp222378
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2218223%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result218225%_ __tmp222378))
                      _%result218225%_)))
            (for-each
             (lambda (_%p218230%_)
               (let* ((_%t218232%_ (cdr _%p218230%_))
                      (_%tr218234%_ (_%type-e217846%_ _%t218232%_)))
                 (set-cdr! _%p218230%_ _%tr218234%_)))
             _%result218227%_)
            (list-sort
             (lambda (_%a218237%_ _%b218238%_)
               (let ((__tmp222380 (symbol->string (car _%a218237%_)))
                     (__tmp222379 (symbol->string (car _%b218238%_))))
                 (declare (not safe))
                 (##string<? __tmp222380 __tmp222379)))
             _%result218227%_)))))))
