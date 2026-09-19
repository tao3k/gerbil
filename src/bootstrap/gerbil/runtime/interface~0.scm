(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1789839223)
  (begin
    (define CastError::t
      (let ((__tmp154555 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'CastError::t
         'CastError
         __tmp154555
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args154469%_
        (apply make-instance CastError::t _%$args154469%_)))
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
      (lambda (_%where154343%_ _%message154344%_ . _%irritants154345%_)
        (let ((__tmp154556
               (let ((__obj154550
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj154550
                    _%message154344%_
                    'where:
                    _%where154343%_
                    'irritants:
                    _%irritants154345%_))
                 __obj154550)))
          (declare (not safe))
          (raise __tmp154556))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp154558 (list))
            (__tmp154557 (cons (cons 'struct: '#t) '((print: object)))))
        (declare (not safe))
        (make-class-type
         'interface-instance::t
         'interface-instance
         __tmp154558
         '(object)
         __tmp154557
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args154340%_
        (apply make-instance interface-instance::t _%$args154340%_)))
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
      (let ((__tmp154560 (list))
            (__tmp154559
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (make-class-type
         'interface-descriptor::t
         'interface-descriptor
         __tmp154560
         '(type methods index)
         __tmp154559
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args154337%_
        (apply make-instance interface-descriptor::t _%$args154337%_)))
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
          (let _%again154315%_ ((_%spin154318%_ '0))
            (if (let ((__tmp154561
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp154561 '0))
                (let ((__tmp154562 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp154562))
                (if (let () (declare (not safe)) (##fx< _%spin154318%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again154315%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin154318%_ '1))))
                    (let ((_%owner154324%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner154324%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner154324%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again154315%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r154332%_
               (let ((_%index154330%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index154330%_ '1)))
                 _%index154330%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r154332%_)))
    (define interface-descriptor:::init!
      (lambda (_%self154296%_ _%type154297%_ _%methods154298%_)
        (let ((_%self154301%_ _%self154296%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self154301%_
             _%type154297%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self154301%_
             _%methods154298%_
             '2
             '#f
             '#f))
          (let ((__tmp154563 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self154301%_
             __tmp154563
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
      (let ((__tmp154565 (list))
            (__tmp154564
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'prototype-table::t
         'prototype-table
         __tmp154565
         '(lock table)
         __tmp154564
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args154171%_
        (apply make-instance prototype-table::t _%$args154171%_)))
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
      (lambda (_%self154157%_)
        (let ((_%self154160%_ _%self154157%_))
          (let ((__tmp154566 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self154160%_ __tmp154566 '1 '#f '#f))
          (let ((__tmp154567
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self154160%_
             __tmp154567
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
      (lambda (_%prototable154010%_ _%descriptor154011%_)
        (let* ((_%prototable154014%_ _%prototable154010%_)
               (_%descriptor154022%_ _%descriptor154011%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab154032%_
                 (##unchecked-structure-ref _%prototable154014%_ '2 '#f '#f))
                (_%index154033%_
                 (##unchecked-structure-ref _%descriptor154022%_ '3 '#f '#f)))
            (if (##fx< _%index154033%_ (vector-length _%tab154032%_))
                (vector-ref _%tab154032%_ _%index154033%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable153989%_ _%descriptor153990%_)
        (let* ((_%prototable153993%_ _%prototable153989%_)
               (_%descriptor154001%_ _%descriptor153990%_))
          (____prototype-table-get
           _%prototable153993%_
           _%descriptor154001%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable153935%_ _%descriptor153936%_ _%prototype153937%_)
        (let* ((_%prototable153940%_ _%prototable153935%_)
               (_%descriptor153948%_ _%descriptor153936%_))
          (declare (not safe))
          (let ((_%lock153958%_
                 (##unchecked-structure-ref _%prototable153940%_ '1 '#f '#f))
                (_%index153959%_
                 (##unchecked-structure-ref _%descriptor153948%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again153963%_ ((_%spin153966%_ '0))
                (if (##fx= (##vector-cas! _%lock153958%_ '0 '1 '0) '0)
                    (##vector-set! _%lock153958%_ '1 (current-thread))
                    (if (##fx< _%spin153966%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again153963%_ (##fx+ _%spin153966%_ '1)))
                        (let ((_%owner153972%_
                               (##vector-ref _%lock153958%_ '1)))
                          (if (eq? _%owner153972%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner153972%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again153963%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r153984%_
                   (let ((_%tab153978%_
                          (##unchecked-structure-ref
                           _%prototable153940%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index153959%_ (vector-length _%tab153978%_))
                         (vector-set!
                          _%tab153978%_
                          _%index153959%_
                          _%prototype153937%_)
                         (let ((_%new-size153980%_ __next-interface-index))
                           (if (##fx< _%index153959%_ _%new-size153980%_)
                               (let ((_%new-tab153982%_
                                      (##make-vector _%new-size153980%_ '#f)))
                                 (subvector-move!
                                  _%tab153978%_
                                  '0
                                  (vector-length _%tab153978%_)
                                  _%new-tab153982%_
                                  '0)
                                 (vector-set!
                                  _%new-tab153982%_
                                  _%index153959%_
                                  _%prototype153937%_)
                                 (##unchecked-structure-set!
                                  _%prototable153940%_
                                  _%new-tab153982%_
                                  '2
                                  '#f
                                  '#f))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor153948%_
                                      'index:
                                      _%index153959%_
                                      'max-index:
                                      _%new-size153980%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock153958%_ '1 '#f)
                  (##vector-cas! _%lock153958%_ '0 '0 '1)))
              _%$r153984%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable153913%_ _%descriptor153914%_ _%prototype153915%_)
        (let* ((_%prototable153918%_ _%prototable153913%_)
               (_%descriptor153926%_ _%descriptor153914%_))
          (____prototype-table-set!
           _%prototable153918%_
           _%descriptor153926%_
           _%prototype153915%_))))
    (define interface-subclass?
      (lambda (_%klass153906%_)
        (let ((_%$%super153907153909%_
               (let () (declare (not safe)) (##type-super _%klass153906%_))))
          (if _%$%super153907153909%_
              (let ((_%super153911%_ _%$%super153907153909%_))
                (eq? (let () (declare (not safe)) (##type-id _%super153911%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass153898%_)
        (let ((_%$e153900%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass153898%_ '13 '#f '#f))))
          (if _%$e153900%_
              _%$e153900%_
              (let ((_%tab153904%_
                     (let ((__obj154554
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj154554)
                       __obj154554)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass153898%_
                   _%tab153904%_
                   '13
                   '#f
                   '#f))
                _%tab153904%_)))))
    (define create-prototype
      (lambda (_%descriptor153581%_ _%klass153582%_ _%obj-klass153583%_)
        (let ((_%method-table153601%_
               (let ((_%klass153585%_ _%obj-klass153583%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass153585%_ 'class))
                     (let ((_%klass153590%_ _%klass153585%_))
                       (declare (not safe))
                       (__specialize-class _%klass153590%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass153585%_)
                       '#!void)))))
          (let _%loop153604%_ ((_%rest153607%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor153581%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count153609%_ '0)
                               (_%methods153611%_ '()))
            (let* ((_%$%rest153613153621%_ _%rest153607%_)
                   (_%$%else153615153748%_
                    (lambda ()
                      (let ((_%prototype153664%_
                             (let* ((_%klass153629%_ _%klass153582%_)
                                    (_%k153632%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count153609%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass153629%_
                                      'class))
                                   (let* ((_%klass153637%_ _%klass153629%_)
                                          (_%k153654%_ _%k153632%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass153637%_
                                      _%k153654%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass153629%_)
                                     '#!void)))))
                        (let _%loop153667%_ ((_%rest153669%_ _%methods153611%_)
                                             (_%off153670%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count153609%_ '1))))
                          (let* ((_%$%rest153672153680%_ _%rest153669%_)
                                 (_%$%else153674153729%_
                                  (lambda ()
                                    (let ((_%tab153688%_
                                           (class-type-interface-table
                                            _%obj-klass153583%_)))
                                      (let* ((_%prototable153691%_
                                              _%tab153688%_)
                                             (_%descriptor153694%_
                                              _%descriptor153581%_)
                                             (_%prototype153697%_
                                              _%prototype153664%_)
                                             (_%prototable153701%_
                                              _%prototable153691%_)
                                             (_%descriptor153718%_
                                              _%descriptor153694%_))
                                        (____prototype-table-set!
                                         _%prototable153701%_
                                         _%descriptor153718%_
                                         _%prototype153697%_))
                                      _%prototype153664%_)))
                                 (_%$%K153676153736%_
                                  (lambda (_%rest153732%_ _%method153733%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype153664%_
                                       _%method153733%_
                                       _%off153670%_
                                       _%klass153582%_
                                       '#f))
                                    (_%loop153667%_
                                     _%rest153732%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off153670%_ '1))))))
                            (if (pair? _%$%rest153672153680%_)
                                (let ((_%$%hd153677153739%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest153672153680%_)))
                                      (_%$%tl153678153741%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest153672153680%_))))
                                  (let* ((_%method153744%_
                                          _%$%hd153677153739%_)
                                         (_%rest153746%_ _%$%tl153678153741%_))
                                    (_%$%K153676153736%_
                                     _%rest153746%_
                                     _%method153744%_)))
                                (_%$%else153674153729%_)))))))
                   (_%$%K153617153886%_
                    (lambda (_%rest153751%_ _%method-spec153752%_)
                      (if (pair? _%method-spec153752%_)
                          (let _%loop-inner153756%_ ((_%methods-rest153759%_
                                                      _%method-spec153752%_))
                            (let* ((_%$%methods-rest153761153769%_
                                    _%methods-rest153759%_)
                                   (_%$%else153763153819%_
                                    (lambda ()
                                      (let ((_%tab153777%_
                                             (class-type-interface-table
                                              _%obj-klass153583%_)))
                                        (let* ((_%prototable153779%_
                                                _%tab153777%_)
                                               (_%descriptor153782%_
                                                _%descriptor153581%_)
                                               (_%prototype153785%_ '#!void)
                                               (_%prototable153789%_
                                                _%prototable153779%_)
                                               (_%descriptor153808%_
                                                _%descriptor153782%_))
                                          (____prototype-table-set!
                                           _%prototable153789%_
                                           _%descriptor153808%_
                                           _%prototype153785%_))
                                        (let ()
                                          (raise-cast-error
                                           'create-prototype
                                           '"cannot create interface prototype; missing method"
                                           'interface:
                                           _%descriptor153581%_
                                           'class:
                                           _%obj-klass153583%_
                                           'method:
                                           _%method-spec153752%_)
                                          '#!void))))
                                   (_%$%K153765153832%_
                                    (lambda (_%methods-rest153822%_
                                             _%method-name153823%_)
                                      (let ((_%$e153826%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table153601%_
                                                _%method-name153823%_
                                                '#f))))
                                        (if _%$e153826%_
                                            (_%loop153604%_
                                             _%rest153751%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count153609%_ '1))
                                             (cons _%$e153826%_
                                                   _%methods153611%_))
                                            (_%loop-inner153756%_
                                             _%methods-rest153822%_))))))
                              (if (pair? _%$%methods-rest153761153769%_)
                                  (let ((_%$%hd153766153835%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest153761153769%_)))
                                        (_%$%tl153767153837%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest153761153769%_))))
                                    (let* ((_%method-name153840%_
                                            _%$%hd153766153835%_)
                                           (_%methods-rest153842%_
                                            _%$%tl153767153837%_))
                                      (_%$%K153765153832%_
                                       _%methods-rest153842%_
                                       _%method-name153840%_)))
                                  (_%$%else153763153819%_))))
                          (let ((_%$e153844%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table153601%_
                                    _%method-spec153752%_
                                    '#f))))
                            (if _%$e153844%_
                                (_%loop153604%_
                                 _%rest153751%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count153609%_ '1))
                                 (cons _%$e153844%_ _%methods153611%_))
                                (let ((_%tab153850%_
                                       (class-type-interface-table
                                        _%obj-klass153583%_)))
                                  (let* ((_%prototable153852%_ _%tab153850%_)
                                         (_%descriptor153855%_
                                          _%descriptor153581%_)
                                         (_%prototype153858%_ '#!void)
                                         (_%prototable153862%_
                                          _%prototable153852%_)
                                         (_%descriptor153875%_
                                          _%descriptor153855%_))
                                    (____prototype-table-set!
                                     _%prototable153862%_
                                     _%descriptor153875%_
                                     _%prototype153858%_))
                                  (let ()
                                    (raise-cast-error
                                     'create-prototype
                                     '"cannot create interface prototype; missing method"
                                     'interface:
                                     _%descriptor153581%_
                                     'class:
                                     _%obj-klass153583%_
                                     'method:
                                     _%method-spec153752%_)
                                    '#!void))))))))
              (if (pair? _%$%rest153613153621%_)
                  (let ((_%$%hd153618153889%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest153613153621%_)))
                        (_%$%tl153619153891%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest153613153621%_))))
                    (let* ((_%method-spec153894%_ _%$%hd153618153889%_)
                           (_%rest153896%_ _%$%tl153619153891%_))
                      (_%$%K153617153886%_
                       _%rest153896%_
                       _%method-spec153894%_)))
                  (_%$%else153615153748%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor153264%_ _%klass153265%_ _%obj-klass153266%_)
        (let ((_%method-table153284%_
               (let ((_%klass153268%_ _%obj-klass153266%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass153268%_ 'class))
                     (let ((_%klass153273%_ _%klass153268%_))
                       (declare (not safe))
                       (__specialize-class _%klass153273%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass153268%_)
                       '#!void)))))
          (let _%loop153287%_ ((_%rest153290%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor153264%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count153292%_ '0)
                               (_%methods153294%_ '()))
            (let* ((_%$%rest153296153304%_ _%rest153290%_)
                   (_%$%else153298153431%_
                    (lambda ()
                      (let ((_%prototype153347%_
                             (let* ((_%klass153312%_ _%klass153265%_)
                                    (_%k153315%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count153292%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass153312%_
                                      'class))
                                   (let* ((_%klass153320%_ _%klass153312%_)
                                          (_%k153337%_ _%k153315%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass153320%_
                                      _%k153337%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass153312%_)
                                     '#!void)))))
                        (let _%loop153350%_ ((_%rest153352%_ _%methods153294%_)
                                             (_%off153353%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count153292%_ '1))))
                          (let* ((_%$%rest153355153363%_ _%rest153352%_)
                                 (_%$%else153357153412%_
                                  (lambda ()
                                    (let ((_%tab153371%_
                                           (class-type-interface-table
                                            _%obj-klass153266%_)))
                                      (let* ((_%prototable153374%_
                                              _%tab153371%_)
                                             (_%descriptor153377%_
                                              _%descriptor153264%_)
                                             (_%prototype153380%_
                                              _%prototype153347%_)
                                             (_%prototable153384%_
                                              _%prototable153374%_)
                                             (_%descriptor153401%_
                                              _%descriptor153377%_))
                                        (____prototype-table-set!
                                         _%prototable153384%_
                                         _%descriptor153401%_
                                         _%prototype153380%_))
                                      _%prototype153347%_)))
                                 (_%$%K153359153419%_
                                  (lambda (_%rest153415%_ _%method153416%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype153347%_
                                       _%method153416%_
                                       _%off153353%_
                                       _%klass153265%_
                                       '#f))
                                    (_%loop153350%_
                                     _%rest153415%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off153353%_ '1))))))
                            (if (pair? _%$%rest153355153363%_)
                                (let ((_%$%hd153360153422%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest153355153363%_)))
                                      (_%$%tl153361153424%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest153355153363%_))))
                                  (let* ((_%method153427%_
                                          _%$%hd153360153422%_)
                                         (_%rest153429%_ _%$%tl153361153424%_))
                                    (_%$%K153359153419%_
                                     _%rest153429%_
                                     _%method153427%_)))
                                (_%$%else153357153412%_)))))))
                   (_%$%K153300153569%_
                    (lambda (_%rest153434%_ _%method-spec153435%_)
                      (if (pair? _%method-spec153435%_)
                          (let _%loop-inner153439%_ ((_%methods-rest153442%_
                                                      _%method-spec153435%_))
                            (let* ((_%$%methods-rest153444153452%_
                                    _%methods-rest153442%_)
                                   (_%$%else153446153502%_
                                    (lambda ()
                                      (let ((_%tab153460%_
                                             (class-type-interface-table
                                              _%obj-klass153266%_)))
                                        (let* ((_%prototable153462%_
                                                _%tab153460%_)
                                               (_%descriptor153465%_
                                                _%descriptor153264%_)
                                               (_%prototype153468%_ '#!void)
                                               (_%prototable153472%_
                                                _%prototable153462%_)
                                               (_%descriptor153491%_
                                                _%descriptor153465%_))
                                          (____prototype-table-set!
                                           _%prototable153472%_
                                           _%descriptor153491%_
                                           _%prototype153468%_))
                                        '#f)))
                                   (_%$%K153448153515%_
                                    (lambda (_%methods-rest153505%_
                                             _%method-name153506%_)
                                      (let ((_%$e153509%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table153284%_
                                                _%method-name153506%_
                                                '#f))))
                                        (if _%$e153509%_
                                            (_%loop153287%_
                                             _%rest153434%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count153292%_ '1))
                                             (cons _%$e153509%_
                                                   _%methods153294%_))
                                            (_%loop-inner153439%_
                                             _%methods-rest153505%_))))))
                              (if (pair? _%$%methods-rest153444153452%_)
                                  (let ((_%$%hd153449153518%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest153444153452%_)))
                                        (_%$%tl153450153520%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest153444153452%_))))
                                    (let* ((_%method-name153523%_
                                            _%$%hd153449153518%_)
                                           (_%methods-rest153525%_
                                            _%$%tl153450153520%_))
                                      (_%$%K153448153515%_
                                       _%methods-rest153525%_
                                       _%method-name153523%_)))
                                  (_%$%else153446153502%_))))
                          (let ((_%$e153527%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table153284%_
                                    _%method-spec153435%_
                                    '#f))))
                            (if _%$e153527%_
                                (_%loop153287%_
                                 _%rest153434%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count153292%_ '1))
                                 (cons _%$e153527%_ _%methods153294%_))
                                (let ((_%tab153533%_
                                       (class-type-interface-table
                                        _%obj-klass153266%_)))
                                  (let* ((_%prototable153535%_ _%tab153533%_)
                                         (_%descriptor153538%_
                                          _%descriptor153264%_)
                                         (_%prototype153541%_ '#!void)
                                         (_%prototable153545%_
                                          _%prototable153535%_)
                                         (_%descriptor153558%_
                                          _%descriptor153538%_))
                                    (____prototype-table-set!
                                     _%prototable153545%_
                                     _%descriptor153558%_
                                     _%prototype153541%_))
                                  '#f)))))))
              (if (pair? _%$%rest153296153304%_)
                  (let ((_%$%hd153301153572%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest153296153304%_)))
                        (_%$%tl153302153574%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest153296153304%_))))
                    (let* ((_%method-spec153577%_ _%$%hd153301153572%_)
                           (_%rest153579%_ _%$%tl153302153574%_))
                      (_%$%K153300153569%_
                       _%rest153579%_
                       _%method-spec153577%_)))
                  (_%$%else153298153431%_)))))))
    (define cast
      (lambda (_%descriptor153098%_ _%obj153100%_)
        (let* ((_%klass153103%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor153098%_ '1 '#f '#f)))
               (_%klass-id153106%_
                (let () (declare (not safe)) (##type-id _%klass153103%_))))
          (let _%loop153110%_ ((_%obj153113%_ _%obj153100%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass153116%_
                    (let () (declare (not safe)) (class-of _%obj153113%_)))
                   (_%obj-klass-id153119%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass153116%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id153106%_ _%obj-klass-id153119%_))
                  _%obj153113%_
                  (if (interface-subclass? _%obj-klass153116%_)
                      (let _%loop-interface153127%_ ((_%iface-klass153130%_
                                                      _%obj-klass153116%_))
                        (if _%iface-klass153130%_
                            (let* ((_%tab153133%_
                                    (class-type-interface-table
                                     _%iface-klass153130%_))
                                   (_%$e153175%_
                                    (let* ((_%prototable153136%_ _%tab153133%_)
                                           (_%descriptor153139%_
                                            _%descriptor153098%_)
                                           (_%prototable153143%_
                                            _%prototable153136%_)
                                           (_%descriptor153166%_
                                            _%descriptor153139%_))
                                      (____prototype-table-get
                                       _%prototable153143%_
                                       _%descriptor153166%_))))
                              (if _%$e153175%_
                                  (if (eq? _%$e153175%_ '#!void)
                                      (_%loop-interface153127%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass153130%_)))
                                      (if _%$e153175%_
                                          (let ((_%instance153185%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e153175%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance153185%_
                                               _%obj153113%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance153185%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor153098%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj153113%_)))
                                            '#!void)))
                                  (let ((_%$e153187%_
                                         (try-create-prototype
                                          _%descriptor153098%_
                                          _%klass153103%_
                                          _%iface-klass153130%_)))
                                    (if _%$e153187%_
                                        (if _%$e153187%_
                                            (let ((_%instance153196%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e153187%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance153196%_
                                                 _%obj153113%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance153196%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor153098%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj153113%_)))
                                              '#!void))
                                        (_%loop-interface153127%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass153130%_)))))))
                            (_%loop153110%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj153113%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab153200%_
                              (class-type-interface-table _%obj-klass153116%_))
                             (_%$e153229%_
                              (let* ((_%prototable153202%_ _%tab153200%_)
                                     (_%descriptor153205%_
                                      _%descriptor153098%_)
                                     (_%prototable153209%_
                                      _%prototable153202%_)
                                     (_%descriptor153220%_
                                      _%descriptor153205%_))
                                (____prototype-table-get
                                 _%prototable153209%_
                                 _%descriptor153220%_))))
                        (if _%$e153229%_
                            (if (eq? _%$e153229%_ '#!void)
                                (let ()
                                  (raise-cast-error
                                   'cast
                                   '"cannot create interface prototype"
                                   'interface:
                                   _%descriptor153098%_
                                   'class:
                                   (let ()
                                     (declare (not safe))
                                     (class-of _%obj153113%_)))
                                  '#!void)
                                (if _%$e153229%_
                                    (let ((_%instance153244%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e153229%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance153244%_
                                         _%obj153113%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance153244%_)
                                    (begin
                                      (raise-cast-error
                                       'cast
                                       '"cannot create interface prototype"
                                       'interface:
                                       _%descriptor153098%_
                                       'class:
                                       (let ()
                                         (declare (not safe))
                                         (class-of _%obj153113%_)))
                                      '#!void)))
                            (let ((_%$e153246%_
                                   (create-prototype
                                    _%descriptor153098%_
                                    _%klass153103%_
                                    _%obj-klass153116%_)))
                              (if _%$e153246%_
                                  (if _%$e153246%_
                                      (let ((_%instance153255%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e153246%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance153255%_
                                           _%obj153113%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance153255%_)
                                      (begin
                                        (raise-cast-error
                                         'cast
                                         '"cannot create interface prototype"
                                         'interface:
                                         _%descriptor153098%_
                                         'class:
                                         (let ()
                                           (declare (not safe))
                                           (class-of _%obj153113%_)))
                                        '#!void))
                                  (let ()
                                    (raise-cast-error
                                     'cast
                                     '"cannot create interface prototype"
                                     'interface:
                                     _%descriptor153098%_
                                     'class:
                                     (let ()
                                       (declare (not safe))
                                       (class-of _%obj153113%_)))
                                    '#!void))))))))))))
    (define try-cast
      (lambda (_%descriptor152932%_ _%obj152934%_)
        (let* ((_%klass152937%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor152932%_ '1 '#f '#f)))
               (_%klass-id152940%_
                (let () (declare (not safe)) (##type-id _%klass152937%_))))
          (let _%loop152944%_ ((_%obj152947%_ _%obj152934%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass152950%_
                    (let () (declare (not safe)) (class-of _%obj152947%_)))
                   (_%obj-klass-id152953%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass152950%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id152940%_ _%obj-klass-id152953%_))
                  _%obj152947%_
                  (if (interface-subclass? _%obj-klass152950%_)
                      (let _%loop-interface152961%_ ((_%iface-klass152964%_
                                                      _%obj-klass152950%_))
                        (if _%iface-klass152964%_
                            (let* ((_%tab152967%_
                                    (class-type-interface-table
                                     _%iface-klass152964%_))
                                   (_%$e153009%_
                                    (let* ((_%prototable152970%_ _%tab152967%_)
                                           (_%descriptor152973%_
                                            _%descriptor152932%_)
                                           (_%prototable152977%_
                                            _%prototable152970%_)
                                           (_%descriptor153000%_
                                            _%descriptor152973%_))
                                      (____prototype-table-get
                                       _%prototable152977%_
                                       _%descriptor153000%_))))
                              (if _%$e153009%_
                                  (if (eq? _%$e153009%_ '#!void)
                                      (_%loop-interface152961%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass152964%_)))
                                      (if _%$e153009%_
                                          (let ((_%instance153019%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e153009%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance153019%_
                                               _%obj152947%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance153019%_)
                                          '#f))
                                  (let ((_%$e153021%_
                                         (try-create-prototype
                                          _%descriptor152932%_
                                          _%klass152937%_
                                          _%iface-klass152964%_)))
                                    (if _%$e153021%_
                                        (if _%$e153021%_
                                            (let ((_%instance153030%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e153021%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance153030%_
                                                 _%obj152947%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance153030%_)
                                            '#f)
                                        (_%loop-interface152961%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass152964%_)))))))
                            (_%loop152944%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj152947%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab153034%_
                              (class-type-interface-table _%obj-klass152950%_))
                             (_%$e153063%_
                              (let* ((_%prototable153036%_ _%tab153034%_)
                                     (_%descriptor153039%_
                                      _%descriptor152932%_)
                                     (_%prototable153043%_
                                      _%prototable153036%_)
                                     (_%descriptor153054%_
                                      _%descriptor153039%_))
                                (____prototype-table-get
                                 _%prototable153043%_
                                 _%descriptor153054%_))))
                        (if _%$e153063%_
                            (if (eq? _%$e153063%_ '#!void)
                                '#f
                                (if _%$e153063%_
                                    (let ((_%instance153078%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e153063%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance153078%_
                                         _%obj152947%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance153078%_)
                                    '#f))
                            (let ((_%$e153080%_
                                   (try-create-prototype
                                    _%descriptor152932%_
                                    _%klass152937%_
                                    _%obj-klass152950%_)))
                              (if _%$e153080%_
                                  (if _%$e153080%_
                                      (let ((_%instance153089%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e153080%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance153089%_
                                           _%obj152947%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance153089%_)
                                      '#f)
                                  '#f)))))))))))
    (define satisfies?
      (lambda (_%descriptor152778%_ _%obj152780%_)
        (let* ((_%klass152783%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor152778%_ '1 '#f '#f)))
               (_%klass-id152786%_
                (let () (declare (not safe)) (##type-id _%klass152783%_))))
          (let _%loop152790%_ ((_%obj152793%_ _%obj152780%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass152796%_
                    (let () (declare (not safe)) (class-of _%obj152793%_)))
                   (_%obj-klass-id152799%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass152796%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id152786%_ _%obj-klass-id152799%_))
                  '#t
                  (if (interface-subclass? _%obj-klass152796%_)
                      (let _%loop-interface152807%_ ((_%iface-klass152810%_
                                                      _%obj-klass152796%_))
                        (if _%iface-klass152810%_
                            (let* ((_%tab152813%_
                                    (class-type-interface-table
                                     _%iface-klass152810%_))
                                   (_%$e152855%_
                                    (let* ((_%prototable152816%_ _%tab152813%_)
                                           (_%descriptor152819%_
                                            _%descriptor152778%_)
                                           (_%prototable152823%_
                                            _%prototable152816%_)
                                           (_%descriptor152846%_
                                            _%descriptor152819%_))
                                      (____prototype-table-get
                                       _%prototable152823%_
                                       _%descriptor152846%_))))
                              (if _%$e152855%_
                                  (if (eq? _%$e152855%_ '#!void)
                                      (_%loop-interface152807%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass152810%_)))
                                      (if _%$e152855%_ '#t '#f))
                                  (let ((_%$e152865%_
                                         (try-create-prototype
                                          _%descriptor152778%_
                                          _%klass152783%_
                                          _%iface-klass152810%_)))
                                    (if _%$e152865%_
                                        (if _%$e152865%_ '#t '#f)
                                        (_%loop-interface152807%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass152810%_)))))))
                            (_%loop152790%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj152793%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab152876%_
                              (class-type-interface-table _%obj-klass152796%_))
                             (_%$e152905%_
                              (let* ((_%prototable152878%_ _%tab152876%_)
                                     (_%descriptor152881%_
                                      _%descriptor152778%_)
                                     (_%prototable152885%_
                                      _%prototable152878%_)
                                     (_%descriptor152896%_
                                      _%descriptor152881%_))
                                (____prototype-table-get
                                 _%prototable152885%_
                                 _%descriptor152896%_))))
                        (if _%$e152905%_
                            (if (eq? _%$e152905%_ '#!void)
                                '#f
                                (if _%$e152905%_ '#t '#f))
                            (let ((_%$e152918%_
                                   (try-create-prototype
                                    _%descriptor152778%_
                                    _%klass152783%_
                                    _%obj-klass152796%_)))
                              (if _%$e152918%_
                                  (if _%$e152918%_ '#t '#f)
                                  '#f)))))))))))
    (define __with-prototype
      (lambda (_%descriptor152622%_
               _%obj152623%_
               _%with-prototype+receiver152624%_
               _%with-receiver152625%_)
        (let* ((_%descriptor152628%_ _%descriptor152622%_)
               (_%with-prototype+receiver152636%_
                _%with-prototype+receiver152624%_)
               (_%with-receiver152644%_ _%with-receiver152625%_)
               (_%klass152653%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor152628%_ '1 '#f '#f)))
               (_%klass-id152656%_
                (let () (declare (not safe)) (##type-id _%klass152653%_))))
          (let _%loop152660%_ ((_%obj152663%_ _%obj152623%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass152666%_
                    (let () (declare (not safe)) (class-of _%obj152663%_)))
                   (_%obj-klass-id152669%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass152666%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id152656%_ _%obj-klass-id152669%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver152644%_ _%obj152663%_))
                  (if (interface-subclass? _%obj-klass152666%_)
                      (let _%loop-interface152675%_ ((_%iface-klass152678%_
                                                      _%obj-klass152666%_))
                        (if _%iface-klass152678%_
                            (let* ((_%tab152681%_
                                    (class-type-interface-table
                                     _%iface-klass152678%_))
                                   (_%$e152725%_
                                    (let* ((_%prototable152684%_ _%tab152681%_)
                                           (_%descriptor152687%_
                                            _%descriptor152628%_)
                                           (_%prototable152691%_
                                            _%prototable152684%_)
                                           (_%descriptor152716%_
                                            _%descriptor152687%_))
                                      (____prototype-table-get
                                       _%prototable152691%_
                                       _%descriptor152716%_))))
                              (if _%$e152725%_
                                  (if (eq? _%$e152725%_ '#!void)
                                      (_%loop-interface152675%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass152678%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%with-prototype+receiver152636%_
                                         _%descriptor152628%_
                                         _%$e152725%_
                                         _%obj152663%_)))
                                  (let ((_%$e152731%_
                                         (try-create-prototype
                                          _%descriptor152628%_
                                          _%klass152653%_
                                          _%iface-klass152678%_)))
                                    (if _%$e152731%_
                                        (let ()
                                          (declare (not safe))
                                          (_%with-prototype+receiver152636%_
                                           _%descriptor152628%_
                                           _%$e152731%_
                                           _%obj152663%_))
                                        (_%loop-interface152675%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass152678%_)))))))
                            (_%loop152660%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj152663%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab152738%_
                              (class-type-interface-table _%obj-klass152666%_))
                             (_%$e152767%_
                              (let* ((_%prototable152740%_ _%tab152738%_)
                                     (_%descriptor152743%_
                                      _%descriptor152628%_)
                                     (_%prototable152747%_
                                      _%prototable152740%_)
                                     (_%descriptor152758%_
                                      _%descriptor152743%_))
                                (____prototype-table-get
                                 _%prototable152747%_
                                 _%descriptor152758%_))))
                        (if _%$e152767%_
                            (if (eq? _%$e152767%_ '#!void)
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver152636%_
                                   _%descriptor152628%_
                                   '#f
                                   _%obj152663%_))
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver152636%_
                                   _%descriptor152628%_
                                   _%$e152767%_
                                   _%obj152663%_)))
                            (let ((_%$e152772%_
                                   (create-prototype
                                    _%descriptor152628%_
                                    _%klass152653%_
                                    _%obj-klass152666%_)))
                              (if _%$e152772%_
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver152636%_
                                     _%descriptor152628%_
                                     _%$e152772%_
                                     _%obj152663%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver152636%_
                                     _%descriptor152628%_
                                     '#f
                                     _%obj152663%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor152585%_
               _%obj152586%_
               _%with-prototype+receiver152587%_
               _%with-receiver152588%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor152585%_
               'interface-descriptor::t))
            (let ((_%descriptor152592%_ _%descriptor152585%_))
              (if (procedure? _%with-prototype+receiver152587%_)
                  (let ((_%with-prototype+receiver152602%_
                         _%with-prototype+receiver152587%_))
                    (if (procedure? _%with-receiver152588%_)
                        (let ((_%with-receiver152612%_
                               _%with-receiver152588%_))
                          (__with-prototype
                           _%descriptor152592%_
                           _%obj152586%_
                           _%with-prototype+receiver152602%_
                           _%with-receiver152612%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@236.9-236.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver152588%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@235.9-235.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver152587%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@234.23-234.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor152585%_)
              '#!void))))))
