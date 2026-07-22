(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1784758126)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp222311 (list)) (__tmp222310 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp222311
         '(type classes ssxi methods)
         __tmp222310
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args221944%_
        (apply make-instance gxc#optimizer-info::t _%$args221944%_)))
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
      (lambda (_%self221931%_)
        (let ((_%self221934%_ _%self221931%_))
          (if (let ((__tmp222312
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self221934%_))))
                (declare (not safe))
                (##fx< '4 __tmp222312))
              (begin
                (let ((__tmp222313
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self221934%_
                   __tmp222313
                   '1
                   '#f
                   '#f))
                (let ((__tmp222314
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self221934%_
                   __tmp222314
                   '2
                   '#f
                   '#f))
                (let ((__tmp222315
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self221934%_
                   __tmp222315
                   '3
                   '#f
                   '#f))
                (let ((__tmp222316
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self221934%_
                   __tmp222316
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp222317
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self221934%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self221934%_
                       '4
                       __tmp222317))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp222319 (list))
            (__tmp222318
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp222319
         '(id)
         __tmp222318
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args221806%_
        (apply make-instance gxc#!type::t _%$args221806%_)))
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
      (let ((__tmp222321 (list gxc#!type::t))
            (__tmp222320 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp222321
         '()
         __tmp222320
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args221803%_
        (apply make-instance gxc#!abort::t _%$args221803%_)))
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
      (let ((__tmp222323 (list gxc#!type::t))
            (__tmp222322 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp222323
         '()
         __tmp222322
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args221800%_
        (apply make-instance gxc#!alias::t _%$args221800%_)))
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
      (let ((__tmp222325 (list))
            (__tmp222324
             (cons (cons 'final: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp222325
         '(return effect arguments unchecked origin)
         __tmp222324
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args221797%_
        (apply make-instance gxc#!signature::t _%$args221797%_)))
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
      (let ((__tmp222327 (list gxc#!type::t))
            (__tmp222326
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp222327
         '(signature)
         __tmp222326
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
      (lambda (_%id221784%_ _%signature221785%_)
        (let ((_%signature221788%_ _%signature221785%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id221784%_ _%signature221788%_))))
    (define gxc#make-!procedure
      (lambda (_%id221762%_ _%signature221764%_)
        (if (or (not _%signature221764%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%signature221764%_
                   'gxc#!signature::t)))
            (let ((_%signature221774%_ _%signature221764%_))
              (gxc#__make-!procedure _%id221762%_ _%signature221774%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature221764%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj221741%_ _%signature221742%_)
        (let* ((_%$obj221745%_ _%$obj221741%_)
               (_%signature221753%_ _%signature221742%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221745%_
           _%signature221753%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj221708%_ _%signature221710%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221708%_ 'gxc#!procedure::t))
            (let ((_%$obj221715%_ _%$obj221708%_))
              (if (or (not _%signature221710%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221710%_
                         'gxc#!signature::t)))
                  (let ((_%signature221731%_ _%signature221710%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj221715%_
                     _%signature221731%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221710%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj221708%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp222329 (list gxc#!type::t))
            (__tmp222328 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp222329
         '(class)
         __tmp222328
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args221705%_
        (apply make-instance gxc#!class-meta::t _%$args221705%_)))
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
      (let ((__tmp222331 (list gxc#!type::t))
            (__tmp222330
             (cons (cons 'struct: '#t)
                   '((equal: . #t) (print: super precedence-list)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp222331
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp222330
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args221702%_
        (apply make-instance gxc#!class::t _%$args221702%_)))
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
      (let ((__tmp222333 (list gxc#!procedure::t))
            (__tmp222332 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp222333
         '()
         __tmp222332
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args221699%_
        (apply make-instance gxc#!predicate::t _%$args221699%_)))
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
      (lambda (_%$obj221678%_ _%signature221679%_)
        (let* ((_%$obj221682%_ _%$obj221678%_)
               (_%signature221690%_ _%signature221679%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221682%_
           _%signature221690%_
           '2
           '#f
           '#f))))
    (define gxc#!predicate-signature-set!
      (lambda (_%$obj221645%_ _%signature221647%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221645%_ 'gxc#!predicate::t))
            (let ((_%$obj221652%_ _%$obj221645%_))
              (if (or (not _%signature221647%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221647%_
                         'gxc#!signature::t)))
                  (let ((_%signature221668%_ _%signature221647%_))
                    (gxc#__!predicate-signature-set!
                     _%$obj221652%_
                     _%signature221668%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221647%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!predicate?
               'value:
               _%$obj221645%_)
              '#!void))))
    (define gxc#!constructor::t
      (let ((__tmp222335 (list gxc#!procedure::t))
            (__tmp222334 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp222335
         '()
         __tmp222334
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args221642%_
        (apply make-instance gxc#!constructor::t _%$args221642%_)))
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
      (lambda (_%$obj221621%_ _%signature221622%_)
        (let* ((_%$obj221625%_ _%$obj221621%_)
               (_%signature221633%_ _%signature221622%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221625%_
           _%signature221633%_
           '2
           '#f
           '#f))))
    (define gxc#!constructor-signature-set!
      (lambda (_%$obj221588%_ _%signature221590%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221588%_ 'gxc#!constructor::t))
            (let ((_%$obj221595%_ _%$obj221588%_))
              (if (or (not _%signature221590%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221590%_
                         'gxc#!signature::t)))
                  (let ((_%signature221611%_ _%signature221590%_))
                    (gxc#__!constructor-signature-set!
                     _%$obj221595%_
                     _%signature221611%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221590%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!constructor?
               'value:
               _%$obj221588%_)
              '#!void))))
    (define gxc#!accessor::t
      (let ((__tmp222337 (list gxc#!procedure::t))
            (__tmp222336 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp222337
         '(slot checked?)
         __tmp222336
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args221585%_
        (apply make-instance gxc#!accessor::t _%$args221585%_)))
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
      (lambda (_%$obj221564%_ _%signature221565%_)
        (let* ((_%$obj221568%_ _%$obj221564%_)
               (_%signature221576%_ _%signature221565%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221568%_
           _%signature221576%_
           '2
           '#f
           '#f))))
    (define gxc#!accessor-signature-set!
      (lambda (_%$obj221531%_ _%signature221533%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221531%_ 'gxc#!accessor::t))
            (let ((_%$obj221538%_ _%$obj221531%_))
              (if (or (not _%signature221533%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221533%_
                         'gxc#!signature::t)))
                  (let ((_%signature221554%_ _%signature221533%_))
                    (gxc#__!accessor-signature-set!
                     _%$obj221538%_
                     _%signature221554%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221533%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!accessor?
               'value:
               _%$obj221531%_)
              '#!void))))
    (define gxc#!mutator::t
      (let ((__tmp222339 (list gxc#!procedure::t))
            (__tmp222338 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp222339
         '(slot checked?)
         __tmp222338
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args221528%_
        (apply make-instance gxc#!mutator::t _%$args221528%_)))
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
      (lambda (_%$obj221507%_ _%signature221508%_)
        (let* ((_%$obj221511%_ _%$obj221507%_)
               (_%signature221519%_ _%signature221508%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221511%_
           _%signature221519%_
           '2
           '#f
           '#f))))
    (define gxc#!mutator-signature-set!
      (lambda (_%$obj221474%_ _%signature221476%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221474%_ 'gxc#!mutator::t))
            (let ((_%$obj221481%_ _%$obj221474%_))
              (if (or (not _%signature221476%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221476%_
                         'gxc#!signature::t)))
                  (let ((_%signature221497%_ _%signature221476%_))
                    (gxc#__!mutator-signature-set!
                     _%$obj221481%_
                     _%signature221497%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221476%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!mutator?
               'value:
               _%$obj221474%_)
              '#!void))))
    (define gxc#!interface::t
      (let ((__tmp222341 (list gxc#!type::t))
            (__tmp222340 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp222341
         '(methods)
         __tmp222340
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args221471%_
        (apply make-instance gxc#!interface::t _%$args221471%_)))
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
      (let ((__tmp222343 (list gxc#!procedure::t))
            (__tmp222342 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp222343
         '(arity dispatch inline inline-typedecl)
         __tmp222342
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args221468%_
        (apply make-instance gxc#!lambda::t _%$args221468%_)))
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
      (lambda (_%$obj221447%_ _%signature221448%_)
        (let* ((_%$obj221451%_ _%$obj221447%_)
               (_%signature221459%_ _%signature221448%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221451%_
           _%signature221459%_
           '2
           '#f
           '#f))))
    (define gxc#!lambda-signature-set!
      (lambda (_%$obj221414%_ _%signature221416%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221414%_ 'gxc#!lambda::t))
            (let ((_%$obj221421%_ _%$obj221414%_))
              (if (or (not _%signature221416%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221416%_
                         'gxc#!signature::t)))
                  (let ((_%signature221437%_ _%signature221416%_))
                    (gxc#__!lambda-signature-set!
                     _%$obj221421%_
                     _%signature221437%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221416%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!lambda?
               'value:
               _%$obj221414%_)
              '#!void))))
    (define gxc#!case-lambda::t
      (let ((__tmp222345 (list gxc#!procedure::t))
            (__tmp222344 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp222345
         '(clauses)
         __tmp222344
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args221411%_
        (apply make-instance gxc#!case-lambda::t _%$args221411%_)))
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
      (lambda (_%$obj221390%_ _%signature221391%_)
        (let* ((_%$obj221394%_ _%$obj221390%_)
               (_%signature221402%_ _%signature221391%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221394%_
           _%signature221402%_
           '2
           '#f
           '#f))))
    (define gxc#!case-lambda-signature-set!
      (lambda (_%$obj221357%_ _%signature221359%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221357%_ 'gxc#!case-lambda::t))
            (let ((_%$obj221364%_ _%$obj221357%_))
              (if (or (not _%signature221359%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221359%_
                         'gxc#!signature::t)))
                  (let ((_%signature221380%_ _%signature221359%_))
                    (gxc#__!case-lambda-signature-set!
                     _%$obj221364%_
                     _%signature221380%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221359%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!case-lambda?
               'value:
               _%$obj221357%_)
              '#!void))))
    (define gxc#!kw-lambda::t
      (let ((__tmp222347 (list gxc#!procedure::t))
            (__tmp222346 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp222347
         '(table dispatch)
         __tmp222346
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args221354%_
        (apply make-instance gxc#!kw-lambda::t _%$args221354%_)))
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
      (lambda (_%$obj221333%_ _%signature221334%_)
        (let* ((_%$obj221337%_ _%$obj221333%_)
               (_%signature221345%_ _%signature221334%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221337%_
           _%signature221345%_
           '2
           '#f
           '#f))))
    (define gxc#!kw-lambda-signature-set!
      (lambda (_%$obj221300%_ _%signature221302%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221300%_ 'gxc#!kw-lambda::t))
            (let ((_%$obj221307%_ _%$obj221300%_))
              (if (or (not _%signature221302%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221302%_
                         'gxc#!signature::t)))
                  (let ((_%signature221323%_ _%signature221302%_))
                    (gxc#__!kw-lambda-signature-set!
                     _%$obj221307%_
                     _%signature221323%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221302%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!kw-lambda?
               'value:
               _%$obj221300%_)
              '#!void))))
    (define gxc#!kw-lambda-primary::t
      (let ((__tmp222349 (list gxc#!procedure::t))
            (__tmp222348 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp222349
         '(keys main)
         __tmp222348
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args221297%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args221297%_)))
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
      (lambda (_%$obj221276%_ _%signature221277%_)
        (let* ((_%$obj221280%_ _%$obj221276%_)
               (_%signature221288%_ _%signature221277%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221280%_
           _%signature221288%_
           '2
           '#f
           '#f))))
    (define gxc#!kw-lambda-primary-signature-set!
      (lambda (_%$obj221243%_ _%signature221245%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj221243%_
               'gxc#!kw-lambda-primary::t))
            (let ((_%$obj221250%_ _%$obj221243%_))
              (if (or (not _%signature221245%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221245%_
                         'gxc#!signature::t)))
                  (let ((_%signature221266%_ _%signature221245%_))
                    (gxc#__!kw-lambda-primary-signature-set!
                     _%$obj221250%_
                     _%signature221266%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221245%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!kw-lambda-primary?
               'value:
               _%$obj221243%_)
              '#!void))))
    (define gxc#!primitive::t
      (let ((__tmp222350 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp222350
         '()
         '((equal: . #t))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args221240%_
        (apply make-instance gxc#!primitive::t _%$args221240%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp222352 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp222351 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp222352
         '()
         __tmp222351
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args221237%_
        (apply make-instance gxc#!primitive-predicate::t _%$args221237%_)))
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
      (lambda (_%$obj221216%_ _%signature221217%_)
        (let* ((_%$obj221220%_ _%$obj221216%_)
               (_%signature221228%_ _%signature221217%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221220%_
           _%signature221228%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-predicate-signature-set!
      (lambda (_%$obj221183%_ _%signature221185%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj221183%_
               'gxc#!primitive-predicate::t))
            (let ((_%$obj221190%_ _%$obj221183%_))
              (if (or (not _%signature221185%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221185%_
                         'gxc#!signature::t)))
                  (let ((_%signature221206%_ _%signature221185%_))
                    (gxc#__!primitive-predicate-signature-set!
                     _%$obj221190%_
                     _%signature221206%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221185%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-predicate?
               'value:
               _%$obj221183%_)
              '#!void))))
    (define gxc#!primitive-lambda::t
      (let ((__tmp222354 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp222353 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp222354
         '()
         __tmp222353
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args221180%_
        (apply make-instance gxc#!primitive-lambda::t _%$args221180%_)))
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
      (lambda (_%$obj221159%_ _%signature221160%_)
        (let* ((_%$obj221163%_ _%$obj221159%_)
               (_%signature221171%_ _%signature221160%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221163%_
           _%signature221171%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-lambda-signature-set!
      (lambda (_%$obj221126%_ _%signature221128%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj221126%_
               'gxc#!primitive-lambda::t))
            (let ((_%$obj221133%_ _%$obj221126%_))
              (if (or (not _%signature221128%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221128%_
                         'gxc#!signature::t)))
                  (let ((_%signature221149%_ _%signature221128%_))
                    (gxc#__!primitive-lambda-signature-set!
                     _%$obj221133%_
                     _%signature221149%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221128%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-lambda?
               'value:
               _%$obj221126%_)
              '#!void))))
    (define gxc#!primitive-case-lambda::t
      (let ((__tmp222356 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp222355 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp222356
         '()
         __tmp222355
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args221123%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args221123%_)))
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
      (lambda (_%$obj221102%_ _%signature221103%_)
        (let* ((_%$obj221106%_ _%$obj221102%_)
               (_%signature221114%_ _%signature221103%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221106%_
           _%signature221114%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-case-lambda-signature-set!
      (lambda (_%$obj221069%_ _%signature221071%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj221069%_
               'gxc#!primitive-case-lambda::t))
            (let ((_%$obj221076%_ _%$obj221069%_))
              (if (or (not _%signature221071%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221071%_
                         'gxc#!signature::t)))
                  (let ((_%signature221092%_ _%signature221071%_))
                    (gxc#__!primitive-case-lambda-signature-set!
                     _%$obj221076%_
                     _%signature221092%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221071%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-case-lambda?
               'value:
               _%$obj221069%_)
              '#!void))))
    (define gxc#!abort:::init!
      (lambda (_%self221056%_)
        (let ((_%self221059%_ _%self221056%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self221059%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self220919%_ _%klass220920%_)
        (let ((_%self220923%_ _%self220919%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self220923%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220923%_
             _%klass220920%_
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
      (lambda (_%self220609%_
               _%id220610%_
               _%super220611%_
               _%slots220612%_
               _%ctor-method220613%_
               _%struct?220614%_
               _%final?220615%_
               _%system?220616%_
               _%metaclass220617%_)
        (let ((_%self220620%_ _%self220609%_))
          (let _%lp220631%_ ((_%rest220633%_ _%super220611%_))
            (let* ((_%$%rest220634220642%_ _%rest220633%_)
                   (_%$%else220636220650%_ (lambda () '#!void))
                   (_%$%K220638220656%_
                    (lambda (_%rest220653%_ _%super-id220654%_)
                      (if (let ((__tmp222357
                                 (gxc#optimizer-resolve-class
                                  (list '!class _%id220610%_)
                                  _%super-id220654%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp222357 '8 '#f '#f))
                          (let ((__tmp222358 (list '!class _%id220610%_)))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp222358
                             _%super-id220654%_))
                          '#!void)
                      (_%lp220631%_ _%rest220653%_))))
              (if (pair? _%$%rest220634220642%_)
                  (let ((_%$%hd220639220659%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest220634220642%_)))
                        (_%$%tl220640220661%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest220634220642%_))))
                    (let* ((_%super-id220664%_ _%$%hd220639220659%_)
                           (_%rest220666%_ _%$%tl220640220661%_))
                      (_%$%K220638220656%_ _%rest220666%_ _%super-id220664%_)))
                  '#!void)))
          (let* ((_%ctor-method220717%_
                  (let ((_%$e220668%_ _%ctor-method220613%_))
                    (if _%$e220668%_
                        _%$e220668%_
                        (let _%lp220671%_ ((_%rest220673%_ _%super220611%_)
                                           (_%method220674%_ '#f))
                          (let* ((_%$%rest220675220683%_ _%rest220673%_)
                                 (_%$%else220677220691%_
                                  (lambda () _%method220674%_))
                                 (_%$%K220679220705%_
                                  (lambda (_%rest220694%_ _%super-id220695%_)
                                    (let* ((_%klass220697%_
                                            (gxc#optimizer-resolve-class
                                             (list '!class _%id220610%_)
                                             _%super-id220695%_))
                                           (_%$e220699%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass220697%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e220699%_
                                          (if _%method220674%_
                                              (if (eq? _%$e220699%_
                                                       _%method220674%_)
                                                  (_%lp220671%_
                                                   _%rest220694%_
                                                   _%$e220699%_)
                                                  (let ((__tmp222359
                                                         (list '!class
                                                               _%id220610%_)))
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"conflicting implicit constructor methods"
                                                     __tmp222359
                                                     _%method220674%_
                                                     _%$e220699%_)))
                                              (_%lp220671%_
                                               _%rest220694%_
                                               _%$e220699%_))
                                          (_%lp220671%_
                                           _%rest220694%_
                                           _%method220674%_))))))
                            (if (pair? _%$%rest220675220683%_)
                                (let ((_%$%hd220680220708%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest220675220683%_)))
                                      (_%$%tl220681220710%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest220675220683%_))))
                                  (let* ((_%super-id220713%_
                                          _%$%hd220680220708%_)
                                         (_%rest220715%_ _%$%tl220681220710%_))
                                    (_%$%K220679220705%_
                                     _%rest220715%_
                                     _%super-id220713%_)))
                                (_%$%else220677220691%_)))))))
                 (_g222360_
                  (let ((__tmp222364
                         (lambda (_%klass-id220719%_)
                           (cons _%klass-id220719%_
                                 (let ((__tmp222365
                                        (gxc#optimizer-resolve-class
                                         (list '!class _%id220610%_)
                                         _%klass-id220719%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp222365
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp222362
                         (lambda (_%klass-id220721%_)
                           (let ((__tmp222363
                                  (gxc#optimizer-resolve-class
                                   (list '!class _%id220610%_)
                                   _%klass-id220721%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp222363
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp222364
                     __tmp222362
                     eq?
                     identity
                     '()
                     _%super220611%_))))
            (begin
              (let ((_g222361_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g222360_)
                           (##values-length _g222360_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g222361_ 2)))
                    (error "Context expects 2 values" _g222361_)))
              (let ((_%precedence-list220723%_
                     (let () (declare (not safe)) (##values-ref _g222360_ 0)))
                    (_%base-struct220724%_
                     (let () (declare (not safe)) (##values-ref _g222360_ 1))))
                (let* ((_%precedence-list220768%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id220610%_ '(t object class)))
                            _%precedence-list220723%_
                            (if (memq 'object::t _%precedence-list220723%_)
                                _%precedence-list220723%_
                                (if _%system?220616%_
                                    (if (memq 't::t _%precedence-list220723%_)
                                        _%precedence-list220723%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list220723%_
                                           '(t::t))))
                                    (let _%loop220730%_ ((_%tail220732%_
                                                          _%precedence-list220723%_)
                                                         (_%head220733%_ '()))
                                      (let* ((_%$%tail220734220742%_
                                              _%tail220732%_)
                                             (_%$%else220736220750%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head220733%_))))
                                             (_%$%K220738220756%_
                                              (lambda (_%rest220753%_
                                                       _%hd220754%_)
                                                (if (eq? _%hd220754%_ 't::t)
                                                    (let ((__tmp222366
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail220732%_)))
              (declare (not safe))
              (foldl__0 cons __tmp222366 _%head220733%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop220730%_
                                                     _%rest220753%_
                                                     (cons _%hd220754%_
                                                           _%head220733%_))))))
                                        (if (pair? _%$%tail220734220742%_)
                                            (let ((_%$%hd220739220759%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tail220734220742%_)))
                                                  (_%$%tl220740220761%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tail220734220742%_))))
                                              (let* ((_%hd220764%_
                                                      _%$%hd220739220759%_)
                                                     (_%rest220766%_
                                                      _%$%tl220740220761%_))
                                                (_%$%K220738220756%_
                                                 _%rest220766%_
                                                 _%hd220764%_)))
                                            (_%$%else220736220750%_))))))))
                       (_%fields220770%_
                        (gxc#compute-class-fields
                         (list '!class _%id220610%_)
                         _%precedence-list220768%_
                         _%slots220612%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220620%_
                     _%id220610%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220620%_
                     _%super220611%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220620%_
                     _%precedence-list220768%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220620%_
                     _%slots220612%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220620%_
                     _%fields220770%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220620%_
                     _%ctor-method220717%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220620%_
                     _%struct?220614%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220620%_
                     _%final?220615%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220620%_
                     _%metaclass220617%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self220773%_
               _%id220774%_
               _%super220775%_
               _%precedence-list220776%_
               _%slots220777%_
               _%fields220778%_
               _%constructor220779%_
               _%struct?220780%_
               _%final?220781%_
               _%system?220782%_
               _%metaclass220783%_
               _%methods220784%_)
        (let ((_%self220787%_ _%self220773%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220787%_
             _%id220774%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220787%_
             _%super220775%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220787%_
             _%precedence-list220776%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220787%_
             _%slots220777%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220787%_
             _%fields220778%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220787%_
             _%constructor220779%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220787%_
             _%struct?220780%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220787%_
             _%final?220781%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220787%_
             _%metaclass220783%_
             '10
             '#f
             '#f))
          (if _%methods220784%_
              (let ((__tmp222367
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods220784%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self220787%_
                 __tmp222367
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g222368_
        (let ((_g222369_ (let () (declare (not safe)) (##length _g222368_))))
          (cond ((let () (declare (not safe)) (##fx= _g222369_ 9))
                 (apply gxc#!class:::init!__0 _g222368_))
                ((let () (declare (not safe)) (##fx= _g222369_ 12))
                 (apply gxc#!class:::init!__1 _g222368_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g222368_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where220478%_
               _%precedence-list220479%_
               _%direct-slots220480%_)
        (let ((__tmp222371
               (lambda (_%mixin220482%_)
                 (let ((__tmp222372
                        (gxc#optimizer-resolve-class
                         _%where220478%_
                         _%mixin220482%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp222372 '5 '#f '#f))))
              (__tmp222370
               (lambda (_%slot-list220484%_ _%slot-table220485%_)
                 (cdr _%slot-list220484%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list220479%_
           _%direct-slots220480%_
           __tmp222371
           __tmp222370))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass220437%_ _%slot220438%_)
        (let _%lp220440%_ ((_%rest220442%_
                            (##structure-ref
                             _%klass220437%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset220443%_ '1))
          (let* ((_%$%rest220444220452%_ _%rest220442%_)
                 (_%$%else220446220460%_
                  (lambda ()
                    (let ((__tmp222374
                           (##structure-ref
                            _%klass220437%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp222373
                           (##structure-ref
                            _%klass220437%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp222374
                       __tmp222373
                       _%slot220438%_))))
                 (_%$%K220448220466%_
                  (lambda (_%rest220463%_ _%s220464%_)
                    (if (eq? _%s220464%_ _%slot220438%_)
                        _%offset220443%_
                        (_%lp220440%_
                         _%rest220463%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset220443%_ '1)))))))
            (if (pair? _%$%rest220444220452%_)
                (let ((_%$%hd220449220469%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest220444220452%_)))
                      (_%$%tl220450220471%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest220444220452%_))))
                  (let* ((_%s220474%_ _%$%hd220449220469%_)
                         (_%rest220476%_ _%$%tl220450220471%_))
                    (_%$%K220448220466%_ _%rest220476%_ _%s220474%_)))
                (_%$%else220446220460%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass220395%_ _%slot220396%_)
        (if (gxc#!class-struct-slot? _%klass220395%_ _%slot220396%_)
            _%klass220395%_
            (let _%lp220398%_ ((_%rest220400%_
                                (##structure-ref
                                 _%klass220395%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%$%rest220401220409%_ _%rest220400%_)
                     (_%$%else220403220417%_ (lambda () '#f))
                     (_%$%K220405220425%_
                      (lambda (_%rest220420%_ _%super220421%_)
                        (let ((_%super-class220423%_
                               (gxc#optimizer-resolve-class
                                (list '!class-slot-find-struct
                                      (##structure-ref
                                       _%klass220395%_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      _%slot220396%_)
                                _%super220421%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class220423%_
                               _%slot220396%_)
                              _%super-class220423%_
                              (_%lp220398%_ _%rest220420%_))))))
                (if (pair? _%$%rest220401220409%_)
                    (let ((_%$%hd220406220428%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest220401220409%_)))
                          (_%$%tl220407220430%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest220401220409%_))))
                      (let* ((_%super220433%_ _%$%hd220406220428%_)
                             (_%rest220435%_ _%$%tl220407220430%_))
                        (_%$%K220405220425%_ _%rest220435%_ _%super220433%_)))
                    (_%$%else220403220417%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass220392%_ _%slot220393%_)
        (if (##structure-ref _%klass220392%_ '7 gxc#!class::t '#f)
            (memq _%slot220393%_
                  (##structure-ref _%klass220392%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self220338%_ _%id220339%_)
        (let ((_%self220342%_ _%self220338%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220342%_
             _%id220339%_
             '1
             '#f
             '#f))
          (let* ((_%$obj220353%_ _%self220342%_)
                 (_%signature220356%_
                  (let ((__obj222305
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
                       __obj222305
                       'boolean::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222305
                       '(pure predicate)
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222305
                       '(t::t)
                       '3
                       '#f
                       '#f))
                    __obj222305))
                 (_%$obj220361%_ _%$obj220353%_))
            (if (or (not _%signature220356%_) '#t)
                (let ((_%signature220382%_ _%signature220356%_))
                  (gxc#__!predicate-signature-set!
                   _%$obj220361%_
                   _%signature220382%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature220356%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self220162%_ _%id220163%_)
        (let ((_%self220166%_ _%self220162%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220166%_
             _%id220163%_
             '1
             '#f
             '#f))
          (let* ((_%$obj220177%_ _%self220166%_)
                 (_%signature220180%_
                  (let ((__obj222306
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
                       __obj222306
                       _%id220163%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222306
                       '(alloc)
                       '2
                       '#f
                       '#f))
                    __obj222306))
                 (_%$obj220185%_ _%$obj220177%_))
            (if (or (not _%signature220180%_) '#t)
                (let ((_%signature220206%_ _%signature220180%_))
                  (gxc#__!constructor-signature-set!
                   _%$obj220185%_
                   _%signature220206%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature220180%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       ':init!
       gxc#!constructor:::init!
       '#f))
    (define gxc#!accessor:::init!
      (lambda (_%self219984%_ _%id219985%_ _%slot219986%_ _%checked?219987%_)
        (let ((_%self219990%_ _%self219984%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219990%_
             _%id219985%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219990%_
             _%slot219986%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219990%_
             _%checked?219987%_
             '4
             '#f
             '#f))
          (let* ((_%$obj220001%_ _%self219990%_)
                 (_%signature220004%_
                  (let ((__obj222307
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
                       __obj222307
                       't::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222307
                       '(pure)
                       '2
                       '#f
                       '#f))
                    (let ((__tmp222375 (cons _%id219985%_ '())))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222307
                       __tmp222375
                       '3
                       '#f
                       '#f))
                    __obj222307))
                 (_%$obj220009%_ _%$obj220001%_))
            (if (or (not _%signature220004%_) '#t)
                (let ((_%signature220030%_ _%signature220004%_))
                  (gxc#__!accessor-signature-set!
                   _%$obj220009%_
                   _%signature220030%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature220004%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self219806%_ _%id219807%_ _%slot219808%_ _%checked?219809%_)
        (let ((_%self219812%_ _%self219806%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219812%_
             _%id219807%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219812%_
             _%slot219808%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219812%_
             _%checked?219809%_
             '4
             '#f
             '#f))
          (let* ((_%$obj219823%_ _%self219812%_)
                 (_%signature219826%_
                  (let ((__obj222308
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
                       __obj222308
                       'void::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222308
                       '(mut)
                       '2
                       '#f
                       '#f))
                    (let ((__tmp222376 (cons _%id219807%_ (cons 't::t '()))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222308
                       __tmp222376
                       '3
                       '#f
                       '#f))
                    __obj222308))
                 (_%$obj219831%_ _%$obj219823%_))
            (if (or (not _%signature219826%_) '#t)
                (let ((_%signature219852%_ _%signature219826%_))
                  (gxc#__!mutator-signature-set!
                   _%$obj219831%_
                   _%signature219852%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature219826%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords219611%_
               _%$%signature219608219612%_
               _%self219613%_
               _%arity219614%_
               _%dispatch219615%_)
        (let* ((_%signature219617%_
                (if (eq? _%$%signature219608219612%_ absent-value)
                    '#f
                    _%$%signature219608219612%_))
               (_%self219620%_ _%self219613%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self219620%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219620%_
             _%arity219614%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219620%_
             _%dispatch219615%_
             '4
             '#f
             '#f))
          (let* ((_%$obj219632%_ _%self219620%_)
                 (_%signature219635%_ _%signature219617%_)
                 (_%$obj219640%_ _%$obj219632%_))
            (if (or (not _%signature219635%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%signature219635%_
                       'gxc#!signature::t)))
                (let ((_%signature219661%_ _%signature219635%_))
                  (gxc#__!lambda-signature-set!
                   _%$obj219640%_
                   _%signature219661%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature219635%_)
                  '#!void))))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords219674%_ . _%args219675%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords219674%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords219674%_
                  'signature:
                  absent-value))
               _%args219675%_)))
    (define gxc#!lambda:::init!
      (lambda _%$%args219609219681%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%$%args219609219681%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords219413%_
               _%$%signature219410219414%_
               _%self219415%_
               _%clauses219416%_)
        (let* ((_%signature219418%_
                (if (eq? _%$%signature219410219414%_ absent-value)
                    '#f
                    _%$%signature219410219414%_))
               (_%self219421%_ _%self219415%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self219421%_ 'procedure '1 '#f '#f))
          (let* ((_%$obj219433%_ _%self219421%_)
                 (_%signature219436%_ _%signature219418%_)
                 (_%$obj219441%_ _%$obj219433%_))
            (if (or (not _%signature219436%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%signature219436%_
                       'gxc#!signature::t)))
                (let ((_%signature219462%_ _%signature219436%_))
                  (gxc#__!case-lambda-signature-set!
                   _%$obj219441%_
                   _%signature219462%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature219436%_)
                  '#!void)))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219421%_
             _%clauses219416%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords219475%_ . _%args219476%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords219475%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords219475%_
                  'signature:
                  absent-value))
               _%args219476%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%$%args219411219482%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%$%args219411219482%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self219271%_ _%tab219272%_ _%dispatch219273%_)
        (let ((_%self219276%_ _%self219271%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self219276%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219276%_
             _%tab219272%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219276%_
             _%dispatch219273%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self219133%_ _%keys219134%_ _%main219135%_)
        (let ((_%self219138%_ _%self219133%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self219138%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219138%_
             _%keys219134%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219138%_
             _%main219135%_
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
      (lambda (_%self218713%_ _%id218714%_)
        (let ((_%self218717%_ _%self218713%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218717%_
             _%id218714%_
             '1
             '#f
             '#f))
          (let* ((_%$obj218728%_ _%self218717%_)
                 (_%signature218731%_
                  (let ((__obj222309
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
                       __obj222309
                       'boolean::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222309
                       '(pure)
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222309
                       '(t::t)
                       '3
                       '#f
                       '#f))
                    __obj222309))
                 (_%$obj218736%_ _%$obj218728%_))
            (if (or (not _%signature218731%_) '#t)
                (let ((_%signature218757%_ _%signature218731%_))
                  (gxc#__!primitive-predicate-signature-set!
                   _%$obj218736%_
                   _%signature218757%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature218731%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       ':init!
       gxc#!primitive-predicate:::init!
       '#f))
    (define gxc#!class-method-table
      (lambda (_%klass218583%_)
        (let ((_%$e218585%_
               (##structure-ref _%klass218583%_ '11 gxc#!class::t '#f)))
          (if _%$e218585%_
              _%$e218585%_
              (let ((_%tab218589%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass218583%_
                 _%tab218589%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab218589%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass218575%_ _%method218576%_)
        (let ((_%$%tab218577218579%_
               (##structure-ref _%klass218575%_ '11 gxc#!class::t '#f)))
          (if _%$%tab218577218579%_
              (let ((_%tab218581%_ _%$%tab218577218579%_))
                (declare (not safe))
                (hash-get _%tab218581%_ _%method218576%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a218560%_ _%type-b218561%_)
        (if _%type-a218560%_
            (if _%type-b218561%_
                (let ((_%$e218563%_ (eq? _%type-a218560%_ _%type-b218561%_)))
                  (if _%$e218563%_
                      _%$e218563%_
                      (let ((_%$e218566%_
                             (eq? (##structure-ref
                                   _%type-b218561%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e218566%_
                            _%$e218566%_
                            (let ((_%$e218569%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a218560%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b218561%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e218569%_
                                  _%$e218569%_
                                  (let ((_%$e218572%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a218560%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b218561%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a218560%_
                                                  _%type-b218561%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e218572%_
                                        _%$e218572%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a218560%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b218561%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a218511%_ _%klass-b218512%_)
        (let ((_%$e218514%_
               (eq? (##structure-ref _%klass-a218511%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b218512%_ '1 gxc#!type::t '#f))))
          (if _%$e218514%_
              _%$e218514%_
              (let ((_%klass-id-b218517%_
                     (##structure-ref _%klass-b218512%_ '1 gxc#!type::t '#f))
                    (_%precedence-list218518%_
                     (##structure-ref _%klass-a218511%_ '3 gxc#!class::t '#f)))
                (let _%loop218520%_ ((_%rest218522%_
                                      _%precedence-list218518%_))
                  (let* ((_%$%rest218523218531%_ _%rest218522%_)
                         (_%$%else218525218539%_ (lambda () '#f))
                         (_%$%K218527218548%_
                          (lambda (_%rest218542%_ _%klass-name218543%_)
                            (let ((_%$e218545%_
                                   (eq? (let ((__tmp222377
                                               (gxc#optimizer-resolve-class
                                                (list 'subclass?
                                                      _%klass-a218511%_
                                                      _%klass-b218512%_)
                                                _%klass-name218543%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp222377
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b218517%_)))
                              (if _%$e218545%_
                                  _%$e218545%_
                                  (_%loop218520%_ _%rest218542%_))))))
                    (if (pair? _%$%rest218523218531%_)
                        (let ((_%$%hd218528218551%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest218523218531%_)))
                              (_%$%tl218529218553%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest218523218531%_))))
                          (let* ((_%klass-name218556%_ _%$%hd218528218551%_)
                                 (_%rest218558%_ _%$%tl218529218553%_))
                            (_%$%K218527218548%_
                             _%rest218558%_
                             _%klass-name218556%_)))
                        (_%$%else218525218539%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type218509%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type218509%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type218509%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc218498%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc218498%_ 'gxc#!procedure::t))
            (let ((_%proc218501%_ _%proc218498%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc218501%_ '2 '#f '#f))
                  (let ((__tmp222378
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc218501%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp222378 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@365.11-365.15"
               'contract:
               '!procedure?
               'value:
               _%proc218498%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym218480%_ _%type218481%_ _%local?218482%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type218481%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym218480%_
                     _%type218481%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym218480%_ '" " _%type218481%_))
        (let ((_%table218484%_
               (if _%local?218482%_
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
          (hash-put! _%table218484%_ _%sym218480%_ _%type218481%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym218489%_ _%type218490%_)
        (let ((_%local?218492%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym218489%_
           _%type218490%_
           _%local?218492%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g222379_
        (let ((_g222380_ (let () (declare (not safe)) (##length _g222379_))))
          (cond ((let () (declare (not safe)) (##fx= _g222380_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g222379_))
                ((let () (declare (not safe)) (##fx= _g222380_ 3))
                 (apply gxc#optimizer-declare-type!__% _g222379_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g222379_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym218474%_ _%type218475%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type218475%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym218474%_
                     _%type218475%_)))
        (let ((_%table218477%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp222381
                 (let () (declare (not safe)) (struct->list _%type218475%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym218474%_ '" " __tmp222381))
          (let ()
            (declare (not safe))
            (hash-put! _%table218477%_ _%sym218474%_ _%type218475%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table218477%_ _%type218475%_ _%sym218474%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym218469%_ _%type218470%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type218470%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym218469%_
                     _%type218470%_)))
        (let ((_%table218472%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table218472%_ _%sym218469%_))
              '#!void
              (begin
                (let ((__tmp222382
                       (let ()
                         (declare (not safe))
                         (struct->list _%type218470%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym218469%_
                   '" "
                   __tmp222382))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table218472%_ _%sym218469%_ _%type218470%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table218472%_
                   _%type218470%_
                   _%sym218469%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym218467%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym218467%_))
        (let ((__tmp222383
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp222383 _%sym218467%_))
        (let ((__tmp222384
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp222384 _%sym218467%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t218435%_
               _%method218436%_
               _%sym218437%_
               _%rebind?218438%_)
        (let ((__tmp222385
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp222385 _%sym218437%_ '#t))
        (let ((_%klass218440%_ (gxc#optimizer-lookup-class _%type-t218435%_)))
          (if _%klass218440%_
              (let* ((_%vtab218442%_ (gxc#!class-method-table _%klass218440%_))
                     (_%$e218444%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab218442%_ _%method218436%_))))
                (if _%$e218444%_
                    (if _%rebind?218438%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose
                             '"declare-method: rebind existing method"
                             _%type-t218435%_
                             '" "
                             _%method218436%_))
                          (let ()
                            (declare (not safe))
                            (hash-put!
                             _%vtab218442%_
                             _%method218436%_
                             _%sym218437%_)))
                        (if (eq? _%$e218444%_ _%sym218437%_)
                            '#!void
                            (let ((__tmp222386
                                   (list 'bind-method!
                                         _%type-t218435%_
                                         _%method218436%_
                                         _%sym218437%_)))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"declare-method: duplicate method declaration"
                               __tmp222386
                               _%method218436%_))))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t218435%_
                         '" "
                         _%method218436%_
                         '" => "
                         _%sym218437%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab218442%_
                         _%method218436%_
                         _%sym218437%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t218435%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t218456%_ _%method218457%_ _%sym218458%_)
        (let ((_%rebind?218460%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t218456%_
           _%method218457%_
           _%sym218458%_
           _%rebind?218460%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g222387_
        (let ((_g222388_ (let () (declare (not safe)) (##length _g222387_))))
          (cond ((let () (declare (not safe)) (##fx= _g222388_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g222387_))
                ((let () (declare (not safe)) (##fx= _g222388_ 4))
                 (apply gxc#optimizer-declare-method!__% _g222387_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g222387_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym218421%_)
        (let ((_%$e218423%_
               (let ((__tmp222389
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym218421%_ __tmp222389))))
          (if _%$e218423%_
              _%$e218423%_
              (let ((_%$e218431%_
                     (let ((_%$%ht218425218427%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%$%ht218425218427%_
                           (let ((_%ht218429%_ _%$%ht218425218427%_))
                             (declare (not safe))
                             (hash-get _%ht218429%_ _%sym218421%_))
                           '#f))))
                (if _%$e218431%_
                    _%$e218431%_
                    (let ((__tmp222390
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp222390 _%sym218421%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym218414%_)
        (let ((_%$%type218415218417%_
               (gxc#optimizer-lookup-type _%sym218414%_)))
          (if _%$%type218415218417%_
              (let ((_%type218419%_ _%$%type218415218417%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type218419%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type218419%_ '1 '#f '#f)))
                    _%type218419%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym218410%_)
        (let ((_%table218412%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table218412%_ _%sym218410%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where218395%_ _%sym218396%_)
        (let ((_%$e218399%_ (gxc#optimizer-lookup-class _%sym218396%_)))
          (if _%$e218399%_
              (let ((_%val218406%_ _%$e218399%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%val218406%_ 'gxc#!class::t))
                    _%val218406%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/compiler/optimize-base
                       'contract:
                       '(!class? val)
                       'value:
                       _%val218406%_)
                      '#!void)))
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where218395%_
                   _%sym218396%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass218393%_)
        (let ((__tmp222391
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp222391 _%klass218393%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t218390%_ _%method218391%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t218390%_)
         _%method218391%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym218388%_)
        (let ((__tmp222392
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp222392 _%sym218388%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e217863%_
                  (lambda (_%t218329%_)
                    (if (symbol? _%t218329%_)
                        (_%type-e217863%_
                         (gxc#optimizer-lookup-type _%t218329%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t218329%_
                               'gxc#!lambda::t))
                            (let* ((_%t218333%_ _%t218329%_)
                                   (_%t218337%_ _%t218333%_))
                              (_%__lambda-type217989%_ _%t218337%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t218329%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t218349%_ _%t218329%_)
                                       (_%t218353%_ _%t218349%_))
                                  (_%__kw-lambda-type218112%_ _%t218353%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t218329%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t218364%_ _%t218329%_)
                                           (_%t218368%_ _%t218364%_))
                                      (_%__kw-lambda-primary-type218235%_
                                       _%t218368%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t218329%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t218379%_ _%t218329%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t218379%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp222393
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t218379%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp222393
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t218329%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t218329%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type217989%_
                  (lambda (_%t218317%_)
                    (let ((_%t218320%_ _%t218317%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t218320%_ '4 '#f '#f))
                          (_%type-e217863%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t218320%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t218320%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp222394
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t218320%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp222394
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type217990%_
                  (lambda (_%t218305%_)
                    (let ((_%t218308%_ _%t218305%_))
                      (_%__lambda-type217989%_ _%t218308%_))))
                 (_%__kw-lambda-type218112%_
                  (lambda (_%t218293%_)
                    (let ((_%t218296%_ _%t218293%_))
                      (_%type-e217863%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t218296%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type218113%_
                  (lambda (_%t218281%_)
                    (let ((_%t218284%_ _%t218281%_))
                      (_%__kw-lambda-type218112%_ _%t218284%_))))
                 (_%__kw-lambda-primary-type218235%_
                  (lambda (_%t218269%_)
                    (let ((_%t218272%_ _%t218269%_))
                      (_%type-e217863%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t218272%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type218236%_
                  (lambda (_%t218257%_)
                    (let ((_%t218260%_ _%t218257%_))
                      (_%__kw-lambda-primary-type218235%_ _%t218260%_)))))
          (let* ((_%ht1218238%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2218240%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result218242%_
                  (if _%ht1218238%_
                      (let () (declare (not safe)) (hash->list _%ht1218238%_))
                      '()))
                 (_%result218244%_
                  (if _%ht2218240%_
                      (let ((__tmp222395
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2218240%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result218242%_ __tmp222395))
                      _%result218242%_)))
            (for-each
             (lambda (_%p218247%_)
               (let* ((_%t218249%_ (cdr _%p218247%_))
                      (_%tr218251%_ (_%type-e217863%_ _%t218249%_)))
                 (set-cdr! _%p218247%_ _%tr218251%_)))
             _%result218244%_)
            (list-sort
             (lambda (_%a218254%_ _%b218255%_)
               (let ((__tmp222397 (symbol->string (car _%a218254%_)))
                     (__tmp222396 (symbol->string (car _%b218255%_))))
                 (declare (not safe))
                 (##string<? __tmp222397 __tmp222396)))
             _%result218244%_)))))))
