(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1789188906)
  (begin
    (define CastError::t
      (let ((__tmp152366 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'CastError::t
         'CastError
         __tmp152366
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args152280%_
        (apply make-instance CastError::t _%$args152280%_)))
    (define CastError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'message)))
    (define CastError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'irritants)))
    (define CastError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'where)))
    (define CastError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor CastError::t 'continuation)))
    (define CastError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'message)))
    (define CastError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'irritants)))
    (define CastError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'where)))
    (define CastError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator CastError::t 'continuation)))
    (define &CastError-message
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'message)))
    (define &CastError-irritants
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'irritants)))
    (define &CastError-where
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'where)))
    (define &CastError-continuation
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor CastError::t 'continuation)))
    (define &CastError-message-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'message)))
    (define &CastError-irritants-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'irritants)))
    (define &CastError-where-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'where)))
    (define &CastError-continuation-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator CastError::t 'continuation)))
    (define CastError:::init! Error:::init!)
    (let ()
      (declare (not safe))
      (__bind-method!__% CastError::t ':init! CastError:::init! '#f))
    (define raise-cast-error
      (lambda (_%where152154%_ _%message152155%_ . _%irritants152156%_)
        (let ((__tmp152367
               (let ((__obj152361
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj152361
                    _%message152155%_
                    'where:
                    _%where152154%_
                    'irritants:
                    _%irritants152156%_))
                 __obj152361)))
          (declare (not safe))
          (raise __tmp152367))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp152369 (list))
            (__tmp152368 (cons (cons 'struct: '#t) '((print: object)))))
        (declare (not safe))
        (__make-class-type
         'interface-instance::t
         'interface-instance
         __tmp152369
         '(object)
         __tmp152368
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args152151%_
        (apply make-instance interface-instance::t _%$args152151%_)))
    (define interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-instance::t 'object)))
    (define interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-instance::t 'object)))
    (define &interface-instance-object
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor interface-instance::t 'object)))
    (define &interface-instance-object-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-instance::t 'object)))
    (define interface-descriptor::t
      (let ((__tmp152371 (list))
            (__tmp152370
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'interface-descriptor::t
         'interface-descriptor
         __tmp152371
         '(type methods index)
         __tmp152370
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args152148%_
        (apply make-instance interface-descriptor::t _%$args152148%_)))
    (define interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'type)))
    (define interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'methods)))
    (define interface-descriptor-index
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor interface-descriptor::t 'index)))
    (define interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'type)))
    (define interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'methods)))
    (define interface-descriptor-index-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator interface-descriptor::t 'index)))
    (define &interface-descriptor-type
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor interface-descriptor::t 'type)))
    (define &interface-descriptor-methods
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor
         interface-descriptor::t
         'methods)))
    (define &interface-descriptor-index
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor interface-descriptor::t 'index)))
    (define &interface-descriptor-type-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-descriptor::t 'type)))
    (define &interface-descriptor-methods-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator
         interface-descriptor::t
         'methods)))
    (define &interface-descriptor-index-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator interface-descriptor::t 'index)))
    (define __next-interface-index '0)
    (define __next-interface-index-lock (vector '0 '#f))
    (define __get-next-interface-index
      (lambda ()
        (let ()
          (declare (not interrupts-enabled))
          (let _%again152126%_ ((_%spin152129%_ '0))
            (if (let ((__tmp152372
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp152372 '0))
                (let ((__tmp152373 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp152373))
                (if (let () (declare (not safe)) (##fx< _%spin152129%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again152126%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin152129%_ '1))))
                    (let ((_%owner152135%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner152135%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner152135%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again152126%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r152143%_
               (let ((_%index152141%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index152141%_ '1)))
                 _%index152141%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r152143%_)))
    (define interface-descriptor:::init!
      (lambda (_%self152107%_ _%type152108%_ _%methods152109%_)
        (let ((_%self152112%_ _%self152107%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152112%_
             _%type152108%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152112%_
             _%methods152109%_
             '2
             '#f
             '#f))
          (let ((__tmp152374 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152112%_
             __tmp152374
             '3
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       interface-descriptor::t
       ':init!
       interface-descriptor:::init!
       '#f))
    (define prototype-table::t
      (let ((__tmp152376 (list))
            (__tmp152375
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'prototype-table::t
         'prototype-table
         __tmp152376
         '(lock table)
         __tmp152375
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args151982%_
        (apply make-instance prototype-table::t _%$args151982%_)))
    (define prototype-table-lock
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor prototype-table::t 'lock)))
    (define prototype-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-accessor prototype-table::t 'table)))
    (define prototype-table-lock-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator prototype-table::t 'lock)))
    (define prototype-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-mutator prototype-table::t 'table)))
    (define &prototype-table-lock
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor prototype-table::t 'lock)))
    (define &prototype-table-table
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-accessor prototype-table::t 'table)))
    (define &prototype-table-lock-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator prototype-table::t 'lock)))
    (define &prototype-table-table-set!
      (let ()
        (declare (not safe))
        (__make-class-slot-unchecked-mutator prototype-table::t 'table)))
    (define prototype-table:::init!
      (lambda (_%self151968%_)
        (let ((_%self151971%_ _%self151968%_))
          (let ((__tmp152377 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self151971%_ __tmp152377 '1 '#f '#f))
          (let ((__tmp152378
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151971%_
             __tmp152378
             '2
             '#f
             '#f)))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       prototype-table::t
       ':init!
       prototype-table:::init!
       '#f))
    (define ____prototype-table-get
      (lambda (_%prototable151821%_ _%descriptor151822%_)
        (let* ((_%prototable151825%_ _%prototable151821%_)
               (_%descriptor151833%_ _%descriptor151822%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab151843%_
                 (##unchecked-structure-ref _%prototable151825%_ '2 '#f '#f))
                (_%index151844%_
                 (##unchecked-structure-ref _%descriptor151833%_ '3 '#f '#f)))
            (if (##fx< _%index151844%_ (vector-length _%tab151843%_))
                (vector-ref _%tab151843%_ _%index151844%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable151800%_ _%descriptor151801%_)
        (let* ((_%prototable151804%_ _%prototable151800%_)
               (_%descriptor151812%_ _%descriptor151801%_))
          (____prototype-table-get
           _%prototable151804%_
           _%descriptor151812%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable151746%_ _%descriptor151747%_ _%prototype151748%_)
        (let* ((_%prototable151751%_ _%prototable151746%_)
               (_%descriptor151759%_ _%descriptor151747%_))
          (declare (not safe))
          (let ((_%lock151769%_
                 (##unchecked-structure-ref _%prototable151751%_ '1 '#f '#f))
                (_%index151770%_
                 (##unchecked-structure-ref _%descriptor151759%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again151774%_ ((_%spin151777%_ '0))
                (if (##fx= (##vector-cas! _%lock151769%_ '0 '1 '0) '0)
                    (##vector-set! _%lock151769%_ '1 (current-thread))
                    (if (##fx< _%spin151777%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again151774%_ (##fx+ _%spin151777%_ '1)))
                        (let ((_%owner151783%_
                               (##vector-ref _%lock151769%_ '1)))
                          (if (eq? _%owner151783%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner151783%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again151774%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r151795%_
                   (let ((_%tab151789%_
                          (##unchecked-structure-ref
                           _%prototable151751%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index151770%_ (vector-length _%tab151789%_))
                         (vector-set!
                          _%tab151789%_
                          _%index151770%_
                          _%prototype151748%_)
                         (let ((_%new-size151791%_ __next-interface-index))
                           (if (##fx< _%index151770%_ _%new-size151791%_)
                               (let ((_%new-tab151793%_
                                      (##make-vector _%new-size151791%_ '#f)))
                                 (subvector-move!
                                  _%tab151789%_
                                  '0
                                  (vector-length _%tab151789%_)
                                  _%new-tab151793%_
                                  '0)
                                 (vector-set!
                                  _%new-tab151793%_
                                  _%index151770%_
                                  _%prototype151748%_)
                                 (##unchecked-structure-set!
                                  _%prototable151751%_
                                  _%new-tab151793%_
                                  '2
                                  '#f
                                  '#f))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor151759%_
                                      'index:
                                      _%index151770%_
                                      'max-index:
                                      _%new-size151791%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock151769%_ '1 '#f)
                  (##vector-cas! _%lock151769%_ '0 '0 '1)))
              _%$r151795%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable151724%_ _%descriptor151725%_ _%prototype151726%_)
        (let* ((_%prototable151729%_ _%prototable151724%_)
               (_%descriptor151737%_ _%descriptor151725%_))
          (____prototype-table-set!
           _%prototable151729%_
           _%descriptor151737%_
           _%prototype151726%_))))
    (define interface-subclass?
      (lambda (_%klass151717%_)
        (let ((_%$%super151718151720%_
               (let () (declare (not safe)) (##type-super _%klass151717%_))))
          (if _%$%super151718151720%_
              (let ((_%super151722%_ _%$%super151718151720%_))
                (eq? (let () (declare (not safe)) (##type-id _%super151722%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass151709%_)
        (let ((_%$e151711%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass151709%_ '13 '#f '#f))))
          (if _%$e151711%_
              _%$e151711%_
              (let ((_%tab151715%_
                     (let ((__obj152365
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj152365)
                       __obj152365)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass151709%_
                   _%tab151715%_
                   '13
                   '#f
                   '#f))
                _%tab151715%_)))))
    (define create-prototype
      (lambda (_%descriptor151392%_ _%klass151393%_ _%obj-klass151394%_)
        (let ((_%method-table151412%_
               (let ((_%klass151396%_ _%obj-klass151394%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass151396%_ 'class))
                     (let ((_%klass151401%_ _%klass151396%_))
                       (declare (not safe))
                       (__specialize-class _%klass151401%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass151396%_)
                       '#!void)))))
          (let _%loop151415%_ ((_%rest151418%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor151392%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count151420%_ '0)
                               (_%methods151422%_ '()))
            (let* ((_%$%rest151424151432%_ _%rest151418%_)
                   (_%$%else151426151559%_
                    (lambda ()
                      (let ((_%prototype151475%_
                             (let* ((_%klass151440%_ _%klass151393%_)
                                    (_%k151443%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count151420%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass151440%_
                                      'class))
                                   (let* ((_%klass151448%_ _%klass151440%_)
                                          (_%k151465%_ _%k151443%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass151448%_
                                      _%k151465%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass151440%_)
                                     '#!void)))))
                        (let _%loop151478%_ ((_%rest151480%_ _%methods151422%_)
                                             (_%off151481%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count151420%_ '1))))
                          (let* ((_%$%rest151483151491%_ _%rest151480%_)
                                 (_%$%else151485151540%_
                                  (lambda ()
                                    (let ((_%tab151499%_
                                           (class-type-interface-table
                                            _%obj-klass151394%_)))
                                      (let* ((_%prototable151502%_
                                              _%tab151499%_)
                                             (_%descriptor151505%_
                                              _%descriptor151392%_)
                                             (_%prototype151508%_
                                              _%prototype151475%_)
                                             (_%prototable151512%_
                                              _%prototable151502%_)
                                             (_%descriptor151529%_
                                              _%descriptor151505%_))
                                        (____prototype-table-set!
                                         _%prototable151512%_
                                         _%descriptor151529%_
                                         _%prototype151508%_))
                                      _%prototype151475%_)))
                                 (_%$%K151487151547%_
                                  (lambda (_%rest151543%_ _%method151544%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype151475%_
                                       _%method151544%_
                                       _%off151481%_
                                       _%klass151393%_
                                       '#f))
                                    (_%loop151478%_
                                     _%rest151543%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off151481%_ '1))))))
                            (if (pair? _%$%rest151483151491%_)
                                (let ((_%$%hd151488151550%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest151483151491%_)))
                                      (_%$%tl151489151552%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest151483151491%_))))
                                  (let* ((_%method151555%_
                                          _%$%hd151488151550%_)
                                         (_%rest151557%_ _%$%tl151489151552%_))
                                    (_%$%K151487151547%_
                                     _%rest151557%_
                                     _%method151555%_)))
                                (_%$%else151485151540%_)))))))
                   (_%$%K151428151697%_
                    (lambda (_%rest151562%_ _%method-spec151563%_)
                      (if (pair? _%method-spec151563%_)
                          (let _%loop-inner151567%_ ((_%methods-rest151570%_
                                                      _%method-spec151563%_))
                            (let* ((_%$%methods-rest151572151580%_
                                    _%methods-rest151570%_)
                                   (_%$%else151574151630%_
                                    (lambda ()
                                      (let ((_%tab151588%_
                                             (class-type-interface-table
                                              _%obj-klass151394%_)))
                                        (let* ((_%prototable151590%_
                                                _%tab151588%_)
                                               (_%descriptor151593%_
                                                _%descriptor151392%_)
                                               (_%prototype151596%_ '#!void)
                                               (_%prototable151600%_
                                                _%prototable151590%_)
                                               (_%descriptor151619%_
                                                _%descriptor151593%_))
                                          (____prototype-table-set!
                                           _%prototable151600%_
                                           _%descriptor151619%_
                                           _%prototype151596%_))
                                        (let ()
                                          (raise-cast-error
                                           'create-prototype
                                           '"cannot create interface prototype; missing method"
                                           'interface:
                                           _%descriptor151392%_
                                           'class:
                                           _%obj-klass151394%_
                                           'method:
                                           _%method-spec151563%_)
                                          '#!void))))
                                   (_%$%K151576151643%_
                                    (lambda (_%methods-rest151633%_
                                             _%method-name151634%_)
                                      (let ((_%$e151637%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table151412%_
                                                _%method-name151634%_
                                                '#f))))
                                        (if _%$e151637%_
                                            (_%loop151415%_
                                             _%rest151562%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count151420%_ '1))
                                             (cons _%$e151637%_
                                                   _%methods151422%_))
                                            (_%loop-inner151567%_
                                             _%methods-rest151633%_))))))
                              (if (pair? _%$%methods-rest151572151580%_)
                                  (let ((_%$%hd151577151646%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest151572151580%_)))
                                        (_%$%tl151578151648%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest151572151580%_))))
                                    (let* ((_%method-name151651%_
                                            _%$%hd151577151646%_)
                                           (_%methods-rest151653%_
                                            _%$%tl151578151648%_))
                                      (_%$%K151576151643%_
                                       _%methods-rest151653%_
                                       _%method-name151651%_)))
                                  (_%$%else151574151630%_))))
                          (let ((_%$e151655%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table151412%_
                                    _%method-spec151563%_
                                    '#f))))
                            (if _%$e151655%_
                                (_%loop151415%_
                                 _%rest151562%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count151420%_ '1))
                                 (cons _%$e151655%_ _%methods151422%_))
                                (let ((_%tab151661%_
                                       (class-type-interface-table
                                        _%obj-klass151394%_)))
                                  (let* ((_%prototable151663%_ _%tab151661%_)
                                         (_%descriptor151666%_
                                          _%descriptor151392%_)
                                         (_%prototype151669%_ '#!void)
                                         (_%prototable151673%_
                                          _%prototable151663%_)
                                         (_%descriptor151686%_
                                          _%descriptor151666%_))
                                    (____prototype-table-set!
                                     _%prototable151673%_
                                     _%descriptor151686%_
                                     _%prototype151669%_))
                                  (let ()
                                    (raise-cast-error
                                     'create-prototype
                                     '"cannot create interface prototype; missing method"
                                     'interface:
                                     _%descriptor151392%_
                                     'class:
                                     _%obj-klass151394%_
                                     'method:
                                     _%method-spec151563%_)
                                    '#!void))))))))
              (if (pair? _%$%rest151424151432%_)
                  (let ((_%$%hd151429151700%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest151424151432%_)))
                        (_%$%tl151430151702%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest151424151432%_))))
                    (let* ((_%method-spec151705%_ _%$%hd151429151700%_)
                           (_%rest151707%_ _%$%tl151430151702%_))
                      (_%$%K151428151697%_
                       _%rest151707%_
                       _%method-spec151705%_)))
                  (_%$%else151426151559%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor151075%_ _%klass151076%_ _%obj-klass151077%_)
        (let ((_%method-table151095%_
               (let ((_%klass151079%_ _%obj-klass151077%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass151079%_ 'class))
                     (let ((_%klass151084%_ _%klass151079%_))
                       (declare (not safe))
                       (__specialize-class _%klass151084%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass151079%_)
                       '#!void)))))
          (let _%loop151098%_ ((_%rest151101%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor151075%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count151103%_ '0)
                               (_%methods151105%_ '()))
            (let* ((_%$%rest151107151115%_ _%rest151101%_)
                   (_%$%else151109151242%_
                    (lambda ()
                      (let ((_%prototype151158%_
                             (let* ((_%klass151123%_ _%klass151076%_)
                                    (_%k151126%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count151103%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass151123%_
                                      'class))
                                   (let* ((_%klass151131%_ _%klass151123%_)
                                          (_%k151148%_ _%k151126%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass151131%_
                                      _%k151148%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass151123%_)
                                     '#!void)))))
                        (let _%loop151161%_ ((_%rest151163%_ _%methods151105%_)
                                             (_%off151164%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count151103%_ '1))))
                          (let* ((_%$%rest151166151174%_ _%rest151163%_)
                                 (_%$%else151168151223%_
                                  (lambda ()
                                    (let ((_%tab151182%_
                                           (class-type-interface-table
                                            _%obj-klass151077%_)))
                                      (let* ((_%prototable151185%_
                                              _%tab151182%_)
                                             (_%descriptor151188%_
                                              _%descriptor151075%_)
                                             (_%prototype151191%_
                                              _%prototype151158%_)
                                             (_%prototable151195%_
                                              _%prototable151185%_)
                                             (_%descriptor151212%_
                                              _%descriptor151188%_))
                                        (____prototype-table-set!
                                         _%prototable151195%_
                                         _%descriptor151212%_
                                         _%prototype151191%_))
                                      _%prototype151158%_)))
                                 (_%$%K151170151230%_
                                  (lambda (_%rest151226%_ _%method151227%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype151158%_
                                       _%method151227%_
                                       _%off151164%_
                                       _%klass151076%_
                                       '#f))
                                    (_%loop151161%_
                                     _%rest151226%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off151164%_ '1))))))
                            (if (pair? _%$%rest151166151174%_)
                                (let ((_%$%hd151171151233%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest151166151174%_)))
                                      (_%$%tl151172151235%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest151166151174%_))))
                                  (let* ((_%method151238%_
                                          _%$%hd151171151233%_)
                                         (_%rest151240%_ _%$%tl151172151235%_))
                                    (_%$%K151170151230%_
                                     _%rest151240%_
                                     _%method151238%_)))
                                (_%$%else151168151223%_)))))))
                   (_%$%K151111151380%_
                    (lambda (_%rest151245%_ _%method-spec151246%_)
                      (if (pair? _%method-spec151246%_)
                          (let _%loop-inner151250%_ ((_%methods-rest151253%_
                                                      _%method-spec151246%_))
                            (let* ((_%$%methods-rest151255151263%_
                                    _%methods-rest151253%_)
                                   (_%$%else151257151313%_
                                    (lambda ()
                                      (let ((_%tab151271%_
                                             (class-type-interface-table
                                              _%obj-klass151077%_)))
                                        (let* ((_%prototable151273%_
                                                _%tab151271%_)
                                               (_%descriptor151276%_
                                                _%descriptor151075%_)
                                               (_%prototype151279%_ '#!void)
                                               (_%prototable151283%_
                                                _%prototable151273%_)
                                               (_%descriptor151302%_
                                                _%descriptor151276%_))
                                          (____prototype-table-set!
                                           _%prototable151283%_
                                           _%descriptor151302%_
                                           _%prototype151279%_))
                                        '#f)))
                                   (_%$%K151259151326%_
                                    (lambda (_%methods-rest151316%_
                                             _%method-name151317%_)
                                      (let ((_%$e151320%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table151095%_
                                                _%method-name151317%_
                                                '#f))))
                                        (if _%$e151320%_
                                            (_%loop151098%_
                                             _%rest151245%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count151103%_ '1))
                                             (cons _%$e151320%_
                                                   _%methods151105%_))
                                            (_%loop-inner151250%_
                                             _%methods-rest151316%_))))))
                              (if (pair? _%$%methods-rest151255151263%_)
                                  (let ((_%$%hd151260151329%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest151255151263%_)))
                                        (_%$%tl151261151331%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest151255151263%_))))
                                    (let* ((_%method-name151334%_
                                            _%$%hd151260151329%_)
                                           (_%methods-rest151336%_
                                            _%$%tl151261151331%_))
                                      (_%$%K151259151326%_
                                       _%methods-rest151336%_
                                       _%method-name151334%_)))
                                  (_%$%else151257151313%_))))
                          (let ((_%$e151338%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table151095%_
                                    _%method-spec151246%_
                                    '#f))))
                            (if _%$e151338%_
                                (_%loop151098%_
                                 _%rest151245%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count151103%_ '1))
                                 (cons _%$e151338%_ _%methods151105%_))
                                (let ((_%tab151344%_
                                       (class-type-interface-table
                                        _%obj-klass151077%_)))
                                  (let* ((_%prototable151346%_ _%tab151344%_)
                                         (_%descriptor151349%_
                                          _%descriptor151075%_)
                                         (_%prototype151352%_ '#!void)
                                         (_%prototable151356%_
                                          _%prototable151346%_)
                                         (_%descriptor151369%_
                                          _%descriptor151349%_))
                                    (____prototype-table-set!
                                     _%prototable151356%_
                                     _%descriptor151369%_
                                     _%prototype151352%_))
                                  '#f)))))))
              (if (pair? _%$%rest151107151115%_)
                  (let ((_%$%hd151112151383%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest151107151115%_)))
                        (_%$%tl151113151385%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest151107151115%_))))
                    (let* ((_%method-spec151388%_ _%$%hd151112151383%_)
                           (_%rest151390%_ _%$%tl151113151385%_))
                      (_%$%K151111151380%_
                       _%rest151390%_
                       _%method-spec151388%_)))
                  (_%$%else151109151242%_)))))))
    (define cast
      (lambda (_%descriptor150909%_ _%obj150911%_)
        (let* ((_%klass150914%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150909%_ '1 '#f '#f)))
               (_%klass-id150917%_
                (let () (declare (not safe)) (##type-id _%klass150914%_))))
          (let _%loop150921%_ ((_%obj150924%_ _%obj150911%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150927%_
                    (let () (declare (not safe)) (class-of _%obj150924%_)))
                   (_%obj-klass-id150930%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150927%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150917%_ _%obj-klass-id150930%_))
                  _%obj150924%_
                  (if (interface-subclass? _%obj-klass150927%_)
                      (let _%loop-interface150938%_ ((_%iface-klass150941%_
                                                      _%obj-klass150927%_))
                        (if _%iface-klass150941%_
                            (let* ((_%tab150944%_
                                    (class-type-interface-table
                                     _%iface-klass150941%_))
                                   (_%$e150986%_
                                    (let* ((_%prototable150947%_ _%tab150944%_)
                                           (_%descriptor150950%_
                                            _%descriptor150909%_)
                                           (_%prototable150954%_
                                            _%prototable150947%_)
                                           (_%descriptor150977%_
                                            _%descriptor150950%_))
                                      (____prototype-table-get
                                       _%prototable150954%_
                                       _%descriptor150977%_))))
                              (if _%$e150986%_
                                  (if (eq? _%$e150986%_ '#!void)
                                      (_%loop-interface150938%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150941%_)))
                                      (if _%$e150986%_
                                          (let ((_%instance150996%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e150986%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance150996%_
                                               _%obj150924%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance150996%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor150909%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj150924%_)))
                                            '#!void)))
                                  (let ((_%$e150998%_
                                         (try-create-prototype
                                          _%descriptor150909%_
                                          _%klass150914%_
                                          _%iface-klass150941%_)))
                                    (if _%$e150998%_
                                        (if _%$e150998%_
                                            (let ((_%instance151007%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e150998%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance151007%_
                                                 _%obj150924%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance151007%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor150909%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj150924%_)))
                                              '#!void))
                                        (_%loop-interface150938%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150941%_)))))))
                            (_%loop150921%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150924%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab151011%_
                              (class-type-interface-table _%obj-klass150927%_))
                             (_%$e151040%_
                              (let* ((_%prototable151013%_ _%tab151011%_)
                                     (_%descriptor151016%_
                                      _%descriptor150909%_)
                                     (_%prototable151020%_
                                      _%prototable151013%_)
                                     (_%descriptor151031%_
                                      _%descriptor151016%_))
                                (____prototype-table-get
                                 _%prototable151020%_
                                 _%descriptor151031%_))))
                        (if _%$e151040%_
                            (if (eq? _%$e151040%_ '#!void)
                                (let ()
                                  (raise-cast-error
                                   'cast
                                   '"cannot create interface prototype"
                                   'interface:
                                   _%descriptor150909%_
                                   'class:
                                   (let ()
                                     (declare (not safe))
                                     (class-of _%obj150924%_)))
                                  '#!void)
                                (if _%$e151040%_
                                    (let ((_%instance151055%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e151040%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance151055%_
                                         _%obj150924%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance151055%_)
                                    (begin
                                      (raise-cast-error
                                       'cast
                                       '"cannot create interface prototype"
                                       'interface:
                                       _%descriptor150909%_
                                       'class:
                                       (let ()
                                         (declare (not safe))
                                         (class-of _%obj150924%_)))
                                      '#!void)))
                            (let ((_%$e151057%_
                                   (create-prototype
                                    _%descriptor150909%_
                                    _%klass150914%_
                                    _%obj-klass150927%_)))
                              (if _%$e151057%_
                                  (if _%$e151057%_
                                      (let ((_%instance151066%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e151057%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance151066%_
                                           _%obj150924%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance151066%_)
                                      (begin
                                        (raise-cast-error
                                         'cast
                                         '"cannot create interface prototype"
                                         'interface:
                                         _%descriptor150909%_
                                         'class:
                                         (let ()
                                           (declare (not safe))
                                           (class-of _%obj150924%_)))
                                        '#!void))
                                  (let ()
                                    (raise-cast-error
                                     'cast
                                     '"cannot create interface prototype"
                                     'interface:
                                     _%descriptor150909%_
                                     'class:
                                     (let ()
                                       (declare (not safe))
                                       (class-of _%obj150924%_)))
                                    '#!void))))))))))))
    (define try-cast
      (lambda (_%descriptor150743%_ _%obj150745%_)
        (let* ((_%klass150748%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150743%_ '1 '#f '#f)))
               (_%klass-id150751%_
                (let () (declare (not safe)) (##type-id _%klass150748%_))))
          (let _%loop150755%_ ((_%obj150758%_ _%obj150745%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150761%_
                    (let () (declare (not safe)) (class-of _%obj150758%_)))
                   (_%obj-klass-id150764%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150761%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150751%_ _%obj-klass-id150764%_))
                  _%obj150758%_
                  (if (interface-subclass? _%obj-klass150761%_)
                      (let _%loop-interface150772%_ ((_%iface-klass150775%_
                                                      _%obj-klass150761%_))
                        (if _%iface-klass150775%_
                            (let* ((_%tab150778%_
                                    (class-type-interface-table
                                     _%iface-klass150775%_))
                                   (_%$e150820%_
                                    (let* ((_%prototable150781%_ _%tab150778%_)
                                           (_%descriptor150784%_
                                            _%descriptor150743%_)
                                           (_%prototable150788%_
                                            _%prototable150781%_)
                                           (_%descriptor150811%_
                                            _%descriptor150784%_))
                                      (____prototype-table-get
                                       _%prototable150788%_
                                       _%descriptor150811%_))))
                              (if _%$e150820%_
                                  (if (eq? _%$e150820%_ '#!void)
                                      (_%loop-interface150772%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150775%_)))
                                      (if _%$e150820%_
                                          (let ((_%instance150830%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e150820%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance150830%_
                                               _%obj150758%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance150830%_)
                                          '#f))
                                  (let ((_%$e150832%_
                                         (try-create-prototype
                                          _%descriptor150743%_
                                          _%klass150748%_
                                          _%iface-klass150775%_)))
                                    (if _%$e150832%_
                                        (if _%$e150832%_
                                            (let ((_%instance150841%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e150832%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance150841%_
                                                 _%obj150758%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance150841%_)
                                            '#f)
                                        (_%loop-interface150772%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150775%_)))))))
                            (_%loop150755%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150758%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab150845%_
                              (class-type-interface-table _%obj-klass150761%_))
                             (_%$e150874%_
                              (let* ((_%prototable150847%_ _%tab150845%_)
                                     (_%descriptor150850%_
                                      _%descriptor150743%_)
                                     (_%prototable150854%_
                                      _%prototable150847%_)
                                     (_%descriptor150865%_
                                      _%descriptor150850%_))
                                (____prototype-table-get
                                 _%prototable150854%_
                                 _%descriptor150865%_))))
                        (if _%$e150874%_
                            (if (eq? _%$e150874%_ '#!void)
                                '#f
                                (if _%$e150874%_
                                    (let ((_%instance150889%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e150874%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance150889%_
                                         _%obj150758%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance150889%_)
                                    '#f))
                            (let ((_%$e150891%_
                                   (try-create-prototype
                                    _%descriptor150743%_
                                    _%klass150748%_
                                    _%obj-klass150761%_)))
                              (if _%$e150891%_
                                  (if _%$e150891%_
                                      (let ((_%instance150900%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e150891%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance150900%_
                                           _%obj150758%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance150900%_)
                                      '#f)
                                  '#f)))))))))))
    (define satisfies?
      (lambda (_%descriptor150589%_ _%obj150591%_)
        (let* ((_%klass150594%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150589%_ '1 '#f '#f)))
               (_%klass-id150597%_
                (let () (declare (not safe)) (##type-id _%klass150594%_))))
          (let _%loop150601%_ ((_%obj150604%_ _%obj150591%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150607%_
                    (let () (declare (not safe)) (class-of _%obj150604%_)))
                   (_%obj-klass-id150610%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150607%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150597%_ _%obj-klass-id150610%_))
                  '#t
                  (if (interface-subclass? _%obj-klass150607%_)
                      (let _%loop-interface150618%_ ((_%iface-klass150621%_
                                                      _%obj-klass150607%_))
                        (if _%iface-klass150621%_
                            (let* ((_%tab150624%_
                                    (class-type-interface-table
                                     _%iface-klass150621%_))
                                   (_%$e150666%_
                                    (let* ((_%prototable150627%_ _%tab150624%_)
                                           (_%descriptor150630%_
                                            _%descriptor150589%_)
                                           (_%prototable150634%_
                                            _%prototable150627%_)
                                           (_%descriptor150657%_
                                            _%descriptor150630%_))
                                      (____prototype-table-get
                                       _%prototable150634%_
                                       _%descriptor150657%_))))
                              (if _%$e150666%_
                                  (if (eq? _%$e150666%_ '#!void)
                                      (_%loop-interface150618%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150621%_)))
                                      (if _%$e150666%_ '#t '#f))
                                  (let ((_%$e150676%_
                                         (try-create-prototype
                                          _%descriptor150589%_
                                          _%klass150594%_
                                          _%iface-klass150621%_)))
                                    (if _%$e150676%_
                                        (if _%$e150676%_ '#t '#f)
                                        (_%loop-interface150618%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150621%_)))))))
                            (_%loop150601%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150604%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab150687%_
                              (class-type-interface-table _%obj-klass150607%_))
                             (_%$e150716%_
                              (let* ((_%prototable150689%_ _%tab150687%_)
                                     (_%descriptor150692%_
                                      _%descriptor150589%_)
                                     (_%prototable150696%_
                                      _%prototable150689%_)
                                     (_%descriptor150707%_
                                      _%descriptor150692%_))
                                (____prototype-table-get
                                 _%prototable150696%_
                                 _%descriptor150707%_))))
                        (if _%$e150716%_
                            (if (eq? _%$e150716%_ '#!void)
                                '#f
                                (if _%$e150716%_ '#t '#f))
                            (let ((_%$e150729%_
                                   (try-create-prototype
                                    _%descriptor150589%_
                                    _%klass150594%_
                                    _%obj-klass150607%_)))
                              (if _%$e150729%_
                                  (if _%$e150729%_ '#t '#f)
                                  '#f)))))))))))
    (define __with-prototype
      (lambda (_%descriptor150433%_
               _%obj150434%_
               _%with-prototype+receiver150435%_
               _%with-receiver150436%_)
        (let* ((_%descriptor150439%_ _%descriptor150433%_)
               (_%with-prototype+receiver150447%_
                _%with-prototype+receiver150435%_)
               (_%with-receiver150455%_ _%with-receiver150436%_)
               (_%klass150464%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150439%_ '1 '#f '#f)))
               (_%klass-id150467%_
                (let () (declare (not safe)) (##type-id _%klass150464%_))))
          (let _%loop150471%_ ((_%obj150474%_ _%obj150434%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150477%_
                    (let () (declare (not safe)) (class-of _%obj150474%_)))
                   (_%obj-klass-id150480%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150477%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150467%_ _%obj-klass-id150480%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver150455%_ _%obj150474%_))
                  (if (interface-subclass? _%obj-klass150477%_)
                      (let _%loop-interface150486%_ ((_%iface-klass150489%_
                                                      _%obj-klass150477%_))
                        (if _%iface-klass150489%_
                            (let* ((_%tab150492%_
                                    (class-type-interface-table
                                     _%iface-klass150489%_))
                                   (_%$e150536%_
                                    (let* ((_%prototable150495%_ _%tab150492%_)
                                           (_%descriptor150498%_
                                            _%descriptor150439%_)
                                           (_%prototable150502%_
                                            _%prototable150495%_)
                                           (_%descriptor150527%_
                                            _%descriptor150498%_))
                                      (____prototype-table-get
                                       _%prototable150502%_
                                       _%descriptor150527%_))))
                              (if _%$e150536%_
                                  (if (eq? _%$e150536%_ '#!void)
                                      (_%loop-interface150486%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150489%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%with-prototype+receiver150447%_
                                         _%descriptor150439%_
                                         _%$e150536%_
                                         _%obj150474%_)))
                                  (let ((_%$e150542%_
                                         (try-create-prototype
                                          _%descriptor150439%_
                                          _%klass150464%_
                                          _%iface-klass150489%_)))
                                    (if _%$e150542%_
                                        (let ()
                                          (declare (not safe))
                                          (_%with-prototype+receiver150447%_
                                           _%descriptor150439%_
                                           _%$e150542%_
                                           _%obj150474%_))
                                        (_%loop-interface150486%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150489%_)))))))
                            (_%loop150471%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150474%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab150549%_
                              (class-type-interface-table _%obj-klass150477%_))
                             (_%$e150578%_
                              (let* ((_%prototable150551%_ _%tab150549%_)
                                     (_%descriptor150554%_
                                      _%descriptor150439%_)
                                     (_%prototable150558%_
                                      _%prototable150551%_)
                                     (_%descriptor150569%_
                                      _%descriptor150554%_))
                                (____prototype-table-get
                                 _%prototable150558%_
                                 _%descriptor150569%_))))
                        (if _%$e150578%_
                            (if (eq? _%$e150578%_ '#!void)
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver150447%_
                                   _%descriptor150439%_
                                   '#f
                                   _%obj150474%_))
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver150447%_
                                   _%descriptor150439%_
                                   _%$e150578%_
                                   _%obj150474%_)))
                            (let ((_%$e150583%_
                                   (create-prototype
                                    _%descriptor150439%_
                                    _%klass150464%_
                                    _%obj-klass150477%_)))
                              (if _%$e150583%_
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver150447%_
                                     _%descriptor150439%_
                                     _%$e150583%_
                                     _%obj150474%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver150447%_
                                     _%descriptor150439%_
                                     '#f
                                     _%obj150474%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor150396%_
               _%obj150397%_
               _%with-prototype+receiver150398%_
               _%with-receiver150399%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor150396%_
               'interface-descriptor::t))
            (let ((_%descriptor150403%_ _%descriptor150396%_))
              (if (procedure? _%with-prototype+receiver150398%_)
                  (let ((_%with-prototype+receiver150413%_
                         _%with-prototype+receiver150398%_))
                    (if (procedure? _%with-receiver150399%_)
                        (let ((_%with-receiver150423%_
                               _%with-receiver150399%_))
                          (__with-prototype
                           _%descriptor150403%_
                           _%obj150397%_
                           _%with-prototype+receiver150413%_
                           _%with-receiver150423%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@236.9-236.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver150399%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@235.9-235.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver150398%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@234.23-234.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor150396%_)
              '#!void))))))
