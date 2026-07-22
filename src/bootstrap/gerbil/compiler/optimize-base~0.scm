(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1784461445)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp222090 (list)) (__tmp222089 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp222090
         '(type classes ssxi methods)
         __tmp222089
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args221723%_
        (apply make-instance gxc#optimizer-info::t _%$args221723%_)))
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
      (lambda (_%self221710%_)
        (let ((_%self221713%_ _%self221710%_))
          (if (let ((__tmp222091
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self221713%_))))
                (declare (not safe))
                (##fx< '4 __tmp222091))
              (begin
                (let ((__tmp222092
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self221713%_
                   __tmp222092
                   '1
                   '#f
                   '#f))
                (let ((__tmp222093
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self221713%_
                   __tmp222093
                   '2
                   '#f
                   '#f))
                (let ((__tmp222094
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self221713%_
                   __tmp222094
                   '3
                   '#f
                   '#f))
                (let ((__tmp222095
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self221713%_
                   __tmp222095
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp222096
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self221713%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self221713%_
                       '4
                       __tmp222096))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp222098 (list))
            (__tmp222097
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!type::t
         '!type
         __tmp222098
         '(id)
         __tmp222097
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args221585%_
        (apply make-instance gxc#!type::t _%$args221585%_)))
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
      (let ((__tmp222100 (list gxc#!type::t))
            (__tmp222099 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!abort::t
         '!abort
         __tmp222100
         '()
         __tmp222099
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args221582%_
        (apply make-instance gxc#!abort::t _%$args221582%_)))
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
      (let ((__tmp222102 (list gxc#!type::t))
            (__tmp222101 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!alias::t
         '!alias
         __tmp222102
         '()
         __tmp222101
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args221579%_
        (apply make-instance gxc#!alias::t _%$args221579%_)))
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
      (let ((__tmp222104 (list))
            (__tmp222103
             (cons (cons 'final: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!signature::t
         '!signature
         __tmp222104
         '(return effect arguments unchecked origin)
         __tmp222103
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args221576%_
        (apply make-instance gxc#!signature::t _%$args221576%_)))
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
      (let ((__tmp222106 (list gxc#!type::t))
            (__tmp222105
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp222106
         '(signature)
         __tmp222105
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
      (lambda (_%id221563%_ _%signature221564%_)
        (let ((_%signature221567%_ _%signature221564%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id221563%_ _%signature221567%_))))
    (define gxc#make-!procedure
      (lambda (_%id221541%_ _%signature221543%_)
        (if (or (not _%signature221543%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%signature221543%_
                   'gxc#!signature::t)))
            (let ((_%signature221553%_ _%signature221543%_))
              (gxc#__make-!procedure _%id221541%_ _%signature221553%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature221543%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj221520%_ _%signature221521%_)
        (let* ((_%$obj221524%_ _%$obj221520%_)
               (_%signature221532%_ _%signature221521%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221524%_
           _%signature221532%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj221487%_ _%signature221489%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221487%_ 'gxc#!procedure::t))
            (let ((_%$obj221494%_ _%$obj221487%_))
              (if (or (not _%signature221489%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221489%_
                         'gxc#!signature::t)))
                  (let ((_%signature221510%_ _%signature221489%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj221494%_
                     _%signature221510%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221489%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj221487%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp222108 (list gxc#!type::t))
            (__tmp222107 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp222108
         '(class)
         __tmp222107
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args221484%_
        (apply make-instance gxc#!class-meta::t _%$args221484%_)))
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
      (let ((__tmp222110 (list gxc#!type::t))
            (__tmp222109
             (cons (cons 'struct: '#t)
                   '((equal: . #t) (print: super precedence-list)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!class::t
         '!class
         __tmp222110
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp222109
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args221481%_
        (apply make-instance gxc#!class::t _%$args221481%_)))
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
      (let ((__tmp222112 (list gxc#!procedure::t))
            (__tmp222111 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp222112
         '()
         __tmp222111
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args221478%_
        (apply make-instance gxc#!predicate::t _%$args221478%_)))
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
      (lambda (_%$obj221457%_ _%signature221458%_)
        (let* ((_%$obj221461%_ _%$obj221457%_)
               (_%signature221469%_ _%signature221458%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221461%_
           _%signature221469%_
           '2
           '#f
           '#f))))
    (define gxc#!predicate-signature-set!
      (lambda (_%$obj221424%_ _%signature221426%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221424%_ 'gxc#!predicate::t))
            (let ((_%$obj221431%_ _%$obj221424%_))
              (if (or (not _%signature221426%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221426%_
                         'gxc#!signature::t)))
                  (let ((_%signature221447%_ _%signature221426%_))
                    (gxc#__!predicate-signature-set!
                     _%$obj221431%_
                     _%signature221447%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221426%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!predicate?
               'value:
               _%$obj221424%_)
              '#!void))))
    (define gxc#!constructor::t
      (let ((__tmp222114 (list gxc#!procedure::t))
            (__tmp222113 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp222114
         '()
         __tmp222113
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args221421%_
        (apply make-instance gxc#!constructor::t _%$args221421%_)))
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
      (lambda (_%$obj221400%_ _%signature221401%_)
        (let* ((_%$obj221404%_ _%$obj221400%_)
               (_%signature221412%_ _%signature221401%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221404%_
           _%signature221412%_
           '2
           '#f
           '#f))))
    (define gxc#!constructor-signature-set!
      (lambda (_%$obj221367%_ _%signature221369%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221367%_ 'gxc#!constructor::t))
            (let ((_%$obj221374%_ _%$obj221367%_))
              (if (or (not _%signature221369%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221369%_
                         'gxc#!signature::t)))
                  (let ((_%signature221390%_ _%signature221369%_))
                    (gxc#__!constructor-signature-set!
                     _%$obj221374%_
                     _%signature221390%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221369%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!constructor?
               'value:
               _%$obj221367%_)
              '#!void))))
    (define gxc#!accessor::t
      (let ((__tmp222116 (list gxc#!procedure::t))
            (__tmp222115 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp222116
         '(slot checked?)
         __tmp222115
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args221364%_
        (apply make-instance gxc#!accessor::t _%$args221364%_)))
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
      (lambda (_%$obj221343%_ _%signature221344%_)
        (let* ((_%$obj221347%_ _%$obj221343%_)
               (_%signature221355%_ _%signature221344%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221347%_
           _%signature221355%_
           '2
           '#f
           '#f))))
    (define gxc#!accessor-signature-set!
      (lambda (_%$obj221310%_ _%signature221312%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221310%_ 'gxc#!accessor::t))
            (let ((_%$obj221317%_ _%$obj221310%_))
              (if (or (not _%signature221312%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221312%_
                         'gxc#!signature::t)))
                  (let ((_%signature221333%_ _%signature221312%_))
                    (gxc#__!accessor-signature-set!
                     _%$obj221317%_
                     _%signature221333%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221312%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!accessor?
               'value:
               _%$obj221310%_)
              '#!void))))
    (define gxc#!mutator::t
      (let ((__tmp222118 (list gxc#!procedure::t))
            (__tmp222117 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp222118
         '(slot checked?)
         __tmp222117
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args221307%_
        (apply make-instance gxc#!mutator::t _%$args221307%_)))
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
      (lambda (_%$obj221286%_ _%signature221287%_)
        (let* ((_%$obj221290%_ _%$obj221286%_)
               (_%signature221298%_ _%signature221287%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221290%_
           _%signature221298%_
           '2
           '#f
           '#f))))
    (define gxc#!mutator-signature-set!
      (lambda (_%$obj221253%_ _%signature221255%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221253%_ 'gxc#!mutator::t))
            (let ((_%$obj221260%_ _%$obj221253%_))
              (if (or (not _%signature221255%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221255%_
                         'gxc#!signature::t)))
                  (let ((_%signature221276%_ _%signature221255%_))
                    (gxc#__!mutator-signature-set!
                     _%$obj221260%_
                     _%signature221276%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221255%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!mutator?
               'value:
               _%$obj221253%_)
              '#!void))))
    (define gxc#!interface::t
      (let ((__tmp222120 (list gxc#!type::t))
            (__tmp222119 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!interface::t
         '!interface
         __tmp222120
         '(methods)
         __tmp222119
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args221250%_
        (apply make-instance gxc#!interface::t _%$args221250%_)))
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
      (let ((__tmp222122 (list gxc#!procedure::t))
            (__tmp222121 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp222122
         '(arity dispatch inline inline-typedecl)
         __tmp222121
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args221247%_
        (apply make-instance gxc#!lambda::t _%$args221247%_)))
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
      (lambda (_%$obj221226%_ _%signature221227%_)
        (let* ((_%$obj221230%_ _%$obj221226%_)
               (_%signature221238%_ _%signature221227%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221230%_
           _%signature221238%_
           '2
           '#f
           '#f))))
    (define gxc#!lambda-signature-set!
      (lambda (_%$obj221193%_ _%signature221195%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221193%_ 'gxc#!lambda::t))
            (let ((_%$obj221200%_ _%$obj221193%_))
              (if (or (not _%signature221195%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221195%_
                         'gxc#!signature::t)))
                  (let ((_%signature221216%_ _%signature221195%_))
                    (gxc#__!lambda-signature-set!
                     _%$obj221200%_
                     _%signature221216%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221195%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!lambda?
               'value:
               _%$obj221193%_)
              '#!void))))
    (define gxc#!case-lambda::t
      (let ((__tmp222124 (list gxc#!procedure::t))
            (__tmp222123 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp222124
         '(clauses)
         __tmp222123
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args221190%_
        (apply make-instance gxc#!case-lambda::t _%$args221190%_)))
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
      (lambda (_%$obj221169%_ _%signature221170%_)
        (let* ((_%$obj221173%_ _%$obj221169%_)
               (_%signature221181%_ _%signature221170%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221173%_
           _%signature221181%_
           '2
           '#f
           '#f))))
    (define gxc#!case-lambda-signature-set!
      (lambda (_%$obj221136%_ _%signature221138%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221136%_ 'gxc#!case-lambda::t))
            (let ((_%$obj221143%_ _%$obj221136%_))
              (if (or (not _%signature221138%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221138%_
                         'gxc#!signature::t)))
                  (let ((_%signature221159%_ _%signature221138%_))
                    (gxc#__!case-lambda-signature-set!
                     _%$obj221143%_
                     _%signature221159%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221138%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!case-lambda?
               'value:
               _%$obj221136%_)
              '#!void))))
    (define gxc#!kw-lambda::t
      (let ((__tmp222126 (list gxc#!procedure::t))
            (__tmp222125 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp222126
         '(table dispatch)
         __tmp222125
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args221133%_
        (apply make-instance gxc#!kw-lambda::t _%$args221133%_)))
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
      (lambda (_%$obj221112%_ _%signature221113%_)
        (let* ((_%$obj221116%_ _%$obj221112%_)
               (_%signature221124%_ _%signature221113%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221116%_
           _%signature221124%_
           '2
           '#f
           '#f))))
    (define gxc#!kw-lambda-signature-set!
      (lambda (_%$obj221079%_ _%signature221081%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj221079%_ 'gxc#!kw-lambda::t))
            (let ((_%$obj221086%_ _%$obj221079%_))
              (if (or (not _%signature221081%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221081%_
                         'gxc#!signature::t)))
                  (let ((_%signature221102%_ _%signature221081%_))
                    (gxc#__!kw-lambda-signature-set!
                     _%$obj221086%_
                     _%signature221102%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221081%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!kw-lambda?
               'value:
               _%$obj221079%_)
              '#!void))))
    (define gxc#!kw-lambda-primary::t
      (let ((__tmp222128 (list gxc#!procedure::t))
            (__tmp222127 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp222128
         '(keys main)
         __tmp222127
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args221076%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args221076%_)))
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
      (lambda (_%$obj221055%_ _%signature221056%_)
        (let* ((_%$obj221059%_ _%$obj221055%_)
               (_%signature221067%_ _%signature221056%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj221059%_
           _%signature221067%_
           '2
           '#f
           '#f))))
    (define gxc#!kw-lambda-primary-signature-set!
      (lambda (_%$obj221022%_ _%signature221024%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj221022%_
               'gxc#!kw-lambda-primary::t))
            (let ((_%$obj221029%_ _%$obj221022%_))
              (if (or (not _%signature221024%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature221024%_
                         'gxc#!signature::t)))
                  (let ((_%signature221045%_ _%signature221024%_))
                    (gxc#__!kw-lambda-primary-signature-set!
                     _%$obj221029%_
                     _%signature221045%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature221024%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!kw-lambda-primary?
               'value:
               _%$obj221022%_)
              '#!void))))
    (define gxc#!primitive::t
      (let ((__tmp222129 (list)))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp222129
         '()
         '((equal: . #t))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args221019%_
        (apply make-instance gxc#!primitive::t _%$args221019%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp222131 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp222130 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp222131
         '()
         __tmp222130
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args221016%_
        (apply make-instance gxc#!primitive-predicate::t _%$args221016%_)))
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
      (lambda (_%$obj220995%_ _%signature220996%_)
        (let* ((_%$obj220999%_ _%$obj220995%_)
               (_%signature221007%_ _%signature220996%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj220999%_
           _%signature221007%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-predicate-signature-set!
      (lambda (_%$obj220962%_ _%signature220964%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj220962%_
               'gxc#!primitive-predicate::t))
            (let ((_%$obj220969%_ _%$obj220962%_))
              (if (or (not _%signature220964%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature220964%_
                         'gxc#!signature::t)))
                  (let ((_%signature220985%_ _%signature220964%_))
                    (gxc#__!primitive-predicate-signature-set!
                     _%$obj220969%_
                     _%signature220985%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature220964%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-predicate?
               'value:
               _%$obj220962%_)
              '#!void))))
    (define gxc#!primitive-lambda::t
      (let ((__tmp222133 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp222132 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp222133
         '()
         __tmp222132
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args220959%_
        (apply make-instance gxc#!primitive-lambda::t _%$args220959%_)))
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
      (lambda (_%$obj220938%_ _%signature220939%_)
        (let* ((_%$obj220942%_ _%$obj220938%_)
               (_%signature220950%_ _%signature220939%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj220942%_
           _%signature220950%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-lambda-signature-set!
      (lambda (_%$obj220905%_ _%signature220907%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj220905%_
               'gxc#!primitive-lambda::t))
            (let ((_%$obj220912%_ _%$obj220905%_))
              (if (or (not _%signature220907%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature220907%_
                         'gxc#!signature::t)))
                  (let ((_%signature220928%_ _%signature220907%_))
                    (gxc#__!primitive-lambda-signature-set!
                     _%$obj220912%_
                     _%signature220928%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature220907%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-lambda?
               'value:
               _%$obj220905%_)
              '#!void))))
    (define gxc#!primitive-case-lambda::t
      (let ((__tmp222135 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp222134 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (__make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp222135
         '()
         __tmp222134
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args220902%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args220902%_)))
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
      (lambda (_%$obj220881%_ _%signature220882%_)
        (let* ((_%$obj220885%_ _%$obj220881%_)
               (_%signature220893%_ _%signature220882%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj220885%_
           _%signature220893%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-case-lambda-signature-set!
      (lambda (_%$obj220848%_ _%signature220850%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj220848%_
               'gxc#!primitive-case-lambda::t))
            (let ((_%$obj220855%_ _%$obj220848%_))
              (if (or (not _%signature220850%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature220850%_
                         'gxc#!signature::t)))
                  (let ((_%signature220871%_ _%signature220850%_))
                    (gxc#__!primitive-case-lambda-signature-set!
                     _%$obj220855%_
                     _%signature220871%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature220850%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-case-lambda?
               'value:
               _%$obj220848%_)
              '#!void))))
    (define gxc#!abort:::init!
      (lambda (_%self220835%_)
        (let ((_%self220838%_ _%self220835%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self220838%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self220698%_ _%klass220699%_)
        (let ((_%self220702%_ _%self220698%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self220702%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220702%_
             _%klass220699%_
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
      (lambda (_%self220388%_
               _%id220389%_
               _%super220390%_
               _%slots220391%_
               _%ctor-method220392%_
               _%struct?220393%_
               _%final?220394%_
               _%system?220395%_
               _%metaclass220396%_)
        (let ((_%self220399%_ _%self220388%_))
          (let _%lp220410%_ ((_%rest220412%_ _%super220390%_))
            (let* ((_%$%rest220413220421%_ _%rest220412%_)
                   (_%$%else220415220429%_ (lambda () '#!void))
                   (_%$%K220417220435%_
                    (lambda (_%rest220432%_ _%super-id220433%_)
                      (if (let ((__tmp222136
                                 (gxc#optimizer-resolve-class
                                  (list '!class _%id220389%_)
                                  _%super-id220433%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp222136 '8 '#f '#f))
                          (let ((__tmp222137 (list '!class _%id220389%_)))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp222137
                             _%super-id220433%_))
                          '#!void)
                      (_%lp220410%_ _%rest220432%_))))
              (if (pair? _%$%rest220413220421%_)
                  (let ((_%$%hd220418220438%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest220413220421%_)))
                        (_%$%tl220419220440%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest220413220421%_))))
                    (let* ((_%super-id220443%_ _%$%hd220418220438%_)
                           (_%rest220445%_ _%$%tl220419220440%_))
                      (_%$%K220417220435%_ _%rest220445%_ _%super-id220443%_)))
                  '#!void)))
          (let* ((_%ctor-method220496%_
                  (let ((_%$e220447%_ _%ctor-method220392%_))
                    (if _%$e220447%_
                        _%$e220447%_
                        (let _%lp220450%_ ((_%rest220452%_ _%super220390%_)
                                           (_%method220453%_ '#f))
                          (let* ((_%$%rest220454220462%_ _%rest220452%_)
                                 (_%$%else220456220470%_
                                  (lambda () _%method220453%_))
                                 (_%$%K220458220484%_
                                  (lambda (_%rest220473%_ _%super-id220474%_)
                                    (let* ((_%klass220476%_
                                            (gxc#optimizer-resolve-class
                                             (list '!class _%id220389%_)
                                             _%super-id220474%_))
                                           (_%$e220478%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass220476%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e220478%_
                                          (if _%method220453%_
                                              (if (eq? _%$e220478%_
                                                       _%method220453%_)
                                                  (_%lp220450%_
                                                   _%rest220473%_
                                                   _%$e220478%_)
                                                  (let ((__tmp222138
                                                         (list '!class
                                                               _%id220389%_)))
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"conflicting implicit constructor methods"
                                                     __tmp222138
                                                     _%method220453%_
                                                     _%$e220478%_)))
                                              (_%lp220450%_
                                               _%rest220473%_
                                               _%$e220478%_))
                                          (_%lp220450%_
                                           _%rest220473%_
                                           _%method220453%_))))))
                            (if (pair? _%$%rest220454220462%_)
                                (let ((_%$%hd220459220487%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest220454220462%_)))
                                      (_%$%tl220460220489%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest220454220462%_))))
                                  (let* ((_%super-id220492%_
                                          _%$%hd220459220487%_)
                                         (_%rest220494%_ _%$%tl220460220489%_))
                                    (_%$%K220458220484%_
                                     _%rest220494%_
                                     _%super-id220492%_)))
                                (_%$%else220456220470%_)))))))
                 (_g222139_
                  (let ((__tmp222143
                         (lambda (_%klass-id220498%_)
                           (cons _%klass-id220498%_
                                 (let ((__tmp222144
                                        (gxc#optimizer-resolve-class
                                         (list '!class _%id220389%_)
                                         _%klass-id220498%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp222144
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp222141
                         (lambda (_%klass-id220500%_)
                           (let ((__tmp222142
                                  (gxc#optimizer-resolve-class
                                   (list '!class _%id220389%_)
                                   _%klass-id220500%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp222142
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp222143
                     __tmp222141
                     eq?
                     identity
                     '()
                     _%super220390%_))))
            (begin
              (let ((_g222140_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g222139_)
                           (##values-length _g222139_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g222140_ 2)))
                    (error "Context expects 2 values" _g222140_)))
              (let ((_%precedence-list220502%_
                     (let () (declare (not safe)) (##values-ref _g222139_ 0)))
                    (_%base-struct220503%_
                     (let () (declare (not safe)) (##values-ref _g222139_ 1))))
                (let* ((_%precedence-list220547%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id220389%_ '(t object class)))
                            _%precedence-list220502%_
                            (if (memq 'object::t _%precedence-list220502%_)
                                _%precedence-list220502%_
                                (if _%system?220395%_
                                    (if (memq 't::t _%precedence-list220502%_)
                                        _%precedence-list220502%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list220502%_
                                           '(t::t))))
                                    (let _%loop220509%_ ((_%tail220511%_
                                                          _%precedence-list220502%_)
                                                         (_%head220512%_ '()))
                                      (let* ((_%$%tail220513220521%_
                                              _%tail220511%_)
                                             (_%$%else220515220529%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head220512%_))))
                                             (_%$%K220517220535%_
                                              (lambda (_%rest220532%_
                                                       _%hd220533%_)
                                                (if (eq? _%hd220533%_ 't::t)
                                                    (let ((__tmp222145
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail220511%_)))
              (declare (not safe))
              (foldl__0 cons __tmp222145 _%head220512%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop220509%_
                                                     _%rest220532%_
                                                     (cons _%hd220533%_
                                                           _%head220512%_))))))
                                        (if (pair? _%$%tail220513220521%_)
                                            (let ((_%$%hd220518220538%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tail220513220521%_)))
                                                  (_%$%tl220519220540%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tail220513220521%_))))
                                              (let* ((_%hd220543%_
                                                      _%$%hd220518220538%_)
                                                     (_%rest220545%_
                                                      _%$%tl220519220540%_))
                                                (_%$%K220517220535%_
                                                 _%rest220545%_
                                                 _%hd220543%_)))
                                            (_%$%else220515220529%_))))))))
                       (_%fields220549%_
                        (gxc#compute-class-fields
                         (list '!class _%id220389%_)
                         _%precedence-list220547%_
                         _%slots220391%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220399%_
                     _%id220389%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220399%_
                     _%super220390%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220399%_
                     _%precedence-list220547%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220399%_
                     _%slots220391%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220399%_
                     _%fields220549%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220399%_
                     _%ctor-method220496%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220399%_
                     _%struct?220393%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220399%_
                     _%final?220394%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self220399%_
                     _%metaclass220396%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self220552%_
               _%id220553%_
               _%super220554%_
               _%precedence-list220555%_
               _%slots220556%_
               _%fields220557%_
               _%constructor220558%_
               _%struct?220559%_
               _%final?220560%_
               _%system?220561%_
               _%metaclass220562%_
               _%methods220563%_)
        (let ((_%self220566%_ _%self220552%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220566%_
             _%id220553%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220566%_
             _%super220554%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220566%_
             _%precedence-list220555%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220566%_
             _%slots220556%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220566%_
             _%fields220557%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220566%_
             _%constructor220558%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220566%_
             _%struct?220559%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220566%_
             _%final?220560%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220566%_
             _%metaclass220562%_
             '10
             '#f
             '#f))
          (if _%methods220563%_
              (let ((__tmp222146
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods220563%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self220566%_
                 __tmp222146
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g222147_
        (let ((_g222148_ (let () (declare (not safe)) (##length _g222147_))))
          (cond ((let () (declare (not safe)) (##fx= _g222148_ 9))
                 (apply gxc#!class:::init!__0 _g222147_))
                ((let () (declare (not safe)) (##fx= _g222148_ 12))
                 (apply gxc#!class:::init!__1 _g222147_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g222147_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where220257%_
               _%precedence-list220258%_
               _%direct-slots220259%_)
        (let ((__tmp222150
               (lambda (_%mixin220261%_)
                 (let ((__tmp222151
                        (gxc#optimizer-resolve-class
                         _%where220257%_
                         _%mixin220261%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp222151 '5 '#f '#f))))
              (__tmp222149
               (lambda (_%slot-list220263%_ _%slot-table220264%_)
                 (cdr _%slot-list220263%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list220258%_
           _%direct-slots220259%_
           __tmp222150
           __tmp222149))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass220216%_ _%slot220217%_)
        (let _%lp220219%_ ((_%rest220221%_
                            (##structure-ref
                             _%klass220216%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset220222%_ '1))
          (let* ((_%$%rest220223220231%_ _%rest220221%_)
                 (_%$%else220225220239%_
                  (lambda ()
                    (let ((__tmp222153
                           (##structure-ref
                            _%klass220216%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp222152
                           (##structure-ref
                            _%klass220216%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp222153
                       __tmp222152
                       _%slot220217%_))))
                 (_%$%K220227220245%_
                  (lambda (_%rest220242%_ _%s220243%_)
                    (if (eq? _%s220243%_ _%slot220217%_)
                        _%offset220222%_
                        (_%lp220219%_
                         _%rest220242%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset220222%_ '1)))))))
            (if (pair? _%$%rest220223220231%_)
                (let ((_%$%hd220228220248%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest220223220231%_)))
                      (_%$%tl220229220250%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest220223220231%_))))
                  (let* ((_%s220253%_ _%$%hd220228220248%_)
                         (_%rest220255%_ _%$%tl220229220250%_))
                    (_%$%K220227220245%_ _%rest220255%_ _%s220253%_)))
                (_%$%else220225220239%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass220174%_ _%slot220175%_)
        (if (gxc#!class-struct-slot? _%klass220174%_ _%slot220175%_)
            _%klass220174%_
            (let _%lp220177%_ ((_%rest220179%_
                                (##structure-ref
                                 _%klass220174%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%$%rest220180220188%_ _%rest220179%_)
                     (_%$%else220182220196%_ (lambda () '#f))
                     (_%$%K220184220204%_
                      (lambda (_%rest220199%_ _%super220200%_)
                        (let ((_%super-class220202%_
                               (gxc#optimizer-resolve-class
                                (list '!class-slot-find-struct
                                      (##structure-ref
                                       _%klass220174%_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      _%slot220175%_)
                                _%super220200%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class220202%_
                               _%slot220175%_)
                              _%super-class220202%_
                              (_%lp220177%_ _%rest220199%_))))))
                (if (pair? _%$%rest220180220188%_)
                    (let ((_%$%hd220185220207%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest220180220188%_)))
                          (_%$%tl220186220209%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest220180220188%_))))
                      (let* ((_%super220212%_ _%$%hd220185220207%_)
                             (_%rest220214%_ _%$%tl220186220209%_))
                        (_%$%K220184220204%_ _%rest220214%_ _%super220212%_)))
                    (_%$%else220182220196%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass220171%_ _%slot220172%_)
        (if (##structure-ref _%klass220171%_ '7 gxc#!class::t '#f)
            (memq _%slot220172%_
                  (##structure-ref _%klass220171%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self220117%_ _%id220118%_)
        (let ((_%self220121%_ _%self220117%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220121%_
             _%id220118%_
             '1
             '#f
             '#f))
          (let* ((_%$obj220132%_ _%self220121%_)
                 (_%signature220135%_
                  (let ((__obj222084
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
                       __obj222084
                       'boolean::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222084
                       '(pure predicate)
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222084
                       '(t::t)
                       '3
                       '#f
                       '#f))
                    __obj222084))
                 (_%$obj220140%_ _%$obj220132%_))
            (if (or (not _%signature220135%_) '#t)
                (let ((_%signature220161%_ _%signature220135%_))
                  (gxc#__!predicate-signature-set!
                   _%$obj220140%_
                   _%signature220161%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature220135%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self219941%_ _%id219942%_)
        (let ((_%self219945%_ _%self219941%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219945%_
             _%id219942%_
             '1
             '#f
             '#f))
          (let* ((_%$obj219956%_ _%self219945%_)
                 (_%signature219959%_
                  (let ((__obj222085
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
                       __obj222085
                       _%id219942%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222085
                       '(alloc)
                       '2
                       '#f
                       '#f))
                    __obj222085))
                 (_%$obj219964%_ _%$obj219956%_))
            (if (or (not _%signature219959%_) '#t)
                (let ((_%signature219985%_ _%signature219959%_))
                  (gxc#__!constructor-signature-set!
                   _%$obj219964%_
                   _%signature219985%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature219959%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       ':init!
       gxc#!constructor:::init!
       '#f))
    (define gxc#!accessor:::init!
      (lambda (_%self219763%_ _%id219764%_ _%slot219765%_ _%checked?219766%_)
        (let ((_%self219769%_ _%self219763%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219769%_
             _%id219764%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219769%_
             _%slot219765%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219769%_
             _%checked?219766%_
             '4
             '#f
             '#f))
          (let* ((_%$obj219780%_ _%self219769%_)
                 (_%signature219783%_
                  (let ((__obj222086
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
                       __obj222086
                       't::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222086
                       '(pure)
                       '2
                       '#f
                       '#f))
                    (let ((__tmp222154 (cons _%id219764%_ '())))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222086
                       __tmp222154
                       '3
                       '#f
                       '#f))
                    __obj222086))
                 (_%$obj219788%_ _%$obj219780%_))
            (if (or (not _%signature219783%_) '#t)
                (let ((_%signature219809%_ _%signature219783%_))
                  (gxc#__!accessor-signature-set!
                   _%$obj219788%_
                   _%signature219809%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature219783%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self219585%_ _%id219586%_ _%slot219587%_ _%checked?219588%_)
        (let ((_%self219591%_ _%self219585%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219591%_
             _%id219586%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219591%_
             _%slot219587%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219591%_
             _%checked?219588%_
             '4
             '#f
             '#f))
          (let* ((_%$obj219602%_ _%self219591%_)
                 (_%signature219605%_
                  (let ((__obj222087
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
                       __obj222087
                       'void::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222087
                       '(mut)
                       '2
                       '#f
                       '#f))
                    (let ((__tmp222155 (cons _%id219586%_ (cons 't::t '()))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222087
                       __tmp222155
                       '3
                       '#f
                       '#f))
                    __obj222087))
                 (_%$obj219610%_ _%$obj219602%_))
            (if (or (not _%signature219605%_) '#t)
                (let ((_%signature219631%_ _%signature219605%_))
                  (gxc#__!mutator-signature-set!
                   _%$obj219610%_
                   _%signature219631%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature219605%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords219390%_
               _%$%signature219387219391%_
               _%self219392%_
               _%arity219393%_
               _%dispatch219394%_)
        (let* ((_%signature219396%_
                (if (eq? _%$%signature219387219391%_ absent-value)
                    '#f
                    _%$%signature219387219391%_))
               (_%self219399%_ _%self219392%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self219399%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219399%_
             _%arity219393%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219399%_
             _%dispatch219394%_
             '4
             '#f
             '#f))
          (let* ((_%$obj219411%_ _%self219399%_)
                 (_%signature219414%_ _%signature219396%_)
                 (_%$obj219419%_ _%$obj219411%_))
            (if (or (not _%signature219414%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%signature219414%_
                       'gxc#!signature::t)))
                (let ((_%signature219440%_ _%signature219414%_))
                  (gxc#__!lambda-signature-set!
                   _%$obj219419%_
                   _%signature219440%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature219414%_)
                  '#!void))))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords219453%_ . _%args219454%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords219453%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords219453%_
                  'signature:
                  absent-value))
               _%args219454%_)))
    (define gxc#!lambda:::init!
      (lambda _%$%args219388219460%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%$%args219388219460%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords219192%_
               _%$%signature219189219193%_
               _%self219194%_
               _%clauses219195%_)
        (let* ((_%signature219197%_
                (if (eq? _%$%signature219189219193%_ absent-value)
                    '#f
                    _%$%signature219189219193%_))
               (_%self219200%_ _%self219194%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self219200%_ 'procedure '1 '#f '#f))
          (let* ((_%$obj219212%_ _%self219200%_)
                 (_%signature219215%_ _%signature219197%_)
                 (_%$obj219220%_ _%$obj219212%_))
            (if (or (not _%signature219215%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%signature219215%_
                       'gxc#!signature::t)))
                (let ((_%signature219241%_ _%signature219215%_))
                  (gxc#__!case-lambda-signature-set!
                   _%$obj219220%_
                   _%signature219241%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature219215%_)
                  '#!void)))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219200%_
             _%clauses219195%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords219254%_ . _%args219255%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords219254%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords219254%_
                  'signature:
                  absent-value))
               _%args219255%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%$%args219190219261%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%$%args219190219261%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self219050%_ _%tab219051%_ _%dispatch219052%_)
        (let ((_%self219055%_ _%self219050%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self219055%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219055%_
             _%tab219051%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self219055%_
             _%dispatch219052%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self218912%_ _%keys218913%_ _%main218914%_)
        (let ((_%self218917%_ _%self218912%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self218917%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218917%_
             _%keys218913%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218917%_
             _%main218914%_
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
      (lambda (_%self218492%_ _%id218493%_)
        (let ((_%self218496%_ _%self218492%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self218496%_
             _%id218493%_
             '1
             '#f
             '#f))
          (let* ((_%$obj218507%_ _%self218496%_)
                 (_%signature218510%_
                  (let ((__obj222088
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
                       __obj222088
                       'boolean::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222088
                       '(pure)
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj222088
                       '(t::t)
                       '3
                       '#f
                       '#f))
                    __obj222088))
                 (_%$obj218515%_ _%$obj218507%_))
            (if (or (not _%signature218510%_) '#t)
                (let ((_%signature218536%_ _%signature218510%_))
                  (gxc#__!primitive-predicate-signature-set!
                   _%$obj218515%_
                   _%signature218536%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature218510%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       ':init!
       gxc#!primitive-predicate:::init!
       '#f))
    (define gxc#!class-method-table
      (lambda (_%klass218362%_)
        (let ((_%$e218364%_
               (##structure-ref _%klass218362%_ '11 gxc#!class::t '#f)))
          (if _%$e218364%_
              _%$e218364%_
              (let ((_%tab218368%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass218362%_
                 _%tab218368%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab218368%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass218354%_ _%method218355%_)
        (let ((_%$%tab218356218358%_
               (##structure-ref _%klass218354%_ '11 gxc#!class::t '#f)))
          (if _%$%tab218356218358%_
              (let ((_%tab218360%_ _%$%tab218356218358%_))
                (declare (not safe))
                (hash-get _%tab218360%_ _%method218355%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a218339%_ _%type-b218340%_)
        (if _%type-a218339%_
            (if _%type-b218340%_
                (let ((_%$e218342%_ (eq? _%type-a218339%_ _%type-b218340%_)))
                  (if _%$e218342%_
                      _%$e218342%_
                      (let ((_%$e218345%_
                             (eq? (##structure-ref
                                   _%type-b218340%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e218345%_
                            _%$e218345%_
                            (let ((_%$e218348%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a218339%_
                                          'gxc#!procedure::t))
                                       (eq? (##structure-ref
                                             _%type-b218340%_
                                             '1
                                             gxc#!type::t
                                             '#f)
                                            'procedure)
                                       '#f)))
                              (if _%$e218348%_
                                  _%$e218348%_
                                  (let ((_%$e218351%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-a218339%_
                                                'gxc#!class::t))
                                             (if (let ()
                                                   (declare (not safe))
                                                   (##structure-instance-of?
                                                    _%type-b218340%_
                                                    'gxc#!class::t))
                                                 (gxc#!class-subclass?
                                                  _%type-a218339%_
                                                  _%type-b218340%_)
                                                 '#f)
                                             '#f)))
                                    (if _%$e218351%_
                                        _%$e218351%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-a218339%_
                                               'gxc#!interface::t))
                                            (eq? (##structure-ref
                                                  _%type-b218340%_
                                                  '1
                                                  gxc#!type::t
                                                  '#f)
                                                 'interface-descriptor::t)
                                            '#f)))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a218290%_ _%klass-b218291%_)
        (let ((_%$e218293%_
               (eq? (##structure-ref _%klass-a218290%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b218291%_ '1 gxc#!type::t '#f))))
          (if _%$e218293%_
              _%$e218293%_
              (let ((_%klass-id-b218296%_
                     (##structure-ref _%klass-b218291%_ '1 gxc#!type::t '#f))
                    (_%precedence-list218297%_
                     (##structure-ref _%klass-a218290%_ '3 gxc#!class::t '#f)))
                (let _%loop218299%_ ((_%rest218301%_
                                      _%precedence-list218297%_))
                  (let* ((_%$%rest218302218310%_ _%rest218301%_)
                         (_%$%else218304218318%_ (lambda () '#f))
                         (_%$%K218306218327%_
                          (lambda (_%rest218321%_ _%klass-name218322%_)
                            (let ((_%$e218324%_
                                   (eq? (let ((__tmp222156
                                               (gxc#optimizer-resolve-class
                                                (list 'subclass?
                                                      _%klass-a218290%_
                                                      _%klass-b218291%_)
                                                _%klass-name218322%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp222156
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b218296%_)))
                              (if _%$e218324%_
                                  _%$e218324%_
                                  (_%loop218299%_ _%rest218321%_))))))
                    (if (pair? _%$%rest218302218310%_)
                        (let ((_%$%hd218307218330%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest218302218310%_)))
                              (_%$%tl218308218332%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest218302218310%_))))
                          (let* ((_%klass-name218335%_ _%$%hd218307218330%_)
                                 (_%rest218337%_ _%$%tl218308218332%_))
                            (_%$%K218306218327%_
                             _%rest218337%_
                             _%klass-name218335%_)))
                        (_%$%else218304218318%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type218288%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type218288%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type218288%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc218277%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc218277%_ 'gxc#!procedure::t))
            (let ((_%proc218280%_ _%proc218277%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc218280%_ '2 '#f '#f))
                  (let ((__tmp222157
                         (let ()
                           (declare (not safe))
                           (##unchecked-structure-ref
                            _%proc218280%_
                            '2
                            '#f
                            '#f))))
                    (declare (not safe))
                    (##unchecked-structure-ref __tmp222157 '5 '#f '#f))
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@365.11-365.15"
               'contract:
               '!procedure?
               'value:
               _%proc218277%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym218259%_ _%type218260%_ _%local?218261%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type218260%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym218259%_
                     _%type218260%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym218259%_ '" " _%type218260%_))
        (let ((_%table218263%_
               (if _%local?218261%_
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
          (hash-put! _%table218263%_ _%sym218259%_ _%type218260%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym218268%_ _%type218269%_)
        (let ((_%local?218271%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym218268%_
           _%type218269%_
           _%local?218271%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g222158_
        (let ((_g222159_ (let () (declare (not safe)) (##length _g222158_))))
          (cond ((let () (declare (not safe)) (##fx= _g222159_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g222158_))
                ((let () (declare (not safe)) (##fx= _g222159_ 3))
                 (apply gxc#optimizer-declare-type!__% _g222158_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g222158_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym218253%_ _%type218254%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type218254%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym218253%_
                     _%type218254%_)))
        (let ((_%table218256%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp222160
                 (let () (declare (not safe)) (struct->list _%type218254%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym218253%_ '" " __tmp222160))
          (let ()
            (declare (not safe))
            (hash-put! _%table218256%_ _%sym218253%_ _%type218254%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table218256%_ _%type218254%_ _%sym218253%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym218248%_ _%type218249%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type218249%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym218248%_
                     _%type218249%_)))
        (let ((_%table218251%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table218251%_ _%sym218248%_))
              '#!void
              (begin
                (let ((__tmp222161
                       (let ()
                         (declare (not safe))
                         (struct->list _%type218249%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym218248%_
                   '" "
                   __tmp222161))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table218251%_ _%sym218248%_ _%type218249%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table218251%_
                   _%type218249%_
                   _%sym218248%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym218246%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym218246%_))
        (let ((__tmp222162
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp222162 _%sym218246%_))
        (let ((__tmp222163
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp222163 _%sym218246%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t218214%_
               _%method218215%_
               _%sym218216%_
               _%rebind?218217%_)
        (let ((__tmp222164
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp222164 _%sym218216%_ '#t))
        (let ((_%klass218219%_ (gxc#optimizer-lookup-class _%type-t218214%_)))
          (if _%klass218219%_
              (let* ((_%vtab218221%_ (gxc#!class-method-table _%klass218219%_))
                     (_%$e218223%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab218221%_ _%method218215%_))))
                (if _%$e218223%_
                    (if _%rebind?218217%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose
                             '"declare-method: rebind existing method"
                             _%type-t218214%_
                             '" "
                             _%method218215%_))
                          (let ()
                            (declare (not safe))
                            (hash-put!
                             _%vtab218221%_
                             _%method218215%_
                             _%sym218216%_)))
                        (if (eq? _%$e218223%_ _%sym218216%_)
                            '#!void
                            (let ((__tmp222165
                                   (list 'bind-method!
                                         _%type-t218214%_
                                         _%method218215%_
                                         _%sym218216%_)))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"declare-method: duplicate method declaration"
                               __tmp222165
                               _%method218215%_))))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t218214%_
                         '" "
                         _%method218215%_
                         '" => "
                         _%sym218216%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab218221%_
                         _%method218215%_
                         _%sym218216%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t218214%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t218235%_ _%method218236%_ _%sym218237%_)
        (let ((_%rebind?218239%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t218235%_
           _%method218236%_
           _%sym218237%_
           _%rebind?218239%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g222166_
        (let ((_g222167_ (let () (declare (not safe)) (##length _g222166_))))
          (cond ((let () (declare (not safe)) (##fx= _g222167_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g222166_))
                ((let () (declare (not safe)) (##fx= _g222167_ 4))
                 (apply gxc#optimizer-declare-method!__% _g222166_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g222166_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym218200%_)
        (let ((_%$e218202%_
               (let ((__tmp222168
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym218200%_ __tmp222168))))
          (if _%$e218202%_
              _%$e218202%_
              (let ((_%$e218210%_
                     (let ((_%$%ht218204218206%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%$%ht218204218206%_
                           (let ((_%ht218208%_ _%$%ht218204218206%_))
                             (declare (not safe))
                             (hash-get _%ht218208%_ _%sym218200%_))
                           '#f))))
                (if _%$e218210%_
                    _%$e218210%_
                    (let ((__tmp222169
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp222169 _%sym218200%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym218193%_)
        (let ((_%$%type218194218196%_
               (gxc#optimizer-lookup-type _%sym218193%_)))
          (if _%$%type218194218196%_
              (let ((_%type218198%_ _%$%type218194218196%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type218198%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type218198%_ '1 '#f '#f)))
                    _%type218198%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym218189%_)
        (let ((_%table218191%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table218191%_ _%sym218189%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where218174%_ _%sym218175%_)
        (let ((_%$e218178%_ (gxc#optimizer-lookup-class _%sym218175%_)))
          (if _%$e218178%_
              (let ((_%val218185%_ _%$e218178%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%val218185%_ 'gxc#!class::t))
                    _%val218185%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/compiler/optimize-base
                       'contract:
                       '(!class? val)
                       'value:
                       _%val218185%_)
                      '#!void)))
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where218174%_
                   _%sym218175%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass218172%_)
        (let ((__tmp222170
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp222170 _%klass218172%_))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t218169%_ _%method218170%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t218169%_)
         _%method218170%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym218167%_)
        (let ((__tmp222171
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp222171 _%sym218167%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e217642%_
                  (lambda (_%t218108%_)
                    (if (symbol? _%t218108%_)
                        (_%type-e217642%_
                         (gxc#optimizer-lookup-type _%t218108%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t218108%_
                               'gxc#!lambda::t))
                            (let* ((_%t218112%_ _%t218108%_)
                                   (_%t218116%_ _%t218112%_))
                              (_%__lambda-type217768%_ _%t218116%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t218108%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t218128%_ _%t218108%_)
                                       (_%t218132%_ _%t218128%_))
                                  (_%__kw-lambda-type217891%_ _%t218132%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t218108%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t218143%_ _%t218108%_)
                                           (_%t218147%_ _%t218143%_))
                                      (_%__kw-lambda-primary-type218014%_
                                       _%t218147%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t218108%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t218158%_ _%t218108%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t218158%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (let ((__tmp222172
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##unchecked-structure-ref
                                                              _%t218158%_
                                                              '2
                                                              '#f
                                                              '#f))))
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       __tmp222172
                                                       '1
                                                       '#f
                                                       '#f))
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t218108%_
                                               'gxc#!type::t))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%t218108%_
                                               '1
                                               '#f
                                               '#f))
                                            '#f))))))))
                 (_%__lambda-type217768%_
                  (lambda (_%t218096%_)
                    (let ((_%t218099%_ _%t218096%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t218099%_ '4 '#f '#f))
                          (_%type-e217642%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t218099%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t218099%_
                                       '2
                                       '#f
                                       '#f))
                                    (let ((__tmp222173
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%t218099%_
                                              '2
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       __tmp222173
                                       '1
                                       '#f
                                       '#f))
                                    '#f))))))
                 (_%lambda-type217769%_
                  (lambda (_%t218084%_)
                    (let ((_%t218087%_ _%t218084%_))
                      (_%__lambda-type217768%_ _%t218087%_))))
                 (_%__kw-lambda-type217891%_
                  (lambda (_%t218072%_)
                    (let ((_%t218075%_ _%t218072%_))
                      (_%type-e217642%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t218075%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type217892%_
                  (lambda (_%t218060%_)
                    (let ((_%t218063%_ _%t218060%_))
                      (_%__kw-lambda-type217891%_ _%t218063%_))))
                 (_%__kw-lambda-primary-type218014%_
                  (lambda (_%t218048%_)
                    (let ((_%t218051%_ _%t218048%_))
                      (_%type-e217642%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t218051%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type218015%_
                  (lambda (_%t218036%_)
                    (let ((_%t218039%_ _%t218036%_))
                      (_%__kw-lambda-primary-type218014%_ _%t218039%_)))))
          (let* ((_%ht1218017%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2218019%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result218021%_
                  (if _%ht1218017%_
                      (let () (declare (not safe)) (hash->list _%ht1218017%_))
                      '()))
                 (_%result218023%_
                  (if _%ht2218019%_
                      (let ((__tmp222174
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2218019%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result218021%_ __tmp222174))
                      _%result218021%_)))
            (for-each
             (lambda (_%p218026%_)
               (let* ((_%t218028%_ (cdr _%p218026%_))
                      (_%tr218030%_ (_%type-e217642%_ _%t218028%_)))
                 (set-cdr! _%p218026%_ _%tr218030%_)))
             _%result218023%_)
            (list-sort
             (lambda (_%a218033%_ _%b218034%_)
               (let ((__tmp222176 (symbol->string (car _%a218033%_)))
                     (__tmp222175 (symbol->string (car _%b218034%_))))
                 (declare (not safe))
                 (##string<? __tmp222176 __tmp222175)))
             _%result218023%_)))))))
