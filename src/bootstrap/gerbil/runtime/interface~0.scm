(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1784461441)
  (begin
    (define CastError::t
      (let ((__tmp152356 (list Error::t)))
        (declare (not safe))
        (__make-class-type
         'CastError::t
         'CastError
         __tmp152356
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args152270%_
        (apply make-instance CastError::t _%$args152270%_)))
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
      (lambda (_%where152144%_ _%message152145%_ . _%irritants152146%_)
        (let ((__tmp152357
               (let ((__obj152351
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj152351
                    _%message152145%_
                    'where:
                    _%where152144%_
                    'irritants:
                    _%irritants152146%_))
                 __obj152351)))
          (declare (not safe))
          (raise __tmp152357))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp152359 (list))
            (__tmp152358 (cons (cons 'struct: '#t) '((print: object)))))
        (declare (not safe))
        (__make-class-type
         'interface-instance::t
         'interface-instance
         __tmp152359
         '(object)
         __tmp152358
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args152141%_
        (apply make-instance interface-instance::t _%$args152141%_)))
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
      (let ((__tmp152361 (list))
            (__tmp152360
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (__make-class-type
         'interface-descriptor::t
         'interface-descriptor
         __tmp152361
         '(type methods index)
         __tmp152360
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args152138%_
        (apply make-instance interface-descriptor::t _%$args152138%_)))
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
          (let _%again152116%_ ((_%spin152119%_ '0))
            (if (let ((__tmp152362
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp152362 '0))
                (let ((__tmp152363 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp152363))
                (if (let () (declare (not safe)) (##fx< _%spin152119%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again152116%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin152119%_ '1))))
                    (let ((_%owner152125%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner152125%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner152125%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again152116%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r152133%_
               (let ((_%index152131%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index152131%_ '1)))
                 _%index152131%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r152133%_)))
    (define interface-descriptor:::init!
      (lambda (_%self152097%_ _%type152098%_ _%methods152099%_)
        (let ((_%self152102%_ _%self152097%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152102%_
             _%type152098%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152102%_
             _%methods152099%_
             '2
             '#f
             '#f))
          (let ((__tmp152364 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self152102%_
             __tmp152364
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
      (let ((__tmp152366 (list))
            (__tmp152365
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (__make-class-type
         'prototype-table::t
         'prototype-table
         __tmp152366
         '(lock table)
         __tmp152365
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args151972%_
        (apply make-instance prototype-table::t _%$args151972%_)))
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
      (lambda (_%self151958%_)
        (let ((_%self151961%_ _%self151958%_))
          (let ((__tmp152367 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self151961%_ __tmp152367 '1 '#f '#f))
          (let ((__tmp152368
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self151961%_
             __tmp152368
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
      (lambda (_%prototable151811%_ _%descriptor151812%_)
        (let* ((_%prototable151815%_ _%prototable151811%_)
               (_%descriptor151823%_ _%descriptor151812%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab151833%_
                 (##unchecked-structure-ref _%prototable151815%_ '2 '#f '#f))
                (_%index151834%_
                 (##unchecked-structure-ref _%descriptor151823%_ '3 '#f '#f)))
            (if (##fx< _%index151834%_ (vector-length _%tab151833%_))
                (vector-ref _%tab151833%_ _%index151834%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable151790%_ _%descriptor151791%_)
        (let* ((_%prototable151794%_ _%prototable151790%_)
               (_%descriptor151802%_ _%descriptor151791%_))
          (____prototype-table-get
           _%prototable151794%_
           _%descriptor151802%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable151736%_ _%descriptor151737%_ _%prototype151738%_)
        (let* ((_%prototable151741%_ _%prototable151736%_)
               (_%descriptor151749%_ _%descriptor151737%_))
          (declare (not safe))
          (let ((_%lock151759%_
                 (##unchecked-structure-ref _%prototable151741%_ '1 '#f '#f))
                (_%index151760%_
                 (##unchecked-structure-ref _%descriptor151749%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again151764%_ ((_%spin151767%_ '0))
                (if (##fx= (##vector-cas! _%lock151759%_ '0 '1 '0) '0)
                    (##vector-set! _%lock151759%_ '1 (current-thread))
                    (if (##fx< _%spin151767%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again151764%_ (##fx+ _%spin151767%_ '1)))
                        (let ((_%owner151773%_
                               (##vector-ref _%lock151759%_ '1)))
                          (if (eq? _%owner151773%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner151773%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again151764%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r151785%_
                   (let ((_%tab151779%_
                          (##unchecked-structure-ref
                           _%prototable151741%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index151760%_ (vector-length _%tab151779%_))
                         (vector-set!
                          _%tab151779%_
                          _%index151760%_
                          _%prototype151738%_)
                         (let ((_%new-size151781%_ __next-interface-index))
                           (if (##fx< _%index151760%_ _%new-size151781%_)
                               (let ((_%new-tab151783%_
                                      (##make-vector _%new-size151781%_ '#f)))
                                 (subvector-move!
                                  _%tab151779%_
                                  '0
                                  (vector-length _%tab151779%_)
                                  _%new-tab151783%_
                                  '0)
                                 (vector-set!
                                  _%new-tab151783%_
                                  _%index151760%_
                                  _%prototype151738%_)
                                 (##unchecked-structure-set!
                                  _%prototable151741%_
                                  _%new-tab151783%_
                                  '2
                                  '#f
                                  '#f))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor151749%_
                                      'index:
                                      _%index151760%_
                                      'max-index:
                                      _%new-size151781%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock151759%_ '1 '#f)
                  (##vector-cas! _%lock151759%_ '0 '0 '1)))
              _%$r151785%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable151714%_ _%descriptor151715%_ _%prototype151716%_)
        (let* ((_%prototable151719%_ _%prototable151714%_)
               (_%descriptor151727%_ _%descriptor151715%_))
          (____prototype-table-set!
           _%prototable151719%_
           _%descriptor151727%_
           _%prototype151716%_))))
    (define interface-subclass?
      (lambda (_%klass151707%_)
        (let ((_%$%super151708151710%_
               (let () (declare (not safe)) (##type-super _%klass151707%_))))
          (if _%$%super151708151710%_
              (let ((_%super151712%_ _%$%super151708151710%_))
                (eq? (let () (declare (not safe)) (##type-id _%super151712%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass151699%_)
        (let ((_%$e151701%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass151699%_ '13 '#f '#f))))
          (if _%$e151701%_
              _%$e151701%_
              (let ((_%tab151705%_
                     (let ((__obj152355
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj152355)
                       __obj152355)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass151699%_
                   _%tab151705%_
                   '13
                   '#f
                   '#f))
                _%tab151705%_)))))
    (define create-prototype
      (lambda (_%descriptor151382%_ _%klass151383%_ _%obj-klass151384%_)
        (let ((_%method-table151402%_
               (let ((_%klass151386%_ _%obj-klass151384%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass151386%_ 'class))
                     (let ((_%klass151391%_ _%klass151386%_))
                       (declare (not safe))
                       (__specialize-class _%klass151391%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass151386%_)
                       '#!void)))))
          (let _%loop151405%_ ((_%rest151408%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor151382%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count151410%_ '0)
                               (_%methods151412%_ '()))
            (let* ((_%$%rest151414151422%_ _%rest151408%_)
                   (_%$%else151416151549%_
                    (lambda ()
                      (let ((_%prototype151465%_
                             (let* ((_%klass151430%_ _%klass151383%_)
                                    (_%k151433%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count151410%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass151430%_
                                      'class))
                                   (let* ((_%klass151438%_ _%klass151430%_)
                                          (_%k151455%_ _%k151433%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass151438%_
                                      _%k151455%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass151430%_)
                                     '#!void)))))
                        (let _%loop151468%_ ((_%rest151470%_ _%methods151412%_)
                                             (_%off151471%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count151410%_ '1))))
                          (let* ((_%$%rest151473151481%_ _%rest151470%_)
                                 (_%$%else151475151530%_
                                  (lambda ()
                                    (let ((_%tab151489%_
                                           (class-type-interface-table
                                            _%obj-klass151384%_)))
                                      (let* ((_%prototable151492%_
                                              _%tab151489%_)
                                             (_%descriptor151495%_
                                              _%descriptor151382%_)
                                             (_%prototype151498%_
                                              _%prototype151465%_)
                                             (_%prototable151502%_
                                              _%prototable151492%_)
                                             (_%descriptor151519%_
                                              _%descriptor151495%_))
                                        (____prototype-table-set!
                                         _%prototable151502%_
                                         _%descriptor151519%_
                                         _%prototype151498%_))
                                      _%prototype151465%_)))
                                 (_%$%K151477151537%_
                                  (lambda (_%rest151533%_ _%method151534%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype151465%_
                                       _%method151534%_
                                       _%off151471%_
                                       _%klass151383%_
                                       '#f))
                                    (_%loop151468%_
                                     _%rest151533%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off151471%_ '1))))))
                            (if (pair? _%$%rest151473151481%_)
                                (let ((_%$%hd151478151540%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest151473151481%_)))
                                      (_%$%tl151479151542%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest151473151481%_))))
                                  (let* ((_%method151545%_
                                          _%$%hd151478151540%_)
                                         (_%rest151547%_ _%$%tl151479151542%_))
                                    (_%$%K151477151537%_
                                     _%rest151547%_
                                     _%method151545%_)))
                                (_%$%else151475151530%_)))))))
                   (_%$%K151418151687%_
                    (lambda (_%rest151552%_ _%method-spec151553%_)
                      (if (pair? _%method-spec151553%_)
                          (let _%loop-inner151557%_ ((_%methods-rest151560%_
                                                      _%method-spec151553%_))
                            (let* ((_%$%methods-rest151562151570%_
                                    _%methods-rest151560%_)
                                   (_%$%else151564151620%_
                                    (lambda ()
                                      (let ((_%tab151578%_
                                             (class-type-interface-table
                                              _%obj-klass151384%_)))
                                        (let* ((_%prototable151580%_
                                                _%tab151578%_)
                                               (_%descriptor151583%_
                                                _%descriptor151382%_)
                                               (_%prototype151586%_ '#!void)
                                               (_%prototable151590%_
                                                _%prototable151580%_)
                                               (_%descriptor151609%_
                                                _%descriptor151583%_))
                                          (____prototype-table-set!
                                           _%prototable151590%_
                                           _%descriptor151609%_
                                           _%prototype151586%_))
                                        (let ()
                                          (raise-cast-error
                                           'create-prototype
                                           '"cannot create interface prototype; missing method"
                                           'interface:
                                           _%descriptor151382%_
                                           'class:
                                           _%obj-klass151384%_
                                           'method:
                                           _%method-spec151553%_)
                                          '#!void))))
                                   (_%$%K151566151633%_
                                    (lambda (_%methods-rest151623%_
                                             _%method-name151624%_)
                                      (let ((_%$e151627%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table151402%_
                                                _%method-name151624%_
                                                '#f))))
                                        (if _%$e151627%_
                                            (_%loop151405%_
                                             _%rest151552%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count151410%_ '1))
                                             (cons _%$e151627%_
                                                   _%methods151412%_))
                                            (_%loop-inner151557%_
                                             _%methods-rest151623%_))))))
                              (if (pair? _%$%methods-rest151562151570%_)
                                  (let ((_%$%hd151567151636%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest151562151570%_)))
                                        (_%$%tl151568151638%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest151562151570%_))))
                                    (let* ((_%method-name151641%_
                                            _%$%hd151567151636%_)
                                           (_%methods-rest151643%_
                                            _%$%tl151568151638%_))
                                      (_%$%K151566151633%_
                                       _%methods-rest151643%_
                                       _%method-name151641%_)))
                                  (_%$%else151564151620%_))))
                          (let ((_%$e151645%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table151402%_
                                    _%method-spec151553%_
                                    '#f))))
                            (if _%$e151645%_
                                (_%loop151405%_
                                 _%rest151552%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count151410%_ '1))
                                 (cons _%$e151645%_ _%methods151412%_))
                                (let ((_%tab151651%_
                                       (class-type-interface-table
                                        _%obj-klass151384%_)))
                                  (let* ((_%prototable151653%_ _%tab151651%_)
                                         (_%descriptor151656%_
                                          _%descriptor151382%_)
                                         (_%prototype151659%_ '#!void)
                                         (_%prototable151663%_
                                          _%prototable151653%_)
                                         (_%descriptor151676%_
                                          _%descriptor151656%_))
                                    (____prototype-table-set!
                                     _%prototable151663%_
                                     _%descriptor151676%_
                                     _%prototype151659%_))
                                  (let ()
                                    (raise-cast-error
                                     'create-prototype
                                     '"cannot create interface prototype; missing method"
                                     'interface:
                                     _%descriptor151382%_
                                     'class:
                                     _%obj-klass151384%_
                                     'method:
                                     _%method-spec151553%_)
                                    '#!void))))))))
              (if (pair? _%$%rest151414151422%_)
                  (let ((_%$%hd151419151690%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest151414151422%_)))
                        (_%$%tl151420151692%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest151414151422%_))))
                    (let* ((_%method-spec151695%_ _%$%hd151419151690%_)
                           (_%rest151697%_ _%$%tl151420151692%_))
                      (_%$%K151418151687%_
                       _%rest151697%_
                       _%method-spec151695%_)))
                  (_%$%else151416151549%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor151065%_ _%klass151066%_ _%obj-klass151067%_)
        (let ((_%method-table151085%_
               (let ((_%klass151069%_ _%obj-klass151067%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass151069%_ 'class))
                     (let ((_%klass151074%_ _%klass151069%_))
                       (declare (not safe))
                       (__specialize-class _%klass151074%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass151069%_)
                       '#!void)))))
          (let _%loop151088%_ ((_%rest151091%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor151065%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count151093%_ '0)
                               (_%methods151095%_ '()))
            (let* ((_%$%rest151097151105%_ _%rest151091%_)
                   (_%$%else151099151232%_
                    (lambda ()
                      (let ((_%prototype151148%_
                             (let* ((_%klass151113%_ _%klass151066%_)
                                    (_%k151116%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count151093%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass151113%_
                                      'class))
                                   (let* ((_%klass151121%_ _%klass151113%_)
                                          (_%k151138%_ _%k151116%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass151121%_
                                      _%k151138%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass151113%_)
                                     '#!void)))))
                        (let _%loop151151%_ ((_%rest151153%_ _%methods151095%_)
                                             (_%off151154%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count151093%_ '1))))
                          (let* ((_%$%rest151156151164%_ _%rest151153%_)
                                 (_%$%else151158151213%_
                                  (lambda ()
                                    (let ((_%tab151172%_
                                           (class-type-interface-table
                                            _%obj-klass151067%_)))
                                      (let* ((_%prototable151175%_
                                              _%tab151172%_)
                                             (_%descriptor151178%_
                                              _%descriptor151065%_)
                                             (_%prototype151181%_
                                              _%prototype151148%_)
                                             (_%prototable151185%_
                                              _%prototable151175%_)
                                             (_%descriptor151202%_
                                              _%descriptor151178%_))
                                        (____prototype-table-set!
                                         _%prototable151185%_
                                         _%descriptor151202%_
                                         _%prototype151181%_))
                                      _%prototype151148%_)))
                                 (_%$%K151160151220%_
                                  (lambda (_%rest151216%_ _%method151217%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype151148%_
                                       _%method151217%_
                                       _%off151154%_
                                       _%klass151066%_
                                       '#f))
                                    (_%loop151151%_
                                     _%rest151216%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off151154%_ '1))))))
                            (if (pair? _%$%rest151156151164%_)
                                (let ((_%$%hd151161151223%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest151156151164%_)))
                                      (_%$%tl151162151225%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest151156151164%_))))
                                  (let* ((_%method151228%_
                                          _%$%hd151161151223%_)
                                         (_%rest151230%_ _%$%tl151162151225%_))
                                    (_%$%K151160151220%_
                                     _%rest151230%_
                                     _%method151228%_)))
                                (_%$%else151158151213%_)))))))
                   (_%$%K151101151370%_
                    (lambda (_%rest151235%_ _%method-spec151236%_)
                      (if (pair? _%method-spec151236%_)
                          (let _%loop-inner151240%_ ((_%methods-rest151243%_
                                                      _%method-spec151236%_))
                            (let* ((_%$%methods-rest151245151253%_
                                    _%methods-rest151243%_)
                                   (_%$%else151247151303%_
                                    (lambda ()
                                      (let ((_%tab151261%_
                                             (class-type-interface-table
                                              _%obj-klass151067%_)))
                                        (let* ((_%prototable151263%_
                                                _%tab151261%_)
                                               (_%descriptor151266%_
                                                _%descriptor151065%_)
                                               (_%prototype151269%_ '#!void)
                                               (_%prototable151273%_
                                                _%prototable151263%_)
                                               (_%descriptor151292%_
                                                _%descriptor151266%_))
                                          (____prototype-table-set!
                                           _%prototable151273%_
                                           _%descriptor151292%_
                                           _%prototype151269%_))
                                        '#f)))
                                   (_%$%K151249151316%_
                                    (lambda (_%methods-rest151306%_
                                             _%method-name151307%_)
                                      (let ((_%$e151310%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table151085%_
                                                _%method-name151307%_
                                                '#f))))
                                        (if _%$e151310%_
                                            (_%loop151088%_
                                             _%rest151235%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count151093%_ '1))
                                             (cons _%$e151310%_
                                                   _%methods151095%_))
                                            (_%loop-inner151240%_
                                             _%methods-rest151306%_))))))
                              (if (pair? _%$%methods-rest151245151253%_)
                                  (let ((_%$%hd151250151319%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest151245151253%_)))
                                        (_%$%tl151251151321%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest151245151253%_))))
                                    (let* ((_%method-name151324%_
                                            _%$%hd151250151319%_)
                                           (_%methods-rest151326%_
                                            _%$%tl151251151321%_))
                                      (_%$%K151249151316%_
                                       _%methods-rest151326%_
                                       _%method-name151324%_)))
                                  (_%$%else151247151303%_))))
                          (let ((_%$e151328%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table151085%_
                                    _%method-spec151236%_
                                    '#f))))
                            (if _%$e151328%_
                                (_%loop151088%_
                                 _%rest151235%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count151093%_ '1))
                                 (cons _%$e151328%_ _%methods151095%_))
                                (let ((_%tab151334%_
                                       (class-type-interface-table
                                        _%obj-klass151067%_)))
                                  (let* ((_%prototable151336%_ _%tab151334%_)
                                         (_%descriptor151339%_
                                          _%descriptor151065%_)
                                         (_%prototype151342%_ '#!void)
                                         (_%prototable151346%_
                                          _%prototable151336%_)
                                         (_%descriptor151359%_
                                          _%descriptor151339%_))
                                    (____prototype-table-set!
                                     _%prototable151346%_
                                     _%descriptor151359%_
                                     _%prototype151342%_))
                                  '#f)))))))
              (if (pair? _%$%rest151097151105%_)
                  (let ((_%$%hd151102151373%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest151097151105%_)))
                        (_%$%tl151103151375%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest151097151105%_))))
                    (let* ((_%method-spec151378%_ _%$%hd151102151373%_)
                           (_%rest151380%_ _%$%tl151103151375%_))
                      (_%$%K151101151370%_
                       _%rest151380%_
                       _%method-spec151378%_)))
                  (_%$%else151099151232%_)))))))
    (define cast
      (lambda (_%descriptor150899%_ _%obj150901%_)
        (let* ((_%klass150904%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150899%_ '1 '#f '#f)))
               (_%klass-id150907%_
                (let () (declare (not safe)) (##type-id _%klass150904%_))))
          (let _%loop150911%_ ((_%obj150914%_ _%obj150901%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150917%_
                    (let () (declare (not safe)) (class-of _%obj150914%_)))
                   (_%obj-klass-id150920%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150917%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150907%_ _%obj-klass-id150920%_))
                  _%obj150914%_
                  (if (interface-subclass? _%obj-klass150917%_)
                      (let _%loop-interface150928%_ ((_%iface-klass150931%_
                                                      _%obj-klass150917%_))
                        (if _%iface-klass150931%_
                            (let* ((_%tab150934%_
                                    (class-type-interface-table
                                     _%iface-klass150931%_))
                                   (_%$e150976%_
                                    (let* ((_%prototable150937%_ _%tab150934%_)
                                           (_%descriptor150940%_
                                            _%descriptor150899%_)
                                           (_%prototable150944%_
                                            _%prototable150937%_)
                                           (_%descriptor150967%_
                                            _%descriptor150940%_))
                                      (____prototype-table-get
                                       _%prototable150944%_
                                       _%descriptor150967%_))))
                              (if _%$e150976%_
                                  (if (eq? _%$e150976%_ '#!void)
                                      (_%loop-interface150928%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150931%_)))
                                      (if _%$e150976%_
                                          (let ((_%instance150986%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e150976%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance150986%_
                                               _%obj150914%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance150986%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor150899%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj150914%_)))
                                            '#!void)))
                                  (let ((_%$e150988%_
                                         (try-create-prototype
                                          _%descriptor150899%_
                                          _%klass150904%_
                                          _%iface-klass150931%_)))
                                    (if _%$e150988%_
                                        (if _%$e150988%_
                                            (let ((_%instance150997%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e150988%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance150997%_
                                                 _%obj150914%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance150997%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor150899%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj150914%_)))
                                              '#!void))
                                        (_%loop-interface150928%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150931%_)))))))
                            (_%loop150911%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150914%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab151001%_
                              (class-type-interface-table _%obj-klass150917%_))
                             (_%$e151030%_
                              (let* ((_%prototable151003%_ _%tab151001%_)
                                     (_%descriptor151006%_
                                      _%descriptor150899%_)
                                     (_%prototable151010%_
                                      _%prototable151003%_)
                                     (_%descriptor151021%_
                                      _%descriptor151006%_))
                                (____prototype-table-get
                                 _%prototable151010%_
                                 _%descriptor151021%_))))
                        (if _%$e151030%_
                            (if (eq? _%$e151030%_ '#!void)
                                (let ()
                                  (raise-cast-error
                                   'cast
                                   '"cannot create interface prototype"
                                   'interface:
                                   _%descriptor150899%_
                                   'class:
                                   (let ()
                                     (declare (not safe))
                                     (class-of _%obj150914%_)))
                                  '#!void)
                                (if _%$e151030%_
                                    (let ((_%instance151045%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e151030%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance151045%_
                                         _%obj150914%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance151045%_)
                                    (begin
                                      (raise-cast-error
                                       'cast
                                       '"cannot create interface prototype"
                                       'interface:
                                       _%descriptor150899%_
                                       'class:
                                       (let ()
                                         (declare (not safe))
                                         (class-of _%obj150914%_)))
                                      '#!void)))
                            (let ((_%$e151047%_
                                   (create-prototype
                                    _%descriptor150899%_
                                    _%klass150904%_
                                    _%obj-klass150917%_)))
                              (if _%$e151047%_
                                  (if _%$e151047%_
                                      (let ((_%instance151056%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e151047%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance151056%_
                                           _%obj150914%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance151056%_)
                                      (begin
                                        (raise-cast-error
                                         'cast
                                         '"cannot create interface prototype"
                                         'interface:
                                         _%descriptor150899%_
                                         'class:
                                         (let ()
                                           (declare (not safe))
                                           (class-of _%obj150914%_)))
                                        '#!void))
                                  (let ()
                                    (raise-cast-error
                                     'cast
                                     '"cannot create interface prototype"
                                     'interface:
                                     _%descriptor150899%_
                                     'class:
                                     (let ()
                                       (declare (not safe))
                                       (class-of _%obj150914%_)))
                                    '#!void))))))))))))
    (define try-cast
      (lambda (_%descriptor150733%_ _%obj150735%_)
        (let* ((_%klass150738%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150733%_ '1 '#f '#f)))
               (_%klass-id150741%_
                (let () (declare (not safe)) (##type-id _%klass150738%_))))
          (let _%loop150745%_ ((_%obj150748%_ _%obj150735%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150751%_
                    (let () (declare (not safe)) (class-of _%obj150748%_)))
                   (_%obj-klass-id150754%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150751%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150741%_ _%obj-klass-id150754%_))
                  _%obj150748%_
                  (if (interface-subclass? _%obj-klass150751%_)
                      (let _%loop-interface150762%_ ((_%iface-klass150765%_
                                                      _%obj-klass150751%_))
                        (if _%iface-klass150765%_
                            (let* ((_%tab150768%_
                                    (class-type-interface-table
                                     _%iface-klass150765%_))
                                   (_%$e150810%_
                                    (let* ((_%prototable150771%_ _%tab150768%_)
                                           (_%descriptor150774%_
                                            _%descriptor150733%_)
                                           (_%prototable150778%_
                                            _%prototable150771%_)
                                           (_%descriptor150801%_
                                            _%descriptor150774%_))
                                      (____prototype-table-get
                                       _%prototable150778%_
                                       _%descriptor150801%_))))
                              (if _%$e150810%_
                                  (if (eq? _%$e150810%_ '#!void)
                                      (_%loop-interface150762%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150765%_)))
                                      (if _%$e150810%_
                                          (let ((_%instance150820%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e150810%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance150820%_
                                               _%obj150748%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance150820%_)
                                          '#f))
                                  (let ((_%$e150822%_
                                         (try-create-prototype
                                          _%descriptor150733%_
                                          _%klass150738%_
                                          _%iface-klass150765%_)))
                                    (if _%$e150822%_
                                        (if _%$e150822%_
                                            (let ((_%instance150831%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e150822%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance150831%_
                                                 _%obj150748%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance150831%_)
                                            '#f)
                                        (_%loop-interface150762%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150765%_)))))))
                            (_%loop150745%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150748%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab150835%_
                              (class-type-interface-table _%obj-klass150751%_))
                             (_%$e150864%_
                              (let* ((_%prototable150837%_ _%tab150835%_)
                                     (_%descriptor150840%_
                                      _%descriptor150733%_)
                                     (_%prototable150844%_
                                      _%prototable150837%_)
                                     (_%descriptor150855%_
                                      _%descriptor150840%_))
                                (____prototype-table-get
                                 _%prototable150844%_
                                 _%descriptor150855%_))))
                        (if _%$e150864%_
                            (if (eq? _%$e150864%_ '#!void)
                                '#f
                                (if _%$e150864%_
                                    (let ((_%instance150879%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e150864%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance150879%_
                                         _%obj150748%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance150879%_)
                                    '#f))
                            (let ((_%$e150881%_
                                   (try-create-prototype
                                    _%descriptor150733%_
                                    _%klass150738%_
                                    _%obj-klass150751%_)))
                              (if _%$e150881%_
                                  (if _%$e150881%_
                                      (let ((_%instance150890%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e150881%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance150890%_
                                           _%obj150748%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance150890%_)
                                      '#f)
                                  '#f)))))))))))
    (define satisfies?
      (lambda (_%descriptor150579%_ _%obj150581%_)
        (let* ((_%klass150584%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150579%_ '1 '#f '#f)))
               (_%klass-id150587%_
                (let () (declare (not safe)) (##type-id _%klass150584%_))))
          (let _%loop150591%_ ((_%obj150594%_ _%obj150581%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150597%_
                    (let () (declare (not safe)) (class-of _%obj150594%_)))
                   (_%obj-klass-id150600%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150597%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150587%_ _%obj-klass-id150600%_))
                  '#t
                  (if (interface-subclass? _%obj-klass150597%_)
                      (let _%loop-interface150608%_ ((_%iface-klass150611%_
                                                      _%obj-klass150597%_))
                        (if _%iface-klass150611%_
                            (let* ((_%tab150614%_
                                    (class-type-interface-table
                                     _%iface-klass150611%_))
                                   (_%$e150656%_
                                    (let* ((_%prototable150617%_ _%tab150614%_)
                                           (_%descriptor150620%_
                                            _%descriptor150579%_)
                                           (_%prototable150624%_
                                            _%prototable150617%_)
                                           (_%descriptor150647%_
                                            _%descriptor150620%_))
                                      (____prototype-table-get
                                       _%prototable150624%_
                                       _%descriptor150647%_))))
                              (if _%$e150656%_
                                  (if (eq? _%$e150656%_ '#!void)
                                      (_%loop-interface150608%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150611%_)))
                                      (if _%$e150656%_ '#t '#f))
                                  (let ((_%$e150666%_
                                         (try-create-prototype
                                          _%descriptor150579%_
                                          _%klass150584%_
                                          _%iface-klass150611%_)))
                                    (if _%$e150666%_
                                        (if _%$e150666%_ '#t '#f)
                                        (_%loop-interface150608%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150611%_)))))))
                            (_%loop150591%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150594%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab150677%_
                              (class-type-interface-table _%obj-klass150597%_))
                             (_%$e150706%_
                              (let* ((_%prototable150679%_ _%tab150677%_)
                                     (_%descriptor150682%_
                                      _%descriptor150579%_)
                                     (_%prototable150686%_
                                      _%prototable150679%_)
                                     (_%descriptor150697%_
                                      _%descriptor150682%_))
                                (____prototype-table-get
                                 _%prototable150686%_
                                 _%descriptor150697%_))))
                        (if _%$e150706%_
                            (if (eq? _%$e150706%_ '#!void)
                                '#f
                                (if _%$e150706%_ '#t '#f))
                            (let ((_%$e150719%_
                                   (try-create-prototype
                                    _%descriptor150579%_
                                    _%klass150584%_
                                    _%obj-klass150597%_)))
                              (if _%$e150719%_
                                  (if _%$e150719%_ '#t '#f)
                                  '#f)))))))))))
    (define __with-prototype
      (lambda (_%descriptor150423%_
               _%obj150424%_
               _%with-prototype+receiver150425%_
               _%with-receiver150426%_)
        (let* ((_%descriptor150429%_ _%descriptor150423%_)
               (_%with-prototype+receiver150437%_
                _%with-prototype+receiver150425%_)
               (_%with-receiver150445%_ _%with-receiver150426%_)
               (_%klass150454%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor150429%_ '1 '#f '#f)))
               (_%klass-id150457%_
                (let () (declare (not safe)) (##type-id _%klass150454%_))))
          (let _%loop150461%_ ((_%obj150464%_ _%obj150424%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass150467%_
                    (let () (declare (not safe)) (class-of _%obj150464%_)))
                   (_%obj-klass-id150470%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass150467%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id150457%_ _%obj-klass-id150470%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver150445%_ _%obj150464%_))
                  (if (interface-subclass? _%obj-klass150467%_)
                      (let _%loop-interface150476%_ ((_%iface-klass150479%_
                                                      _%obj-klass150467%_))
                        (if _%iface-klass150479%_
                            (let* ((_%tab150482%_
                                    (class-type-interface-table
                                     _%iface-klass150479%_))
                                   (_%$e150526%_
                                    (let* ((_%prototable150485%_ _%tab150482%_)
                                           (_%descriptor150488%_
                                            _%descriptor150429%_)
                                           (_%prototable150492%_
                                            _%prototable150485%_)
                                           (_%descriptor150517%_
                                            _%descriptor150488%_))
                                      (____prototype-table-get
                                       _%prototable150492%_
                                       _%descriptor150517%_))))
                              (if _%$e150526%_
                                  (if (eq? _%$e150526%_ '#!void)
                                      (_%loop-interface150476%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass150479%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%with-prototype+receiver150437%_
                                         _%descriptor150429%_
                                         _%$e150526%_
                                         _%obj150464%_)))
                                  (let ((_%$e150532%_
                                         (try-create-prototype
                                          _%descriptor150429%_
                                          _%klass150454%_
                                          _%iface-klass150479%_)))
                                    (if _%$e150532%_
                                        (let ()
                                          (declare (not safe))
                                          (_%with-prototype+receiver150437%_
                                           _%descriptor150429%_
                                           _%$e150532%_
                                           _%obj150464%_))
                                        (_%loop-interface150476%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass150479%_)))))))
                            (_%loop150461%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj150464%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab150539%_
                              (class-type-interface-table _%obj-klass150467%_))
                             (_%$e150568%_
                              (let* ((_%prototable150541%_ _%tab150539%_)
                                     (_%descriptor150544%_
                                      _%descriptor150429%_)
                                     (_%prototable150548%_
                                      _%prototable150541%_)
                                     (_%descriptor150559%_
                                      _%descriptor150544%_))
                                (____prototype-table-get
                                 _%prototable150548%_
                                 _%descriptor150559%_))))
                        (if _%$e150568%_
                            (if (eq? _%$e150568%_ '#!void)
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver150437%_
                                   _%descriptor150429%_
                                   '#f
                                   _%obj150464%_))
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver150437%_
                                   _%descriptor150429%_
                                   _%$e150568%_
                                   _%obj150464%_)))
                            (let ((_%$e150573%_
                                   (create-prototype
                                    _%descriptor150429%_
                                    _%klass150454%_
                                    _%obj-klass150467%_)))
                              (if _%$e150573%_
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver150437%_
                                     _%descriptor150429%_
                                     _%$e150573%_
                                     _%obj150464%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver150437%_
                                     _%descriptor150429%_
                                     '#f
                                     _%obj150464%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor150386%_
               _%obj150387%_
               _%with-prototype+receiver150388%_
               _%with-receiver150389%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor150386%_
               'interface-descriptor::t))
            (let ((_%descriptor150393%_ _%descriptor150386%_))
              (if (procedure? _%with-prototype+receiver150388%_)
                  (let ((_%with-prototype+receiver150403%_
                         _%with-prototype+receiver150388%_))
                    (if (procedure? _%with-receiver150389%_)
                        (let ((_%with-receiver150413%_
                               _%with-receiver150389%_))
                          (__with-prototype
                           _%descriptor150393%_
                           _%obj150387%_
                           _%with-prototype+receiver150403%_
                           _%with-receiver150413%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@236.9-236.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver150389%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@235.9-235.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver150388%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@234.23-234.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor150386%_)
              '#!void))))))
