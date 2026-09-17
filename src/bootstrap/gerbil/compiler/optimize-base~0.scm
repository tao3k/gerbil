(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1789552484)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp224725 (list)) (__tmp224724 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp224725
         '(type classes ssxi methods)
         __tmp224724
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args224286%_
        (apply make-instance gxc#optimizer-info::t _%$args224286%_)))
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
      (lambda (_%self224273%_)
        (let ((_%self224276%_ _%self224273%_))
          (if (let ((__tmp224726
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self224276%_))))
                (declare (not safe))
                (##fx< '4 __tmp224726))
              (begin
                (let ((__tmp224727
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self224276%_
                   __tmp224727
                   '1
                   '#f
                   '#f))
                (let ((__tmp224728
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self224276%_
                   __tmp224728
                   '2
                   '#f
                   '#f))
                (let ((__tmp224729
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self224276%_
                   __tmp224729
                   '3
                   '#f
                   '#f))
                (let ((__tmp224730
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self224276%_
                   __tmp224730
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp224731
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self224276%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self224276%_
                       '4
                       __tmp224731))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp224733 (list))
            (__tmp224732
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp224733
         '(id)
         __tmp224732
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args224148%_
        (apply make-instance gxc#!type::t _%$args224148%_)))
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
      (let ((__tmp224735 (list gxc#!type::t))
            (__tmp224734 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!abort::t
         '!abort
         __tmp224735
         '()
         __tmp224734
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args224145%_
        (apply make-instance gxc#!abort::t _%$args224145%_)))
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
      (let ((__tmp224737 (list gxc#!type::t))
            (__tmp224736 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp224737
         '()
         __tmp224736
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args224142%_
        (apply make-instance gxc#!alias::t _%$args224142%_)))
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
      (let ((__tmp224739 (list gxc#!type::t))
            (__tmp224738 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!nullable-type::t
         '!nullable-type
         __tmp224739
         '(base)
         __tmp224738
         '#f)))
    (define gxc#!nullable-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!nullable-type::t)))
    (define gxc#make-!nullable-type
      (lambda _%$args224139%_
        (apply make-instance gxc#!nullable-type::t _%$args224139%_)))
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
      (lambda (_%type224133%_)
        (if _%type224133%_
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _%type224133%_
                   'gxc#!nullable-type::t))
                _%type224133%_
                (if (let ((__tmp224740
                           (##structure-ref
                            _%type224133%_
                            '1
                            gxc#!type::t
                            '#f)))
                      (declare (not safe))
                      (##memq __tmp224740 '(t false)))
                    _%type224133%_
                    (let ()
                      (declare (not safe))
                      (##structure
                       gxc#!nullable-type::t
                       'nullable
                       _%type224133%_))))
            '#f)))
    (define gxc#!signature::t
      (let ((__tmp224742 (list))
            (__tmp224741
             (cons (cons 'final: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!signature::t
         '!signature
         __tmp224742
         '(return effect arguments unchecked origin)
         __tmp224741
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args224130%_
        (apply make-instance gxc#!signature::t _%$args224130%_)))
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
      (let ((__tmp224744 (list gxc#!type::t))
            (__tmp224743
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp224744
         '(signature)
         __tmp224743
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
      (lambda (_%id224117%_ _%signature224118%_)
        (let ((_%signature224121%_ _%signature224118%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id224117%_ _%signature224121%_))))
    (define gxc#make-!procedure
      (lambda (_%id224095%_ _%signature224097%_)
        (if (or (not _%signature224097%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%signature224097%_
                   'gxc#!signature::t)))
            (let ((_%signature224107%_ _%signature224097%_))
              (gxc#__make-!procedure _%id224095%_ _%signature224107%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature224097%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj224074%_ _%signature224075%_)
        (let* ((_%$obj224078%_ _%$obj224074%_)
               (_%signature224086%_ _%signature224075%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj224078%_
           _%signature224086%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj224041%_ _%signature224043%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj224041%_ 'gxc#!procedure::t))
            (let ((_%$obj224048%_ _%$obj224041%_))
              (if (or (not _%signature224043%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature224043%_
                         'gxc#!signature::t)))
                  (let ((_%signature224064%_ _%signature224043%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj224048%_
                     _%signature224064%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature224043%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj224041%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp224746 (list gxc#!type::t))
            (__tmp224745 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp224746
         '(class)
         __tmp224745
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args224038%_
        (apply make-instance gxc#!class-meta::t _%$args224038%_)))
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
      (let ((__tmp224748 (list gxc#!type::t))
            (__tmp224747
             (cons (cons 'struct: '#t)
                   '((equal: . #t) (print: super precedence-list)))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp224748
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp224747
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args224035%_
        (apply make-instance gxc#!class::t _%$args224035%_)))
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
      (let ((__tmp224750 (list gxc#!procedure::t))
            (__tmp224749 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp224750
         '()
         __tmp224749
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args224032%_
        (apply make-instance gxc#!predicate::t _%$args224032%_)))
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
      (lambda (_%$obj224011%_ _%signature224012%_)
        (let* ((_%$obj224015%_ _%$obj224011%_)
               (_%signature224023%_ _%signature224012%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj224015%_
           _%signature224023%_
           '2
           '#f
           '#f))))
    (define gxc#!predicate-signature-set!
      (lambda (_%$obj223978%_ _%signature223980%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223978%_ 'gxc#!predicate::t))
            (let ((_%$obj223985%_ _%$obj223978%_))
              (if (or (not _%signature223980%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223980%_
                         'gxc#!signature::t)))
                  (let ((_%signature224001%_ _%signature223980%_))
                    (gxc#__!predicate-signature-set!
                     _%$obj223985%_
                     _%signature224001%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223980%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!predicate?
               'value:
               _%$obj223978%_)
              '#!void))))
    (define gxc#!constructor::t
      (let ((__tmp224752 (list gxc#!procedure::t))
            (__tmp224751 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp224752
         '()
         __tmp224751
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args223975%_
        (apply make-instance gxc#!constructor::t _%$args223975%_)))
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
      (lambda (_%$obj223954%_ _%signature223955%_)
        (let* ((_%$obj223958%_ _%$obj223954%_)
               (_%signature223966%_ _%signature223955%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223958%_
           _%signature223966%_
           '2
           '#f
           '#f))))
    (define gxc#!constructor-signature-set!
      (lambda (_%$obj223921%_ _%signature223923%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223921%_ 'gxc#!constructor::t))
            (let ((_%$obj223928%_ _%$obj223921%_))
              (if (or (not _%signature223923%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223923%_
                         'gxc#!signature::t)))
                  (let ((_%signature223944%_ _%signature223923%_))
                    (gxc#__!constructor-signature-set!
                     _%$obj223928%_
                     _%signature223944%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223923%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!constructor?
               'value:
               _%$obj223921%_)
              '#!void))))
    (define gxc#!accessor::t
      (let ((__tmp224754 (list gxc#!procedure::t))
            (__tmp224753 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp224754
         '(slot checked?)
         __tmp224753
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args223918%_
        (apply make-instance gxc#!accessor::t _%$args223918%_)))
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
      (lambda (_%$obj223897%_ _%signature223898%_)
        (let* ((_%$obj223901%_ _%$obj223897%_)
               (_%signature223909%_ _%signature223898%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223901%_
           _%signature223909%_
           '2
           '#f
           '#f))))
    (define gxc#!accessor-signature-set!
      (lambda (_%$obj223864%_ _%signature223866%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223864%_ 'gxc#!accessor::t))
            (let ((_%$obj223871%_ _%$obj223864%_))
              (if (or (not _%signature223866%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223866%_
                         'gxc#!signature::t)))
                  (let ((_%signature223887%_ _%signature223866%_))
                    (gxc#__!accessor-signature-set!
                     _%$obj223871%_
                     _%signature223887%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223866%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!accessor?
               'value:
               _%$obj223864%_)
              '#!void))))
    (define gxc#!mutator::t
      (let ((__tmp224756 (list gxc#!procedure::t))
            (__tmp224755 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp224756
         '(slot checked?)
         __tmp224755
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args223861%_
        (apply make-instance gxc#!mutator::t _%$args223861%_)))
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
      (lambda (_%$obj223840%_ _%signature223841%_)
        (let* ((_%$obj223844%_ _%$obj223840%_)
               (_%signature223852%_ _%signature223841%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223844%_
           _%signature223852%_
           '2
           '#f
           '#f))))
    (define gxc#!mutator-signature-set!
      (lambda (_%$obj223807%_ _%signature223809%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223807%_ 'gxc#!mutator::t))
            (let ((_%$obj223814%_ _%$obj223807%_))
              (if (or (not _%signature223809%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223809%_
                         'gxc#!signature::t)))
                  (let ((_%signature223830%_ _%signature223809%_))
                    (gxc#__!mutator-signature-set!
                     _%$obj223814%_
                     _%signature223830%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223809%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!mutator?
               'value:
               _%$obj223807%_)
              '#!void))))
    (define gxc#!interface::t
      (let ((__tmp224758 (list gxc#!type::t))
            (__tmp224757 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!interface::t
         '!interface
         __tmp224758
         '(methods)
         __tmp224757
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args223804%_
        (apply make-instance gxc#!interface::t _%$args223804%_)))
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
      (let ((__tmp224760 (list gxc#!procedure::t))
            (__tmp224759 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp224760
         '(arity dispatch inline inline-typedecl)
         __tmp224759
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args223801%_
        (apply make-instance gxc#!lambda::t _%$args223801%_)))
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
      (lambda (_%$obj223780%_ _%signature223781%_)
        (let* ((_%$obj223784%_ _%$obj223780%_)
               (_%signature223792%_ _%signature223781%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223784%_
           _%signature223792%_
           '2
           '#f
           '#f))))
    (define gxc#!lambda-signature-set!
      (lambda (_%$obj223747%_ _%signature223749%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223747%_ 'gxc#!lambda::t))
            (let ((_%$obj223754%_ _%$obj223747%_))
              (if (or (not _%signature223749%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223749%_
                         'gxc#!signature::t)))
                  (let ((_%signature223770%_ _%signature223749%_))
                    (gxc#__!lambda-signature-set!
                     _%$obj223754%_
                     _%signature223770%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223749%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!lambda?
               'value:
               _%$obj223747%_)
              '#!void))))
    (define gxc#!case-lambda::t
      (let ((__tmp224762 (list gxc#!procedure::t))
            (__tmp224761 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp224762
         '(clauses)
         __tmp224761
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args223744%_
        (apply make-instance gxc#!case-lambda::t _%$args223744%_)))
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
      (lambda (_%$obj223723%_ _%signature223724%_)
        (let* ((_%$obj223727%_ _%$obj223723%_)
               (_%signature223735%_ _%signature223724%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223727%_
           _%signature223735%_
           '2
           '#f
           '#f))))
    (define gxc#!case-lambda-signature-set!
      (lambda (_%$obj223690%_ _%signature223692%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223690%_ 'gxc#!case-lambda::t))
            (let ((_%$obj223697%_ _%$obj223690%_))
              (if (or (not _%signature223692%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223692%_
                         'gxc#!signature::t)))
                  (let ((_%signature223713%_ _%signature223692%_))
                    (gxc#__!case-lambda-signature-set!
                     _%$obj223697%_
                     _%signature223713%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223692%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!case-lambda?
               'value:
               _%$obj223690%_)
              '#!void))))
    (define gxc#!kw-lambda::t
      (let ((__tmp224764 (list gxc#!procedure::t))
            (__tmp224763 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp224764
         '(table dispatch)
         __tmp224763
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args223687%_
        (apply make-instance gxc#!kw-lambda::t _%$args223687%_)))
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
      (lambda (_%$obj223666%_ _%signature223667%_)
        (let* ((_%$obj223670%_ _%$obj223666%_)
               (_%signature223678%_ _%signature223667%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223670%_
           _%signature223678%_
           '2
           '#f
           '#f))))
    (define gxc#!kw-lambda-signature-set!
      (lambda (_%$obj223633%_ _%signature223635%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223633%_ 'gxc#!kw-lambda::t))
            (let ((_%$obj223640%_ _%$obj223633%_))
              (if (or (not _%signature223635%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223635%_
                         'gxc#!signature::t)))
                  (let ((_%signature223656%_ _%signature223635%_))
                    (gxc#__!kw-lambda-signature-set!
                     _%$obj223640%_
                     _%signature223656%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223635%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!kw-lambda?
               'value:
               _%$obj223633%_)
              '#!void))))
    (define gxc#!kw-lambda-primary::t
      (let ((__tmp224766 (list gxc#!procedure::t))
            (__tmp224765 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp224766
         '(keys main)
         __tmp224765
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args223630%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args223630%_)))
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
      (lambda (_%$obj223609%_ _%signature223610%_)
        (let* ((_%$obj223613%_ _%$obj223609%_)
               (_%signature223621%_ _%signature223610%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223613%_
           _%signature223621%_
           '2
           '#f
           '#f))))
    (define gxc#!kw-lambda-primary-signature-set!
      (lambda (_%$obj223576%_ _%signature223578%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj223576%_
               'gxc#!kw-lambda-primary::t))
            (let ((_%$obj223583%_ _%$obj223576%_))
              (if (or (not _%signature223578%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223578%_
                         'gxc#!signature::t)))
                  (let ((_%signature223599%_ _%signature223578%_))
                    (gxc#__!kw-lambda-primary-signature-set!
                     _%$obj223583%_
                     _%signature223599%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223578%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!kw-lambda-primary?
               'value:
               _%$obj223576%_)
              '#!void))))
    (define gxc#!primitive::t
      (let ((__tmp224767 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp224767
         '()
         '((equal: . #t))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args223573%_
        (apply make-instance gxc#!primitive::t _%$args223573%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp224769 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp224768 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp224769
         '()
         __tmp224768
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args223570%_
        (apply make-instance gxc#!primitive-predicate::t _%$args223570%_)))
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
      (lambda (_%$obj223549%_ _%signature223550%_)
        (let* ((_%$obj223553%_ _%$obj223549%_)
               (_%signature223561%_ _%signature223550%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223553%_
           _%signature223561%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-predicate-signature-set!
      (lambda (_%$obj223516%_ _%signature223518%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj223516%_
               'gxc#!primitive-predicate::t))
            (let ((_%$obj223523%_ _%$obj223516%_))
              (if (or (not _%signature223518%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223518%_
                         'gxc#!signature::t)))
                  (let ((_%signature223539%_ _%signature223518%_))
                    (gxc#__!primitive-predicate-signature-set!
                     _%$obj223523%_
                     _%signature223539%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223518%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-predicate?
               'value:
               _%$obj223516%_)
              '#!void))))
    (define gxc#!primitive-lambda::t
      (let ((__tmp224771 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp224770 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp224771
         '()
         __tmp224770
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args223513%_
        (apply make-instance gxc#!primitive-lambda::t _%$args223513%_)))
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
      (lambda (_%$obj223492%_ _%signature223493%_)
        (let* ((_%$obj223496%_ _%$obj223492%_)
               (_%signature223504%_ _%signature223493%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223496%_
           _%signature223504%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-lambda-signature-set!
      (lambda (_%$obj223459%_ _%signature223461%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj223459%_
               'gxc#!primitive-lambda::t))
            (let ((_%$obj223466%_ _%$obj223459%_))
              (if (or (not _%signature223461%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223461%_
                         'gxc#!signature::t)))
                  (let ((_%signature223482%_ _%signature223461%_))
                    (gxc#__!primitive-lambda-signature-set!
                     _%$obj223466%_
                     _%signature223482%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223461%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-lambda?
               'value:
               _%$obj223459%_)
              '#!void))))
    (define gxc#!primitive-case-lambda::t
      (let ((__tmp224773 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp224772 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp224773
         '()
         __tmp224772
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args223456%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args223456%_)))
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
      (lambda (_%$obj223435%_ _%signature223436%_)
        (let* ((_%$obj223439%_ _%$obj223435%_)
               (_%signature223447%_ _%signature223436%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223439%_
           _%signature223447%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-case-lambda-signature-set!
      (lambda (_%$obj223402%_ _%signature223404%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj223402%_
               'gxc#!primitive-case-lambda::t))
            (let ((_%$obj223409%_ _%$obj223402%_))
              (if (or (not _%signature223404%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223404%_
                         'gxc#!signature::t)))
                  (let ((_%signature223425%_ _%signature223404%_))
                    (gxc#__!primitive-case-lambda-signature-set!
                     _%$obj223409%_
                     _%signature223425%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223404%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-case-lambda?
               'value:
               _%$obj223402%_)
              '#!void))))
    (define gxc#!abort:::init!
      (lambda (_%self223389%_)
        (let ((_%self223392%_ _%self223389%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self223392%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self223252%_ _%klass223253%_)
        (let ((_%self223256%_ _%self223252%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self223256%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223256%_
             _%klass223253%_
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
      (lambda (_%self222942%_
               _%id222943%_
               _%super222944%_
               _%slots222945%_
               _%ctor-method222946%_
               _%struct?222947%_
               _%final?222948%_
               _%system?222949%_
               _%metaclass222950%_)
        (let ((_%self222953%_ _%self222942%_))
          (let _%lp222964%_ ((_%rest222966%_ _%super222944%_))
            (let* ((_%$%rest222967222975%_ _%rest222966%_)
                   (_%$%else222969222983%_ (lambda () '#!void))
                   (_%$%K222971222989%_
                    (lambda (_%rest222986%_ _%super-id222987%_)
                      (if (let ((__tmp224774
                                 (gxc#optimizer-resolve-class
                                  (list '!class _%id222943%_)
                                  _%super-id222987%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp224774 '8 '#f '#f))
                          (let ((__tmp224775 (list '!class _%id222943%_)))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp224775
                             _%super-id222987%_))
                          '#!void)
                      (_%lp222964%_ _%rest222986%_))))
              (if (pair? _%$%rest222967222975%_)
                  (let ((_%$%hd222972222992%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest222967222975%_)))
                        (_%$%tl222973222994%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest222967222975%_))))
                    (let* ((_%super-id222997%_ _%$%hd222972222992%_)
                           (_%rest222999%_ _%$%tl222973222994%_))
                      (_%$%K222971222989%_ _%rest222999%_ _%super-id222997%_)))
                  '#!void)))
          (let* ((_%ctor-method223050%_
                  (let ((_%$e223001%_ _%ctor-method222946%_))
                    (if _%$e223001%_
                        _%$e223001%_
                        (let _%lp223004%_ ((_%rest223006%_ _%super222944%_)
                                           (_%method223007%_ '#f))
                          (let* ((_%$%rest223008223016%_ _%rest223006%_)
                                 (_%$%else223010223024%_
                                  (lambda () _%method223007%_))
                                 (_%$%K223012223038%_
                                  (lambda (_%rest223027%_ _%super-id223028%_)
                                    (let* ((_%klass223030%_
                                            (gxc#optimizer-resolve-class
                                             (list '!class _%id222943%_)
                                             _%super-id223028%_))
                                           (_%$e223032%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass223030%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e223032%_
                                          (if _%method223007%_
                                              (if (eq? _%$e223032%_
                                                       _%method223007%_)
                                                  (_%lp223004%_
                                                   _%rest223027%_
                                                   _%$e223032%_)
                                                  (let ((__tmp224776
                                                         (list '!class
                                                               _%id222943%_)))
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"conflicting implicit constructor methods"
                                                     __tmp224776
                                                     _%method223007%_
                                                     _%$e223032%_)))
                                              (_%lp223004%_
                                               _%rest223027%_
                                               _%$e223032%_))
                                          (_%lp223004%_
                                           _%rest223027%_
                                           _%method223007%_))))))
                            (if (pair? _%$%rest223008223016%_)
                                (let ((_%$%hd223013223041%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest223008223016%_)))
                                      (_%$%tl223014223043%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest223008223016%_))))
                                  (let* ((_%super-id223046%_
                                          _%$%hd223013223041%_)
                                         (_%rest223048%_ _%$%tl223014223043%_))
                                    (_%$%K223012223038%_
                                     _%rest223048%_
                                     _%super-id223046%_)))
                                (_%$%else223010223024%_)))))))
                 (_g224777_
                  (let ((__tmp224781
                         (lambda (_%klass-id223052%_)
                           (cons _%klass-id223052%_
                                 (let ((__tmp224782
                                        (gxc#optimizer-resolve-class
                                         (list '!class _%id222943%_)
                                         _%klass-id223052%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp224782
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp224779
                         (lambda (_%klass-id223054%_)
                           (let ((__tmp224780
                                  (gxc#optimizer-resolve-class
                                   (list '!class _%id222943%_)
                                   _%klass-id223054%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp224780
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp224781
                     __tmp224779
                     eq?
                     identity
                     '()
                     _%super222944%_))))
            (begin
              (let ((_g224778_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g224777_)
                           (##values-length _g224777_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g224778_ 2)))
                    (error "Context expects 2 values" _g224778_)))
              (let ((_%precedence-list223056%_
                     (let () (declare (not safe)) (##values-ref _g224777_ 0)))
                    (_%base-struct223057%_
                     (let () (declare (not safe)) (##values-ref _g224777_ 1))))
                (let* ((_%precedence-list223101%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id222943%_ '(t object class)))
                            _%precedence-list223056%_
                            (if (memq 'object::t _%precedence-list223056%_)
                                _%precedence-list223056%_
                                (if _%system?222949%_
                                    (if (memq 't::t _%precedence-list223056%_)
                                        _%precedence-list223056%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list223056%_
                                           '(t::t))))
                                    (let _%loop223063%_ ((_%tail223065%_
                                                          _%precedence-list223056%_)
                                                         (_%head223066%_ '()))
                                      (let* ((_%$%tail223067223075%_
                                              _%tail223065%_)
                                             (_%$%else223069223083%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head223066%_))))
                                             (_%$%K223071223089%_
                                              (lambda (_%rest223086%_
                                                       _%hd223087%_)
                                                (if (eq? _%hd223087%_ 't::t)
                                                    (let ((__tmp224783
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail223065%_)))
              (declare (not safe))
              (foldl__0 cons __tmp224783 _%head223066%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop223063%_
                                                     _%rest223086%_
                                                     (cons _%hd223087%_
                                                           _%head223066%_))))))
                                        (if (pair? _%$%tail223067223075%_)
                                            (let ((_%$%hd223072223092%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tail223067223075%_)))
                                                  (_%$%tl223073223094%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tail223067223075%_))))
                                              (let* ((_%hd223097%_
                                                      _%$%hd223072223092%_)
                                                     (_%rest223099%_
                                                      _%$%tl223073223094%_))
                                                (_%$%K223071223089%_
                                                 _%rest223099%_
                                                 _%hd223097%_)))
                                            (_%$%else223069223083%_))))))))
                       (_%fields223103%_
                        (gxc#compute-class-fields
                         (list '!class _%id222943%_)
                         _%precedence-list223101%_
                         _%slots222945%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222953%_
                     _%id222943%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222953%_
                     _%super222944%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222953%_
                     _%precedence-list223101%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222953%_
                     _%slots222945%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222953%_
                     _%fields223103%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222953%_
                     _%ctor-method223050%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222953%_
                     _%struct?222947%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222953%_
                     _%final?222948%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self222953%_
                     _%metaclass222950%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self223106%_
               _%id223107%_
               _%super223108%_
               _%precedence-list223109%_
               _%slots223110%_
               _%fields223111%_
               _%constructor223112%_
               _%struct?223113%_
               _%final?223114%_
               _%system?223115%_
               _%metaclass223116%_
               _%methods223117%_)
        (let ((_%self223120%_ _%self223106%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223120%_
             _%id223107%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223120%_
             _%super223108%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223120%_
             _%precedence-list223109%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223120%_
             _%slots223110%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223120%_
             _%fields223111%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223120%_
             _%constructor223112%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223120%_
             _%struct?223113%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223120%_
             _%final?223114%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223120%_
             _%metaclass223116%_
             '10
             '#f
             '#f))
          (if _%methods223117%_
              (let ((__tmp224784
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods223117%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self223120%_
                 __tmp224784
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g224785_
        (let ((_g224786_ (let () (declare (not safe)) (##length _g224785_))))
          (cond ((let () (declare (not safe)) (##fx= _g224786_ 9))
                 (apply gxc#!class:::init!__0 _g224785_))
                ((let () (declare (not safe)) (##fx= _g224786_ 12))
                 (apply gxc#!class:::init!__1 _g224785_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g224785_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where222811%_
               _%precedence-list222812%_
               _%direct-slots222813%_)
        (let ((__tmp224788
               (lambda (_%mixin222815%_)
                 (let ((__tmp224789
                        (gxc#optimizer-resolve-class
                         _%where222811%_
                         _%mixin222815%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp224789 '5 '#f '#f))))
              (__tmp224787
               (lambda (_%slot-list222817%_ _%slot-table222818%_)
                 (cdr _%slot-list222817%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list222812%_
           _%direct-slots222813%_
           __tmp224788
           __tmp224787))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass222770%_ _%slot222771%_)
        (let _%lp222773%_ ((_%rest222775%_
                            (##structure-ref
                             _%klass222770%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset222776%_ '1))
          (let* ((_%$%rest222777222785%_ _%rest222775%_)
                 (_%$%else222779222793%_
                  (lambda ()
                    (let ((__tmp224791
                           (##structure-ref
                            _%klass222770%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp224790
                           (##structure-ref
                            _%klass222770%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp224791
                       __tmp224790
                       _%slot222771%_))))
                 (_%$%K222781222799%_
                  (lambda (_%rest222796%_ _%s222797%_)
                    (if (eq? _%s222797%_ _%slot222771%_)
                        _%offset222776%_
                        (_%lp222773%_
                         _%rest222796%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset222776%_ '1)))))))
            (if (pair? _%$%rest222777222785%_)
                (let ((_%$%hd222782222802%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest222777222785%_)))
                      (_%$%tl222783222804%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest222777222785%_))))
                  (let* ((_%s222807%_ _%$%hd222782222802%_)
                         (_%rest222809%_ _%$%tl222783222804%_))
                    (_%$%K222781222799%_ _%rest222809%_ _%s222807%_)))
                (_%$%else222779222793%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass222728%_ _%slot222729%_)
        (if (gxc#!class-struct-slot? _%klass222728%_ _%slot222729%_)
            _%klass222728%_
            (let _%lp222731%_ ((_%rest222733%_
                                (##structure-ref
                                 _%klass222728%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%$%rest222734222742%_ _%rest222733%_)
                     (_%$%else222736222750%_ (lambda () '#f))
                     (_%$%K222738222758%_
                      (lambda (_%rest222753%_ _%super222754%_)
                        (let ((_%super-class222756%_
                               (gxc#optimizer-resolve-class
                                (list '!class-slot-find-struct
                                      (##structure-ref
                                       _%klass222728%_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      _%slot222729%_)
                                _%super222754%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class222756%_
                               _%slot222729%_)
                              _%super-class222756%_
                              (_%lp222731%_ _%rest222753%_))))))
                (if (pair? _%$%rest222734222742%_)
                    (let ((_%$%hd222739222761%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest222734222742%_)))
                          (_%$%tl222740222763%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest222734222742%_))))
                      (let* ((_%super222766%_ _%$%hd222739222761%_)
                             (_%rest222768%_ _%$%tl222740222763%_))
                        (_%$%K222738222758%_ _%rest222768%_ _%super222766%_)))
                    (_%$%else222736222750%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass222725%_ _%slot222726%_)
        (if (##structure-ref _%klass222725%_ '7 gxc#!class::t '#f)
            (memq _%slot222726%_
                  (##structure-ref _%klass222725%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self222671%_ _%id222672%_)
        (let ((_%self222675%_ _%self222671%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222675%_
             _%id222672%_
             '1
             '#f
             '#f))
          (let* ((_%$obj222686%_ _%self222675%_)
                 (_%signature222689%_
                  (let ((__obj224719
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
                       __obj224719
                       'boolean::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224719
                       '(pure predicate)
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224719
                       '(t::t)
                       '3
                       '#f
                       '#f))
                    __obj224719))
                 (_%$obj222694%_ _%$obj222686%_))
            (if (or (not _%signature222689%_) '#t)
                (let ((_%signature222715%_ _%signature222689%_))
                  (gxc#__!predicate-signature-set!
                   _%$obj222694%_
                   _%signature222715%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature222689%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self222495%_ _%id222496%_)
        (let ((_%self222499%_ _%self222495%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222499%_
             _%id222496%_
             '1
             '#f
             '#f))
          (let* ((_%$obj222510%_ _%self222499%_)
                 (_%signature222513%_
                  (let ((__obj224720
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
                       __obj224720
                       _%id222496%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224720
                       '(alloc)
                       '2
                       '#f
                       '#f))
                    __obj224720))
                 (_%$obj222518%_ _%$obj222510%_))
            (if (or (not _%signature222513%_) '#t)
                (let ((_%signature222539%_ _%signature222513%_))
                  (gxc#__!constructor-signature-set!
                   _%$obj222518%_
                   _%signature222539%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature222513%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       ':init!
       gxc#!constructor:::init!
       '#f))
    (define gxc#!accessor:::init!
      (lambda (_%self222317%_ _%id222318%_ _%slot222319%_ _%checked?222320%_)
        (let ((_%self222323%_ _%self222317%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222323%_
             _%id222318%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222323%_
             _%slot222319%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222323%_
             _%checked?222320%_
             '4
             '#f
             '#f))
          (let* ((_%$obj222334%_ _%self222323%_)
                 (_%signature222337%_
                  (let ((__obj224721
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
                       __obj224721
                       't::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224721
                       '(pure)
                       '2
                       '#f
                       '#f))
                    (let ((__tmp224792 (cons _%id222318%_ '())))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224721
                       __tmp224792
                       '3
                       '#f
                       '#f))
                    __obj224721))
                 (_%$obj222342%_ _%$obj222334%_))
            (if (or (not _%signature222337%_) '#t)
                (let ((_%signature222363%_ _%signature222337%_))
                  (gxc#__!accessor-signature-set!
                   _%$obj222342%_
                   _%signature222363%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature222337%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self222139%_ _%id222140%_ _%slot222141%_ _%checked?222142%_)
        (let ((_%self222145%_ _%self222139%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222145%_
             _%id222140%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222145%_
             _%slot222141%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222145%_
             _%checked?222142%_
             '4
             '#f
             '#f))
          (let* ((_%$obj222156%_ _%self222145%_)
                 (_%signature222159%_
                  (let ((__obj224722
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
                       __obj224722
                       'void::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224722
                       '(mut)
                       '2
                       '#f
                       '#f))
                    (let ((__tmp224793 (cons _%id222140%_ (cons 't::t '()))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224722
                       __tmp224793
                       '3
                       '#f
                       '#f))
                    __obj224722))
                 (_%$obj222164%_ _%$obj222156%_))
            (if (or (not _%signature222159%_) '#t)
                (let ((_%signature222185%_ _%signature222159%_))
                  (gxc#__!mutator-signature-set!
                   _%$obj222164%_
                   _%signature222185%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature222159%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords221944%_
               _%$%signature221941221945%_
               _%self221946%_
               _%arity221947%_
               _%dispatch221948%_)
        (let* ((_%signature221950%_
                (if (eq? _%$%signature221941221945%_ absent-value)
                    '#f
                    _%$%signature221941221945%_))
               (_%self221953%_ _%self221946%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self221953%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221953%_
             _%arity221947%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221953%_
             _%dispatch221948%_
             '4
             '#f
             '#f))
          (let* ((_%$obj221965%_ _%self221953%_)
                 (_%signature221968%_ _%signature221950%_)
                 (_%$obj221973%_ _%$obj221965%_))
            (if (or (not _%signature221968%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%signature221968%_
                       'gxc#!signature::t)))
                (let ((_%signature221994%_ _%signature221968%_))
                  (gxc#__!lambda-signature-set!
                   _%$obj221973%_
                   _%signature221994%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature221968%_)
                  '#!void))))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords222007%_ . _%args222008%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords222007%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords222007%_
                  'signature:
                  absent-value))
               _%args222008%_)))
    (define gxc#!lambda:::init!
      (lambda _%$%args221942222014%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%$%args221942222014%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords221746%_
               _%$%signature221743221747%_
               _%self221748%_
               _%clauses221749%_)
        (let* ((_%signature221751%_
                (if (eq? _%$%signature221743221747%_ absent-value)
                    '#f
                    _%$%signature221743221747%_))
               (_%self221754%_ _%self221748%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self221754%_ 'procedure '1 '#f '#f))
          (let* ((_%$obj221766%_ _%self221754%_)
                 (_%signature221769%_ _%signature221751%_)
                 (_%$obj221774%_ _%$obj221766%_))
            (if (or (not _%signature221769%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%signature221769%_
                       'gxc#!signature::t)))
                (let ((_%signature221795%_ _%signature221769%_))
                  (gxc#__!case-lambda-signature-set!
                   _%$obj221774%_
                   _%signature221795%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature221769%_)
                  '#!void)))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221754%_
             _%clauses221749%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords221808%_ . _%args221809%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords221808%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords221808%_
                  'signature:
                  absent-value))
               _%args221809%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%$%args221744221815%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%$%args221744221815%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self221604%_ _%tab221605%_ _%dispatch221606%_)
        (let ((_%self221609%_ _%self221604%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self221609%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221609%_
             _%tab221605%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221609%_
             _%dispatch221606%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self221466%_ _%keys221467%_ _%main221468%_)
        (let ((_%self221471%_ _%self221466%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self221471%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221471%_
             _%keys221467%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221471%_
             _%main221468%_
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
      (lambda (_%self221046%_ _%id221047%_)
        (let ((_%self221050%_ _%self221046%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221050%_
             _%id221047%_
             '1
             '#f
             '#f))
          (let* ((_%$obj221061%_ _%self221050%_)
                 (_%signature221064%_
                  (let ((__obj224723
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
                       __obj224723
                       'boolean::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224723
                       '(pure)
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224723
                       '(t::t)
                       '3
                       '#f
                       '#f))
                    __obj224723))
                 (_%$obj221069%_ _%$obj221061%_))
            (if (or (not _%signature221064%_) '#t)
                (let ((_%signature221090%_ _%signature221064%_))
                  (gxc#__!primitive-predicate-signature-set!
                   _%$obj221069%_
                   _%signature221090%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature221064%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       ':init!
       gxc#!primitive-predicate:::init!
       '#f))
    (define gxc#!class-method-table
      (lambda (_%klass220916%_)
        (let ((_%$e220918%_
               (##structure-ref _%klass220916%_ '11 gxc#!class::t '#f)))
          (if _%$e220918%_
              _%$e220918%_
              (let ((_%tab220922%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass220916%_
                 _%tab220922%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab220922%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass220908%_ _%method220909%_)
        (let ((_%$%tab220910220912%_
               (##structure-ref _%klass220908%_ '11 gxc#!class::t '#f)))
          (if _%$%tab220910220912%_
              (let ((_%tab220914%_ _%$%tab220910220912%_))
                (declare (not safe))
                (hash-get _%tab220914%_ _%method220909%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a220884%_ _%type-b220885%_)
        (if _%type-a220884%_
            (if _%type-b220885%_
                (let ((_%$e220887%_ (eq? _%type-a220884%_ _%type-b220885%_)))
                  (if _%$e220887%_
                      _%$e220887%_
                      (let ((_%$e220890%_
                             (eq? (##structure-ref
                                   _%type-b220885%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e220890%_
                            _%$e220890%_
                            (let ((_%$e220893%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a220884%_
                                          'gxc#!nullable-type::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%type-b220885%_
                                              'gxc#!nullable-type::t))
                                           '#f
                                           (if (gxc#!type-subtype?
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%type-a220884%_
                                                   '2
                                                   '#f
                                                   '#f))
                                                _%type-b220885%_)
                                               (gxc#!type-subtype?
                                                (gxc#optimizer-resolve-class
                                                 'subtype
                                                 'false::t)
                                                _%type-b220885%_)
                                               '#f))
                                       '#f)))
                              (if _%$e220893%_
                                  _%$e220893%_
                                  (let ((_%$e220899%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-b220885%_
                                                'gxc#!nullable-type::t))
                                             (let ((_%$e220896%_
                                                    (eq? (##structure-ref
                                                          _%type-a220884%_
                                                          '1
                                                          gxc#!type::t
                                                          '#f)
                                                         'false)))
                                               (if _%$e220896%_
                                                   _%$e220896%_
                                                   (gxc#!type-subtype?
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-instance-of?
                                                           _%type-a220884%_
                                                           'gxc#!nullable-type::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%type-a220884%_
                                                           '2
                                                           '#f
                                                           '#f))
                                                        _%type-a220884%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%type-b220885%_
                                                       '2
                                                       '#f
                                                       '#f)))))
                                             '#f)))
                                    (if _%$e220899%_
                                        _%$e220899%_
                                        (let ((_%$e220902%_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%type-a220884%_
                                                      'gxc#!procedure::t))
                                                   (eq? (##structure-ref
                                                         _%type-b220885%_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)
                                                        'procedure)
                                                   '#f)))
                                          (if _%$e220902%_
                                              _%$e220902%_
                                              (let ((_%$e220905%_
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%type-a220884%_
                                                            'gxc#!class::t))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-instance-of?
                        _%type-b220885%_
                        'gxc#!class::t))
                     (gxc#!class-subclass? _%type-a220884%_ _%type-b220885%_)
                     '#f)
                 '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e220905%_
                                                    _%$e220905%_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-instance-of?
                                                           _%type-a220884%_
                                                           'gxc#!interface::t))
                                                        (eq? (##structure-ref
                                                              _%type-b220885%_
                                                              '1
                                                              gxc#!type::t
                                                              '#f)
                                                             'interface-descriptor::t)
                                                        '#f)))))))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a220835%_ _%klass-b220836%_)
        (let ((_%$e220838%_
               (eq? (##structure-ref _%klass-a220835%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b220836%_ '1 gxc#!type::t '#f))))
          (if _%$e220838%_
              _%$e220838%_
              (let ((_%klass-id-b220841%_
                     (##structure-ref _%klass-b220836%_ '1 gxc#!type::t '#f))
                    (_%precedence-list220842%_
                     (##structure-ref _%klass-a220835%_ '3 gxc#!class::t '#f)))
                (let _%loop220844%_ ((_%rest220846%_
                                      _%precedence-list220842%_))
                  (let* ((_%$%rest220847220855%_ _%rest220846%_)
                         (_%$%else220849220863%_ (lambda () '#f))
                         (_%$%K220851220872%_
                          (lambda (_%rest220866%_ _%klass-name220867%_)
                            (let ((_%$e220869%_
                                   (eq? (let ((__tmp224794
                                               (gxc#optimizer-resolve-class
                                                (list 'subclass?
                                                      _%klass-a220835%_
                                                      _%klass-b220836%_)
                                                _%klass-name220867%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp224794
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b220841%_)))
                              (if _%$e220869%_
                                  _%$e220869%_
                                  (_%loop220844%_ _%rest220866%_))))))
                    (if (pair? _%$%rest220847220855%_)
                        (let ((_%$%hd220852220875%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest220847220855%_)))
                              (_%$%tl220853220877%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest220847220855%_))))
                          (let* ((_%klass-name220880%_ _%$%hd220852220875%_)
                                 (_%rest220882%_ _%$%tl220853220877%_))
                            (_%$%K220851220872%_
                             _%rest220882%_
                             _%klass-name220880%_)))
                        (_%$%else220849220863%_)))))))))
    (define gxc#!class-primitive-leaf?
      (lambda (_%klass220833%_)
        (let ((__tmp224795
               (##structure-ref _%klass220833%_ '1 gxc#!type::t '#f)))
          (declare (not safe))
          (##memq __tmp224795
                  '(char true
                         false
                         eof
                         void
                         null
                         fixnum
                         bignum
                         ratnum
                         cpxnum
                         stflonum
                         haflonum
                         symbol
                         keyword
                         pair
                         vector
                         string
                         u8vector
                         s8vector
                         u16vector
                         s16vector
                         u32vector
                         s32vector
                         u64vector
                         s64vector
                         f32vector
                         f64vector)))))
    (define gxc#!class-struct-base
      (lambda (_%klass220792%_)
        (if (##structure-ref _%klass220792%_ '7 gxc#!class::t '#f)
            _%klass220792%_
            (let _%loop220794%_ ((_%rest220796%_
                                  (##structure-ref
                                   _%klass220792%_
                                   '3
                                   gxc#!class::t
                                   '#f)))
              (let* ((_%$%rest220797220805%_ _%rest220796%_)
                     (_%$%else220799220813%_ (lambda () '#f))
                     (_%$%K220801220821%_
                      (lambda (_%rest220816%_ _%name220817%_)
                        (let ((_%super220819%_
                               (gxc#optimizer-resolve-class
                                'struct-base
                                _%name220817%_)))
                          (if (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%super220819%_
                                 '7
                                 '#f
                                 '#f))
                              _%super220819%_
                              (_%loop220794%_ _%rest220816%_))))))
                (if (pair? _%$%rest220797220805%_)
                    (let ((_%$%hd220802220824%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest220797220805%_)))
                          (_%$%tl220803220826%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest220797220805%_))))
                      (let* ((_%name220829%_ _%$%hd220802220824%_)
                             (_%rest220831%_ _%$%tl220803220826%_))
                        (_%$%K220801220821%_ _%rest220831%_ _%name220829%_)))
                    (_%$%else220799220813%_)))))))
    (define gxc#!type-disjoint?
      (lambda (_%type-a220751%_ _%type-b220752%_)
        (if (or (not _%type-a220751%_)
                (not _%type-b220752%_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%type-a220751%_ 'gxc#!abort::t))
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%type-b220752%_ 'gxc#!abort::t))
                (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _%type-a220751%_
                   'gxc#!nullable-type::t))
                (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _%type-b220752%_
                   'gxc#!nullable-type::t)))
            '#f
            (if (or (gxc#!type-subtype? _%type-a220751%_ _%type-b220752%_)
                    (gxc#!type-subtype? _%type-b220752%_ _%type-a220751%_))
                '#f
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%type-a220751%_
                       'gxc#!procedure::t))
                    (gxc#!type-disjoint?
                     (gxc#optimizer-resolve-class 'disjoint 'procedure::t)
                     _%type-b220752%_)
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _%type-b220752%_
                           'gxc#!procedure::t))
                        (gxc#!type-disjoint?
                         _%type-a220751%_
                         (gxc#optimizer-resolve-class 'disjoint 'procedure::t))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%type-a220751%_
                                    'gxc#!class::t))
                                 (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%type-b220752%_
                                    'gxc#!class::t)))
                            (if (or (##structure-ref
                                     _%type-a220751%_
                                     '8
                                     gxc#!class::t
                                     '#f)
                                    (##structure-ref
                                     _%type-b220752%_
                                     '8
                                     gxc#!class::t
                                     '#f)
                                    (gxc#!class-primitive-leaf?
                                     _%type-a220751%_)
                                    (gxc#!class-primitive-leaf?
                                     _%type-b220752%_))
                                '#t
                                (let ((_%base-a220788%_
                                       (gxc#!class-struct-base
                                        _%type-a220751%_))
                                      (_%base-b220789%_
                                       (gxc#!class-struct-base
                                        _%type-b220752%_)))
                                  (if _%base-a220788%_
                                      (if _%base-b220789%_
                                          (if (gxc#!class-subclass?
                                               _%base-a220788%_
                                               _%base-b220789%_)
                                              '#f
                                              (not (gxc#!class-subclass?
                                                    _%base-b220789%_
                                                    _%base-a220788%_)))
                                          '#f)
                                      '#f)))
                            '#f)))))))
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
               '"\"gerbil/compiler/optimize-base.ss\"@433.11-433.15"
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
      (lambda _g224796_
        (let ((_g224797_ (let () (declare (not safe)) (##length _g224796_))))
          (cond ((let () (declare (not safe)) (##fx= _g224797_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g224796_))
                ((let () (declare (not safe)) (##fx= _g224797_ 3))
                 (apply gxc#optimizer-declare-type!__% _g224796_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g224796_))))))
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
          (let ((__tmp224798
                 (let () (declare (not safe)) (struct->list _%type220715%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym220714%_ '" " __tmp224798))
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
                (let ((__tmp224799
                       (let ()
                         (declare (not safe))
                         (struct->list _%type220710%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym220709%_
                   '" "
                   __tmp224799))
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
        (let ((__tmp224800
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp224800 _%sym220707%_))
        (let ((__tmp224801
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp224801 _%sym220707%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t220675%_
               _%method220676%_
               _%sym220677%_
               _%rebind?220678%_)
        (let ((__tmp224802
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp224802 _%sym220677%_ '#t))
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
                            (let ((__tmp224803
                                   (list 'bind-method!
                                         _%type-t220675%_
                                         _%method220676%_
                                         _%sym220677%_)))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"declare-method: duplicate method declaration"
                               __tmp224803
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
      (lambda _g224804_
        (let ((_g224805_ (let () (declare (not safe)) (##length _g224804_))))
          (cond ((let () (declare (not safe)) (##fx= _g224805_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g224804_))
                ((let () (declare (not safe)) (##fx= _g224805_ 4))
                 (apply gxc#optimizer-declare-method!__% _g224804_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g224804_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym220661%_)
        (let ((_%$e220663%_
               (let ((__tmp224806
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym220661%_ __tmp224806))))
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
                    (let ((__tmp224807
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp224807 _%sym220661%_))))))))
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
        (let ((__tmp224808
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp224808 _%klass220633%_))))
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
        (let* ((_%__stx224642224643%_ _%stx220510%_)
               (_%$%g220513220527%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx224642224643%_)))))
          (let ((_%__kont224644224645%_
                 (lambda (_%$%g220515220555%_ _%$%g220516220556%_)
                   (cons 'nullable
                         (cons (gxc#type-expression->datum _%$%g220515220555%_)
                               '()))))
                (_%__kont224646224647%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _%stx220510%_)))))
            (let ((_%__match224661224662%_
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
                           (_%__kont224644224645%_
                            _%$%g220515220555%_
                            _%$%g220516220556%_)
                           (_%__kont224646224647%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx224642224643%_))
                  (let ((_%$%e220517220539%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx224642224643%_))))
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
                                  (_%__match224661224662%_
                                   _%$%e220517220539%_
                                   _%$%hd220518220542%_
                                   _%$%tl220519220544%_
                                   _%$%e220520220547%_
                                   _%$%hd220521220550%_
                                   _%$%tl220522220552%_)
                                  (_%__kont224646224647%_))))
                          (_%__kont224646224647%_))))
                  (_%__kont224646224647%_)))))))
    (define gxc#map-type-expressions
      (lambda (_%proc220407%_ _%types220408%_)
        (let* ((_%__stx224664224665%_ _%types220408%_)
               (_%$%g220413220432%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx224664224665%_)))))
          (let ((_%__kont224666224667%_
                 (lambda (_%$%g220415220494%_ _%$%g220416220495%_)
                   (_%proc220407%_ _%types220408%_)))
                (_%__kont224668224669%_
                 (lambda (_%$%g220423220459%_ _%$%g220424220460%_)
                   (cons (_%proc220407%_ _%$%g220424220460%_)
                         (gxc#map-type-expressions
                          _%proc220407%_
                          _%$%g220423220459%_))))
                (_%__kont224670224671%_ (lambda () '()))
                (_%__kont224672224673%_
                 (lambda () (_%proc220407%_ _%types220408%_))))
            (let* ((_%$%g220411220446%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%__stx224664224665%_))
                          (_%__kont224670224671%_)
                          (_%__kont224672224673%_))))
                   (_%__match224687224688%_
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
                            (_%__kont224666224667%_
                             _%$%g220415220494%_
                             _%$%g220416220495%_)
                            (_%__kont224668224669%_
                             _%$%tl220419220483%_
                             _%$%hd220418220481%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx224664224665%_))
                  (let ((_%$%e220417220478%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx224664224665%_))))
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
                                  (_%__match224687224688%_
                                   _%$%e220417220478%_
                                   _%$%hd220418220481%_
                                   _%$%tl220419220483%_
                                   _%$%e220420220486%_
                                   _%$%hd220421220489%_
                                   _%$%tl220422220491%_)
                                  (_%__kont224668224669%_
                                   _%$%tl220419220483%_
                                   _%$%hd220418220481%_))))
                          (_%__kont224668224669%_
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
        (let ((__tmp224809
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp224809 _%sym220402%_))))
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
                      (let ((__tmp224810
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2220253%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result220255%_ __tmp224810))
                      _%result220255%_)))
            (for-each
             (lambda (_%p220260%_)
               (let* ((_%t220262%_ (cdr _%p220260%_))
                      (_%tr220264%_ (_%type-e219876%_ _%t220262%_)))
                 (set-cdr! _%p220260%_ _%tr220264%_)))
             _%result220257%_)
            (list-sort
             (lambda (_%a220267%_ _%b220268%_)
               (let ((__tmp224812 (symbol->string (car _%a220267%_)))
                     (__tmp224811 (symbol->string (car _%b220268%_))))
                 (declare (not safe))
                 (##string<? __tmp224812 __tmp224811)))
             _%result220257%_)))))))
