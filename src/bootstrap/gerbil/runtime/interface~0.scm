(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1784758122)
  (begin
    (define CastError::t
      (let ((__tmp152383 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'CastError::t
         'CastError
         __tmp152383
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args152297%_
        (apply make-instance CastError::t _%$args152297%_)))
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
      (lambda (_%where152171%_ _%message152172%_ . _%irritants152173%_)
        (let ((__tmp152384
               (let ((__obj152378
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj152378
                    _%message152172%_
                    'where:
                    _%where152171%_
                    'irritants:
                    _%irritants152173%_))
                 __obj152378)))
          (declare (not safe))
          (raise __tmp152384))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp152386 (list))
            (__tmp152385 (cons (cons 'struct: '#t) '((print: object)))))
        (declare (not safe))
        (__make-class-type
         'interface-instance::t
         'interface-instance
         __tmp152386
         '(object)
         __tmp152385
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args152168%_
        (apply make-instance interface-instance::t _%$args152168%_)))
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
      (let ((__tmp152388 (list))
            (__tmp152387
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'interface-descriptor::t
         'interface-descriptor
         __tmp152388
         '(type methods index)
         __tmp152387
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args152165%_
        (apply make-instance interface-descriptor::t _%$args152165%_)))
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
          (let _%again152143%_ ((_%spin152146%_ '0))
            (if (let ((__tmp152389
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp152389 '0))
                (let ((__tmp152390 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp152390))
                (if (let () (declare (not safe)) (##fx< _%spin152146%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again152143%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin152146%_ '1))))
                    (let ((_%owner152152%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner152152%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner152152%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again152143%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r152160%_
               (let ((_%index152158%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index152158%_ '1)))
                 _%index152158%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r152160%_)))
    (define interface-descriptor:::init!
      (lambda (_%self152124%_ _%type152125%_ _%methods152126%_)
        (let ((_%self152129%_ _%self152124%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152129%_
             _%type152125%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152129%_
             _%methods152126%_
             '2
             '#f
             '#f))
          (let ((__tmp152391 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152129%_
             __tmp152391
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
      (let ((__tmp152393 (list))
            (__tmp152392
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'prototype-table::t
         'prototype-table
         __tmp152393
         '(lock table)
         __tmp152392
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args151999%_
        (apply make-instance prototype-table::t _%$args151999%_)))
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
      (lambda (_%self151985%_)
        (let ((_%self151988%_ _%self151985%_))
          (let ((__tmp152394 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self151988%_ __tmp152394 '1 '#f '#f))
          (let ((__tmp152395
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151988%_
             __tmp152395
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
      (lambda (_%prototable151838%_ _%descriptor151839%_)
        (let* ((_%prototable151842%_ _%prototable151838%_)
               (_%descriptor151850%_ _%descriptor151839%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab151860%_
                 (##unchecked-structure-ref _%prototable151842%_ '2 '#f '#f))
                (_%index151861%_
                 (##unchecked-structure-ref _%descriptor151850%_ '3 '#f '#f)))
            (if (##fx< _%index151861%_ (vector-length _%tab151860%_))
                (vector-ref _%tab151860%_ _%index151861%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable151817%_ _%descriptor151818%_)
        (let* ((_%prototable151821%_ _%prototable151817%_)
               (_%descriptor151829%_ _%descriptor151818%_))
          (____prototype-table-get
           _%prototable151821%_
           _%descriptor151829%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable151763%_ _%descriptor151764%_ _%prototype151765%_)
        (let* ((_%prototable151768%_ _%prototable151763%_)
               (_%descriptor151776%_ _%descriptor151764%_))
          (declare (not safe))
          (let ((_%lock151786%_
                 (##unchecked-structure-ref _%prototable151768%_ '1 '#f '#f))
                (_%index151787%_
                 (##unchecked-structure-ref _%descriptor151776%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again151791%_ ((_%spin151794%_ '0))
                (if (##fx= (##vector-cas! _%lock151786%_ '0 '1 '0) '0)
                    (##vector-set! _%lock151786%_ '1 (current-thread))
                    (if (##fx< _%spin151794%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again151791%_ (##fx+ _%spin151794%_ '1)))
                        (let ((_%owner151800%_
                               (##vector-ref _%lock151786%_ '1)))
                          (if (eq? _%owner151800%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner151800%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again151791%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r151812%_
                   (let ((_%tab151806%_
                          (##unchecked-structure-ref
                           _%prototable151768%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index151787%_ (vector-length _%tab151806%_))
                         (vector-set!
                          _%tab151806%_
                          _%index151787%_
                          _%prototype151765%_)
                         (let ((_%new-size151808%_ __next-interface-index))
                           (if (##fx< _%index151787%_ _%new-size151808%_)
                               (let ((_%new-tab151810%_
                                      (##make-vector _%new-size151808%_ '#f)))
                                 (subvector-move!
                                  _%tab151806%_
                                  '0
                                  (vector-length _%tab151806%_)
                                  _%new-tab151810%_
                                  '0)
                                 (vector-set!
                                  _%new-tab151810%_
                                  _%index151787%_
                                  _%prototype151765%_)
                                 (##unchecked-structure-set!
                                  _%prototable151768%_
                                  _%new-tab151810%_
                                  '2
                                  '#f
                                  '#f))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor151776%_
                                      'index:
                                      _%index151787%_
                                      'max-index:
                                      _%new-size151808%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock151786%_ '1 '#f)
                  (##vector-cas! _%lock151786%_ '0 '0 '1)))
              _%$r151812%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable151741%_ _%descriptor151742%_ _%prototype151743%_)
        (let* ((_%prototable151746%_ _%prototable151741%_)
               (_%descriptor151754%_ _%descriptor151742%_))
          (____prototype-table-set!
           _%prototable151746%_
           _%descriptor151754%_
           _%prototype151743%_))))
    (define interface-subclass?
      (lambda (_%klass151734%_)
        (let ((_%$%super151735151737%_
               (let () (declare (not safe)) (##type-super _%klass151734%_))))
          (if _%$%super151735151737%_
              (let ((_%super151739%_ _%$%super151735151737%_))
                (eq? (let () (declare (not safe)) (##type-id _%super151739%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass151726%_)
        (let ((_%$e151728%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass151726%_ '13 '#f '#f))))
          (if _%$e151728%_
              _%$e151728%_
              (let ((_%tab151732%_
                     (let ((__obj152382
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj152382)
                       __obj152382)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass151726%_
                   _%tab151732%_
                   '13
                   '#f
                   '#f))
                _%tab151732%_)))))
    (define create-prototype
      (lambda (_%descriptor151409%_ _%klass151410%_ _%obj-klass151411%_)
        (let ((_%method-table151429%_
               (let ((_%klass151413%_ _%obj-klass151411%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass151413%_ 'class))
                     (let ((_%klass151418%_ _%klass151413%_))
                       (declare (not safe))
                       (__specialize-class _%klass151418%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass151413%_)
                       '#!void)))))
          (let _%loop151432%_ ((_%rest151435%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor151409%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count151437%_ '0)
                               (_%methods151439%_ '()))
            (let* ((_%$%rest151441151449%_ _%rest151435%_)
                   (_%$%else151443151576%_
                    (lambda ()
                      (let ((_%prototype151492%_
                             (let* ((_%klass151457%_ _%klass151410%_)
                                    (_%k151460%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count151437%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass151457%_
                                      'class))
                                   (let* ((_%klass151465%_ _%klass151457%_)
                                          (_%k151482%_ _%k151460%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass151465%_
                                      _%k151482%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass151457%_)
                                     '#!void)))))
                        (let _%loop151495%_ ((_%rest151497%_ _%methods151439%_)
                                             (_%off151498%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count151437%_ '1))))
                          (let* ((_%$%rest151500151508%_ _%rest151497%_)
                                 (_%$%else151502151557%_
                                  (lambda ()
                                    (let ((_%tab151516%_
                                           (class-type-interface-table
                                            _%obj-klass151411%_)))
                                      (let* ((_%prototable151519%_
                                              _%tab151516%_)
                                             (_%descriptor151522%_
                                              _%descriptor151409%_)
                                             (_%prototype151525%_
                                              _%prototype151492%_)
                                             (_%prototable151529%_
                                              _%prototable151519%_)
                                             (_%descriptor151546%_
                                              _%descriptor151522%_))
                                        (____prototype-table-set!
                                         _%prototable151529%_
                                         _%descriptor151546%_
                                         _%prototype151525%_))
                                      _%prototype151492%_)))
                                 (_%$%K151504151564%_
                                  (lambda (_%rest151560%_ _%method151561%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype151492%_
                                       _%method151561%_
                                       _%off151498%_
                                       _%klass151410%_
                                       '#f))
                                    (_%loop151495%_
                                     _%rest151560%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off151498%_ '1))))))
                            (if (pair? _%$%rest151500151508%_)
                                (let ((_%$%hd151505151567%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest151500151508%_)))
                                      (_%$%tl151506151569%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest151500151508%_))))
                                  (let* ((_%method151572%_
                                          _%$%hd151505151567%_)
                                         (_%rest151574%_ _%$%tl151506151569%_))
                                    (_%$%K151504151564%_
                                     _%rest151574%_
                                     _%method151572%_)))
                                (_%$%else151502151557%_)))))))
                   (_%$%K151445151714%_
                    (lambda (_%rest151579%_ _%method-spec151580%_)
                      (if (pair? _%method-spec151580%_)
                          (let _%loop-inner151584%_ ((_%methods-rest151587%_
                                                      _%method-spec151580%_))
                            (let* ((_%$%methods-rest151589151597%_
                                    _%methods-rest151587%_)
                                   (_%$%else151591151647%_
                                    (lambda ()
                                      (let ((_%tab151605%_
                                             (class-type-interface-table
                                              _%obj-klass151411%_)))
                                        (let* ((_%prototable151607%_
                                                _%tab151605%_)
                                               (_%descriptor151610%_
                                                _%descriptor151409%_)
                                               (_%prototype151613%_ '#!void)
                                               (_%prototable151617%_
                                                _%prototable151607%_)
                                               (_%descriptor151636%_
                                                _%descriptor151610%_))
                                          (____prototype-table-set!
                                           _%prototable151617%_
                                           _%descriptor151636%_
                                           _%prototype151613%_))
                                        (let ()
                                          (raise-cast-error
                                           'create-prototype
                                           '"cannot create interface prototype; missing method"
                                           'interface:
                                           _%descriptor151409%_
                                           'class:
                                           _%obj-klass151411%_
                                           'method:
                                           _%method-spec151580%_)
                                          '#!void))))
                                   (_%$%K151593151660%_
                                    (lambda (_%methods-rest151650%_
                                             _%method-name151651%_)
                                      (let ((_%$e151654%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table151429%_
                                                _%method-name151651%_
                                                '#f))))
                                        (if _%$e151654%_
                                            (_%loop151432%_
                                             _%rest151579%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count151437%_ '1))
                                             (cons _%$e151654%_
                                                   _%methods151439%_))
                                            (_%loop-inner151584%_
                                             _%methods-rest151650%_))))))
                              (if (pair? _%$%methods-rest151589151597%_)
                                  (let ((_%$%hd151594151663%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest151589151597%_)))
                                        (_%$%tl151595151665%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest151589151597%_))))
                                    (let* ((_%method-name151668%_
                                            _%$%hd151594151663%_)
                                           (_%methods-rest151670%_
                                            _%$%tl151595151665%_))
                                      (_%$%K151593151660%_
                                       _%methods-rest151670%_
                                       _%method-name151668%_)))
                                  (_%$%else151591151647%_))))
                          (let ((_%$e151672%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table151429%_
                                    _%method-spec151580%_
                                    '#f))))
                            (if _%$e151672%_
                                (_%loop151432%_
                                 _%rest151579%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count151437%_ '1))
                                 (cons _%$e151672%_ _%methods151439%_))
                                (let ((_%tab151678%_
                                       (class-type-interface-table
                                        _%obj-klass151411%_)))
                                  (let* ((_%prototable151680%_ _%tab151678%_)
                                         (_%descriptor151683%_
                                          _%descriptor151409%_)
                                         (_%prototype151686%_ '#!void)
                                         (_%prototable151690%_
                                          _%prototable151680%_)
                                         (_%descriptor151703%_
                                          _%descriptor151683%_))
                                    (____prototype-table-set!
                                     _%prototable151690%_
                                     _%descriptor151703%_
                                     _%prototype151686%_))
                                  (let ()
                                    (raise-cast-error
                                     'create-prototype
                                     '"cannot create interface prototype; missing method"
                                     'interface:
                                     _%descriptor151409%_
                                     'class:
                                     _%obj-klass151411%_
                                     'method:
                                     _%method-spec151580%_)
                                    '#!void))))))))
              (if (pair? _%$%rest151441151449%_)
                  (let ((_%$%hd151446151717%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest151441151449%_)))
                        (_%$%tl151447151719%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest151441151449%_))))
                    (let* ((_%method-spec151722%_ _%$%hd151446151717%_)
                           (_%rest151724%_ _%$%tl151447151719%_))
                      (_%$%K151445151714%_
                       _%rest151724%_
                       _%method-spec151722%_)))
                  (_%$%else151443151576%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor151092%_ _%klass151093%_ _%obj-klass151094%_)
        (let ((_%method-table151112%_
               (let ((_%klass151096%_ _%obj-klass151094%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass151096%_ 'class))
                     (let ((_%klass151101%_ _%klass151096%_))
                       (declare (not safe))
                       (__specialize-class _%klass151101%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass151096%_)
                       '#!void)))))
          (let _%loop151115%_ ((_%rest151118%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor151092%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count151120%_ '0)
                               (_%methods151122%_ '()))
            (let* ((_%$%rest151124151132%_ _%rest151118%_)
                   (_%$%else151126151259%_
                    (lambda ()
                      (let ((_%prototype151175%_
                             (let* ((_%klass151140%_ _%klass151093%_)
                                    (_%k151143%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count151120%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass151140%_
                                      'class))
                                   (let* ((_%klass151148%_ _%klass151140%_)
                                          (_%k151165%_ _%k151143%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass151148%_
                                      _%k151165%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass151140%_)
                                     '#!void)))))
                        (let _%loop151178%_ ((_%rest151180%_ _%methods151122%_)
                                             (_%off151181%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count151120%_ '1))))
                          (let* ((_%$%rest151183151191%_ _%rest151180%_)
                                 (_%$%else151185151240%_
                                  (lambda ()
                                    (let ((_%tab151199%_
                                           (class-type-interface-table
                                            _%obj-klass151094%_)))
                                      (let* ((_%prototable151202%_
                                              _%tab151199%_)
                                             (_%descriptor151205%_
                                              _%descriptor151092%_)
                                             (_%prototype151208%_
                                              _%prototype151175%_)
                                             (_%prototable151212%_
                                              _%prototable151202%_)
                                             (_%descriptor151229%_
                                              _%descriptor151205%_))
                                        (____prototype-table-set!
                                         _%prototable151212%_
                                         _%descriptor151229%_
                                         _%prototype151208%_))
                                      _%prototype151175%_)))
                                 (_%$%K151187151247%_
                                  (lambda (_%rest151243%_ _%method151244%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype151175%_
                                       _%method151244%_
                                       _%off151181%_
                                       _%klass151093%_
                                       '#f))
                                    (_%loop151178%_
                                     _%rest151243%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off151181%_ '1))))))
                            (if (pair? _%$%rest151183151191%_)
                                (let ((_%$%hd151188151250%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest151183151191%_)))
                                      (_%$%tl151189151252%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest151183151191%_))))
                                  (let* ((_%method151255%_
                                          _%$%hd151188151250%_)
                                         (_%rest151257%_ _%$%tl151189151252%_))
                                    (_%$%K151187151247%_
                                     _%rest151257%_
                                     _%method151255%_)))
                                (_%$%else151185151240%_)))))))
                   (_%$%K151128151397%_
                    (lambda (_%rest151262%_ _%method-spec151263%_)
                      (if (pair? _%method-spec151263%_)
                          (let _%loop-inner151267%_ ((_%methods-rest151270%_
                                                      _%method-spec151263%_))
                            (let* ((_%$%methods-rest151272151280%_
                                    _%methods-rest151270%_)
                                   (_%$%else151274151330%_
                                    (lambda ()
                                      (let ((_%tab151288%_
                                             (class-type-interface-table
                                              _%obj-klass151094%_)))
                                        (let* ((_%prototable151290%_
                                                _%tab151288%_)
                                               (_%descriptor151293%_
                                                _%descriptor151092%_)
                                               (_%prototype151296%_ '#!void)
                                               (_%prototable151300%_
                                                _%prototable151290%_)
                                               (_%descriptor151319%_
                                                _%descriptor151293%_))
                                          (____prototype-table-set!
                                           _%prototable151300%_
                                           _%descriptor151319%_
                                           _%prototype151296%_))
                                        '#f)))
                                   (_%$%K151276151343%_
                                    (lambda (_%methods-rest151333%_
                                             _%method-name151334%_)
                                      (let ((_%$e151337%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table151112%_
                                                _%method-name151334%_
                                                '#f))))
                                        (if _%$e151337%_
                                            (_%loop151115%_
                                             _%rest151262%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count151120%_ '1))
                                             (cons _%$e151337%_
                                                   _%methods151122%_))
                                            (_%loop-inner151267%_
                                             _%methods-rest151333%_))))))
                              (if (pair? _%$%methods-rest151272151280%_)
                                  (let ((_%$%hd151277151346%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest151272151280%_)))
                                        (_%$%tl151278151348%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest151272151280%_))))
                                    (let* ((_%method-name151351%_
                                            _%$%hd151277151346%_)
                                           (_%methods-rest151353%_
                                            _%$%tl151278151348%_))
                                      (_%$%K151276151343%_
                                       _%methods-rest151353%_
                                       _%method-name151351%_)))
                                  (_%$%else151274151330%_))))
                          (let ((_%$e151355%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table151112%_
                                    _%method-spec151263%_
                                    '#f))))
                            (if _%$e151355%_
                                (_%loop151115%_
                                 _%rest151262%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count151120%_ '1))
                                 (cons _%$e151355%_ _%methods151122%_))
                                (let ((_%tab151361%_
                                       (class-type-interface-table
                                        _%obj-klass151094%_)))
                                  (let* ((_%prototable151363%_ _%tab151361%_)
                                         (_%descriptor151366%_
                                          _%descriptor151092%_)
                                         (_%prototype151369%_ '#!void)
                                         (_%prototable151373%_
                                          _%prototable151363%_)
                                         (_%descriptor151386%_
                                          _%descriptor151366%_))
                                    (____prototype-table-set!
                                     _%prototable151373%_
                                     _%descriptor151386%_
                                     _%prototype151369%_))
                                  '#f)))))))
              (if (pair? _%$%rest151124151132%_)
                  (let ((_%$%hd151129151400%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest151124151132%_)))
                        (_%$%tl151130151402%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest151124151132%_))))
                    (let* ((_%method-spec151405%_ _%$%hd151129151400%_)
                           (_%rest151407%_ _%$%tl151130151402%_))
                      (_%$%K151128151397%_
                       _%rest151407%_
                       _%method-spec151405%_)))
                  (_%$%else151126151259%_)))))))
    (define cast
      (lambda (_%descriptor150926%_ _%obj150928%_)
        (let* ((_%klass150931%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150926%_ '1 '#f '#f)))
               (_%klass-id150934%_
                (let () (declare (not safe)) (##type-id _%klass150931%_))))
          (let _%loop150938%_ ((_%obj150941%_ _%obj150928%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150944%_
                    (let () (declare (not safe)) (class-of _%obj150941%_)))
                   (_%obj-klass-id150947%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150944%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150934%_ _%obj-klass-id150947%_))
                  _%obj150941%_
                  (if (interface-subclass? _%obj-klass150944%_)
                      (let _%loop-interface150955%_ ((_%iface-klass150958%_
                                                      _%obj-klass150944%_))
                        (if _%iface-klass150958%_
                            (let* ((_%tab150961%_
                                    (class-type-interface-table
                                     _%iface-klass150958%_))
                                   (_%$e151003%_
                                    (let* ((_%prototable150964%_ _%tab150961%_)
                                           (_%descriptor150967%_
                                            _%descriptor150926%_)
                                           (_%prototable150971%_
                                            _%prototable150964%_)
                                           (_%descriptor150994%_
                                            _%descriptor150967%_))
                                      (____prototype-table-get
                                       _%prototable150971%_
                                       _%descriptor150994%_))))
                              (if _%$e151003%_
                                  (if (eq? _%$e151003%_ '#!void)
                                      (_%loop-interface150955%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150958%_)))
                                      (if _%$e151003%_
                                          (let ((_%instance151013%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e151003%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance151013%_
                                               _%obj150941%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance151013%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor150926%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj150941%_)))
                                            '#!void)))
                                  (let ((_%$e151015%_
                                         (try-create-prototype
                                          _%descriptor150926%_
                                          _%klass150931%_
                                          _%iface-klass150958%_)))
                                    (if _%$e151015%_
                                        (if _%$e151015%_
                                            (let ((_%instance151024%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e151015%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance151024%_
                                                 _%obj150941%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance151024%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor150926%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj150941%_)))
                                              '#!void))
                                        (_%loop-interface150955%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150958%_)))))))
                            (_%loop150938%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150941%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab151028%_
                              (class-type-interface-table _%obj-klass150944%_))
                             (_%$e151057%_
                              (let* ((_%prototable151030%_ _%tab151028%_)
                                     (_%descriptor151033%_
                                      _%descriptor150926%_)
                                     (_%prototable151037%_
                                      _%prototable151030%_)
                                     (_%descriptor151048%_
                                      _%descriptor151033%_))
                                (____prototype-table-get
                                 _%prototable151037%_
                                 _%descriptor151048%_))))
                        (if _%$e151057%_
                            (if (eq? _%$e151057%_ '#!void)
                                (let ()
                                  (raise-cast-error
                                   'cast
                                   '"cannot create interface prototype"
                                   'interface:
                                   _%descriptor150926%_
                                   'class:
                                   (let ()
                                     (declare (not safe))
                                     (class-of _%obj150941%_)))
                                  '#!void)
                                (if _%$e151057%_
                                    (let ((_%instance151072%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e151057%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance151072%_
                                         _%obj150941%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance151072%_)
                                    (begin
                                      (raise-cast-error
                                       'cast
                                       '"cannot create interface prototype"
                                       'interface:
                                       _%descriptor150926%_
                                       'class:
                                       (let ()
                                         (declare (not safe))
                                         (class-of _%obj150941%_)))
                                      '#!void)))
                            (let ((_%$e151074%_
                                   (create-prototype
                                    _%descriptor150926%_
                                    _%klass150931%_
                                    _%obj-klass150944%_)))
                              (if _%$e151074%_
                                  (if _%$e151074%_
                                      (let ((_%instance151083%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e151074%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance151083%_
                                           _%obj150941%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance151083%_)
                                      (begin
                                        (raise-cast-error
                                         'cast
                                         '"cannot create interface prototype"
                                         'interface:
                                         _%descriptor150926%_
                                         'class:
                                         (let ()
                                           (declare (not safe))
                                           (class-of _%obj150941%_)))
                                        '#!void))
                                  (let ()
                                    (raise-cast-error
                                     'cast
                                     '"cannot create interface prototype"
                                     'interface:
                                     _%descriptor150926%_
                                     'class:
                                     (let ()
                                       (declare (not safe))
                                       (class-of _%obj150941%_)))
                                    '#!void))))))))))))
    (define try-cast
      (lambda (_%descriptor150760%_ _%obj150762%_)
        (let* ((_%klass150765%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150760%_ '1 '#f '#f)))
               (_%klass-id150768%_
                (let () (declare (not safe)) (##type-id _%klass150765%_))))
          (let _%loop150772%_ ((_%obj150775%_ _%obj150762%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150778%_
                    (let () (declare (not safe)) (class-of _%obj150775%_)))
                   (_%obj-klass-id150781%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150778%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150768%_ _%obj-klass-id150781%_))
                  _%obj150775%_
                  (if (interface-subclass? _%obj-klass150778%_)
                      (let _%loop-interface150789%_ ((_%iface-klass150792%_
                                                      _%obj-klass150778%_))
                        (if _%iface-klass150792%_
                            (let* ((_%tab150795%_
                                    (class-type-interface-table
                                     _%iface-klass150792%_))
                                   (_%$e150837%_
                                    (let* ((_%prototable150798%_ _%tab150795%_)
                                           (_%descriptor150801%_
                                            _%descriptor150760%_)
                                           (_%prototable150805%_
                                            _%prototable150798%_)
                                           (_%descriptor150828%_
                                            _%descriptor150801%_))
                                      (____prototype-table-get
                                       _%prototable150805%_
                                       _%descriptor150828%_))))
                              (if _%$e150837%_
                                  (if (eq? _%$e150837%_ '#!void)
                                      (_%loop-interface150789%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150792%_)))
                                      (if _%$e150837%_
                                          (let ((_%instance150847%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e150837%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance150847%_
                                               _%obj150775%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance150847%_)
                                          '#f))
                                  (let ((_%$e150849%_
                                         (try-create-prototype
                                          _%descriptor150760%_
                                          _%klass150765%_
                                          _%iface-klass150792%_)))
                                    (if _%$e150849%_
                                        (if _%$e150849%_
                                            (let ((_%instance150858%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e150849%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance150858%_
                                                 _%obj150775%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance150858%_)
                                            '#f)
                                        (_%loop-interface150789%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150792%_)))))))
                            (_%loop150772%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150775%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab150862%_
                              (class-type-interface-table _%obj-klass150778%_))
                             (_%$e150891%_
                              (let* ((_%prototable150864%_ _%tab150862%_)
                                     (_%descriptor150867%_
                                      _%descriptor150760%_)
                                     (_%prototable150871%_
                                      _%prototable150864%_)
                                     (_%descriptor150882%_
                                      _%descriptor150867%_))
                                (____prototype-table-get
                                 _%prototable150871%_
                                 _%descriptor150882%_))))
                        (if _%$e150891%_
                            (if (eq? _%$e150891%_ '#!void)
                                '#f
                                (if _%$e150891%_
                                    (let ((_%instance150906%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e150891%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance150906%_
                                         _%obj150775%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance150906%_)
                                    '#f))
                            (let ((_%$e150908%_
                                   (try-create-prototype
                                    _%descriptor150760%_
                                    _%klass150765%_
                                    _%obj-klass150778%_)))
                              (if _%$e150908%_
                                  (if _%$e150908%_
                                      (let ((_%instance150917%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e150908%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance150917%_
                                           _%obj150775%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance150917%_)
                                      '#f)
                                  '#f)))))))))))
    (define satisfies?
      (lambda (_%descriptor150606%_ _%obj150608%_)
        (let* ((_%klass150611%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150606%_ '1 '#f '#f)))
               (_%klass-id150614%_
                (let () (declare (not safe)) (##type-id _%klass150611%_))))
          (let _%loop150618%_ ((_%obj150621%_ _%obj150608%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150624%_
                    (let () (declare (not safe)) (class-of _%obj150621%_)))
                   (_%obj-klass-id150627%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150624%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150614%_ _%obj-klass-id150627%_))
                  '#t
                  (if (interface-subclass? _%obj-klass150624%_)
                      (let _%loop-interface150635%_ ((_%iface-klass150638%_
                                                      _%obj-klass150624%_))
                        (if _%iface-klass150638%_
                            (let* ((_%tab150641%_
                                    (class-type-interface-table
                                     _%iface-klass150638%_))
                                   (_%$e150683%_
                                    (let* ((_%prototable150644%_ _%tab150641%_)
                                           (_%descriptor150647%_
                                            _%descriptor150606%_)
                                           (_%prototable150651%_
                                            _%prototable150644%_)
                                           (_%descriptor150674%_
                                            _%descriptor150647%_))
                                      (____prototype-table-get
                                       _%prototable150651%_
                                       _%descriptor150674%_))))
                              (if _%$e150683%_
                                  (if (eq? _%$e150683%_ '#!void)
                                      (_%loop-interface150635%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150638%_)))
                                      (if _%$e150683%_ '#t '#f))
                                  (let ((_%$e150693%_
                                         (try-create-prototype
                                          _%descriptor150606%_
                                          _%klass150611%_
                                          _%iface-klass150638%_)))
                                    (if _%$e150693%_
                                        (if _%$e150693%_ '#t '#f)
                                        (_%loop-interface150635%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150638%_)))))))
                            (_%loop150618%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150621%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab150704%_
                              (class-type-interface-table _%obj-klass150624%_))
                             (_%$e150733%_
                              (let* ((_%prototable150706%_ _%tab150704%_)
                                     (_%descriptor150709%_
                                      _%descriptor150606%_)
                                     (_%prototable150713%_
                                      _%prototable150706%_)
                                     (_%descriptor150724%_
                                      _%descriptor150709%_))
                                (____prototype-table-get
                                 _%prototable150713%_
                                 _%descriptor150724%_))))
                        (if _%$e150733%_
                            (if (eq? _%$e150733%_ '#!void)
                                '#f
                                (if _%$e150733%_ '#t '#f))
                            (let ((_%$e150746%_
                                   (try-create-prototype
                                    _%descriptor150606%_
                                    _%klass150611%_
                                    _%obj-klass150624%_)))
                              (if _%$e150746%_
                                  (if _%$e150746%_ '#t '#f)
                                  '#f)))))))))))
    (define __with-prototype
      (lambda (_%descriptor150450%_
               _%obj150451%_
               _%with-prototype+receiver150452%_
               _%with-receiver150453%_)
        (let* ((_%descriptor150456%_ _%descriptor150450%_)
               (_%with-prototype+receiver150464%_
                _%with-prototype+receiver150452%_)
               (_%with-receiver150472%_ _%with-receiver150453%_)
               (_%klass150481%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150456%_ '1 '#f '#f)))
               (_%klass-id150484%_
                (let () (declare (not safe)) (##type-id _%klass150481%_))))
          (let _%loop150488%_ ((_%obj150491%_ _%obj150451%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150494%_
                    (let () (declare (not safe)) (class-of _%obj150491%_)))
                   (_%obj-klass-id150497%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150494%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150484%_ _%obj-klass-id150497%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver150472%_ _%obj150491%_))
                  (if (interface-subclass? _%obj-klass150494%_)
                      (let _%loop-interface150503%_ ((_%iface-klass150506%_
                                                      _%obj-klass150494%_))
                        (if _%iface-klass150506%_
                            (let* ((_%tab150509%_
                                    (class-type-interface-table
                                     _%iface-klass150506%_))
                                   (_%$e150553%_
                                    (let* ((_%prototable150512%_ _%tab150509%_)
                                           (_%descriptor150515%_
                                            _%descriptor150456%_)
                                           (_%prototable150519%_
                                            _%prototable150512%_)
                                           (_%descriptor150544%_
                                            _%descriptor150515%_))
                                      (____prototype-table-get
                                       _%prototable150519%_
                                       _%descriptor150544%_))))
                              (if _%$e150553%_
                                  (if (eq? _%$e150553%_ '#!void)
                                      (_%loop-interface150503%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150506%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%with-prototype+receiver150464%_
                                         _%descriptor150456%_
                                         _%$e150553%_
                                         _%obj150491%_)))
                                  (let ((_%$e150559%_
                                         (try-create-prototype
                                          _%descriptor150456%_
                                          _%klass150481%_
                                          _%iface-klass150506%_)))
                                    (if _%$e150559%_
                                        (let ()
                                          (declare (not safe))
                                          (_%with-prototype+receiver150464%_
                                           _%descriptor150456%_
                                           _%$e150559%_
                                           _%obj150491%_))
                                        (_%loop-interface150503%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150506%_)))))))
                            (_%loop150488%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150491%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab150566%_
                              (class-type-interface-table _%obj-klass150494%_))
                             (_%$e150595%_
                              (let* ((_%prototable150568%_ _%tab150566%_)
                                     (_%descriptor150571%_
                                      _%descriptor150456%_)
                                     (_%prototable150575%_
                                      _%prototable150568%_)
                                     (_%descriptor150586%_
                                      _%descriptor150571%_))
                                (____prototype-table-get
                                 _%prototable150575%_
                                 _%descriptor150586%_))))
                        (if _%$e150595%_
                            (if (eq? _%$e150595%_ '#!void)
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver150464%_
                                   _%descriptor150456%_
                                   '#f
                                   _%obj150491%_))
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver150464%_
                                   _%descriptor150456%_
                                   _%$e150595%_
                                   _%obj150491%_)))
                            (let ((_%$e150600%_
                                   (create-prototype
                                    _%descriptor150456%_
                                    _%klass150481%_
                                    _%obj-klass150494%_)))
                              (if _%$e150600%_
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver150464%_
                                     _%descriptor150456%_
                                     _%$e150600%_
                                     _%obj150491%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver150464%_
                                     _%descriptor150456%_
                                     '#f
                                     _%obj150491%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor150413%_
               _%obj150414%_
               _%with-prototype+receiver150415%_
               _%with-receiver150416%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor150413%_
               'interface-descriptor::t))
            (let ((_%descriptor150420%_ _%descriptor150413%_))
              (if (procedure? _%with-prototype+receiver150415%_)
                  (let ((_%with-prototype+receiver150430%_
                         _%with-prototype+receiver150415%_))
                    (if (procedure? _%with-receiver150416%_)
                        (let ((_%with-receiver150440%_
                               _%with-receiver150416%_))
                          (__with-prototype
                           _%descriptor150420%_
                           _%obj150414%_
                           _%with-prototype+receiver150430%_
                           _%with-receiver150440%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@236.9-236.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver150416%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@235.9-235.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver150415%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@234.23-234.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor150413%_)
              '#!void))))))
