(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize-base::timestamp 1789839228)
  (begin
    (define gxc#current-compile-optimizer-info (make-parameter '#f))
    (define gxc#current-compile-mutators (make-parameter '#f))
    (define gxc#current-compile-local-type (make-parameter '#f))
    (define gxc#current-compile-path-type (make-parameter '()))
    (define gxc#optimizer-info::t
      (let ((__tmp224887 (list)) (__tmp224886 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#optimizer-info::t
         'optimizer-info
         __tmp224887
         '(type classes ssxi methods)
         __tmp224886
         ':init!)))
    (define gxc#optimizer-info?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#optimizer-info::t)))
    (define gxc#make-optimizer-info
      (lambda _%$args224448%_
        (apply make-instance gxc#optimizer-info::t _%$args224448%_)))
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
      (lambda (_%self224435%_)
        (let ((_%self224438%_ _%self224435%_))
          (if (let ((__tmp224888
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self224438%_))))
                (declare (not safe))
                (##fx< '4 __tmp224888))
              (begin
                (let ((__tmp224889
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self224438%_
                   __tmp224889
                   '1
                   '#f
                   '#f))
                (let ((__tmp224890
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self224438%_
                   __tmp224890
                   '2
                   '#f
                   '#f))
                (let ((__tmp224891
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self224438%_
                   __tmp224891
                   '3
                   '#f
                   '#f))
                (let ((__tmp224892
                       (let () (declare (not safe)) (make-hash-table-eq))))
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%self224438%_
                   __tmp224892
                   '4
                   '#f
                   '#f))
                '#!void)
              (let ((__tmp224893
                     (let ()
                       (declare (not safe))
                       (##structure-length _%self224438%_))))
                (declare (not safe))
                (error '"struct-instance-init!: too many arguments for struct"
                       _%self224438%_
                       '4
                       __tmp224893))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#optimizer-info::t
       ':init!
       gxc#optimizer-info:::init!
       '#f))
    (define gxc#!type::t
      (let ((__tmp224895 (list))
            (__tmp224894
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!type::t
         '!type
         __tmp224895
         '(id)
         __tmp224894
         '#f)))
    (define gxc#!type?
      (let () (declare (not safe)) (__make-class-predicate gxc#!type::t)))
    (define gxc#make-!type
      (lambda _%$args224310%_
        (apply make-instance gxc#!type::t _%$args224310%_)))
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
      (let ((__tmp224897 (list gxc#!type::t))
            (__tmp224896 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!abort::t
         '!abort
         __tmp224897
         '()
         __tmp224896
         ':init!)))
    (define gxc#!abort?
      (let () (declare (not safe)) (__make-class-predicate gxc#!abort::t)))
    (define gxc#make-!abort
      (lambda _%$args224307%_
        (apply make-instance gxc#!abort::t _%$args224307%_)))
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
      (let ((__tmp224899 (list gxc#!type::t))
            (__tmp224898 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!alias::t
         '!alias
         __tmp224899
         '()
         __tmp224898
         '#f)))
    (define gxc#!alias?
      (let () (declare (not safe)) (__make-class-predicate gxc#!alias::t)))
    (define gxc#make-!alias
      (lambda _%$args224304%_
        (apply make-instance gxc#!alias::t _%$args224304%_)))
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
      (let ((__tmp224901 (list gxc#!type::t))
            (__tmp224900 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!nullable-type::t
         '!nullable-type
         __tmp224901
         '(base)
         __tmp224900
         '#f)))
    (define gxc#!nullable-type?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!nullable-type::t)))
    (define gxc#make-!nullable-type
      (lambda _%$args224301%_
        (apply make-instance gxc#!nullable-type::t _%$args224301%_)))
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
      (lambda (_%type224295%_)
        (if _%type224295%_
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _%type224295%_
                   'gxc#!nullable-type::t))
                _%type224295%_
                (if (let ((__tmp224902
                           (##structure-ref
                            _%type224295%_
                            '1
                            gxc#!type::t
                            '#f)))
                      (declare (not safe))
                      (##memq __tmp224902 '(t false)))
                    _%type224295%_
                    (let ()
                      (declare (not safe))
                      (##structure
                       gxc#!nullable-type::t
                       'nullable
                       _%type224295%_))))
            '#f)))
    (define gxc#!signature::t
      (let ((__tmp224904 (list))
            (__tmp224903
             (cons (cons 'final: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!signature::t
         '!signature
         __tmp224904
         '(return effect arguments unchecked origin)
         __tmp224903
         '#f)))
    (define gxc#!signature?
      (let () (declare (not safe)) (__make-class-predicate gxc#!signature::t)))
    (define gxc#make-!signature
      (lambda _%$args224292%_
        (apply make-instance gxc#!signature::t _%$args224292%_)))
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
      (let ((__tmp224906 (list gxc#!type::t))
            (__tmp224905
             (cons (cons 'struct: '#t) '((equal: . #t) (print: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!procedure::t
         '!procedure
         __tmp224906
         '(signature)
         __tmp224905
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
      (lambda (_%id224279%_ _%signature224280%_)
        (let ((_%signature224283%_ _%signature224280%_))
          (declare (not safe))
          (##structure gxc#!procedure::t _%id224279%_ _%signature224283%_))))
    (define gxc#make-!procedure
      (lambda (_%id224257%_ _%signature224259%_)
        (if (or (not _%signature224259%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%signature224259%_
                   'gxc#!signature::t)))
            (let ((_%signature224269%_ _%signature224259%_))
              (gxc#__make-!procedure _%id224257%_ _%signature224269%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '(? (or not !signature?))
               'value:
               _%signature224259%_)
              '#!void))))
    (define gxc#__!procedure-signature-set!
      (lambda (_%$obj224236%_ _%signature224237%_)
        (let* ((_%$obj224240%_ _%$obj224236%_)
               (_%signature224248%_ _%signature224237%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj224240%_
           _%signature224248%_
           '2
           '#f
           '#f))))
    (define gxc#!procedure-signature-set!
      (lambda (_%$obj224203%_ _%signature224205%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj224203%_ 'gxc#!procedure::t))
            (let ((_%$obj224210%_ _%$obj224203%_))
              (if (or (not _%signature224205%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature224205%_
                         'gxc#!signature::t)))
                  (let ((_%signature224226%_ _%signature224205%_))
                    (gxc#__!procedure-signature-set!
                     _%$obj224210%_
                     _%signature224226%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature224205%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!procedure?
               'value:
               _%$obj224203%_)
              '#!void))))
    (define gxc#!class-meta::t
      (let ((__tmp224908 (list gxc#!type::t))
            (__tmp224907 (cons (cons 'struct: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#!class-meta::t
         '!class-meta
         __tmp224908
         '(class)
         __tmp224907
         ':init!)))
    (define gxc#!class-meta?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!class-meta::t)))
    (define gxc#make-!class-meta
      (lambda _%$args224200%_
        (apply make-instance gxc#!class-meta::t _%$args224200%_)))
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
      (let ((__tmp224910 (list gxc#!type::t))
            (__tmp224909
             (cons (cons 'struct: '#t)
                   '((equal: . #t) (print: super precedence-list)))))
        (declare (not safe))
        (make-class-type
         'gxc#!class::t
         '!class
         __tmp224910
         '(super precedence-list
                 slots
                 fields
                 constructor
                 struct?
                 final?
                 system?
                 metaclass
                 methods)
         __tmp224909
         ':init!)))
    (define gxc#!class?
      (let () (declare (not safe)) (__make-class-predicate gxc#!class::t)))
    (define gxc#make-!class
      (lambda _%$args224197%_
        (apply make-instance gxc#!class::t _%$args224197%_)))
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
      (let ((__tmp224912 (list gxc#!procedure::t))
            (__tmp224911 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!predicate::t
         '!predicate
         __tmp224912
         '()
         __tmp224911
         ':init!)))
    (define gxc#!predicate?
      (let () (declare (not safe)) (__make-class-predicate gxc#!predicate::t)))
    (define gxc#make-!predicate
      (lambda _%$args224194%_
        (apply make-instance gxc#!predicate::t _%$args224194%_)))
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
      (lambda (_%$obj224173%_ _%signature224174%_)
        (let* ((_%$obj224177%_ _%$obj224173%_)
               (_%signature224185%_ _%signature224174%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj224177%_
           _%signature224185%_
           '2
           '#f
           '#f))))
    (define gxc#!predicate-signature-set!
      (lambda (_%$obj224140%_ _%signature224142%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj224140%_ 'gxc#!predicate::t))
            (let ((_%$obj224147%_ _%$obj224140%_))
              (if (or (not _%signature224142%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature224142%_
                         'gxc#!signature::t)))
                  (let ((_%signature224163%_ _%signature224142%_))
                    (gxc#__!predicate-signature-set!
                     _%$obj224147%_
                     _%signature224163%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature224142%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!predicate?
               'value:
               _%$obj224140%_)
              '#!void))))
    (define gxc#!constructor::t
      (let ((__tmp224914 (list gxc#!procedure::t))
            (__tmp224913 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!constructor::t
         '!constructor
         __tmp224914
         '()
         __tmp224913
         ':init!)))
    (define gxc#!constructor?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!constructor::t)))
    (define gxc#make-!constructor
      (lambda _%$args224137%_
        (apply make-instance gxc#!constructor::t _%$args224137%_)))
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
      (lambda (_%$obj224116%_ _%signature224117%_)
        (let* ((_%$obj224120%_ _%$obj224116%_)
               (_%signature224128%_ _%signature224117%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj224120%_
           _%signature224128%_
           '2
           '#f
           '#f))))
    (define gxc#!constructor-signature-set!
      (lambda (_%$obj224083%_ _%signature224085%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj224083%_ 'gxc#!constructor::t))
            (let ((_%$obj224090%_ _%$obj224083%_))
              (if (or (not _%signature224085%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature224085%_
                         'gxc#!signature::t)))
                  (let ((_%signature224106%_ _%signature224085%_))
                    (gxc#__!constructor-signature-set!
                     _%$obj224090%_
                     _%signature224106%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature224085%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!constructor?
               'value:
               _%$obj224083%_)
              '#!void))))
    (define gxc#!accessor::t
      (let ((__tmp224916 (list gxc#!procedure::t))
            (__tmp224915 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!accessor::t
         '!accessor
         __tmp224916
         '(slot checked?)
         __tmp224915
         ':init!)))
    (define gxc#!accessor?
      (let () (declare (not safe)) (__make-class-predicate gxc#!accessor::t)))
    (define gxc#make-!accessor
      (lambda _%$args224080%_
        (apply make-instance gxc#!accessor::t _%$args224080%_)))
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
      (lambda (_%$obj224059%_ _%signature224060%_)
        (let* ((_%$obj224063%_ _%$obj224059%_)
               (_%signature224071%_ _%signature224060%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj224063%_
           _%signature224071%_
           '2
           '#f
           '#f))))
    (define gxc#!accessor-signature-set!
      (lambda (_%$obj224026%_ _%signature224028%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj224026%_ 'gxc#!accessor::t))
            (let ((_%$obj224033%_ _%$obj224026%_))
              (if (or (not _%signature224028%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature224028%_
                         'gxc#!signature::t)))
                  (let ((_%signature224049%_ _%signature224028%_))
                    (gxc#__!accessor-signature-set!
                     _%$obj224033%_
                     _%signature224049%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature224028%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!accessor?
               'value:
               _%$obj224026%_)
              '#!void))))
    (define gxc#!mutator::t
      (let ((__tmp224918 (list gxc#!procedure::t))
            (__tmp224917 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!mutator::t
         '!mutator
         __tmp224918
         '(slot checked?)
         __tmp224917
         ':init!)))
    (define gxc#!mutator?
      (let () (declare (not safe)) (__make-class-predicate gxc#!mutator::t)))
    (define gxc#make-!mutator
      (lambda _%$args224023%_
        (apply make-instance gxc#!mutator::t _%$args224023%_)))
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
      (lambda (_%$obj224002%_ _%signature224003%_)
        (let* ((_%$obj224006%_ _%$obj224002%_)
               (_%signature224014%_ _%signature224003%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj224006%_
           _%signature224014%_
           '2
           '#f
           '#f))))
    (define gxc#!mutator-signature-set!
      (lambda (_%$obj223969%_ _%signature223971%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223969%_ 'gxc#!mutator::t))
            (let ((_%$obj223976%_ _%$obj223969%_))
              (if (or (not _%signature223971%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223971%_
                         'gxc#!signature::t)))
                  (let ((_%signature223992%_ _%signature223971%_))
                    (gxc#__!mutator-signature-set!
                     _%$obj223976%_
                     _%signature223992%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223971%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!mutator?
               'value:
               _%$obj223969%_)
              '#!void))))
    (define gxc#!interface::t
      (let ((__tmp224920 (list gxc#!type::t))
            (__tmp224919 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!interface::t
         '!interface
         __tmp224920
         '(methods)
         __tmp224919
         '#f)))
    (define gxc#!interface?
      (let () (declare (not safe)) (__make-class-predicate gxc#!interface::t)))
    (define gxc#make-!interface
      (lambda _%$args223966%_
        (apply make-instance gxc#!interface::t _%$args223966%_)))
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
      (let ((__tmp224922 (list gxc#!procedure::t))
            (__tmp224921 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!lambda::t
         '!lambda
         __tmp224922
         '(arity dispatch inline inline-typedecl)
         __tmp224921
         ':init!)))
    (define gxc#!lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!lambda::t)))
    (define gxc#make-!lambda
      (lambda _%$args223963%_
        (apply make-instance gxc#!lambda::t _%$args223963%_)))
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
      (lambda (_%$obj223942%_ _%signature223943%_)
        (let* ((_%$obj223946%_ _%$obj223942%_)
               (_%signature223954%_ _%signature223943%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223946%_
           _%signature223954%_
           '2
           '#f
           '#f))))
    (define gxc#!lambda-signature-set!
      (lambda (_%$obj223909%_ _%signature223911%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223909%_ 'gxc#!lambda::t))
            (let ((_%$obj223916%_ _%$obj223909%_))
              (if (or (not _%signature223911%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223911%_
                         'gxc#!signature::t)))
                  (let ((_%signature223932%_ _%signature223911%_))
                    (gxc#__!lambda-signature-set!
                     _%$obj223916%_
                     _%signature223932%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223911%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!lambda?
               'value:
               _%$obj223909%_)
              '#!void))))
    (define gxc#!case-lambda::t
      (let ((__tmp224924 (list gxc#!procedure::t))
            (__tmp224923 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!case-lambda::t
         '!case-lambda
         __tmp224924
         '(clauses)
         __tmp224923
         ':init!)))
    (define gxc#!case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!case-lambda::t)))
    (define gxc#make-!case-lambda
      (lambda _%$args223906%_
        (apply make-instance gxc#!case-lambda::t _%$args223906%_)))
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
      (lambda (_%$obj223885%_ _%signature223886%_)
        (let* ((_%$obj223889%_ _%$obj223885%_)
               (_%signature223897%_ _%signature223886%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223889%_
           _%signature223897%_
           '2
           '#f
           '#f))))
    (define gxc#!case-lambda-signature-set!
      (lambda (_%$obj223852%_ _%signature223854%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223852%_ 'gxc#!case-lambda::t))
            (let ((_%$obj223859%_ _%$obj223852%_))
              (if (or (not _%signature223854%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223854%_
                         'gxc#!signature::t)))
                  (let ((_%signature223875%_ _%signature223854%_))
                    (gxc#__!case-lambda-signature-set!
                     _%$obj223859%_
                     _%signature223875%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223854%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!case-lambda?
               'value:
               _%$obj223852%_)
              '#!void))))
    (define gxc#!kw-lambda::t
      (let ((__tmp224926 (list gxc#!procedure::t))
            (__tmp224925 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda::t
         '!kw-lambda
         __tmp224926
         '(table dispatch)
         __tmp224925
         ':init!)))
    (define gxc#!kw-lambda?
      (let () (declare (not safe)) (__make-class-predicate gxc#!kw-lambda::t)))
    (define gxc#make-!kw-lambda
      (lambda _%$args223849%_
        (apply make-instance gxc#!kw-lambda::t _%$args223849%_)))
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
      (lambda (_%$obj223828%_ _%signature223829%_)
        (let* ((_%$obj223832%_ _%$obj223828%_)
               (_%signature223840%_ _%signature223829%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223832%_
           _%signature223840%_
           '2
           '#f
           '#f))))
    (define gxc#!kw-lambda-signature-set!
      (lambda (_%$obj223795%_ _%signature223797%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%$obj223795%_ 'gxc#!kw-lambda::t))
            (let ((_%$obj223802%_ _%$obj223795%_))
              (if (or (not _%signature223797%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223797%_
                         'gxc#!signature::t)))
                  (let ((_%signature223818%_ _%signature223797%_))
                    (gxc#__!kw-lambda-signature-set!
                     _%$obj223802%_
                     _%signature223818%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223797%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!kw-lambda?
               'value:
               _%$obj223795%_)
              '#!void))))
    (define gxc#!kw-lambda-primary::t
      (let ((__tmp224928 (list gxc#!procedure::t))
            (__tmp224927 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!kw-lambda-primary::t
         '!kw-lambda-primary
         __tmp224928
         '(keys main)
         __tmp224927
         ':init!)))
    (define gxc#!kw-lambda-primary?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!kw-lambda-primary::t)))
    (define gxc#make-!kw-lambda-primary
      (lambda _%$args223792%_
        (apply make-instance gxc#!kw-lambda-primary::t _%$args223792%_)))
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
      (lambda (_%$obj223771%_ _%signature223772%_)
        (let* ((_%$obj223775%_ _%$obj223771%_)
               (_%signature223783%_ _%signature223772%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223775%_
           _%signature223783%_
           '2
           '#f
           '#f))))
    (define gxc#!kw-lambda-primary-signature-set!
      (lambda (_%$obj223738%_ _%signature223740%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj223738%_
               'gxc#!kw-lambda-primary::t))
            (let ((_%$obj223745%_ _%$obj223738%_))
              (if (or (not _%signature223740%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223740%_
                         'gxc#!signature::t)))
                  (let ((_%signature223761%_ _%signature223740%_))
                    (gxc#__!kw-lambda-primary-signature-set!
                     _%$obj223745%_
                     _%signature223761%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223740%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!kw-lambda-primary?
               'value:
               _%$obj223738%_)
              '#!void))))
    (define gxc#!primitive::t
      (let ((__tmp224929 (list)))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive::t
         '!primitive
         __tmp224929
         '()
         '((equal: . #t))
         '#f)))
    (define gxc#!primitive?
      (let () (declare (not safe)) (__make-class-predicate gxc#!primitive::t)))
    (define gxc#make-!primitive
      (lambda _%$args223735%_
        (apply make-instance gxc#!primitive::t _%$args223735%_)))
    (define gxc#!primitive-predicate::t
      (let ((__tmp224931 (list gxc#!primitive::t gxc#!procedure::t))
            (__tmp224930 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-predicate::t
         '!primitive-predicate
         __tmp224931
         '()
         __tmp224930
         ':init!)))
    (define gxc#!primitive-predicate?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-predicate::t)))
    (define gxc#make-!primitive-predicate
      (lambda _%$args223732%_
        (apply make-instance gxc#!primitive-predicate::t _%$args223732%_)))
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
      (lambda (_%$obj223711%_ _%signature223712%_)
        (let* ((_%$obj223715%_ _%$obj223711%_)
               (_%signature223723%_ _%signature223712%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223715%_
           _%signature223723%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-predicate-signature-set!
      (lambda (_%$obj223678%_ _%signature223680%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj223678%_
               'gxc#!primitive-predicate::t))
            (let ((_%$obj223685%_ _%$obj223678%_))
              (if (or (not _%signature223680%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223680%_
                         'gxc#!signature::t)))
                  (let ((_%signature223701%_ _%signature223680%_))
                    (gxc#__!primitive-predicate-signature-set!
                     _%$obj223685%_
                     _%signature223701%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223680%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-predicate?
               'value:
               _%$obj223678%_)
              '#!void))))
    (define gxc#!primitive-lambda::t
      (let ((__tmp224933 (list gxc#!primitive::t gxc#!lambda::t))
            (__tmp224932 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-lambda::t
         '!primitive-lambda
         __tmp224933
         '()
         __tmp224932
         ':init!)))
    (define gxc#!primitive-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-lambda::t)))
    (define gxc#make-!primitive-lambda
      (lambda _%$args223675%_
        (apply make-instance gxc#!primitive-lambda::t _%$args223675%_)))
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
      (lambda (_%$obj223654%_ _%signature223655%_)
        (let* ((_%$obj223658%_ _%$obj223654%_)
               (_%signature223666%_ _%signature223655%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223658%_
           _%signature223666%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-lambda-signature-set!
      (lambda (_%$obj223621%_ _%signature223623%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj223621%_
               'gxc#!primitive-lambda::t))
            (let ((_%$obj223628%_ _%$obj223621%_))
              (if (or (not _%signature223623%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223623%_
                         'gxc#!signature::t)))
                  (let ((_%signature223644%_ _%signature223623%_))
                    (gxc#__!primitive-lambda-signature-set!
                     _%$obj223628%_
                     _%signature223644%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223623%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-lambda?
               'value:
               _%$obj223621%_)
              '#!void))))
    (define gxc#!primitive-case-lambda::t
      (let ((__tmp224935 (list gxc#!primitive::t gxc#!case-lambda::t))
            (__tmp224934 (cons (cons 'struct: '#t) '((equal: . #t)))))
        (declare (not safe))
        (make-class-type
         'gxc#!primitive-case-lambda::t
         '!primitive-case-lambda
         __tmp224935
         '()
         __tmp224934
         ':init!)))
    (define gxc#!primitive-case-lambda?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#!primitive-case-lambda::t)))
    (define gxc#make-!primitive-case-lambda
      (lambda _%$args223618%_
        (apply make-instance gxc#!primitive-case-lambda::t _%$args223618%_)))
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
      (lambda (_%$obj223597%_ _%signature223598%_)
        (let* ((_%$obj223601%_ _%$obj223597%_)
               (_%signature223609%_ _%signature223598%_))
          (declare (not safe))
          (##unchecked-structure-set!
           _%$obj223601%_
           _%signature223609%_
           '2
           '#f
           '#f))))
    (define gxc#!primitive-case-lambda-signature-set!
      (lambda (_%$obj223564%_ _%signature223566%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of?
               _%$obj223564%_
               'gxc#!primitive-case-lambda::t))
            (let ((_%$obj223571%_ _%$obj223564%_))
              (if (or (not _%signature223566%_)
                      (let ()
                        (declare (not safe))
                        (##structure-direct-instance-of?
                         _%signature223566%_
                         'gxc#!signature::t)))
                  (let ((_%signature223587%_ _%signature223566%_))
                    (gxc#__!primitive-case-lambda-signature-set!
                     _%$obj223571%_
                     _%signature223587%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     'gerbil/compiler/optimize-base
                     'contract:
                     '(? (or not !signature?))
                     'value:
                     _%signature223566%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/compiler/optimize-base
               'contract:
               '!primitive-case-lambda?
               'value:
               _%$obj223564%_)
              '#!void))))
    (define gxc#!abort:::init!
      (lambda (_%self223551%_)
        (let ((_%self223554%_ _%self223551%_))
          (declare (not safe))
          (##unchecked-structure-set! _%self223554%_ 'abort '1 '#f '#f))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!abort::t ':init! gxc#!abort:::init! '#f))
    (define gxc#!class-meta:::init!
      (lambda (_%self223414%_ _%klass223415%_)
        (let ((_%self223418%_ _%self223414%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self223418%_ 'class '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223418%_
             _%klass223415%_
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
      (lambda (_%self223104%_
               _%id223105%_
               _%super223106%_
               _%slots223107%_
               _%ctor-method223108%_
               _%struct?223109%_
               _%final?223110%_
               _%system?223111%_
               _%metaclass223112%_)
        (let ((_%self223115%_ _%self223104%_))
          (let _%lp223126%_ ((_%rest223128%_ _%super223106%_))
            (let* ((_%$%rest223129223137%_ _%rest223128%_)
                   (_%$%else223131223145%_ (lambda () '#!void))
                   (_%$%K223133223151%_
                    (lambda (_%rest223148%_ _%super-id223149%_)
                      (if (let ((__tmp224936
                                 (gxc#optimizer-resolve-class
                                  (list '!class _%id223105%_)
                                  _%super-id223149%_)))
                            (declare (not safe))
                            (##unchecked-structure-ref __tmp224936 '8 '#f '#f))
                          (let ((__tmp224937 (list '!class _%id223105%_)))
                            (declare (not safe))
                            (gxc#raise-compile-error
                             '"cannot extend final class"
                             __tmp224937
                             _%super-id223149%_))
                          '#!void)
                      (_%lp223126%_ _%rest223148%_))))
              (if (pair? _%$%rest223129223137%_)
                  (let ((_%$%hd223134223154%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest223129223137%_)))
                        (_%$%tl223135223156%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest223129223137%_))))
                    (let* ((_%super-id223159%_ _%$%hd223134223154%_)
                           (_%rest223161%_ _%$%tl223135223156%_))
                      (_%$%K223133223151%_ _%rest223161%_ _%super-id223159%_)))
                  '#!void)))
          (let* ((_%ctor-method223212%_
                  (let ((_%$e223163%_ _%ctor-method223108%_))
                    (if _%$e223163%_
                        _%$e223163%_
                        (let _%lp223166%_ ((_%rest223168%_ _%super223106%_)
                                           (_%method223169%_ '#f))
                          (let* ((_%$%rest223170223178%_ _%rest223168%_)
                                 (_%$%else223172223186%_
                                  (lambda () _%method223169%_))
                                 (_%$%K223174223200%_
                                  (lambda (_%rest223189%_ _%super-id223190%_)
                                    (let* ((_%klass223192%_
                                            (gxc#optimizer-resolve-class
                                             (list '!class _%id223105%_)
                                             _%super-id223190%_))
                                           (_%$e223194%_
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-ref
                                               _%klass223192%_
                                               '6
                                               '#f
                                               '#f))))
                                      (if _%$e223194%_
                                          (if _%method223169%_
                                              (if (eq? _%$e223194%_
                                                       _%method223169%_)
                                                  (_%lp223166%_
                                                   _%rest223189%_
                                                   _%$e223194%_)
                                                  (let ((__tmp224938
                                                         (list '!class
                                                               _%id223105%_)))
                                                    (declare (not safe))
                                                    (gxc#raise-compile-error
                                                     '"conflicting implicit constructor methods"
                                                     __tmp224938
                                                     _%method223169%_
                                                     _%$e223194%_)))
                                              (_%lp223166%_
                                               _%rest223189%_
                                               _%$e223194%_))
                                          (_%lp223166%_
                                           _%rest223189%_
                                           _%method223169%_))))))
                            (if (pair? _%$%rest223170223178%_)
                                (let ((_%$%hd223175223203%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest223170223178%_)))
                                      (_%$%tl223176223205%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest223170223178%_))))
                                  (let* ((_%super-id223208%_
                                          _%$%hd223175223203%_)
                                         (_%rest223210%_ _%$%tl223176223205%_))
                                    (_%$%K223174223200%_
                                     _%rest223210%_
                                     _%super-id223208%_)))
                                (_%$%else223172223186%_)))))))
                 (_g224939_
                  (let ((__tmp224943
                         (lambda (_%klass-id223214%_)
                           (cons _%klass-id223214%_
                                 (let ((__tmp224944
                                        (gxc#optimizer-resolve-class
                                         (list '!class _%id223105%_)
                                         _%klass-id223214%_)))
                                   (declare (not safe))
                                   (##unchecked-structure-ref
                                    __tmp224944
                                    '3
                                    '#f
                                    '#f)))))
                        (__tmp224941
                         (lambda (_%klass-id223216%_)
                           (let ((__tmp224942
                                  (gxc#optimizer-resolve-class
                                   (list '!class _%id223105%_)
                                   _%klass-id223216%_)))
                             (declare (not safe))
                             (##unchecked-structure-ref
                              __tmp224942
                              '7
                              '#f
                              '#f)))))
                    (declare (not safe))
                    (c4-linearize__%
                     '#f
                     __tmp224943
                     __tmp224941
                     eq?
                     identity
                     '()
                     _%super223106%_))))
            (begin
              (let ((_g224940_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g224939_)
                           (##values-length _g224939_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g224940_ 2)))
                    (error "Context expects 2 values" _g224940_)))
              (let ((_%precedence-list223218%_
                     (let () (declare (not safe)) (##values-ref _g224939_ 0)))
                    (_%base-struct223219%_
                     (let () (declare (not safe)) (##values-ref _g224939_ 1))))
                (let* ((_%precedence-list223263%_
                        (if (let ()
                              (declare (not safe))
                              (##memq _%id223105%_ '(t object class)))
                            _%precedence-list223218%_
                            (if (memq 'object::t _%precedence-list223218%_)
                                _%precedence-list223218%_
                                (if _%system?223111%_
                                    (if (memq 't::t _%precedence-list223218%_)
                                        _%precedence-list223218%_
                                        (let ()
                                          (declare (not safe))
                                          (##append
                                           _%precedence-list223218%_
                                           '(t::t))))
                                    (let _%loop223225%_ ((_%tail223227%_
                                                          _%precedence-list223218%_)
                                                         (_%head223228%_ '()))
                                      (let* ((_%$%tail223229223237%_
                                              _%tail223227%_)
                                             (_%$%else223231223245%_
                                              (lambda ()
                                                (let ()
                                                  (declare (not safe))
                                                  (foldl__0
                                                   cons
                                                   '(object::t t::t)
                                                   _%head223228%_))))
                                             (_%$%K223233223251%_
                                              (lambda (_%rest223248%_
                                                       _%hd223249%_)
                                                (if (eq? _%hd223249%_ 't::t)
                                                    (let ((__tmp224945
                                                           (cons 'object::t
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         _%tail223227%_)))
              (declare (not safe))
              (foldl__0 cons __tmp224945 _%head223228%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (_%loop223225%_
                                                     _%rest223248%_
                                                     (cons _%hd223249%_
                                                           _%head223228%_))))))
                                        (if (pair? _%$%tail223229223237%_)
                                            (let ((_%$%hd223234223254%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%tail223229223237%_)))
                                                  (_%$%tl223235223256%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%tail223229223237%_))))
                                              (let* ((_%hd223259%_
                                                      _%$%hd223234223254%_)
                                                     (_%rest223261%_
                                                      _%$%tl223235223256%_))
                                                (_%$%K223233223251%_
                                                 _%rest223261%_
                                                 _%hd223259%_)))
                                            (_%$%else223231223245%_))))))))
                       (_%fields223265%_
                        (gxc#compute-class-fields
                         (list '!class _%id223105%_)
                         _%precedence-list223263%_
                         _%slots223107%_)))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self223115%_
                     _%id223105%_
                     '1
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self223115%_
                     _%super223106%_
                     '2
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self223115%_
                     _%precedence-list223263%_
                     '3
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self223115%_
                     _%slots223107%_
                     '4
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self223115%_
                     _%fields223265%_
                     '5
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self223115%_
                     _%ctor-method223212%_
                     '6
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self223115%_
                     _%struct?223109%_
                     '7
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self223115%_
                     _%final?223110%_
                     '8
                     '#f
                     '#f))
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%self223115%_
                     _%metaclass223112%_
                     '10
                     '#f
                     '#f)))))))))
    (define gxc#!class:::init!__1
      (lambda (_%self223268%_
               _%id223269%_
               _%super223270%_
               _%precedence-list223271%_
               _%slots223272%_
               _%fields223273%_
               _%constructor223274%_
               _%struct?223275%_
               _%final?223276%_
               _%system?223277%_
               _%metaclass223278%_
               _%methods223279%_)
        (let ((_%self223282%_ _%self223268%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223282%_
             _%id223269%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223282%_
             _%super223270%_
             '2
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223282%_
             _%precedence-list223271%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223282%_
             _%slots223272%_
             '4
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223282%_
             _%fields223273%_
             '5
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223282%_
             _%constructor223274%_
             '6
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223282%_
             _%struct?223275%_
             '7
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223282%_
             _%final?223276%_
             '8
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self223282%_
             _%metaclass223278%_
             '10
             '#f
             '#f))
          (if _%methods223279%_
              (let ((__tmp224946
                     (let ()
                       (declare (not safe))
                       (list->hash-table-eq _%methods223279%_))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%self223282%_
                 __tmp224946
                 '11
                 '#f
                 '#f))
              '#!void))))
    (define gxc#!class:::init!
      (lambda _g224947_
        (let ((_g224948_ (let () (declare (not safe)) (##length _g224947_))))
          (cond ((let () (declare (not safe)) (##fx= _g224948_ 9))
                 (apply gxc#!class:::init!__0 _g224947_))
                ((let () (declare (not safe)) (##fx= _g224948_ 12))
                 (apply gxc#!class:::init!__1 _g224947_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#!class:::init!
                  _g224947_))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t ':init! gxc#!class:::init! '#f))
    (define gxc#compute-class-fields
      (lambda (_%where222973%_
               _%precedence-list222974%_
               _%direct-slots222975%_)
        (let ((__tmp224950
               (lambda (_%mixin222977%_)
                 (let ((__tmp224951
                        (gxc#optimizer-resolve-class
                         _%where222973%_
                         _%mixin222977%_)))
                   (declare (not safe))
                   (##unchecked-structure-ref __tmp224951 '5 '#f '#f))))
              (__tmp224949
               (lambda (_%slot-list222979%_ _%slot-table222980%_)
                 (cdr _%slot-list222979%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%precedence-list222974%_
           _%direct-slots222975%_
           __tmp224950
           __tmp224949))))
    (define gxc#!class-slot->field-offset
      (lambda (_%klass222932%_ _%slot222933%_)
        (let _%lp222935%_ ((_%rest222937%_
                            (##structure-ref
                             _%klass222932%_
                             '5
                             gxc#!class::t
                             '#f))
                           (_%offset222938%_ '1))
          (let* ((_%$%rest222939222947%_ _%rest222937%_)
                 (_%$%else222941222955%_
                  (lambda ()
                    (let ((__tmp224953
                           (##structure-ref
                            _%klass222932%_
                            '1
                            gxc#!type::t
                            '#f))
                          (__tmp224952
                           (##structure-ref
                            _%klass222932%_
                            '5
                            gxc#!class::t
                            '#f)))
                      (declare (not safe))
                      (gxc#raise-compile-error
                       '"unknown class slot"
                       __tmp224953
                       __tmp224952
                       _%slot222933%_))))
                 (_%$%K222943222961%_
                  (lambda (_%rest222958%_ _%s222959%_)
                    (if (eq? _%s222959%_ _%slot222933%_)
                        _%offset222938%_
                        (_%lp222935%_
                         _%rest222958%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%offset222938%_ '1)))))))
            (if (pair? _%$%rest222939222947%_)
                (let ((_%$%hd222944222964%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest222939222947%_)))
                      (_%$%tl222945222966%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest222939222947%_))))
                  (let* ((_%s222969%_ _%$%hd222944222964%_)
                         (_%rest222971%_ _%$%tl222945222966%_))
                    (_%$%K222943222961%_ _%rest222971%_ _%s222969%_)))
                (_%$%else222941222955%_))))))
    (define gxc#!class-slot-find-struct
      (lambda (_%klass222890%_ _%slot222891%_)
        (if (gxc#!class-struct-slot? _%klass222890%_ _%slot222891%_)
            _%klass222890%_
            (let _%lp222893%_ ((_%rest222895%_
                                (##structure-ref
                                 _%klass222890%_
                                 '3
                                 gxc#!class::t
                                 '#f)))
              (let* ((_%$%rest222896222904%_ _%rest222895%_)
                     (_%$%else222898222912%_ (lambda () '#f))
                     (_%$%K222900222920%_
                      (lambda (_%rest222915%_ _%super222916%_)
                        (let ((_%super-class222918%_
                               (gxc#optimizer-resolve-class
                                (list '!class-slot-find-struct
                                      (##structure-ref
                                       _%klass222890%_
                                       '1
                                       gxc#!type::t
                                       '#f)
                                      _%slot222891%_)
                                _%super222916%_)))
                          (if (gxc#!class-struct-slot?
                               _%super-class222918%_
                               _%slot222891%_)
                              _%super-class222918%_
                              (_%lp222893%_ _%rest222915%_))))))
                (if (pair? _%$%rest222896222904%_)
                    (let ((_%$%hd222901222923%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest222896222904%_)))
                          (_%$%tl222902222925%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest222896222904%_))))
                      (let* ((_%super222928%_ _%$%hd222901222923%_)
                             (_%rest222930%_ _%$%tl222902222925%_))
                        (_%$%K222900222920%_ _%rest222930%_ _%super222928%_)))
                    (_%$%else222898222912%_)))))))
    (define gxc#!class-struct-slot?
      (lambda (_%klass222887%_ _%slot222888%_)
        (if (##structure-ref _%klass222887%_ '7 gxc#!class::t '#f)
            (memq _%slot222888%_
                  (##structure-ref _%klass222887%_ '5 gxc#!class::t '#f))
            '#f)))
    (define gxc#!predicate:::init!
      (lambda (_%self222833%_ _%id222834%_)
        (let ((_%self222837%_ _%self222833%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222837%_
             _%id222834%_
             '1
             '#f
             '#f))
          (let* ((_%$obj222848%_ _%self222837%_)
                 (_%signature222851%_
                  (let ((__obj224881
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
                       __obj224881
                       'boolean::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224881
                       '(pure predicate)
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224881
                       '(t::t)
                       '3
                       '#f
                       '#f))
                    __obj224881))
                 (_%$obj222856%_ _%$obj222848%_))
            (if (or (not _%signature222851%_) '#t)
                (let ((_%signature222877%_ _%signature222851%_))
                  (gxc#__!predicate-signature-set!
                   _%$obj222856%_
                   _%signature222877%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature222851%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!predicate::t ':init! gxc#!predicate:::init! '#f))
    (define gxc#!constructor:::init!
      (lambda (_%self222657%_ _%id222658%_)
        (let ((_%self222661%_ _%self222657%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222661%_
             _%id222658%_
             '1
             '#f
             '#f))
          (let* ((_%$obj222672%_ _%self222661%_)
                 (_%signature222675%_
                  (let ((__obj224882
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
                       __obj224882
                       _%id222658%_
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224882
                       '(alloc)
                       '2
                       '#f
                       '#f))
                    __obj224882))
                 (_%$obj222680%_ _%$obj222672%_))
            (if (or (not _%signature222675%_) '#t)
                (let ((_%signature222701%_ _%signature222675%_))
                  (gxc#__!constructor-signature-set!
                   _%$obj222680%_
                   _%signature222701%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature222675%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       ':init!
       gxc#!constructor:::init!
       '#f))
    (define gxc#!accessor:::init!
      (lambda (_%self222479%_ _%id222480%_ _%slot222481%_ _%checked?222482%_)
        (let ((_%self222485%_ _%self222479%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222485%_
             _%id222480%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222485%_
             _%slot222481%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222485%_
             _%checked?222482%_
             '4
             '#f
             '#f))
          (let* ((_%$obj222496%_ _%self222485%_)
                 (_%signature222499%_
                  (let ((__obj224883
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
                       __obj224883
                       't::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224883
                       '(pure)
                       '2
                       '#f
                       '#f))
                    (let ((__tmp224954 (cons _%id222480%_ '())))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224883
                       __tmp224954
                       '3
                       '#f
                       '#f))
                    __obj224883))
                 (_%$obj222504%_ _%$obj222496%_))
            (if (or (not _%signature222499%_) '#t)
                (let ((_%signature222525%_ _%signature222499%_))
                  (gxc#__!accessor-signature-set!
                   _%$obj222504%_
                   _%signature222525%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature222499%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!accessor::t ':init! gxc#!accessor:::init! '#f))
    (define gxc#!mutator:::init!
      (lambda (_%self222301%_ _%id222302%_ _%slot222303%_ _%checked?222304%_)
        (let ((_%self222307%_ _%self222301%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222307%_
             _%id222302%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222307%_
             _%slot222303%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222307%_
             _%checked?222304%_
             '4
             '#f
             '#f))
          (let* ((_%$obj222318%_ _%self222307%_)
                 (_%signature222321%_
                  (let ((__obj224884
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
                       __obj224884
                       'void::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224884
                       '(mut)
                       '2
                       '#f
                       '#f))
                    (let ((__tmp224955 (cons _%id222302%_ (cons 't::t '()))))
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224884
                       __tmp224955
                       '3
                       '#f
                       '#f))
                    __obj224884))
                 (_%$obj222326%_ _%$obj222318%_))
            (if (or (not _%signature222321%_) '#t)
                (let ((_%signature222347%_ _%signature222321%_))
                  (gxc#__!mutator-signature-set!
                   _%$obj222326%_
                   _%signature222347%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature222321%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t ':init! gxc#!mutator:::init! '#f))
    (define gxc#!lambda:::init!__%
      (lambda (_%@@keywords222106%_
               _%$%signature222103222107%_
               _%self222108%_
               _%arity222109%_
               _%dispatch222110%_)
        (let* ((_%signature222112%_
                (if (eq? _%$%signature222103222107%_ absent-value)
                    '#f
                    _%$%signature222103222107%_))
               (_%self222115%_ _%self222108%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self222115%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222115%_
             _%arity222109%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self222115%_
             _%dispatch222110%_
             '4
             '#f
             '#f))
          (let* ((_%$obj222127%_ _%self222115%_)
                 (_%signature222130%_ _%signature222112%_)
                 (_%$obj222135%_ _%$obj222127%_))
            (if (or (not _%signature222130%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%signature222130%_
                       'gxc#!signature::t)))
                (let ((_%signature222156%_ _%signature222130%_))
                  (gxc#__!lambda-signature-set!
                   _%$obj222135%_
                   _%signature222156%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature222130%_)
                  '#!void))))))
    (define gxc#!lambda:::init!__@
      (lambda (_%@@keywords222169%_ . _%args222170%_)
        (apply gxc#!lambda:::init!__%
               _%@@keywords222169%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords222169%_
                  'signature:
                  absent-value))
               _%args222170%_)))
    (define gxc#!lambda:::init!
      (lambda _%$%args222104222176%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!lambda:::init!__@
               _%$%args222104222176%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t ':init! gxc#!lambda:::init! '#f))
    (define gxc#!case-lambda:::init!__%
      (lambda (_%@@keywords221908%_
               _%$%signature221905221909%_
               _%self221910%_
               _%clauses221911%_)
        (let* ((_%signature221913%_
                (if (eq? _%$%signature221905221909%_ absent-value)
                    '#f
                    _%$%signature221905221909%_))
               (_%self221916%_ _%self221910%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self221916%_ 'procedure '1 '#f '#f))
          (let* ((_%$obj221928%_ _%self221916%_)
                 (_%signature221931%_ _%signature221913%_)
                 (_%$obj221936%_ _%$obj221928%_))
            (if (or (not _%signature221931%_)
                    (let ()
                      (declare (not safe))
                      (##structure-direct-instance-of?
                       _%signature221931%_
                       'gxc#!signature::t)))
                (let ((_%signature221957%_ _%signature221931%_))
                  (gxc#__!case-lambda-signature-set!
                   _%$obj221936%_
                   _%signature221957%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature221931%_)
                  '#!void)))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221916%_
             _%clauses221911%_
             '3
             '#f
             '#f)))))
    (define gxc#!case-lambda:::init!__@
      (lambda (_%@@keywords221970%_ . _%args221971%_)
        (apply gxc#!case-lambda:::init!__%
               _%@@keywords221970%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%@@keywords221970%_
                  'signature:
                  absent-value))
               _%args221971%_)))
    (define gxc#!case-lambda:::init!
      (lambda _%$%args221906221977%_
        (apply keyword-dispatch
               '#(signature:)
               gxc#!case-lambda:::init!__@
               _%$%args221906221977%_)))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       ':init!
       gxc#!case-lambda:::init!
       '#f))
    (define gxc#!kw-lambda:::init!
      (lambda (_%self221766%_ _%tab221767%_ _%dispatch221768%_)
        (let ((_%self221771%_ _%self221766%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self221771%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221771%_
             _%tab221767%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221771%_
             _%dispatch221768%_
             '4
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!kw-lambda::t ':init! gxc#!kw-lambda:::init! '#f))
    (define gxc#!kw-lambda-primary:::init!
      (lambda (_%self221628%_ _%keys221629%_ _%main221630%_)
        (let ((_%self221633%_ _%self221628%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set! _%self221633%_ 'procedure '1 '#f '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221633%_
             _%keys221629%_
             '3
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221633%_
             _%main221630%_
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
      (lambda (_%self221208%_ _%id221209%_)
        (let ((_%self221212%_ _%self221208%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self221212%_
             _%id221209%_
             '1
             '#f
             '#f))
          (let* ((_%$obj221223%_ _%self221212%_)
                 (_%signature221226%_
                  (let ((__obj224885
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
                       __obj224885
                       'boolean::t
                       '1
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224885
                       '(pure)
                       '2
                       '#f
                       '#f))
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-set!
                       __obj224885
                       '(t::t)
                       '3
                       '#f
                       '#f))
                    __obj224885))
                 (_%$obj221231%_ _%$obj221223%_))
            (if (or (not _%signature221226%_) '#t)
                (let ((_%signature221252%_ _%signature221226%_))
                  (gxc#__!primitive-predicate-signature-set!
                   _%$obj221231%_
                   _%signature221252%_))
                (begin
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   'gerbil/compiler/optimize-base
                   'contract:
                   '(? (or not !signature?))
                   'value:
                   _%signature221226%_)
                  '#!void))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       ':init!
       gxc#!primitive-predicate:::init!
       '#f))
    (define gxc#!class-method-table
      (lambda (_%klass221078%_)
        (let ((_%$e221080%_
               (##structure-ref _%klass221078%_ '11 gxc#!class::t '#f)))
          (if _%$e221080%_
              _%$e221080%_
              (let ((_%tab221084%_
                     (let () (declare (not safe)) (make-hash-table-eq))))
                (##structure-set!
                 _%klass221078%_
                 _%tab221084%_
                 '11
                 gxc#!class::t
                 '#f)
                _%tab221084%_)))))
    (define gxc#!class-lookup-method
      (lambda (_%klass221070%_ _%method221071%_)
        (let ((_%$%tab221072221074%_
               (##structure-ref _%klass221070%_ '11 gxc#!class::t '#f)))
          (if _%$%tab221072221074%_
              (let ((_%tab221076%_ _%$%tab221072221074%_))
                (declare (not safe))
                (hash-get _%tab221076%_ _%method221071%_))
              '#f))))
    (define gxc#!type-subtype?
      (lambda (_%type-a221046%_ _%type-b221047%_)
        (if _%type-a221046%_
            (if _%type-b221047%_
                (let ((_%$e221049%_ (eq? _%type-a221046%_ _%type-b221047%_)))
                  (if _%$e221049%_
                      _%$e221049%_
                      (let ((_%$e221052%_
                             (eq? (##structure-ref
                                   _%type-b221047%_
                                   '1
                                   gxc#!type::t
                                   '#f)
                                  't)))
                        (if _%$e221052%_
                            _%$e221052%_
                            (let ((_%$e221055%_
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%type-a221046%_
                                          'gxc#!nullable-type::t))
                                       (if (let ()
                                             (declare (not safe))
                                             (##structure-instance-of?
                                              _%type-b221047%_
                                              'gxc#!nullable-type::t))
                                           '#f
                                           (if (gxc#!type-subtype?
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%type-a221046%_
                                                   '2
                                                   '#f
                                                   '#f))
                                                _%type-b221047%_)
                                               (gxc#!type-subtype?
                                                (gxc#optimizer-resolve-class
                                                 'subtype
                                                 'false::t)
                                                _%type-b221047%_)
                                               '#f))
                                       '#f)))
                              (if _%$e221055%_
                                  _%$e221055%_
                                  (let ((_%$e221061%_
                                         (if (let ()
                                               (declare (not safe))
                                               (##structure-instance-of?
                                                _%type-b221047%_
                                                'gxc#!nullable-type::t))
                                             (let ((_%$e221058%_
                                                    (eq? (##structure-ref
                                                          _%type-a221046%_
                                                          '1
                                                          gxc#!type::t
                                                          '#f)
                                                         'false)))
                                               (if _%$e221058%_
                                                   _%$e221058%_
                                                   (gxc#!type-subtype?
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-instance-of?
                                                           _%type-a221046%_
                                                           'gxc#!nullable-type::t))
                                                        (let ()
                                                          (declare (not safe))
                                                          (##unchecked-structure-ref
                                                           _%type-a221046%_
                                                           '2
                                                           '#f
                                                           '#f))
                                                        _%type-a221046%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%type-b221047%_
                                                       '2
                                                       '#f
                                                       '#f)))))
                                             '#f)))
                                    (if _%$e221061%_
                                        _%$e221061%_
                                        (let ((_%$e221064%_
                                               (if (let ()
                                                     (declare (not safe))
                                                     (##structure-instance-of?
                                                      _%type-a221046%_
                                                      'gxc#!procedure::t))
                                                   (eq? (##structure-ref
                                                         _%type-b221047%_
                                                         '1
                                                         gxc#!type::t
                                                         '#f)
                                                        'procedure)
                                                   '#f)))
                                          (if _%$e221064%_
                                              _%$e221064%_
                                              (let ((_%$e221067%_
                                                     (if (let ()
                                                           (declare (not safe))
                                                           (##structure-instance-of?
                                                            _%type-a221046%_
                                                            'gxc#!class::t))
                                                         (if (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##structure-instance-of?
                        _%type-b221047%_
                        'gxc#!class::t))
                     (gxc#!class-subclass? _%type-a221046%_ _%type-b221047%_)
                     '#f)
                 '#f)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if _%$e221067%_
                                                    _%$e221067%_
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (##structure-instance-of?
                                                           _%type-a221046%_
                                                           'gxc#!interface::t))
                                                        (eq? (##structure-ref
                                                              _%type-b221047%_
                                                              '1
                                                              gxc#!type::t
                                                              '#f)
                                                             'interface-descriptor::t)
                                                        '#f)))))))))))))
                '#f)
            '#f)))
    (define gxc#!class-subclass?
      (lambda (_%klass-a220997%_ _%klass-b220998%_)
        (let ((_%$e221000%_
               (eq? (##structure-ref _%klass-a220997%_ '1 gxc#!type::t '#f)
                    (##structure-ref _%klass-b220998%_ '1 gxc#!type::t '#f))))
          (if _%$e221000%_
              _%$e221000%_
              (let ((_%klass-id-b221003%_
                     (##structure-ref _%klass-b220998%_ '1 gxc#!type::t '#f))
                    (_%precedence-list221004%_
                     (##structure-ref _%klass-a220997%_ '3 gxc#!class::t '#f)))
                (let _%loop221006%_ ((_%rest221008%_
                                      _%precedence-list221004%_))
                  (let* ((_%$%rest221009221017%_ _%rest221008%_)
                         (_%$%else221011221025%_ (lambda () '#f))
                         (_%$%K221013221034%_
                          (lambda (_%rest221028%_ _%klass-name221029%_)
                            (let ((_%$e221031%_
                                   (eq? (let ((__tmp224956
                                               (gxc#optimizer-resolve-class
                                                (list 'subclass?
                                                      _%klass-a220997%_
                                                      _%klass-b220998%_)
                                                _%klass-name221029%_)))
                                          (declare (not safe))
                                          (##unchecked-structure-ref
                                           __tmp224956
                                           '1
                                           '#f
                                           '#f))
                                        _%klass-id-b221003%_)))
                              (if _%$e221031%_
                                  _%$e221031%_
                                  (_%loop221006%_ _%rest221028%_))))))
                    (if (pair? _%$%rest221009221017%_)
                        (let ((_%$%hd221014221037%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%rest221009221017%_)))
                              (_%$%tl221015221039%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%rest221009221017%_))))
                          (let* ((_%klass-name221042%_ _%$%hd221014221037%_)
                                 (_%rest221044%_ _%$%tl221015221039%_))
                            (_%$%K221013221034%_
                             _%rest221044%_
                             _%klass-name221042%_)))
                        (_%$%else221011221025%_)))))))))
    (define gxc#!class-primitive-leaf?
      (lambda (_%klass220995%_)
        (let ((__tmp224957
               (##structure-ref _%klass220995%_ '1 gxc#!type::t '#f)))
          (declare (not safe))
          (##memq __tmp224957
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
      (lambda (_%klass220954%_)
        (if (##structure-ref _%klass220954%_ '7 gxc#!class::t '#f)
            _%klass220954%_
            (let _%loop220956%_ ((_%rest220958%_
                                  (##structure-ref
                                   _%klass220954%_
                                   '3
                                   gxc#!class::t
                                   '#f)))
              (let* ((_%$%rest220959220967%_ _%rest220958%_)
                     (_%$%else220961220975%_ (lambda () '#f))
                     (_%$%K220963220983%_
                      (lambda (_%rest220978%_ _%name220979%_)
                        (let ((_%super220981%_
                               (gxc#optimizer-resolve-class
                                'struct-base
                                _%name220979%_)))
                          (if (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%super220981%_
                                 '7
                                 '#f
                                 '#f))
                              _%super220981%_
                              (_%loop220956%_ _%rest220978%_))))))
                (if (pair? _%$%rest220959220967%_)
                    (let ((_%$%hd220964220986%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%rest220959220967%_)))
                          (_%$%tl220965220988%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%rest220959220967%_))))
                      (let* ((_%name220991%_ _%$%hd220964220986%_)
                             (_%rest220993%_ _%$%tl220965220988%_))
                        (_%$%K220963220983%_ _%rest220993%_ _%name220991%_)))
                    (_%$%else220961220975%_)))))))
    (define gxc#!type-disjoint?
      (lambda (_%type-a220913%_ _%type-b220914%_)
        (if (or (not _%type-a220913%_)
                (not _%type-b220914%_)
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%type-a220913%_ 'gxc#!abort::t))
                (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%type-b220914%_ 'gxc#!abort::t))
                (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _%type-a220913%_
                   'gxc#!nullable-type::t))
                (let ()
                  (declare (not safe))
                  (##structure-instance-of?
                   _%type-b220914%_
                   'gxc#!nullable-type::t)))
            '#f
            (if (or (gxc#!type-subtype? _%type-a220913%_ _%type-b220914%_)
                    (gxc#!type-subtype? _%type-b220914%_ _%type-a220913%_))
                '#f
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%type-a220913%_
                       'gxc#!procedure::t))
                    (gxc#!type-disjoint?
                     (gxc#optimizer-resolve-class 'disjoint 'procedure::t)
                     _%type-b220914%_)
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of?
                           _%type-b220914%_
                           'gxc#!procedure::t))
                        (gxc#!type-disjoint?
                         _%type-a220913%_
                         (gxc#optimizer-resolve-class 'disjoint 'procedure::t))
                        (if (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%type-a220913%_
                                    'gxc#!class::t))
                                 (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%type-b220914%_
                                    'gxc#!class::t)))
                            (if (or (##structure-ref
                                     _%type-a220913%_
                                     '8
                                     gxc#!class::t
                                     '#f)
                                    (##structure-ref
                                     _%type-b220914%_
                                     '8
                                     gxc#!class::t
                                     '#f)
                                    (gxc#!class-primitive-leaf?
                                     _%type-a220913%_)
                                    (gxc#!class-primitive-leaf?
                                     _%type-b220914%_))
                                '#t
                                (let ((_%base-a220950%_
                                       (gxc#!class-struct-base
                                        _%type-a220913%_))
                                      (_%base-b220951%_
                                       (gxc#!class-struct-base
                                        _%type-b220914%_)))
                                  (if _%base-a220950%_
                                      (if _%base-b220951%_
                                          (if (gxc#!class-subclass?
                                               _%base-a220950%_
                                               _%base-b220951%_)
                                              '#f
                                              (not (gxc#!class-subclass?
                                                    _%base-b220951%_
                                                    _%base-a220950%_)))
                                          '#f)
                                      '#f)))
                            '#f)))))))
    (define gxc#!interface-instance?
      (lambda (_%type220911%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type220911%_ 'gxc#!class::t))
            (memq 'interface-instance::t
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%type220911%_ '3 '#f '#f)))
            '#f)))
    (define gxc#!procedure-origin
      (lambda (_%proc220900%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%proc220900%_ 'gxc#!procedure::t))
            (let ((_%proc220903%_ _%proc220900%_))
              (if (let ()
                    (declare (not safe))
                    (##unchecked-structure-ref _%proc220903%_ '2 '#f '#f))
                  (##direct-structure-ref
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%proc220903%_ '2 '#f '#f))
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
               _%proc220900%_)
              '#!void))))
    (define gxc#optimizer-declare-type!__%
      (lambda (_%sym220882%_ _%type220883%_ _%local?220884%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type220883%_ 'gxc#!type::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !type"
                     _%sym220882%_
                     _%type220883%_)))
        (let ()
          (declare (not safe))
          (gxc#verbose '"declare-type " _%sym220882%_ '" " _%type220883%_))
        (let ((_%table220886%_
               (if _%local?220884%_
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
          (hash-put! _%table220886%_ _%sym220882%_ _%type220883%_))))
    (define gxc#optimizer-declare-type!__0
      (lambda (_%sym220891%_ _%type220892%_)
        (let ((_%local?220894%_ '#f))
          (gxc#optimizer-declare-type!__%
           _%sym220891%_
           _%type220892%_
           _%local?220894%_))))
    (define gxc#optimizer-declare-type!
      (lambda _g224958_
        (let ((_g224959_ (let () (declare (not safe)) (##length _g224958_))))
          (cond ((let () (declare (not safe)) (##fx= _g224959_ 2))
                 (apply gxc#optimizer-declare-type!__0 _g224958_))
                ((let () (declare (not safe)) (##fx= _g224959_ 3))
                 (apply gxc#optimizer-declare-type!__% _g224958_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-type!
                  _g224958_))))))
    (define gxc#optimizer-declare-class!
      (lambda (_%sym220876%_ _%type220877%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type220877%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym220876%_
                     _%type220877%_)))
        (let ((_%table220879%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (let ((__tmp224960
                 (let () (declare (not safe)) (struct->list _%type220877%_))))
            (declare (not safe))
            (gxc#verbose '"declare-class " _%sym220876%_ '" " __tmp224960))
          (let ()
            (declare (not safe))
            (hash-put! _%table220879%_ _%sym220876%_ _%type220877%_))
          (let ()
            (declare (not safe))
            (hash-put! _%table220879%_ _%type220877%_ _%sym220876%_)))))
    (define gxc#optimizer-declare-builtin-class!
      (lambda (_%sym220871%_ _%type220872%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type220872%_ 'gxc#!class::t))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad declaration: expected !class"
                     _%sym220871%_
                     _%type220872%_)))
        (let ((_%table220874%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (if (let ()
                (declare (not safe))
                (hash-get _%table220874%_ _%sym220871%_))
              '#!void
              (begin
                (let ((__tmp224961
                       (let ()
                         (declare (not safe))
                         (struct->list _%type220872%_))))
                  (declare (not safe))
                  (gxc#verbose
                   '"declare-builtin-class "
                   _%sym220871%_
                   '" "
                   __tmp224961))
                (let ()
                  (declare (not safe))
                  (hash-put! _%table220874%_ _%sym220871%_ _%type220872%_))
                (let ()
                  (declare (not safe))
                  (hash-put!
                   _%table220874%_
                   _%type220872%_
                   _%sym220871%_)))))))
    (define gxc#optimizer-clear-type!
      (lambda (_%sym220869%_)
        (let ()
          (declare (not safe))
          (gxc#verbose '"clear-type " _%sym220869%_))
        (let ((__tmp224962
               (let () (declare (not safe)) (gxc#current-compile-local-type))))
          (declare (not safe))
          (hash-remove! __tmp224962 _%sym220869%_))
        (let ((__tmp224963
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '1
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-remove! __tmp224963 _%sym220869%_))))
    (define gxc#optimizer-declare-method!__%
      (lambda (_%type-t220837%_
               _%method220838%_
               _%sym220839%_
               _%rebind?220840%_)
        (let ((__tmp224964
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-put! __tmp224964 _%sym220839%_ '#t))
        (let ((_%klass220842%_ (gxc#optimizer-lookup-class _%type-t220837%_)))
          (if _%klass220842%_
              (let* ((_%vtab220844%_ (gxc#!class-method-table _%klass220842%_))
                     (_%$e220846%_
                      (let ()
                        (declare (not safe))
                        (hash-get _%vtab220844%_ _%method220838%_))))
                (if _%$e220846%_
                    (if _%rebind?220840%_
                        (let ()
                          (let ()
                            (declare (not safe))
                            (gxc#verbose
                             '"declare-method: rebind existing method"
                             _%type-t220837%_
                             '" "
                             _%method220838%_))
                          (let ()
                            (declare (not safe))
                            (hash-put!
                             _%vtab220844%_
                             _%method220838%_
                             _%sym220839%_)))
                        (if (eq? _%$e220846%_ _%sym220839%_)
                            '#!void
                            (let ((__tmp224965
                                   (list 'bind-method!
                                         _%type-t220837%_
                                         _%method220838%_
                                         _%sym220839%_)))
                              (declare (not safe))
                              (gxc#raise-compile-error
                               '"declare-method: duplicate method declaration"
                               __tmp224965
                               _%method220838%_))))
                    (let ()
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"declare-method "
                         _%type-t220837%_
                         '" "
                         _%method220838%_
                         '" => "
                         _%sym220839%_))
                      (let ()
                        (declare (not safe))
                        (hash-put!
                         _%vtab220844%_
                         _%method220838%_
                         _%sym220839%_)))))
              (let ()
                (declare (not safe))
                (gxc#verbose
                 '"declare-method: unknown class"
                 _%type-t220837%_))))))
    (define gxc#optimizer-declare-method!__0
      (lambda (_%type-t220858%_ _%method220859%_ _%sym220860%_)
        (let ((_%rebind?220862%_ '#f))
          (gxc#optimizer-declare-method!__%
           _%type-t220858%_
           _%method220859%_
           _%sym220860%_
           _%rebind?220862%_))))
    (define gxc#optimizer-declare-method!
      (lambda _g224966_
        (let ((_g224967_ (let () (declare (not safe)) (##length _g224966_))))
          (cond ((let () (declare (not safe)) (##fx= _g224967_ 3))
                 (apply gxc#optimizer-declare-method!__0 _g224966_))
                ((let () (declare (not safe)) (##fx= _g224967_ 4))
                 (apply gxc#optimizer-declare-method!__% _g224966_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  gxc#optimizer-declare-method!
                  _g224966_))))))
    (define gxc#optimizer-lookup-type
      (lambda (_%sym220823%_)
        (let ((_%$e220825%_
               (let ((__tmp224968
                      (let ()
                        (declare (not safe))
                        (gxc#current-compile-path-type))))
                 (declare (not safe))
                 (agetq__0 _%sym220823%_ __tmp224968))))
          (if _%$e220825%_
              _%$e220825%_
              (let ((_%$e220833%_
                     (let ((_%$%ht220827220829%_
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-local-type))))
                       (if _%$%ht220827220829%_
                           (let ((_%ht220831%_ _%$%ht220827220829%_))
                             (declare (not safe))
                             (hash-get _%ht220831%_ _%sym220823%_))
                           '#f))))
                (if _%$e220833%_
                    _%$e220833%_
                    (let ((__tmp224969
                           (##structure-ref
                            (let ()
                              (declare (not safe))
                              (gxc#current-compile-optimizer-info))
                            '1
                            gxc#optimizer-info::t
                            '#f)))
                      (declare (not safe))
                      (hash-get __tmp224969 _%sym220823%_))))))))
    (define gxc#optimizer-resolve-type
      (lambda (_%sym220816%_)
        (let ((_%$%type220817220819%_
               (gxc#optimizer-lookup-type _%sym220816%_)))
          (if _%$%type220817220819%_
              (let ((_%type220821%_ _%$%type220817220819%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%type220821%_ 'gxc#!alias::t))
                    (gxc#optimizer-resolve-type
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref _%type220821%_ '1 '#f '#f)))
                    _%type220821%_))
              '#f))))
    (define gxc#optimizer-lookup-class
      (lambda (_%sym220812%_)
        (let ((_%table220814%_
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get _%table220814%_ _%sym220812%_))))
    (define gxc#optimizer-resolve-class
      (lambda (_%where220797%_ _%sym220798%_)
        (let ((_%$e220801%_ (gxc#optimizer-lookup-class _%sym220798%_)))
          (if _%$e220801%_
              (let ((_%val220808%_ _%$e220801%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%val220808%_ 'gxc#!class::t))
                    _%val220808%_
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/compiler/optimize-base
                       'contract:
                       '(!class? val)
                       'value:
                       _%val220808%_)
                      '#!void)))
              (let ()
                (let ()
                  (declare (not safe))
                  (gxc#raise-compile-error
                   '"unknown class"
                   _%where220797%_
                   _%sym220798%_))
                '#!void)))))
    (define gxc#optimizer-lookup-class-name
      (lambda (_%klass220795%_)
        (let ((__tmp224970
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '2
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp224970 _%klass220795%_))))
    (define gxc#optimizer-resolve-type-expression
      (lambda (_%where220745%_ _%expr220746%_)
        (let* ((_%$%expr220747220759%_ _%expr220746%_)
               (_%$%else220750220767%_
                (lambda ()
                  (gxc#optimizer-resolve-class
                   _%where220745%_
                   _%expr220746%_))))
          (let ((_%$%K220753220780%_
                 (lambda (_%base220778%_)
                   (gxc#nullable-type
                    (gxc#optimizer-resolve-type-expression
                     _%where220745%_
                     _%base220778%_))))
                (_%$%K220752220772%_ (lambda () '#f)))
            (let ((_%$%try-match220749220775%_
                   (lambda ()
                     (if (let ()
                           (declare (not safe))
                           (##eq? _%$%expr220747220759%_ '#f))
                         (_%$%K220752220772%_)
                         (_%$%else220750220767%_)))))
              (if (pair? _%$%expr220747220759%_)
                  (let ((_%$%tl220755220785%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%expr220747220759%_)))
                        (_%$%hd220754220783%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%expr220747220759%_))))
                    (if (let ()
                          (declare (not safe))
                          (##eq? _%$%hd220754220783%_ 'nullable))
                        (if (pair? _%$%tl220755220785%_)
                            (let ((_%$%tl220757220790%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%tl220755220785%_)))
                                  (_%$%hd220756220788%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%tl220755220785%_))))
                              (if (null? _%$%tl220757220790%_)
                                  (let ((_%base220793%_ _%$%hd220756220788%_))
                                    (_%$%K220753220780%_ _%base220793%_))
                                  (_%$%try-match220749220775%_)))
                            (_%$%try-match220749220775%_))
                        (_%$%try-match220749220775%_)))
                  (_%$%try-match220749220775%_)))))))
    (define gxc#optimizer-type-expression
      (lambda (_%type220735%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type220735%_ 'gxc#!nullable-type::t))
            (let ((_%$%base220737220739%_
                   (gxc#optimizer-type-expression
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%type220735%_ '2 '#f '#f)))))
              (if _%$%base220737220739%_
                  (let ((_%base220741%_ _%$%base220737220739%_))
                    (cons 'nullable (cons _%base220741%_ '())))
                  '#f))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%type220735%_ 'gxc#!procedure::t))
                'procedure::t
                (gxc#optimizer-lookup-class-name _%type220735%_)))))
    (define gxc#type-expression->datum
      (lambda (_%stx220672%_)
        (let* ((_%__stx224804224805%_ _%stx220672%_)
               (_%$%g220675220689%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx224804224805%_)))))
          (let ((_%__kont224806224807%_
                 (lambda (_%$%g220677220717%_ _%$%g220678220718%_)
                   (cons 'nullable
                         (cons (gxc#type-expression->datum _%$%g220677220717%_)
                               '()))))
                (_%__kont224808224809%_
                 (lambda ()
                   (let ()
                     (declare (not safe))
                     (gxc#identifier-symbol _%stx220672%_)))))
            (let ((_%__match224823224824%_
                   (lambda (_%$%e220679220701%_
                            _%$%hd220680220704%_
                            _%$%tl220681220706%_
                            _%$%e220682220709%_
                            _%$%hd220683220712%_
                            _%$%tl220684220714%_)
                     (let ((_%$%g220677220717%_ _%$%hd220683220712%_)
                           (_%$%g220678220718%_ _%$%hd220680220704%_))
                       (if (eq? (let ()
                                  (declare (not safe))
                                  (gx#stx-e _%$%g220678220718%_))
                                'nullable)
                           (_%__kont224806224807%_
                            _%$%g220677220717%_
                            _%$%g220678220718%_)
                           (_%__kont224808224809%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx224804224805%_))
                  (let ((_%$%e220679220701%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx224804224805%_))))
                    (let ((_%$%tl220681220706%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e220679220701%_)))
                          (_%$%hd220680220704%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e220679220701%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl220681220706%_))
                          (let ((_%$%e220682220709%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl220681220706%_))))
                            (let ((_%$%tl220684220714%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e220682220709%_)))
                                  (_%$%hd220683220712%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e220682220709%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl220684220714%_))
                                  (_%__match224823224824%_
                                   _%$%e220679220701%_
                                   _%$%hd220680220704%_
                                   _%$%tl220681220706%_
                                   _%$%e220682220709%_
                                   _%$%hd220683220712%_
                                   _%$%tl220684220714%_)
                                  (_%__kont224808224809%_))))
                          (_%__kont224808224809%_))))
                  (_%__kont224808224809%_)))))))
    (define gxc#map-type-expressions
      (lambda (_%proc220569%_ _%types220570%_)
        (let* ((_%__stx224826224827%_ _%types220570%_)
               (_%$%g220575220594%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx224826224827%_)))))
          (let ((_%__kont224828224829%_
                 (lambda (_%$%g220577220656%_ _%$%g220578220657%_)
                   (_%proc220569%_ _%types220570%_)))
                (_%__kont224830224831%_
                 (lambda (_%$%g220585220621%_ _%$%g220586220622%_)
                   (cons (_%proc220569%_ _%$%g220586220622%_)
                         (gxc#map-type-expressions
                          _%proc220569%_
                          _%$%g220585220621%_))))
                (_%__kont224832224833%_ (lambda () '()))
                (_%__kont224834224835%_
                 (lambda () (_%proc220569%_ _%types220570%_))))
            (let* ((_%$%g220573220608%_
                    (lambda ()
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-null? _%__stx224826224827%_))
                          (_%__kont224832224833%_)
                          (_%__kont224834224835%_))))
                   (_%__match224849224850%_
                    (lambda (_%$%e220579220640%_
                             _%$%hd220580220643%_
                             _%$%tl220581220645%_
                             _%$%e220582220648%_
                             _%$%hd220583220651%_
                             _%$%tl220584220653%_)
                      (let ((_%$%g220577220656%_ _%$%hd220583220651%_)
                            (_%$%g220578220657%_ _%$%hd220580220643%_))
                        (if (eq? (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%g220578220657%_))
                                 'nullable)
                            (_%__kont224828224829%_
                             _%$%g220577220656%_
                             _%$%g220578220657%_)
                            (_%__kont224830224831%_
                             _%$%tl220581220645%_
                             _%$%hd220580220643%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx224826224827%_))
                  (let ((_%$%e220579220640%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx224826224827%_))))
                    (let ((_%$%tl220581220645%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e220579220640%_)))
                          (_%$%hd220580220643%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e220579220640%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl220581220645%_))
                          (let ((_%$%e220582220648%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl220581220645%_))))
                            (let ((_%$%tl220584220653%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e220582220648%_)))
                                  (_%$%hd220583220651%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e220582220648%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-null? _%$%tl220584220653%_))
                                  (_%__match224849224850%_
                                   _%$%e220579220640%_
                                   _%$%hd220580220643%_
                                   _%$%tl220581220645%_
                                   _%$%e220582220648%_
                                   _%$%hd220583220651%_
                                   _%$%tl220584220653%_)
                                  (_%__kont224830224831%_
                                   _%$%tl220581220645%_
                                   _%$%hd220580220643%_))))
                          (_%__kont224830224831%_
                           _%$%tl220581220645%_
                           _%$%hd220580220643%_))))
                  (let () (declare (not safe)) (_%$%g220573220608%_))))))))
    (define gxc#optimizer-lookup-method
      (lambda (_%type-t220566%_ _%method220567%_)
        (gxc#!class-lookup-method
         (gxc#optimizer-resolve-class 'lookup-method _%type-t220566%_)
         _%method220567%_)))
    (define gxc#optimizer-top-level-method?
      (lambda (_%sym220564%_)
        (let ((__tmp224971
               (##structure-ref
                (let ()
                  (declare (not safe))
                  (gxc#current-compile-optimizer-info))
                '4
                gxc#optimizer-info::t
                '#f)))
          (declare (not safe))
          (hash-get __tmp224971 _%sym220564%_))))
    (define gxc#optimizer-current-types
      (lambda ()
        (letrec ((_%type-e220038%_
                  (lambda (_%t220504%_)
                    (if (symbol? _%t220504%_)
                        (_%type-e220038%_
                         (gxc#optimizer-lookup-type _%t220504%_))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of?
                               _%t220504%_
                               'gxc#!lambda::t))
                            (let* ((_%t220508%_ _%t220504%_)
                                   (_%t220512%_ _%t220508%_))
                              (_%__lambda-type220164%_ _%t220512%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%t220504%_
                                   'gxc#!kw-lambda::t))
                                (let* ((_%t220524%_ _%t220504%_)
                                       (_%t220528%_ _%t220524%_))
                                  (_%__kw-lambda-type220287%_ _%t220528%_))
                                (if (let ()
                                      (declare (not safe))
                                      (##structure-instance-of?
                                       _%t220504%_
                                       'gxc#!kw-lambda-primary::t))
                                    (let* ((_%t220539%_ _%t220504%_)
                                           (_%t220543%_ _%t220539%_))
                                      (_%__kw-lambda-primary-type220410%_
                                       _%t220543%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##structure-instance-of?
                                           _%t220504%_
                                           'gxc#!procedure::t))
                                        (cons 'procedure
                                              (let ((_%t220554%_ _%t220504%_))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (##unchecked-structure-ref
                                                       _%t220554%_
                                                       '2
                                                       '#f
                                                       '#f))
                                                    (##direct-structure-ref
                                                     (let ()
                                                       (declare (not safe))
                                                       (##unchecked-structure-ref
                                                        _%t220554%_
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
                                               _%t220504%_
                                               'gxc#!nullable-type::t))
                                            (gxc#optimizer-type-expression
                                             _%t220504%_)
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%t220504%_
                                                   'gxc#!type::t))
                                                (let ()
                                                  (declare (not safe))
                                                  (##unchecked-structure-ref
                                                   _%t220504%_
                                                   '1
                                                   '#f
                                                   '#f))
                                                '#f)))))))))
                 (_%__lambda-type220164%_
                  (lambda (_%t220492%_)
                    (let ((_%t220495%_ _%t220492%_))
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref _%t220495%_ '4 '#f '#f))
                          (_%type-e220038%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%t220495%_
                              '4
                              '#f
                              '#f)))
                          (cons 'procedure
                                (if (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%t220495%_
                                       '2
                                       '#f
                                       '#f))
                                    (##direct-structure-ref
                                     (let ()
                                       (declare (not safe))
                                       (##unchecked-structure-ref
                                        _%t220495%_
                                        '2
                                        '#f
                                        '#f))
                                     '1
                                     gxc#!signature::t
                                     '#f)
                                    '#f))))))
                 (_%lambda-type220165%_
                  (lambda (_%t220480%_)
                    (let ((_%t220483%_ _%t220480%_))
                      (_%__lambda-type220164%_ _%t220483%_))))
                 (_%__kw-lambda-type220287%_
                  (lambda (_%t220468%_)
                    (let ((_%t220471%_ _%t220468%_))
                      (_%type-e220038%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t220471%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-type220288%_
                  (lambda (_%t220456%_)
                    (let ((_%t220459%_ _%t220456%_))
                      (_%__kw-lambda-type220287%_ _%t220459%_))))
                 (_%__kw-lambda-primary-type220410%_
                  (lambda (_%t220444%_)
                    (let ((_%t220447%_ _%t220444%_))
                      (_%type-e220038%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%t220447%_
                          '4
                          '#f
                          '#f))))))
                 (_%kw-lambda-primary-type220411%_
                  (lambda (_%t220432%_)
                    (let ((_%t220435%_ _%t220432%_))
                      (_%__kw-lambda-primary-type220410%_ _%t220435%_)))))
          (let* ((_%ht1220413%_
                  (##structure-ref
                   (let ()
                     (declare (not safe))
                     (gxc#current-compile-optimizer-info))
                   '1
                   gxc#optimizer-info::t
                   '#f))
                 (_%ht2220415%_
                  (let ()
                    (declare (not safe))
                    (gxc#current-compile-local-type)))
                 (_%result220417%_
                  (if _%ht1220413%_
                      (let () (declare (not safe)) (hash->list _%ht1220413%_))
                      '()))
                 (_%result220419%_
                  (if _%ht2220415%_
                      (let ((__tmp224972
                             (let ()
                               (declare (not safe))
                               (hash->list _%ht2220415%_))))
                        (declare (not safe))
                        (foldl__0 cons _%result220417%_ __tmp224972))
                      _%result220417%_)))
            (for-each
             (lambda (_%p220422%_)
               (let* ((_%t220424%_ (cdr _%p220422%_))
                      (_%tr220426%_ (_%type-e220038%_ _%t220424%_)))
                 (set-cdr! _%p220422%_ _%tr220426%_)))
             _%result220419%_)
            (list-sort
             (lambda (_%a220429%_ _%b220430%_)
               (let ((__tmp224974 (symbol->string (car _%a220429%_)))
                     (__tmp224973 (symbol->string (car _%b220430%_))))
                 (declare (not safe))
                 (##string<? __tmp224974 __tmp224973)))
             _%result220419%_)))))))
