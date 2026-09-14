(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1789371534)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp224641 (list)) (__tmp224640 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp224641
         '(type classes ssxi methods)
         __tmp224640
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args224202%_
        (apply make-instance gxc#optimizer-info::t _%$args224202%_)))
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
      (lambda (_%self224189%_)
        (let ((_%self224192%_ _%self224189%_))
          (if (let ((__tmp224642
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self224192%_))))
                (declare (not safe))
                (##fx< '4 __tmp224642))
              (begin
                (let ((__tmp224643
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self224192%_
                   __tmp224643
                   '1
                   '#f
                   '#f))
                (let ((__tmp224644
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self224192%_
                   __tmp224644
                   '2
                   '#f
                   '#f))
                (let ((__tmp224645
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self224192%_
                   __tmp224645
                   '3
                   '#f
                   '#f))
                (let ((__tmp224646
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self224192%_
                   __tmp224646
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp224647
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self224192%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self224192%_
                       '4
                       __tmp224647))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp224649 (list))
            (__tmp224648
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp224649
         '(id)
         __tmp224648
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args224064%_
        (apply make-instance gxc#!type::t _%$args224064%_)))
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
      (let ((__tmp224651 (list gxc#!type::t))
            (__tmp224650 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!abort::t
         '!abort
         __tmp224651
         '()
         __tmp224650
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args224061%_
        (apply make-instance gxc#!abort::t _%$args224061%_)))
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
      (let ((__tmp224653 (list gxc#!type::t))
            (__tmp224652 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp224653
         '()
         __tmp224652
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args224058%_
        (apply make-instance gxc#!alias::t _%$args224058%_)))
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
    (define gxc#!nullable-type::t
      (let ((__tmp224655 (list gxc#!type::t))
            (__tmp224654 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!nullable-type::t
         '!nullable-type
         __tmp224655
         '(base)
         __tmp224654
         '#f)))
    (define gxc#!nullable-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!nullable-type::t)))
    (define gxc#make-!nullable-type
      (lambda _%$args224055%_
        (apply make-instance gxc#!nullable-type::t _%$args224055%_)))
    (define gxc#!nullable-type-base
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!nullable-type::t 'base)))
    (define gxc#!nullable-type-id
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor gxc#!nullable-type::t 'id)))
    (define gxc#!nullable-type-base-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!nullable-type::t 'base)))
    (define gxc#!nullable-type-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator gxc#!nullable-type::t 'id)))
    (define gxc#&!nullable-type-base
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!nullable-type::t 'base)))
    (define gxc#&!nullable-type-id
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor gxc#!nullable-type::t 'id)))
    (define gxc#&!nullable-type-base-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!nullable-type::t 'base)))
    (define gxc#&!nullable-type-id-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator gxc#!nullable-type::t 'id)))
    (define gxc#nullable-type
      (lambda (_%type224049%_)
        (if _%type224049%_
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _%type224049%_
                   'gxc#!nullable-type::t))
                _%type224049%_
                (if (let ((__tmp224656
                           (##structure-ref
                            _%type224049%_
                            '1
                            gxc#!type::t
                            '#f)))
                      (declare (not safe))
                      (##memq __tmp224656 '(t false)))
                    _%type224049%_
                    (let ()
                      (declare (not safe))
                      (##structure
                       gxc#!nullable-type::t
                       'nullable
                       _%type224049%_))))
            '#f)))
    (define gxc#!signature::t
      (let ((__tmp224658 (list))
            (__tmp224657
             (cons (cons 'final: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!signature::t
         '!signature
         __tmp224658
         '(return effect arguments unchecked origin)
         __tmp224657
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args224046%_
        (apply make-instance gxc#!signature::t _%$args224046%_)))
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
      (let ((__tmp224660 (list gxc#!type::t))
            (__tmp224659
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp224660
         '(signature)
         __tmp224659
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
      (lambda (_%id224033%_ _%signature224034%_)
        (let ((_%signature224037%_ _%signature224034%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id224033%_ _%signature224037%_))))
    (define gxc#make-!procedure
      (lambda (_%id224011%_ _%signature224013%_)
        (if (or (not _%signature224013%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%signature224013%_
                   'gxc#!signature::t)))
            (let ((_%signature224023%_ _%signature224013%_))
              (gxc#__make-!procedure _%id224011%_ _%signature224023%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature224013%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj223990%_ _%signature223991%_)
        (let* ((_%$obj223994%_ _%$obj223990%_)
               (_%signature224002%_ _%signature223991%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223994%_
           _%signature224002%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj223957%_ _%signature223959%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223957%_ 'gxc#!procedure::t))
            (let ((_%$obj223964%_ _%$obj223957%_))
              (if (or (not _%signature223959%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223959%_
                         'gxc#!signature::t)))
                  (let ((_%signature223980%_ _%signature223959%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj223964%_
                     _%signature223980%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223959%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj223957%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp224662 (list gxc#!type::t))
            (__tmp224661 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp224662
         '(class)
         __tmp224661
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args223954%_
        (apply make-instance gxc#!class-meta::t _%$args223954%_)))
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
      (let ((__tmp224664 (list gxc#!type::t))
            (__tmp224663
             (cons (cons 'struct: '#t)
                   '((equal: . #t) (print: super precedence-list)))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp224664
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp224663
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args223951%_
        (apply make-instance gxc#!class::t _%$args223951%_)))
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
      (let ((__tmp224666 (list gxc#!procedure::t))
            (__tmp224665 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp224666
         '()
         __tmp224665
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args223948%_
        (apply make-instance gxc#!predicate::t _%$args223948%_)))
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
      (lambda (_%$obj223927%_ _%signature223928%_)
        (let* ((_%$obj223931%_ _%$obj223927%_)
               (_%signature223939%_ _%signature223928%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223931%_
           _%signature223939%_
           '2
           '#f
           '#f))))
    (define gxc#!predicate-signature-set!
      (lambda (_%$obj223894%_ _%signature223896%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223894%_ 'gxc#!predicate::t))
            (let ((_%$obj223901%_ _%$obj223894%_))
              (if (or (not _%signature223896%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223896%_
                         'gxc#!signature::t)))
                  (let ((_%signature223917%_ _%signature223896%_))
                    (gxc#__!predicate-signature-set!
                     _%$obj223901%_
                     _%signature223917%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223896%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!predicate?
               'value:
               _%$obj223894%_)
              '#!void))))
    (define gxc#!constructor::t
      (let ((__tmp224668 (list gxc#!procedure::t))
            (__tmp224667 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp224668
         '()
         __tmp224667
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args223891%_
        (apply make-instance gxc#!constructor::t _%$args223891%_)))
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
      (lambda (_%$obj223870%_ _%signature223871%_)
        (let* ((_%$obj223874%_ _%$obj223870%_)
               (_%signature223882%_ _%signature223871%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223874%_
           _%signature223882%_
           '2
           '#f
           '#f))))
    (define gxc#!constructor-signature-set!
      (lambda (_%$obj223837%_ _%signature223839%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223837%_ 'gxc#!constructor::t))
            (let ((_%$obj223844%_ _%$obj223837%_))
              (if (or (not _%signature223839%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223839%_
                         'gxc#!signature::t)))
                  (let ((_%signature223860%_ _%signature223839%_))
                    (gxc#__!constructor-signature-set!
                     _%$obj223844%_
                     _%signature223860%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223839%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!constructor?
               'value:
               _%$obj223837%_)
              '#!void))))
    (define gxc#!accessor::t
      (let ((__tmp224670 (list gxc#!procedure::t))
            (__tmp224669 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp224670
         '(slot checked?)
         __tmp224669
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args223834%_
        (apply make-instance gxc#!accessor::t _%$args223834%_)))
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
      (lambda (_%$obj223813%_ _%signature223814%_)
        (let* ((_%$obj223817%_ _%$obj223813%_)
               (_%signature223825%_ _%signature223814%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223817%_
           _%signature223825%_
           '2
           '#f
           '#f))))
    (define gxc#!accessor-signature-set!
      (lambda (_%$obj223780%_ _%signature223782%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223780%_ 'gxc#!accessor::t))
            (let ((_%$obj223787%_ _%$obj223780%_))
              (if (or (not _%signature223782%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223782%_
                         'gxc#!signature::t)))
                  (let ((_%signature223803%_ _%signature223782%_))
                    (gxc#__!accessor-signature-set!
                     _%$obj223787%_
                     _%signature223803%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223782%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!accessor?
               'value:
               _%$obj223780%_)
              '#!void))))
    (define gxc#!mutator::t
      (let ((__tmp224672 (list gxc#!procedure::t))
            (__tmp224671 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp224672
         '(slot checked?)
         __tmp224671
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args223777%_
        (apply make-instance gxc#!mutator::t _%$args223777%_)))
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
      (lambda (_%$obj223756%_ _%signature223757%_)
        (let* ((_%$obj223760%_ _%$obj223756%_)
               (_%signature223768%_ _%signature223757%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223760%_
           _%signature223768%_
           '2
           '#f
           '#f))))
    (define gxc#!mutator-signature-set!
      (lambda (_%$obj223723%_ _%signature223725%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223723%_ 'gxc#!mutator::t))
            (let ((_%$obj223730%_ _%$obj223723%_))
              (if (or (not _%signature223725%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223725%_
                         'gxc#!signature::t)))
                  (let ((_%signature223746%_ _%signature223725%_))
                    (gxc#__!mutator-signature-set!
                     _%$obj223730%_
                     _%signature223746%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223725%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!mutator?
               'value:
               _%$obj223723%_)
              '#!void))))
    (define gxc#!interface::t
      (let ((__tmp224674 (list gxc#!type::t))
            (__tmp224673 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!interface::t
         '!interface
         __tmp224674
         '(methods)
         __tmp224673
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args223720%_
        (apply make-instance gxc#!interface::t _%$args223720%_)))
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
      (let ((__tmp224676 (list gxc#!procedure::t))
            (__tmp224675 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp224676
         '(arity dispatch inline inline-typedecl)
         __tmp224675
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args223717%_
        (apply make-instance gxc#!lambda::t _%$args223717%_)))
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
      (lambda (_%$obj223696%_ _%signature223697%_)
        (let* ((_%$obj223700%_ _%$obj223696%_)
               (_%signature223708%_ _%signature223697%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223700%_
           _%signature223708%_
           '2
           '#f
           '#f))))
    (define gxc#!lambda-signature-set!
      (lambda (_%$obj223663%_ _%signature223665%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223663%_ 'gxc#!lambda::t))
            (let ((_%$obj223670%_ _%$obj223663%_))
              (if (or (not _%signature223665%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223665%_
                         'gxc#!signature::t)))
                  (let ((_%signature223686%_ _%signature223665%_))
                    (gxc#__!lambda-signature-set!
                     _%$obj223670%_
                     _%signature223686%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223665%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!lambda?
               'value:
               _%$obj223663%_)
              '#!void))))
    (define gxc#!case-lambda::t
      (let ((__tmp224678 (list gxc#!procedure::t))
            (__tmp224677 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp224678
         '(clauses)
         __tmp224677
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args223660%_
        (apply make-instance gxc#!case-lambda::t _%$args223660%_)))
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
      (lambda (_%$obj223639%_ _%signature223640%_)
        (let* ((_%$obj223643%_ _%$obj223639%_)
               (_%signature223651%_ _%signature223640%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223643%_
           _%signature223651%_
           '2
           '#f
           '#f))))
    (define gxc#!case-lambda-signature-set!
      (lambda (_%$obj223606%_ _%signature223608%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223606%_ 'gxc#!case-lambda::t))
            (let ((_%$obj223613%_ _%$obj223606%_))
              (if (or (not _%signature223608%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223608%_
                         'gxc#!signature::t)))
                  (let ((_%signature223629%_ _%signature223608%_))
                    (gxc#__!case-lambda-signature-set!
                     _%$obj223613%_
                     _%signature223629%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223608%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!case-lambda?
               'value:
               _%$obj223606%_)
              '#!void))))
    (define gxc#!kw-lambda::t
      (let ((__tmp224680 (list gxc#!procedure::t))
            (__tmp224679 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp224680
         '(table dispatch)
         __tmp224679
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args223603%_
        (apply make-instance gxc#!kw-lambda::t _%$args223603%_)))
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
      (lambda (_%$obj223582%_ _%signature223583%_)
        (let* ((_%$obj223586%_ _%$obj223582%_)
               (_%signature223594%_ _%signature223583%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223586%_
           _%signature223594%_
           '2
           '#f
           '#f))))
    (define gxc#!kw-lambda-signature-set!
      (lambda (_%$obj223549%_ _%signature223551%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223549%_ 'gxc#!kw-lambda::t))
            (let ((_%$obj223556%_ _%$obj223549%_))
              (if (or (not _%signature223551%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223551%_
                         'gxc#!signature::t)))
                  (let ((_%signature223572%_ _%signature223551%_))
                    (gxc#__!kw-lambda-signature-set!
                     _%$obj223556%_
                     _%signature223572%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223551%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!kw-lambda?
               'value:
               _%$obj223549%_)
              '#!void))))
    (define gxc#!kw-lambda-primary::t
      (let ((__tmp224682 (list gxc#!procedure::t))
            (__tmp224681 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp224682
         '(keys main)
         __tmp224681
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args223546%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args223546%_)))
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
      (lambda (_%$obj223525%_ _%signature223526%_)
        (let* ((_%$obj223529%_ _%$obj223525%_)
               (_%signature223537%_ _%signature223526%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223529%_
           _%signature223537%_
           '2
           '#f
           '#f))))
    (define gxc#!kw-lambda-primary-signature-set!
      (lambda (_%$obj223492%_ _%signature223494%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj223492%_
               'gxc#!kw-lambda-primary::t))
            (let ((_%$obj223499%_ _%$obj223492%_))
              (if (or (not _%signature223494%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223494%_
                         'gxc#!signature::t)))
                  (let ((_%signature223515%_ _%signature223494%_))
                    (gxc#__!kw-lambda-primary-signature-set!
                     _%$obj223499%_
                     _%signature223515%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223494%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!kw-lambda-primary?
               'value:
               _%$obj223492%_)
              '#!void))))
    (define gxc#!primitive::t
      (let ((__tmp224683 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp224683
         '()
         '((equal: . #t))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args223489%_
        (apply make-instance gxc#!primitive::t _%$args223489%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp224685 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp224684 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp224685
         '()
         __tmp224684
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args223486%_
        (apply make-instance gxc#!primitive-predicate::t _%$args223486%_)))
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
      (lambda (_%$obj223465%_ _%signature223466%_)
        (let* ((_%$obj223469%_ _%$obj223465%_)
               (_%signature223477%_ _%signature223466%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223469%_
           _%signature223477%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-predicate-signature-set!
      (lambda (_%$obj223432%_ _%signature223434%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj223432%_
               'gxc#!primitive-predicate::t))
            (let ((_%$obj223439%_ _%$obj223432%_))
              (if (or (not _%signature223434%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223434%_
                         'gxc#!signature::t)))
                  (let ((_%signature223455%_ _%signature223434%_))
                    (gxc#__!primitive-predicate-signature-set!
                     _%$obj223439%_
                     _%signature223455%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223434%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-predicate?
               'value:
               _%$obj223432%_)
              '#!void))))
    (define gxc#!primitive-lambda::t
      (let ((__tmp224687 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp224686 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp224687
         '()
         __tmp224686
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args223429%_
        (apply make-instance gxc#!primitive-lambda::t _%$args223429%_)))
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
      (lambda (_%$obj223408%_ _%signature223409%_)
        (let* ((_%$obj223412%_ _%$obj223408%_)
               (_%signature223420%_ _%signature223409%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223412%_
           _%signature223420%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-lambda-signature-set!
      (lambda (_%$obj223375%_ _%signature223377%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj223375%_
               'gxc#!primitive-lambda::t))
            (let ((_%$obj223382%_ _%$obj223375%_))
              (if (or (not _%signature223377%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223377%_
                         'gxc#!signature::t)))
                  (let ((_%signature223398%_ _%signature223377%_))
                    (gxc#__!primitive-lambda-signature-set!
                     _%$obj223382%_
                     _%signature223398%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223377%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-lambda?
               'value:
               _%$obj223375%_)
              '#!void))))
    (define gxc#!primitive-case-lambda::t
      (let ((__tmp224689 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp224688 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp224689
         '()
         __tmp224688
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args223372%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args223372%_)))
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
      (lambda (_%$obj223351%_ _%signature223352%_)
        (let* ((_%$obj223355%_ _%$obj223351%_)
               (_%signature223363%_ _%signature223352%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223355%_
           _%signature223363%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-case-lambda-signature-set!
      (lambda (_%$obj223318%_ _%signature223320%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj223318%_
               'gxc#!primitive-case-lambda::t))
            (let ((_%$obj223325%_ _%$obj223318%_))
              (if (or (not _%signature223320%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223320%_
                         'gxc#!signature::t)))
                  (let ((_%signature223341%_ _%signature223320%_))
                    (gxc#__!primitive-case-lambda-signature-set!
                     _%$obj223325%_
                     _%signature223341%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223320%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-case-lambda?
               'value:
               _%$obj223318%_)
              '#!void))))
    (define gxc#!abort:::init!
      (lambda (_%self223305%_)
        (let ((_%self223308%_ _%self223305%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self223308%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self223168%_ _%klass223169%_)
        (let ((_%self223172%_ _%self223168%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self223172%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223172%_
             _%klass223169%_
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
      (lambda (_%self222858%_
               _%id222859%_
               _%super222860%_
               _%slots222861%_
               _%ctor-method222862%_
               _%struct?222863%_
               _%final?222864%_
               _%system?222865%_
               _%metaclass222866%_)
        (let ((_%self222869%_ _%self222858%_))
          (let _%lp222880%_ ((_%rest222882%_ _%super222860%_))
            (let* ((_%$%rest222883222891%_ _%rest222882%_)
                   (_%$%else222885222899%_ (lambda () '#!void))
                   (_%$%K222887222905%_
                    (lambda (_%rest222902%_ _%super-id222903%_)
                      (if (let ((__tmp224690
                                 (gxc#optimizer-resolve-class
                                  (list '!class _%id222859%_)
                                  _%super-id222903%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp224690 '8 '#f '#f))
                          (let ((__tmp224691 (list '!class _%id222859%_)))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp224691
                             _%super-id222903%_))
                          '#!void)
                      (_%lp222880%_ _%rest222902%_))))
              (if (pair? _%$%rest222883222891%_)
                  (let ((_%$%hd222888222908%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest222883222891%_)))
                        (_%$%tl222889222910%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest222883222891%_))))
                    (let* ((_%super-id222913%_ _%$%hd222888222908%_)
                           (_%rest222915%_ _%$%tl222889222910%_))
                      (_%$%K222887222905%_ _%rest222915%_ _%super-id222913%_)))
                  '#!void)))
          (let* ((_%ctor-method222966%_
                  (let ((_%$e222917%_ _%ctor-method222862%_))
                    (if _%$e222917%_
                        _%$e222917%_
                        (let _%lp222920%_ ((_%rest222922%_ _%super222860%_)
                                           (_%method222923%_ '#f))
                          (let* ((_%$%rest222924222932%_ _%rest222922%_)
                                 (_%$%else222926222940%_
                                  (lambda () _%method222923%_))
                                 (_%$%K222928222954%_
                                  (lambda (_%rest222943%_ _%super-id222944%_)
                                    (let* ((_%klass222946%_
                                            (gxc#optimizer-resolve-class
                                             (list '!class _%id222859%_)
                                             _%super-id222944%_))
                                           (_%$e222948%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass222946%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e222948%_
                                          (if _%method222923%_
                                              (if (eq? _%$e222948%_
                                                       _%method222923%_)
                                                  (_%lp222920%_
                                                   _%rest222943%_
                                                   _%$e222948%_)
                                                  (let ((__tmp224692
                                                         (list '!class
                                                               _%id222859%_)))
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"conflicting implicit constructor methods"
                                                     __tmp224692
                                                     _%method222923%_
                                                     _%$e222948%_)))
                                              (_%lp222920%_
                                               _%rest222943%_
                                               _%$e222948%_))
                                          (_%lp222920%_
                                           _%rest222943%_
                                           _%method222923%_))))))
                            (if (pair? _%$%rest222924222932%_)
                                (let ((_%$%hd222929222957%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest222924222932%_)))
                                      (_%$%tl222930222959%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest222924222932%_))))
                                  (let* ((_%super-id222962%_
                                          _%$%hd222929222957%_)
                                         (_%rest222964%_ _%$%tl222930222959%_))
                                    (_%$%K222928222954%_
                                     _%rest222964%_
                                     _%super-id222962%_)))
                                (_%$%else222926222940%_)))))))
                 (_g224693_
                  (let ((__tmp224697
                         (lambda (_%klass-id222968%_)
                           (cons _%klass-id222968%_
                                 (let ((__tmp224698
                                        (gxc#optimizer-resolve-class
                                         (list '!class _%id222859%_)
                                         _%klass-id222968%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp224698
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp224695
                         (lambda (_%klass-id222970%_)
                           (let ((__tmp224696
                                  (gxc#optimizer-resolve-class
                                   (list '!class _%id222859%_)
                                   _%klass-id222970%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp224696
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp224697
                     __tmp224695
                     eq?
                     identity
                     '()
                     _%super222860%_))))
            (begin
              (let ((_g224694_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g224693_)
                           (##values-length _g224693_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g224694_ 2)))
                    (error "Context expects 2 values" _g224694_)))
              (let ((_%precedence-list222972%_
                     (let () (declare (not safe)) (##values-ref _g224693_ 0)))
                    (_%base-struct222973%_
                     (let () (declare (not safe)) (##values-ref _g224693_ 1))))
                (let* ((_%precedence-list223017%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id222859%_ '(t object class)))
                            _%precedence-list222972%_
                            (if (memq 'object::t _%precedence-list222972%_)
                                _%precedence-list222972%_
                                (if _%system?222865%_
                                    (if (memq 't::t _%precedence-list222972%_)
                                        _%precedence-list222972%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list222972%_
                                           '(t::t))))
                                    (let _%loop222979%_ ((_%tail222981%_
                                                          _%precedence-list222972%_)
                                                         (_%head222982%_ '()))
                                      (let* ((_%$%tail222983222991%_
                                              _%tail222981%_)
                                             (_%$%else222985222999%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head222982%_))))
                                             (_%$%K222987223005%_
                                              (lambda (_%rest223002%_
                                                       _%hd223003%_)
                                                (if (eq? _%hd223003%_ 't::t)
                                                    (let ((__tmp224699
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail222981%_)))
              (declare (not safe))
              (foldl__0 cons __tmp224699 _%head222982%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop222979%_
                                                     _%rest223002%_
                                                     (cons _%hd223003%_
                                                           _%head222982%_))))))
                                        (if (pair? _%$%tail222983222991%_)
                                            (let ((_%$%hd222988223008%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tail222983222991%_)))
                                                  (_%$%tl222989223010%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tail222983222991%_))))
                                              (let* ((_%hd223013%_
                                                      _%$%hd222988223008%_)
                                                     (_%rest223015%_
                                                      _%$%tl222989223010%_))
                                                (_%$%K222987223005%_
                                                 _%rest223015%_
                                                 _%hd223013%_)))
                                            (_%$%else222985222999%_))))))))
                       (_%fields223019%_
                        (gxc#compute-class-fields
                         (list '!class _%id222859%_)
                         _%precedence-list223017%_
                         _%slots222861%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222869%_
                     _%id222859%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222869%_
                     _%super222860%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222869%_
                     _%precedence-list223017%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222869%_
                     _%slots222861%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222869%_
                     _%fields223019%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222869%_
                     _%ctor-method222966%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222869%_
                     _%struct?222863%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222869%_
                     _%final?222864%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222869%_
                     _%metaclass222866%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self223022%_
               _%id223023%_
               _%super223024%_
               _%precedence-list223025%_
               _%slots223026%_
               _%fields223027%_
               _%constructor223028%_
               _%struct?223029%_
               _%final?223030%_
               _%system?223031%_
               _%metaclass223032%_
               _%methods223033%_)
        (let ((_%self223036%_ _%self223022%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223036%_
             _%id223023%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223036%_
             _%super223024%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223036%_
             _%precedence-list223025%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223036%_
             _%slots223026%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223036%_
             _%fields223027%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223036%_
             _%constructor223028%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223036%_
             _%struct?223029%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223036%_
             _%final?223030%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223036%_
             _%metaclass223032%_
             '10
             '#f
             '#f))
          (if _%methods223033%_
              (let ((__tmp224700
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods223033%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self223036%_
                 __tmp224700
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g224701_
        (let ((_g224702_ (let () (declare (not safe)) (##length _g224701_))))
          (cond ((let () (declare (not safe)) (##fx= _g224702_ 9))
                 (apply gxc#!class:::init!__0 _g224701_))
                ((let () (declare (not safe)) (##fx= _g224702_ 12))
                 (apply gxc#!class:::init!__1 _g224701_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g224701_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where222727%_
               _%precedence-list222728%_
               _%direct-slots222729%_)
        (let ((__tmp224704
               (lambda (_%mixin222731%_)
                 (let ((__tmp224705
                        (gxc#optimizer-resolve-class
                         _%where222727%_
                         _%mixin222731%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp224705 '5 '#f '#f))))
              (__tmp224703
               (lambda (_%slot-list222733%_ _%slot-table222734%_)
                 (cdr _%slot-list222733%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list222728%_
           _%direct-slots222729%_
           __tmp224704
           __tmp224703))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass222686%_ _%slot222687%_)
        (let _%lp222689%_ ((_%rest222691%_
                            (##structure-ref
                             _%klass222686%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset222692%_ '1))
          (let* ((_%$%rest222693222701%_ _%rest222691%_)
                 (_%$%else222695222709%_
                  (lambda ()
                    (let ((__tmp224707
                           (##structure-ref
                            _%klass222686%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp224706
                           (##structure-ref
                            _%klass222686%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp224707
                       __tmp224706
                       _%slot222687%_))))
                 (_%$%K222697222715%_
                  (lambda (_%rest222712%_ _%s222713%_)
                    (if (eq? _%s222713%_ _%slot222687%_)
                        _%offset222692%_
                        (_%lp222689%_
                         _%rest222712%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset222692%_ '1)))))))
            (if (pair? _%$%rest222693222701%_)
                (let ((_%$%hd222698222718%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest222693222701%_)))
                      (_%$%tl222699222720%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest222693222701%_))))
                  (let* ((_%s222723%_ _%$%hd222698222718%_)
                         (_%rest222725%_ _%$%tl222699222720%_))
                    (_%$%K222697222715%_ _%rest222725%_ _%s222723%_)))
                (_%$%else222695222709%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass222644%_ _%slot222645%_)
        (if (gxc#!class-struct-slot? _%klass222644%_ _%slot222645%_)
            _%klass222644%_
            (let _%lp222647%_ ((_%rest222649%_
                                (##structure-ref
                                 _%klass222644%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%$%rest222650222658%_ _%rest222649%_)
                     (_%$%else222652222666%_ (lambda () '#f))
                     (_%$%K222654222674%_
                      (lambda (_%rest222669%_ _%super222670%_)
                        (let ((_%super-class222672%_
                               (gxc#optimizer-resolve-class
                                (list '!class-slot-find-struct
                                      (##structure-ref
                                       _%klass222644%_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      _%slot222645%_)
                                _%super222670%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class222672%_
                               _%slot222645%_)
                              _%super-class222672%_
                              (_%lp222647%_ _%rest222669%_))))))
                (if (pair? _%$%rest222650222658%_)
                    (let ((_%$%hd222655222677%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest222650222658%_)))
                          (_%$%tl222656222679%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest222650222658%_))))
                      (let* ((_%super222682%_ _%$%hd222655222677%_)
                             (_%rest222684%_ _%$%tl222656222679%_))
                        (_%$%K222654222674%_ _%rest222684%_ _%super222682%_)))
                    (_%$%else222652222666%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass222641%_ _%slot222642%_)
        (if (##structure-ref _%klass222641%_ '7 gxc#!class::t '#f)
            (memq _%slot222642%_
                  (##structure-ref _%klass222641%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self222587%_ _%id222588%_)
        (let ((_%self222591%_ _%self222587%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222591%_
             _%id222588%_
             '1
             '#f
             '#f))
          (let* ((_%$obj222602%_ _%self222591%_)
                 (_%signature222605%_
                  (let ((__obj224635
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
                       __obj224635
                       'boolean::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224635
                       '(pure predicate)
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224635
                       '(t::t)
                       '3
                       '#f
                       '#f))
                    __obj224635))
                 (_%$obj222610%_ _%$obj222602%_))
            (if (or (not _%signature222605%_) '#t)
                (let ((_%signature222631%_ _%signature222605%_))
                  (gxc#__!predicate-signature-set!
                   _%$obj222610%_
                   _%signature222631%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature222605%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self222411%_ _%id222412%_)
        (let ((_%self222415%_ _%self222411%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222415%_
             _%id222412%_
             '1
             '#f
             '#f))
          (let* ((_%$obj222426%_ _%self222415%_)
                 (_%signature222429%_
                  (let ((__obj224636
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
                       __obj224636
                       _%id222412%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224636
                       '(alloc)
                       '2
                       '#f
                       '#f))
                    __obj224636))
                 (_%$obj222434%_ _%$obj222426%_))
            (if (or (not _%signature222429%_) '#t)
                (let ((_%signature222455%_ _%signature222429%_))
                  (gxc#__!constructor-signature-set!
                   _%$obj222434%_
                   _%signature222455%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature222429%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       ':init!
       gxc#!constructor:::init!
       '#f))
    (define gxc#!accessor:::init!
      (lambda (_%self222233%_ _%id222234%_ _%slot222235%_ _%checked?222236%_)
        (let ((_%self222239%_ _%self222233%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222239%_
             _%id222234%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222239%_
             _%slot222235%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222239%_
             _%checked?222236%_
             '4
             '#f
             '#f))
          (let* ((_%$obj222250%_ _%self222239%_)
                 (_%signature222253%_
                  (let ((__obj224637
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
                       __obj224637
                       't::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224637
                       '(pure)
                       '2
                       '#f
                       '#f))
                    (let ((__tmp224708 (cons _%id222234%_ '())))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224637
                       __tmp224708
                       '3
                       '#f
                       '#f))
                    __obj224637))
                 (_%$obj222258%_ _%$obj222250%_))
            (if (or (not _%signature222253%_) '#t)
                (let ((_%signature222279%_ _%signature222253%_))
                  (gxc#__!accessor-signature-set!
                   _%$obj222258%_
                   _%signature222279%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature222253%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self222055%_ _%id222056%_ _%slot222057%_ _%checked?222058%_)
        (let ((_%self222061%_ _%self222055%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222061%_
             _%id222056%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222061%_
             _%slot222057%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222061%_
             _%checked?222058%_
             '4
             '#f
             '#f))
          (let* ((_%$obj222072%_ _%self222061%_)
                 (_%signature222075%_
                  (let ((__obj224638
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
                       __obj224638
                       'void::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224638
                       '(mut)
                       '2
                       '#f
                       '#f))
                    (let ((__tmp224709 (cons _%id222056%_ (cons 't::t '()))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224638
                       __tmp224709
                       '3
                       '#f
                       '#f))
                    __obj224638))
                 (_%$obj222080%_ _%$obj222072%_))
            (if (or (not _%signature222075%_) '#t)
                (let ((_%signature222101%_ _%signature222075%_))
                  (gxc#__!mutator-signature-set!
                   _%$obj222080%_
                   _%signature222101%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature222075%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords221860%_
               _%$%signature221857221861%_
               _%self221862%_
               _%arity221863%_
               _%dispatch221864%_)
        (let* ((_%signature221866%_
                (if (eq? _%$%signature221857221861%_ absent-value)
                    '#f
                    _%$%signature221857221861%_))
               (_%self221869%_ _%self221862%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self221869%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221869%_
             _%arity221863%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221869%_
             _%dispatch221864%_
             '4
             '#f
             '#f))
          (let* ((_%$obj221881%_ _%self221869%_)
                 (_%signature221884%_ _%signature221866%_)
                 (_%$obj221889%_ _%$obj221881%_))
            (if (or (not _%signature221884%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%signature221884%_
                       'gxc#!signature::t)))
                (let ((_%signature221910%_ _%signature221884%_))
                  (gxc#__!lambda-signature-set!
                   _%$obj221889%_
                   _%signature221910%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature221884%_)
                  '#!void))))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords221923%_ . _%args221924%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords221923%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords221923%_
                  'signature:
                  absent-value))
               _%args221924%_)))
    (define gxc#!lambda:::init!
      (lambda _%$%args221858221930%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%$%args221858221930%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords221662%_
               _%$%signature221659221663%_
               _%self221664%_
               _%clauses221665%_)
        (let* ((_%signature221667%_
                (if (eq? _%$%signature221659221663%_ absent-value)
                    '#f
                    _%$%signature221659221663%_))
               (_%self221670%_ _%self221664%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self221670%_ 'procedure '1 '#f '#f))
          (let* ((_%$obj221682%_ _%self221670%_)
                 (_%signature221685%_ _%signature221667%_)
                 (_%$obj221690%_ _%$obj221682%_))
            (if (or (not _%signature221685%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%signature221685%_
                       'gxc#!signature::t)))
                (let ((_%signature221711%_ _%signature221685%_))
                  (gxc#__!case-lambda-signature-set!
                   _%$obj221690%_
                   _%signature221711%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature221685%_)
                  '#!void)))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221670%_
             _%clauses221665%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords221724%_ . _%args221725%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords221724%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords221724%_
                  'signature:
                  absent-value))
               _%args221725%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%$%args221660221731%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%$%args221660221731%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self221520%_ _%tab221521%_ _%dispatch221522%_)
        (let ((_%self221525%_ _%self221520%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self221525%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221525%_
             _%tab221521%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221525%_
             _%dispatch221522%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self221382%_ _%keys221383%_ _%main221384%_)
        (let ((_%self221387%_ _%self221382%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self221387%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221387%_
             _%keys221383%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221387%_
             _%main221384%_
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
      (lambda (_%self220962%_ _%id220963%_)
        (let ((_%self220966%_ _%self220962%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self220966%_
             _%id220963%_
             '1
             '#f
             '#f))
          (let* ((_%$obj220977%_ _%self220966%_)
                 (_%signature220980%_
                  (let ((__obj224639
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
                       __obj224639
                       'boolean::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224639
                       '(pure)
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224639
                       '(t::t)
                       '3
                       '#f
                       '#f))
                    __obj224639))
                 (_%$obj220985%_ _%$obj220977%_))
            (if (or (not _%signature220980%_) '#t)
                (let ((_%signature221006%_ _%signature220980%_))
                  (gxc#__!primitive-predicate-signature-set!
                   _%$obj220985%_
                   _%signature221006%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature220980%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       ':init!
       gxc#!primitive-predicate:::init!
       '#f))
    (define gxc#!class-method-table
      (lambda (_%klass220832%_)
        (let ((_%$e220834%_
               (##structure-ref _%klass220832%_ '11 gxc#!class::t '#f)))
          (if _%$e220834%_
              _%$e220834%_
              (let ((_%tab220838%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass220832%_
                 _%tab220838%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab220838%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass220824%_ _%method220825%_)
        (let ((_%$%tab220826220828%_
               (##structure-ref _%klass220824%_ '11 gxc#!class::t '#f)))
          (if _%$%tab220826220828%_
              (let ((_%tab220830%_ _%$%tab220826220828%_))
                (declare (not safe))
                (hash-get _%tab220830%_ _%method220825%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a220800%_ _%type-b220801%_)
        (if _%type-a220800%_
            (if _%type-b220801%_
                (let ((_%$e220803%_ (eq? _%type-a220800%_ _%type-b220801%_)))
                  (if _%$e220803%_
                      _%$e220803%_
                      (let ((_%$e220806%_
                             (eq? (##structure-ref
                                   _%type-b220801%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e220806%_
                            _%$e220806%_
                            (let ((_%$e220809%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a220800%_
                                          'gxc#!nullable-type::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%type-b220801%_
                                              'gxc#!nullable-type::t))
                                           '#f
                                           (if (gxc#!type-subtype?
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%type-a220800%_
                                                   '2
                                                   '#f
                                                   '#f))
                                                _%type-b220801%_)
                                               (gxc#!type-subtype?
                                                (gxc#optimizer-resolve-class
                                                 'subtype
                                                 'false::t)
                                                _%type-b220801%_)
                                               '#f))
                                       '#f)))
                              (if _%$e220809%_
                                  _%$e220809%_
                                  (let ((_%$e220815%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-b220801%_
                                                'gxc#!nullable-type::t))
                                             (let ((_%$e220812%_
                                                    (eq? (##structure-ref
                                                          _%type-a220800%_
                                                          '1
                                                          gxc#!type::t
                                                          '#f)
                                                         'false)))
                                               (if _%$e220812%_
                                                   _%$e220812%_
                                                   (gxc#!type-subtype?
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-instance-of?
                                                           _%type-a220800%_
                                                           'gxc#!nullable-type::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%type-a220800%_
                                                           '2
                                                           '#f
                                                           '#f))
                                                        _%type-a220800%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%type-b220801%_
                                                       '2
                                                       '#f
                                                       '#f)))))
                                             '#f)))
                                    (if _%$e220815%_
                                        _%$e220815%_
                                        (let ((_%$e220818%_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%type-a220800%_
                                                      'gxc#!procedure::t))
                                                   (eq? (##structure-ref
                                                         _%type-b220801%_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)
                                                        'procedure)
                                                   '#f)))
                                          (if _%$e220818%_
                                              _%$e220818%_
                                              (let ((_%$e220821%_
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%type-a220800%_
                                                            'gxc#!class::t))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-instance-of?
                        _%type-b220801%_
                        'gxc#!class::t))
                     (gxc#!class-subclass? _%type-a220800%_ _%type-b220801%_)
                     '#f)
                 '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e220821%_
                                                    _%$e220821%_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-instance-of?
                                                           _%type-a220800%_
                                                           'gxc#!interface::t))
                                                        (eq? (##structure-ref
                                                              _%type-b220801%_
                                                              '1
                                                              gxc#!type::t
                                                              '#f)
                                                             'interface-descriptor::t)
                                                        '#f)))))))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a220751%_ _%klass-b220752%_)
        (let ((_%$e220754%_
               (eq? (##structure-ref _%klass-a220751%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b220752%_ '1 gxc#!type::t '#f))))
          (if _%$e220754%_
              _%$e220754%_
              (let ((_%klass-id-b220757%_
                     (##structure-ref _%klass-b220752%_ '1 gxc#!type::t '#f))
                    (_%precedence-list220758%_
                     (##structure-ref _%klass-a220751%_ '3 gxc#!class::t '#f)))
                (let _%loop220760%_ ((_%rest220762%_
                                      _%precedence-list220758%_))
                  (let* ((_%$%rest220763220771%_ _%rest220762%_)
                         (_%$%else220765220779%_ (lambda () '#f))
                         (_%$%K220767220788%_
                          (lambda (_%rest220782%_ _%klass-name220783%_)
                            (let ((_%$e220785%_
                                   (eq? (let ((__tmp224710
                                               (gxc#optimizer-resolve-class
                                                (list 'subclass?
                                                      _%klass-a220751%_
                                                      _%klass-b220752%_)
                                                _%klass-name220783%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp224710
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b220757%_)))
                              (if _%$e220785%_
                                  _%$e220785%_
                                  (_%loop220760%_ _%rest220782%_))))))
                    (if (pair? _%$%rest220763220771%_)
                        (let ((_%$%hd220768220791%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest220763220771%_)))
                              (_%$%tl220769220793%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest220763220771%_))))
                          (let* ((_%klass-name220796%_ _%$%hd220768220791%_)
                                 (_%rest220798%_ _%$%tl220769220793%_))
                            (_%$%K220767220788%_
                             _%rest220798%_
                             _%klass-name220796%_)))
                        (_%$%else220765220779%_)))))))))
    (define gxc#!interface-instance?
      (lambda (_%type220749%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type220749%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type220749%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc220738%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc220738%_ 'gxc#!procedure::t))
            (let ((_%proc220741%_ _%proc220738%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc220741%_ '2 '#f '#f))
                  (##direct-structure-ref
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%proc220741%_ '2 '#f '#f))
                   '5
                   gxc#!signature::t
                   '#f)
                  '#f))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/compiler/optimize-base.ss\"@387.11-387.15"
               'contract:
               '!procedure?
               'value:
               _%proc220738%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym220720%_ _%type220721%_ _%local?220722%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type220721%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym220720%_
                     _%type220721%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym220720%_ '" " _%type220721%_))
        (let ((_%table220724%_
               (if _%local?220722%_
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
          (hash-put! _%table220724%_ _%sym220720%_ _%type220721%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym220729%_ _%type220730%_)
        (let ((_%local?220732%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym220729%_
           _%type220730%_
           _%local?220732%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g224711_
        (let ((_g224712_ (let () (declare (not safe)) (##length _g224711_))))
          (cond ((let () (declare (not safe)) (##fx= _g224712_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g224711_))
                ((let () (declare (not safe)) (##fx= _g224712_ 3))
                 (apply gxc#optimizer-declare-type!__% _g224711_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g224711_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym220714%_ _%type220715%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type220715%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym220714%_
                     _%type220715%_)))
        (let ((_%table220717%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp224713
                 (let () (declare (not safe)) (struct->list _%type220715%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym220714%_ '" " __tmp224713))
          (let ()
            (declare (not safe))
            (hash-put! _%table220717%_ _%sym220714%_ _%type220715%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table220717%_ _%type220715%_ _%sym220714%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym220709%_ _%type220710%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type220710%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym220709%_
                     _%type220710%_)))
        (let ((_%table220712%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table220712%_ _%sym220709%_))
              '#!void
              (begin
                (let ((__tmp224714
                       (let ()
                         (declare (not safe))
                         (struct->list _%type220710%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym220709%_
                   '" "
                   __tmp224714))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table220712%_ _%sym220709%_ _%type220710%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table220712%_
                   _%type220710%_
                   _%sym220709%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym220707%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym220707%_))
        (let ((__tmp224715
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp224715 _%sym220707%_))
        (let ((__tmp224716
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp224716 _%sym220707%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t220675%_
               _%method220676%_
               _%sym220677%_
               _%rebind?220678%_)
        (let ((__tmp224717
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp224717 _%sym220677%_ '#t))
        (let ((_%klass220680%_ (gxc#optimizer-lookup-class _%type-t220675%_)))
          (if _%klass220680%_
              (let* ((_%vtab220682%_ (gxc#!class-method-table _%klass220680%_))
                     (_%$e220684%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab220682%_ _%method220676%_))))
                (if _%$e220684%_
                    (if _%rebind?220678%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose
                             '"declare-method: rebind existing method"
                             _%type-t220675%_
                             '" "
                             _%method220676%_))
                          (let ()
                            (declare (not safe))
                            (hash-put!
                             _%vtab220682%_
                             _%method220676%_
                             _%sym220677%_)))
                        (if (eq? _%$e220684%_ _%sym220677%_)
                            '#!void
                            (let ((__tmp224718
                                   (list 'bind-method!
                                         _%type-t220675%_
                                         _%method220676%_
                                         _%sym220677%_)))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"declare-method: duplicate method declaration"
                               __tmp224718
                               _%method220676%_))))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t220675%_
                         '" "
                         _%method220676%_
                         '" => "
                         _%sym220677%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab220682%_
                         _%method220676%_
                         _%sym220677%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t220675%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t220696%_ _%method220697%_ _%sym220698%_)
        (let ((_%rebind?220700%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t220696%_
           _%method220697%_
           _%sym220698%_
           _%rebind?220700%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g224719_
        (let ((_g224720_ (let () (declare (not safe)) (##length _g224719_))))
          (cond ((let () (declare (not safe)) (##fx= _g224720_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g224719_))
                ((let () (declare (not safe)) (##fx= _g224720_ 4))
                 (apply gxc#optimizer-declare-method!__% _g224719_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g224719_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym220661%_)
        (let ((_%$e220663%_
               (let ((__tmp224721
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym220661%_ __tmp224721))))
          (if _%$e220663%_
              _%$e220663%_
              (let ((_%$e220671%_
                     (let ((_%$%ht220665220667%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%$%ht220665220667%_
                           (let ((_%ht220669%_ _%$%ht220665220667%_))
                             (declare (not safe))
                             (hash-get _%ht220669%_ _%sym220661%_))
                           '#f))))
                (if _%$e220671%_
                    _%$e220671%_
                    (let ((__tmp224722
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp224722 _%sym220661%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym220654%_)
        (let ((_%$%type220655220657%_
               (gxc#optimizer-lookup-type _%sym220654%_)))
          (if _%$%type220655220657%_
              (let ((_%type220659%_ _%$%type220655220657%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type220659%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type220659%_ '1 '#f '#f)))
                    _%type220659%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym220650%_)
        (let ((_%table220652%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table220652%_ _%sym220650%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where220635%_ _%sym220636%_)
        (let ((_%$e220639%_ (gxc#optimizer-lookup-class _%sym220636%_)))
          (if _%$e220639%_
              (let ((_%val220646%_ _%$e220639%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%val220646%_ 'gxc#!class::t))
                    _%val220646%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/compiler/optimize-base
                       'contract:
                       '(!class? val)
                       'value:
                       _%val220646%_)
                      '#!void)))
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where220635%_
                   _%sym220636%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass220633%_)
        (let ((__tmp224723
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp224723 _%klass220633%_))))
    (define gxc#optimizer-resolve-type-expression
      (lambda (_%where220583%_ _%expr220584%_)
        (let* ((_%$%expr220585220597%_ _%expr220584%_)
               (_%$%else220588220605%_
                (lambda ()
                  (gxc#optimizer-resolve-class
                   _%where220583%_
                   _%expr220584%_))))
          (let ((_%$%K220591220618%_
                 (lambda (_%base220616%_)
                   (gxc#nullable-type
                    (gxc#optimizer-resolve-type-expression
                     _%where220583%_
                     _%base220616%_))))
                (_%$%K220590220610%_ (lambda () '#f)))
            (let ((_%$%try-match220587220613%_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##eq? _%$%expr220585220597%_ '#f))
                         (_%$%K220590220610%_)
                         (_%$%else220588220605%_)))))
              (if (pair? _%$%expr220585220597%_)
                  (let ((_%$%tl220593220623%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%expr220585220597%_)))
                        (_%$%hd220592220621%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%expr220585220597%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%$%hd220592220621%_ 'nullable))
                        (if (pair? _%$%tl220593220623%_)
                            (let ((_%$%tl220595220628%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%tl220593220623%_)))
                                  (_%$%hd220594220626%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%tl220593220623%_))))
                              (if (null? _%$%tl220595220628%_)
                                  (let ((_%base220631%_ _%$%hd220594220626%_))
                                    (_%$%K220591220618%_ _%base220631%_))
                                  (_%$%try-match220587220613%_)))
                            (_%$%try-match220587220613%_))
                        (_%$%try-match220587220613%_)))
                  (_%$%try-match220587220613%_)))))))
    (define gxc#optimizer-type-expression
      (lambda (_%type220573%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type220573%_ 'gxc#!nullable-type::t))
            (let ((_%$%base220575220577%_
                   (gxc#optimizer-type-expression
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%type220573%_ '2 '#f '#f)))))
              (if _%$%base220575220577%_
                  (let ((_%base220579%_ _%$%base220575220577%_))
                    (cons 'nullable (cons _%base220579%_ '())))
                  '#f))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%type220573%_ 'gxc#!procedure::t))
                'procedure::t
                (gxc#optimizer-lookup-class-name _%type220573%_)))))
    (define gxc#type-expression->datum
      (lambda (_%stx220510%_)
        (let* ((_%__stx224558224559%_ _%stx220510%_)
               (_%$%g220513220527%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx224558224559%_)))))
          (let ((_%__kont224560224561%_
                 (lambda (_%$%g220515220555%_ _%$%g220516220556%_)
                   (cons 'nullable
                         (cons (gxc#type-expression->datum _%$%g220515220555%_)
                               '()))))
                (_%__kont224562224563%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _%stx220510%_)))))
            (let ((_%__match224577224578%_
                   (lambda (_%$%e220517220539%_
                            _%$%hd220518220542%_
                            _%$%tl220519220544%_
                            _%$%e220520220547%_
                            _%$%hd220521220550%_
                            _%$%tl220522220552%_)
                     (let ((_%$%g220515220555%_ _%$%hd220521220550%_)
                           (_%$%g220516220556%_ _%$%hd220518220542%_))
                       (if (eq? (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g220516220556%_))
                                'nullable)
                           (_%__kont224560224561%_
                            _%$%g220515220555%_
                            _%$%g220516220556%_)
                           (_%__kont224562224563%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx224558224559%_))
                  (let ((_%$%e220517220539%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx224558224559%_))))
                    (let ((_%$%tl220519220544%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e220517220539%_)))
                          (_%$%hd220518220542%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e220517220539%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl220519220544%_))
                          (let ((_%$%e220520220547%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl220519220544%_))))
                            (let ((_%$%tl220522220552%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e220520220547%_)))
                                  (_%$%hd220521220550%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e220520220547%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl220522220552%_))
                                  (_%__match224577224578%_
                                   _%$%e220517220539%_
                                   _%$%hd220518220542%_
                                   _%$%tl220519220544%_
                                   _%$%e220520220547%_
                                   _%$%hd220521220550%_
                                   _%$%tl220522220552%_)
                                  (_%__kont224562224563%_))))
                          (_%__kont224562224563%_))))
                  (_%__kont224562224563%_)))))))
    (define gxc#map-type-expressions
      (lambda (_%proc220407%_ _%types220408%_)
        (let* ((_%__stx224580224581%_ _%types220408%_)
               (_%$%g220413220432%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx224580224581%_)))))
          (let ((_%__kont224582224583%_
                 (lambda (_%$%g220415220494%_ _%$%g220416220495%_)
                   (_%proc220407%_ _%types220408%_)))
                (_%__kont224584224585%_
                 (lambda (_%$%g220423220459%_ _%$%g220424220460%_)
                   (cons (_%proc220407%_ _%$%g220424220460%_)
                         (gxc#map-type-expressions
                          _%proc220407%_
                          _%$%g220423220459%_))))
                (_%__kont224586224587%_ (lambda () '()))
                (_%__kont224588224589%_
                 (lambda () (_%proc220407%_ _%types220408%_))))
            (let* ((_%$%g220411220446%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%__stx224580224581%_))
                          (_%__kont224586224587%_)
                          (_%__kont224588224589%_))))
                   (_%__match224603224604%_
                    (lambda (_%$%e220417220478%_
                             _%$%hd220418220481%_
                             _%$%tl220419220483%_
                             _%$%e220420220486%_
                             _%$%hd220421220489%_
                             _%$%tl220422220491%_)
                      (let ((_%$%g220415220494%_ _%$%hd220421220489%_)
                            (_%$%g220416220495%_ _%$%hd220418220481%_))
                        (if (eq? (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g220416220495%_))
                                 'nullable)
                            (_%__kont224582224583%_
                             _%$%g220415220494%_
                             _%$%g220416220495%_)
                            (_%__kont224584224585%_
                             _%$%tl220419220483%_
                             _%$%hd220418220481%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx224580224581%_))
                  (let ((_%$%e220417220478%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx224580224581%_))))
                    (let ((_%$%tl220419220483%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e220417220478%_)))
                          (_%$%hd220418220481%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e220417220478%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl220419220483%_))
                          (let ((_%$%e220420220486%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl220419220483%_))))
                            (let ((_%$%tl220422220491%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e220420220486%_)))
                                  (_%$%hd220421220489%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e220420220486%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl220422220491%_))
                                  (_%__match224603224604%_
                                   _%$%e220417220478%_
                                   _%$%hd220418220481%_
                                   _%$%tl220419220483%_
                                   _%$%e220420220486%_
                                   _%$%hd220421220489%_
                                   _%$%tl220422220491%_)
                                  (_%__kont224584224585%_
                                   _%$%tl220419220483%_
                                   _%$%hd220418220481%_))))
                          (_%__kont224584224585%_
                           _%$%tl220419220483%_
                           _%$%hd220418220481%_))))
                  (let () (declare (not safe)) (_%$%g220411220446%_))))))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t220404%_ _%method220405%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t220404%_)
         _%method220405%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym220402%_)
        (let ((__tmp224724
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp224724 _%sym220402%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e219876%_
                  (lambda (_%t220342%_)
                    (if (symbol? _%t220342%_)
                        (_%type-e219876%_
                         (gxc#optimizer-lookup-type _%t220342%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t220342%_
                               'gxc#!lambda::t))
                            (let* ((_%t220346%_ _%t220342%_)
                                   (_%t220350%_ _%t220346%_))
                              (_%__lambda-type220002%_ _%t220350%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t220342%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t220362%_ _%t220342%_)
                                       (_%t220366%_ _%t220362%_))
                                  (_%__kw-lambda-type220125%_ _%t220366%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t220342%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t220377%_ _%t220342%_)
                                           (_%t220381%_ _%t220377%_))
                                      (_%__kw-lambda-primary-type220248%_
                                       _%t220381%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t220342%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t220392%_ _%t220342%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t220392%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (##direct-structure-ref
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%t220392%_
                                                        '2
                                                        '#f
                                                        '#f))
                                                     '1
                                                     gxc#!signature::t
                                                     '#f)
                                                    '#f)))
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%t220342%_
                                               'gxc#!nullable-type::t))
                                            (gxc#optimizer-type-expression
                                             _%t220342%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%t220342%_
                                                   'gxc#!type::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%t220342%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '#f)))))))))
                 (_%__lambda-type220002%_
                  (lambda (_%t220330%_)
                    (let ((_%t220333%_ _%t220330%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t220333%_ '4 '#f '#f))
                          (_%type-e219876%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t220333%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t220333%_
                                       '2
                                       '#f
                                       '#f))
                                    (##direct-structure-ref
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%t220333%_
                                        '2
                                        '#f
                                        '#f))
                                     '1
                                     gxc#!signature::t
                                     '#f)
                                    '#f))))))
                 (_%lambda-type220003%_
                  (lambda (_%t220318%_)
                    (let ((_%t220321%_ _%t220318%_))
                      (_%__lambda-type220002%_ _%t220321%_))))
                 (_%__kw-lambda-type220125%_
                  (lambda (_%t220306%_)
                    (let ((_%t220309%_ _%t220306%_))
                      (_%type-e219876%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t220309%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type220126%_
                  (lambda (_%t220294%_)
                    (let ((_%t220297%_ _%t220294%_))
                      (_%__kw-lambda-type220125%_ _%t220297%_))))
                 (_%__kw-lambda-primary-type220248%_
                  (lambda (_%t220282%_)
                    (let ((_%t220285%_ _%t220282%_))
                      (_%type-e219876%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t220285%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type220249%_
                  (lambda (_%t220270%_)
                    (let ((_%t220273%_ _%t220270%_))
                      (_%__kw-lambda-primary-type220248%_ _%t220273%_)))))
          (let* ((_%ht1220251%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2220253%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result220255%_
                  (if _%ht1220251%_
                      (let () (declare (not safe)) (hash->list _%ht1220251%_))
                      '()))
                 (_%result220257%_
                  (if _%ht2220253%_
                      (let ((__tmp224725
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2220253%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result220255%_ __tmp224725))
                      _%result220255%_)))
            (for-each
             (lambda (_%p220260%_)
               (let* ((_%t220262%_ (cdr _%p220260%_))
                      (_%tr220264%_ (_%type-e219876%_ _%t220262%_)))
                 (set-cdr! _%p220260%_ _%tr220264%_)))
             _%result220257%_)
            (list-sort
             (lambda (_%a220267%_ _%b220268%_)
               (let ((__tmp224727 (symbol->string (car _%a220267%_)))
                     (__tmp224726 (symbol->string (car _%b220268%_))))
                 (declare (not safe))
                 (##string<? __tmp224727 __tmp224726)))
             _%result220257%_)))))))
