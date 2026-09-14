(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/interface::timestamp 1789371525)
  (begin
    (define CastError::t
      (let ((__tmp154393 (list Error::t)))
        (declare (not safe))
        (make-class-type
         'CastError::t
         'CastError
         __tmp154393
         '()
         '()
         ':init!)))
    (define CastError?
      (let () (declare (not safe)) (__make-class-predicate CastError::t)))
    (define make-CastError
      (lambda _%$args154307%_
        (apply make-instance CastError::t _%$args154307%_)))
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
      (lambda (_%where154181%_ _%message154182%_ . _%irritants154183%_)
        (let ((__tmp154394
               (let ((__obj154388
                      (let ()
                        (declare (not safe))
                        (##structure CastError::t '#f '#f '#f '#f))))
                 (let ()
                   (declare (not safe))
                   (CastError:::init!
                    __obj154388
                    _%message154182%_
                    'where:
                    _%where154181%_
                    'irritants:
                    _%irritants154183%_))
                 __obj154388)))
          (declare (not safe))
          (raise __tmp154394))))
    (define interface-cast-error? CastError?)
    (define interface-instance::t
      (let ((__tmp154396 (list))
            (__tmp154395 (cons (cons 'struct: '#t) '((print: object)))))
        (declare (not safe))
        (make-class-type
         'interface-instance::t
         'interface-instance
         __tmp154396
         '(object)
         __tmp154395
         '#f)))
    (define interface-instance?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-instance::t)))
    (define make-interface-instance
      (lambda _%$args154178%_
        (apply make-instance interface-instance::t _%$args154178%_)))
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
      (let ((__tmp154398 (list))
            (__tmp154397
             (cons (cons 'struct: '#t)
                   (cons (cons 'final: '#t) '((print: type index))))))
        (declare (not safe))
        (make-class-type
         'interface-descriptor::t
         'interface-descriptor
         __tmp154398
         '(type methods index)
         __tmp154397
         ':init!)))
    (define interface-descriptor?
      (let ()
        (declare (not safe))
        (__make-class-predicate interface-descriptor::t)))
    (define make-interface-descriptor
      (lambda _%$args154175%_
        (apply make-instance interface-descriptor::t _%$args154175%_)))
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
          (let _%again154153%_ ((_%spin154156%_ '0))
            (if (let ((__tmp154399
                       (let ()
                         (declare (not safe))
                         (##vector-cas!
                          __next-interface-index-lock
                          '0
                          '1
                          '0))))
                  (declare (not safe))
                  (##fx= __tmp154399 '0))
                (let ((__tmp154400 (current-thread)))
                  (declare (not safe))
                  (##vector-set! __next-interface-index-lock '1 __tmp154400))
                (if (let () (declare (not safe)) (##fx< _%spin154156%_ '10))
                    (let ()
                      (let () (declare (not safe)) (##thread-yield!))
                      (_%again154153%_
                       (let ()
                         (declare (not safe))
                         (##fx+ _%spin154156%_ '1))))
                    (let ((_%owner154162%_
                           (let ()
                             (declare (not safe))
                             (##vector-ref __next-interface-index-lock '1))))
                      (if (eq? _%owner154162%_ (macro-current-thread))
                          (let ()
                            (declare (not safe))
                            (##thread-deadlock-action!))
                          (if (macro-thread-end-condvar _%owner154162%_)
                              (let ()
                                (let () (declare (not safe)) (##thread-yield!))
                                (_%again154153%_ '0))
                              (let ()
                                (declare (not safe))
                                (##thread-deadlock-action!)))))))))
        (let ((_%$r154170%_
               (let ((_%index154168%_ __next-interface-index))
                 (set! __next-interface-index
                       (let ()
                         (declare (not safe))
                         (##fx+ _%index154168%_ '1)))
                 _%index154168%_)))
          (let ()
            (declare (not interrupts-enabled))
            (begin
              (let ()
                (declare (not safe))
                (##vector-set! __next-interface-index-lock '1 '#f))
              (let ()
                (declare (not safe))
                (##vector-cas! __next-interface-index-lock '0 '0 '1))))
          _%$r154170%_)))
    (define interface-descriptor:::init!
      (lambda (_%self154134%_ _%type154135%_ _%methods154136%_)
        (let ((_%self154139%_ _%self154134%_))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self154139%_
             _%type154135%_
             '1
             '#f
             '#f))
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%self154139%_
             _%methods154136%_
             '2
             '#f
             '#f))
          (let ((__tmp154401 (__get-next-interface-index)))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self154139%_
             __tmp154401
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
      (let ((__tmp154403 (list))
            (__tmp154402
             (cons (cons 'struct: '#t) (cons (cons 'final: '#t) '()))))
        (declare (not safe))
        (make-class-type
         'prototype-table::t
         'prototype-table
         __tmp154403
         '(lock table)
         __tmp154402
         ':init!)))
    (define prototype-table?
      (let ()
        (declare (not safe))
        (__make-class-predicate prototype-table::t)))
    (define make-prototype-table
      (lambda _%$args154009%_
        (apply make-instance prototype-table::t _%$args154009%_)))
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
      (lambda (_%self153995%_)
        (let ((_%self153998%_ _%self153995%_))
          (let ((__tmp154404 (vector '0 '#f)))
            (declare (not safe))
            (##unchecked-structure-set! _%self153998%_ __tmp154404 '1 '#f '#f))
          (let ((__tmp154405
                 (let ()
                   (declare (not safe))
                   (##make-vector __next-interface-index '#f))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%self153998%_
             __tmp154405
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
      (lambda (_%prototable153848%_ _%descriptor153849%_)
        (let* ((_%prototable153852%_ _%prototable153848%_)
               (_%descriptor153860%_ _%descriptor153849%_))
          (declare (not safe) (not interrupts-enabled))
          (let ((_%tab153870%_
                 (##unchecked-structure-ref _%prototable153852%_ '2 '#f '#f))
                (_%index153871%_
                 (##unchecked-structure-ref _%descriptor153860%_ '3 '#f '#f)))
            (if (##fx< _%index153871%_ (vector-length _%tab153870%_))
                (vector-ref _%tab153870%_ _%index153871%_)
                '#f)))))
    (define __prototype-table-get
      (lambda (_%prototable153827%_ _%descriptor153828%_)
        (let* ((_%prototable153831%_ _%prototable153827%_)
               (_%descriptor153839%_ _%descriptor153828%_))
          (____prototype-table-get
           _%prototable153831%_
           _%descriptor153839%_))))
    (define ____prototype-table-set!
      (lambda (_%prototable153773%_ _%descriptor153774%_ _%prototype153775%_)
        (let* ((_%prototable153778%_ _%prototable153773%_)
               (_%descriptor153786%_ _%descriptor153774%_))
          (declare (not safe))
          (let ((_%lock153796%_
                 (##unchecked-structure-ref _%prototable153778%_ '1 '#f '#f))
                (_%index153797%_
                 (##unchecked-structure-ref _%descriptor153786%_ '3 '#f '#f)))
            (let ()
              (declare (not interrupts-enabled))
              (let _%again153801%_ ((_%spin153804%_ '0))
                (if (##fx= (##vector-cas! _%lock153796%_ '0 '1 '0) '0)
                    (##vector-set! _%lock153796%_ '1 (current-thread))
                    (if (##fx< _%spin153804%_ '10)
                        (let ()
                          (##thread-yield!)
                          (_%again153801%_ (##fx+ _%spin153804%_ '1)))
                        (let ((_%owner153810%_
                               (##vector-ref _%lock153796%_ '1)))
                          (if (eq? _%owner153810%_ (macro-current-thread))
                              (##thread-deadlock-action!)
                              (if (macro-thread-end-condvar _%owner153810%_)
                                  (let ()
                                    (##thread-yield!)
                                    (_%again153801%_ '0))
                                  (##thread-deadlock-action!))))))))
            (let ((_%$r153822%_
                   (let ((_%tab153816%_
                          (##unchecked-structure-ref
                           _%prototable153778%_
                           '2
                           '#f
                           '#f)))
                     (if (##fx< _%index153797%_ (vector-length _%tab153816%_))
                         (vector-set!
                          _%tab153816%_
                          _%index153797%_
                          _%prototype153775%_)
                         (let ((_%new-size153818%_ __next-interface-index))
                           (if (##fx< _%index153797%_ _%new-size153818%_)
                               (let ((_%new-tab153820%_
                                      (##make-vector _%new-size153818%_ '#f)))
                                 (subvector-move!
                                  _%tab153816%_
                                  '0
                                  (vector-length _%tab153816%_)
                                  _%new-tab153820%_
                                  '0)
                                 (vector-set!
                                  _%new-tab153820%_
                                  _%index153797%_
                                  _%prototype153775%_)
                                 (##unchecked-structure-set!
                                  _%prototable153778%_
                                  _%new-tab153820%_
                                  '2
                                  '#f
                                  '#f))
                               (error '"interface index out of range"
                                      'interface:
                                      _%descriptor153786%_
                                      'index:
                                      _%index153797%_
                                      'max-index:
                                      _%new-size153818%_)))))))
              (let ()
                (declare (not interrupts-enabled))
                (begin
                  (##vector-set! _%lock153796%_ '1 '#f)
                  (##vector-cas! _%lock153796%_ '0 '0 '1)))
              _%$r153822%_)))))
    (define __prototype-table-set!
      (lambda (_%prototable153751%_ _%descriptor153752%_ _%prototype153753%_)
        (let* ((_%prototable153756%_ _%prototable153751%_)
               (_%descriptor153764%_ _%descriptor153752%_))
          (____prototype-table-set!
           _%prototable153756%_
           _%descriptor153764%_
           _%prototype153753%_))))
    (define interface-subclass?
      (lambda (_%klass153744%_)
        (let ((_%$%super153745153747%_
               (let () (declare (not safe)) (##type-super _%klass153744%_))))
          (if _%$%super153745153747%_
              (let ((_%super153749%_ _%$%super153745153747%_))
                (eq? (let () (declare (not safe)) (##type-id _%super153749%_))
                     (let ()
                       (declare (not safe))
                       (##type-id interface-instance::t))))
              '#f))))
    (define class-type-interface-table
      (lambda (_%klass153736%_)
        (let ((_%$e153738%_
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%klass153736%_ '13 '#f '#f))))
          (if _%$e153738%_
              _%$e153738%_
              (let ((_%tab153742%_
                     (let ((__obj154392
                            (let ()
                              (declare (not safe))
                              (##structure prototype-table::t '#f '#f))))
                       (prototype-table:::init! __obj154392)
                       __obj154392)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass153736%_
                   _%tab153742%_
                   '13
                   '#f
                   '#f))
                _%tab153742%_)))))
    (define create-prototype
      (lambda (_%descriptor153419%_ _%klass153420%_ _%obj-klass153421%_)
        (let ((_%method-table153439%_
               (let ((_%klass153423%_ _%obj-klass153421%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass153423%_ 'class))
                     (let ((_%klass153428%_ _%klass153423%_))
                       (declare (not safe))
                       (__specialize-class _%klass153428%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass153423%_)
                       '#!void)))))
          (let _%loop153442%_ ((_%rest153445%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor153419%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count153447%_ '0)
                               (_%methods153449%_ '()))
            (let* ((_%$%rest153451153459%_ _%rest153445%_)
                   (_%$%else153453153586%_
                    (lambda ()
                      (let ((_%prototype153502%_
                             (let* ((_%klass153467%_ _%klass153420%_)
                                    (_%k153470%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count153447%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass153467%_
                                      'class))
                                   (let* ((_%klass153475%_ _%klass153467%_)
                                          (_%k153492%_ _%k153470%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass153475%_
                                      _%k153492%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass153467%_)
                                     '#!void)))))
                        (let _%loop153505%_ ((_%rest153507%_ _%methods153449%_)
                                             (_%off153508%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count153447%_ '1))))
                          (let* ((_%$%rest153510153518%_ _%rest153507%_)
                                 (_%$%else153512153567%_
                                  (lambda ()
                                    (let ((_%tab153526%_
                                           (class-type-interface-table
                                            _%obj-klass153421%_)))
                                      (let* ((_%prototable153529%_
                                              _%tab153526%_)
                                             (_%descriptor153532%_
                                              _%descriptor153419%_)
                                             (_%prototype153535%_
                                              _%prototype153502%_)
                                             (_%prototable153539%_
                                              _%prototable153529%_)
                                             (_%descriptor153556%_
                                              _%descriptor153532%_))
                                        (____prototype-table-set!
                                         _%prototable153539%_
                                         _%descriptor153556%_
                                         _%prototype153535%_))
                                      _%prototype153502%_)))
                                 (_%$%K153514153574%_
                                  (lambda (_%rest153570%_ _%method153571%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype153502%_
                                       _%method153571%_
                                       _%off153508%_
                                       _%klass153420%_
                                       '#f))
                                    (_%loop153505%_
                                     _%rest153570%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off153508%_ '1))))))
                            (if (pair? _%$%rest153510153518%_)
                                (let ((_%$%hd153515153577%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest153510153518%_)))
                                      (_%$%tl153516153579%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest153510153518%_))))
                                  (let* ((_%method153582%_
                                          _%$%hd153515153577%_)
                                         (_%rest153584%_ _%$%tl153516153579%_))
                                    (_%$%K153514153574%_
                                     _%rest153584%_
                                     _%method153582%_)))
                                (_%$%else153512153567%_)))))))
                   (_%$%K153455153724%_
                    (lambda (_%rest153589%_ _%method-spec153590%_)
                      (if (pair? _%method-spec153590%_)
                          (let _%loop-inner153594%_ ((_%methods-rest153597%_
                                                      _%method-spec153590%_))
                            (let* ((_%$%methods-rest153599153607%_
                                    _%methods-rest153597%_)
                                   (_%$%else153601153657%_
                                    (lambda ()
                                      (let ((_%tab153615%_
                                             (class-type-interface-table
                                              _%obj-klass153421%_)))
                                        (let* ((_%prototable153617%_
                                                _%tab153615%_)
                                               (_%descriptor153620%_
                                                _%descriptor153419%_)
                                               (_%prototype153623%_ '#!void)
                                               (_%prototable153627%_
                                                _%prototable153617%_)
                                               (_%descriptor153646%_
                                                _%descriptor153620%_))
                                          (____prototype-table-set!
                                           _%prototable153627%_
                                           _%descriptor153646%_
                                           _%prototype153623%_))
                                        (let ()
                                          (raise-cast-error
                                           'create-prototype
                                           '"cannot create interface prototype; missing method"
                                           'interface:
                                           _%descriptor153419%_
                                           'class:
                                           _%obj-klass153421%_
                                           'method:
                                           _%method-spec153590%_)
                                          '#!void))))
                                   (_%$%K153603153670%_
                                    (lambda (_%methods-rest153660%_
                                             _%method-name153661%_)
                                      (let ((_%$e153664%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table153439%_
                                                _%method-name153661%_
                                                '#f))))
                                        (if _%$e153664%_
                                            (_%loop153442%_
                                             _%rest153589%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count153447%_ '1))
                                             (cons _%$e153664%_
                                                   _%methods153449%_))
                                            (_%loop-inner153594%_
                                             _%methods-rest153660%_))))))
                              (if (pair? _%$%methods-rest153599153607%_)
                                  (let ((_%$%hd153604153673%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest153599153607%_)))
                                        (_%$%tl153605153675%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest153599153607%_))))
                                    (let* ((_%method-name153678%_
                                            _%$%hd153604153673%_)
                                           (_%methods-rest153680%_
                                            _%$%tl153605153675%_))
                                      (_%$%K153603153670%_
                                       _%methods-rest153680%_
                                       _%method-name153678%_)))
                                  (_%$%else153601153657%_))))
                          (let ((_%$e153682%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table153439%_
                                    _%method-spec153590%_
                                    '#f))))
                            (if _%$e153682%_
                                (_%loop153442%_
                                 _%rest153589%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count153447%_ '1))
                                 (cons _%$e153682%_ _%methods153449%_))
                                (let ((_%tab153688%_
                                       (class-type-interface-table
                                        _%obj-klass153421%_)))
                                  (let* ((_%prototable153690%_ _%tab153688%_)
                                         (_%descriptor153693%_
                                          _%descriptor153419%_)
                                         (_%prototype153696%_ '#!void)
                                         (_%prototable153700%_
                                          _%prototable153690%_)
                                         (_%descriptor153713%_
                                          _%descriptor153693%_))
                                    (____prototype-table-set!
                                     _%prototable153700%_
                                     _%descriptor153713%_
                                     _%prototype153696%_))
                                  (let ()
                                    (raise-cast-error
                                     'create-prototype
                                     '"cannot create interface prototype; missing method"
                                     'interface:
                                     _%descriptor153419%_
                                     'class:
                                     _%obj-klass153421%_
                                     'method:
                                     _%method-spec153590%_)
                                    '#!void))))))))
              (if (pair? _%$%rest153451153459%_)
                  (let ((_%$%hd153456153727%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest153451153459%_)))
                        (_%$%tl153457153729%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest153451153459%_))))
                    (let* ((_%method-spec153732%_ _%$%hd153456153727%_)
                           (_%rest153734%_ _%$%tl153457153729%_))
                      (_%$%K153455153724%_
                       _%rest153734%_
                       _%method-spec153732%_)))
                  (_%$%else153453153586%_)))))))
    (define try-create-prototype
      (lambda (_%descriptor153102%_ _%klass153103%_ _%obj-klass153104%_)
        (let ((_%method-table153122%_
               (let ((_%klass153106%_ _%obj-klass153104%_))
                 (if (let ()
                       (declare (not safe))
                       (##structure-instance-of? _%klass153106%_ 'class))
                     (let ((_%klass153111%_ _%klass153106%_))
                       (declare (not safe))
                       (__specialize-class _%klass153111%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/interface
                        'contract:
                        'class-type?
                        'value:
                        _%klass153106%_)
                       '#!void)))))
          (let _%loop153125%_ ((_%rest153128%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%descriptor153102%_
                                   '2
                                   '#f
                                   '#f)))
                               (_%count153130%_ '0)
                               (_%methods153132%_ '()))
            (let* ((_%$%rest153134153142%_ _%rest153128%_)
                   (_%$%else153136153269%_
                    (lambda ()
                      (let ((_%prototype153185%_
                             (let* ((_%klass153150%_ _%klass153103%_)
                                    (_%k153153%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%count153130%_ '2))))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass153150%_
                                      'class))
                                   (let* ((_%klass153158%_ _%klass153150%_)
                                          (_%k153175%_ _%k153153%_))
                                     (declare (not safe))
                                     (__make-object
                                      _%klass153158%_
                                      _%k153175%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/interface
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass153150%_)
                                     '#!void)))))
                        (let _%loop153188%_ ((_%rest153190%_ _%methods153132%_)
                                             (_%off153191%_
                                              (let ()
                                                (declare (not safe))
                                                (##fx+ _%count153130%_ '1))))
                          (let* ((_%$%rest153193153201%_ _%rest153190%_)
                                 (_%$%else153195153250%_
                                  (lambda ()
                                    (let ((_%tab153209%_
                                           (class-type-interface-table
                                            _%obj-klass153104%_)))
                                      (let* ((_%prototable153212%_
                                              _%tab153209%_)
                                             (_%descriptor153215%_
                                              _%descriptor153102%_)
                                             (_%prototype153218%_
                                              _%prototype153185%_)
                                             (_%prototable153222%_
                                              _%prototable153212%_)
                                             (_%descriptor153239%_
                                              _%descriptor153215%_))
                                        (____prototype-table-set!
                                         _%prototable153222%_
                                         _%descriptor153239%_
                                         _%prototype153218%_))
                                      _%prototype153185%_)))
                                 (_%$%K153197153257%_
                                  (lambda (_%rest153253%_ _%method153254%_)
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-set!
                                       _%prototype153185%_
                                       _%method153254%_
                                       _%off153191%_
                                       _%klass153103%_
                                       '#f))
                                    (_%loop153188%_
                                     _%rest153253%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx- _%off153191%_ '1))))))
                            (if (pair? _%$%rest153193153201%_)
                                (let ((_%$%hd153198153260%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%rest153193153201%_)))
                                      (_%$%tl153199153262%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest153193153201%_))))
                                  (let* ((_%method153265%_
                                          _%$%hd153198153260%_)
                                         (_%rest153267%_ _%$%tl153199153262%_))
                                    (_%$%K153197153257%_
                                     _%rest153267%_
                                     _%method153265%_)))
                                (_%$%else153195153250%_)))))))
                   (_%$%K153138153407%_
                    (lambda (_%rest153272%_ _%method-spec153273%_)
                      (if (pair? _%method-spec153273%_)
                          (let _%loop-inner153277%_ ((_%methods-rest153280%_
                                                      _%method-spec153273%_))
                            (let* ((_%$%methods-rest153282153290%_
                                    _%methods-rest153280%_)
                                   (_%$%else153284153340%_
                                    (lambda ()
                                      (let ((_%tab153298%_
                                             (class-type-interface-table
                                              _%obj-klass153104%_)))
                                        (let* ((_%prototable153300%_
                                                _%tab153298%_)
                                               (_%descriptor153303%_
                                                _%descriptor153102%_)
                                               (_%prototype153306%_ '#!void)
                                               (_%prototable153310%_
                                                _%prototable153300%_)
                                               (_%descriptor153329%_
                                                _%descriptor153303%_))
                                          (____prototype-table-set!
                                           _%prototable153310%_
                                           _%descriptor153329%_
                                           _%prototype153306%_))
                                        '#f)))
                                   (_%$%K153286153353%_
                                    (lambda (_%methods-rest153343%_
                                             _%method-name153344%_)
                                      (let ((_%$e153347%_
                                             (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%method-table153122%_
                                                _%method-name153344%_
                                                '#f))))
                                        (if _%$e153347%_
                                            (_%loop153125%_
                                             _%rest153272%_
                                             (let ()
                                               (declare (not safe))
                                               (##fx+ _%count153130%_ '1))
                                             (cons _%$e153347%_
                                                   _%methods153132%_))
                                            (_%loop-inner153277%_
                                             _%methods-rest153343%_))))))
                              (if (pair? _%$%methods-rest153282153290%_)
                                  (let ((_%$%hd153287153356%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%methods-rest153282153290%_)))
                                        (_%$%tl153288153358%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%methods-rest153282153290%_))))
                                    (let* ((_%method-name153361%_
                                            _%$%hd153287153356%_)
                                           (_%methods-rest153363%_
                                            _%$%tl153288153358%_))
                                      (_%$%K153286153353%_
                                       _%methods-rest153363%_
                                       _%method-name153361%_)))
                                  (_%$%else153284153340%_))))
                          (let ((_%$e153365%_
                                 (let ()
                                   (declare (not safe))
                                   (symbolic-table-ref
                                    _%method-table153122%_
                                    _%method-spec153273%_
                                    '#f))))
                            (if _%$e153365%_
                                (_%loop153125%_
                                 _%rest153272%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%count153130%_ '1))
                                 (cons _%$e153365%_ _%methods153132%_))
                                (let ((_%tab153371%_
                                       (class-type-interface-table
                                        _%obj-klass153104%_)))
                                  (let* ((_%prototable153373%_ _%tab153371%_)
                                         (_%descriptor153376%_
                                          _%descriptor153102%_)
                                         (_%prototype153379%_ '#!void)
                                         (_%prototable153383%_
                                          _%prototable153373%_)
                                         (_%descriptor153396%_
                                          _%descriptor153376%_))
                                    (____prototype-table-set!
                                     _%prototable153383%_
                                     _%descriptor153396%_
                                     _%prototype153379%_))
                                  '#f)))))))
              (if (pair? _%$%rest153134153142%_)
                  (let ((_%$%hd153139153410%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest153134153142%_)))
                        (_%$%tl153140153412%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest153134153142%_))))
                    (let* ((_%method-spec153415%_ _%$%hd153139153410%_)
                           (_%rest153417%_ _%$%tl153140153412%_))
                      (_%$%K153138153407%_
                       _%rest153417%_
                       _%method-spec153415%_)))
                  (_%$%else153136153269%_)))))))
    (define cast
      (lambda (_%descriptor152936%_ _%obj152938%_)
        (let* ((_%klass152941%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor152936%_ '1 '#f '#f)))
               (_%klass-id152944%_
                (let () (declare (not safe)) (##type-id _%klass152941%_))))
          (let _%loop152948%_ ((_%obj152951%_ _%obj152938%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass152954%_
                    (let () (declare (not safe)) (class-of _%obj152951%_)))
                   (_%obj-klass-id152957%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass152954%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id152944%_ _%obj-klass-id152957%_))
                  _%obj152951%_
                  (if (interface-subclass? _%obj-klass152954%_)
                      (let _%loop-interface152965%_ ((_%iface-klass152968%_
                                                      _%obj-klass152954%_))
                        (if _%iface-klass152968%_
                            (let* ((_%tab152971%_
                                    (class-type-interface-table
                                     _%iface-klass152968%_))
                                   (_%$e153013%_
                                    (let* ((_%prototable152974%_ _%tab152971%_)
                                           (_%descriptor152977%_
                                            _%descriptor152936%_)
                                           (_%prototable152981%_
                                            _%prototable152974%_)
                                           (_%descriptor153004%_
                                            _%descriptor152977%_))
                                      (____prototype-table-get
                                       _%prototable152981%_
                                       _%descriptor153004%_))))
                              (if _%$e153013%_
                                  (if (eq? _%$e153013%_ '#!void)
                                      (_%loop-interface152965%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass152968%_)))
                                      (if _%$e153013%_
                                          (let ((_%instance153023%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e153013%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance153023%_
                                               _%obj152951%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance153023%_)
                                          (begin
                                            (raise-cast-error
                                             'cast
                                             '"cannot create interface prototype"
                                             'interface:
                                             _%descriptor152936%_
                                             'class:
                                             (let ()
                                               (declare (not safe))
                                               (class-of _%obj152951%_)))
                                            '#!void)))
                                  (let ((_%$e153025%_
                                         (try-create-prototype
                                          _%descriptor152936%_
                                          _%klass152941%_
                                          _%iface-klass152968%_)))
                                    (if _%$e153025%_
                                        (if _%$e153025%_
                                            (let ((_%instance153034%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e153025%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance153034%_
                                                 _%obj152951%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance153034%_)
                                            (begin
                                              (raise-cast-error
                                               'cast
                                               '"cannot create interface prototype"
                                               'interface:
                                               _%descriptor152936%_
                                               'class:
                                               (let ()
                                                 (declare (not safe))
                                                 (class-of _%obj152951%_)))
                                              '#!void))
                                        (_%loop-interface152965%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass152968%_)))))))
                            (_%loop152948%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj152951%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab153038%_
                              (class-type-interface-table _%obj-klass152954%_))
                             (_%$e153067%_
                              (let* ((_%prototable153040%_ _%tab153038%_)
                                     (_%descriptor153043%_
                                      _%descriptor152936%_)
                                     (_%prototable153047%_
                                      _%prototable153040%_)
                                     (_%descriptor153058%_
                                      _%descriptor153043%_))
                                (____prototype-table-get
                                 _%prototable153047%_
                                 _%descriptor153058%_))))
                        (if _%$e153067%_
                            (if (eq? _%$e153067%_ '#!void)
                                (let ()
                                  (raise-cast-error
                                   'cast
                                   '"cannot create interface prototype"
                                   'interface:
                                   _%descriptor152936%_
                                   'class:
                                   (let ()
                                     (declare (not safe))
                                     (class-of _%obj152951%_)))
                                  '#!void)
                                (if _%$e153067%_
                                    (let ((_%instance153082%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e153067%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance153082%_
                                         _%obj152951%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance153082%_)
                                    (begin
                                      (raise-cast-error
                                       'cast
                                       '"cannot create interface prototype"
                                       'interface:
                                       _%descriptor152936%_
                                       'class:
                                       (let ()
                                         (declare (not safe))
                                         (class-of _%obj152951%_)))
                                      '#!void)))
                            (let ((_%$e153084%_
                                   (create-prototype
                                    _%descriptor152936%_
                                    _%klass152941%_
                                    _%obj-klass152954%_)))
                              (if _%$e153084%_
                                  (if _%$e153084%_
                                      (let ((_%instance153093%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e153084%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance153093%_
                                           _%obj152951%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance153093%_)
                                      (begin
                                        (raise-cast-error
                                         'cast
                                         '"cannot create interface prototype"
                                         'interface:
                                         _%descriptor152936%_
                                         'class:
                                         (let ()
                                           (declare (not safe))
                                           (class-of _%obj152951%_)))
                                        '#!void))
                                  (let ()
                                    (raise-cast-error
                                     'cast
                                     '"cannot create interface prototype"
                                     'interface:
                                     _%descriptor152936%_
                                     'class:
                                     (let ()
                                       (declare (not safe))
                                       (class-of _%obj152951%_)))
                                    '#!void))))))))))))
    (define try-cast
      (lambda (_%descriptor152770%_ _%obj152772%_)
        (let* ((_%klass152775%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor152770%_ '1 '#f '#f)))
               (_%klass-id152778%_
                (let () (declare (not safe)) (##type-id _%klass152775%_))))
          (let _%loop152782%_ ((_%obj152785%_ _%obj152772%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass152788%_
                    (let () (declare (not safe)) (class-of _%obj152785%_)))
                   (_%obj-klass-id152791%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass152788%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id152778%_ _%obj-klass-id152791%_))
                  _%obj152785%_
                  (if (interface-subclass? _%obj-klass152788%_)
                      (let _%loop-interface152799%_ ((_%iface-klass152802%_
                                                      _%obj-klass152788%_))
                        (if _%iface-klass152802%_
                            (let* ((_%tab152805%_
                                    (class-type-interface-table
                                     _%iface-klass152802%_))
                                   (_%$e152847%_
                                    (let* ((_%prototable152808%_ _%tab152805%_)
                                           (_%descriptor152811%_
                                            _%descriptor152770%_)
                                           (_%prototable152815%_
                                            _%prototable152808%_)
                                           (_%descriptor152838%_
                                            _%descriptor152811%_))
                                      (____prototype-table-get
                                       _%prototable152815%_
                                       _%descriptor152838%_))))
                              (if _%$e152847%_
                                  (if (eq? _%$e152847%_ '#!void)
                                      (_%loop-interface152799%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass152802%_)))
                                      (if _%$e152847%_
                                          (let ((_%instance152857%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##structure-copy
                                                    _%$e152847%_))))
                                            (let ()
                                              (declare (not safe))
                                              (##unchecked-structure-set!
                                               _%instance152857%_
                                               _%obj152785%_
                                               '1
                                               '#f
                                               'cast))
                                            _%instance152857%_)
                                          '#f))
                                  (let ((_%$e152859%_
                                         (try-create-prototype
                                          _%descriptor152770%_
                                          _%klass152775%_
                                          _%iface-klass152802%_)))
                                    (if _%$e152859%_
                                        (if _%$e152859%_
                                            (let ((_%instance152868%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##structure-copy
                                                      _%$e152859%_))))
                                              (let ()
                                                (declare (not safe))
                                                (##unchecked-structure-set!
                                                 _%instance152868%_
                                                 _%obj152785%_
                                                 '1
                                                 '#f
                                                 'cast))
                                              _%instance152868%_)
                                            '#f)
                                        (_%loop-interface152799%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass152802%_)))))))
                            (_%loop152782%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj152785%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab152872%_
                              (class-type-interface-table _%obj-klass152788%_))
                             (_%$e152901%_
                              (let* ((_%prototable152874%_ _%tab152872%_)
                                     (_%descriptor152877%_
                                      _%descriptor152770%_)
                                     (_%prototable152881%_
                                      _%prototable152874%_)
                                     (_%descriptor152892%_
                                      _%descriptor152877%_))
                                (____prototype-table-get
                                 _%prototable152881%_
                                 _%descriptor152892%_))))
                        (if _%$e152901%_
                            (if (eq? _%$e152901%_ '#!void)
                                '#f
                                (if _%$e152901%_
                                    (let ((_%instance152916%_
                                           (let ()
                                             (declare (not safe))
                                             (##structure-copy _%$e152901%_))))
                                      (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-set!
                                         _%instance152916%_
                                         _%obj152785%_
                                         '1
                                         '#f
                                         'cast))
                                      _%instance152916%_)
                                    '#f))
                            (let ((_%$e152918%_
                                   (try-create-prototype
                                    _%descriptor152770%_
                                    _%klass152775%_
                                    _%obj-klass152788%_)))
                              (if _%$e152918%_
                                  (if _%$e152918%_
                                      (let ((_%instance152927%_
                                             (let ()
                                               (declare (not safe))
                                               (##structure-copy
                                                _%$e152918%_))))
                                        (let ()
                                          (declare (not safe))
                                          (##unchecked-structure-set!
                                           _%instance152927%_
                                           _%obj152785%_
                                           '1
                                           '#f
                                           'cast))
                                        _%instance152927%_)
                                      '#f)
                                  '#f)))))))))))
    (define satisfies?
      (lambda (_%descriptor152616%_ _%obj152618%_)
        (let* ((_%klass152621%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor152616%_ '1 '#f '#f)))
               (_%klass-id152624%_
                (let () (declare (not safe)) (##type-id _%klass152621%_))))
          (let _%loop152628%_ ((_%obj152631%_ _%obj152618%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass152634%_
                    (let () (declare (not safe)) (class-of _%obj152631%_)))
                   (_%obj-klass-id152637%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass152634%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id152624%_ _%obj-klass-id152637%_))
                  '#t
                  (if (interface-subclass? _%obj-klass152634%_)
                      (let _%loop-interface152645%_ ((_%iface-klass152648%_
                                                      _%obj-klass152634%_))
                        (if _%iface-klass152648%_
                            (let* ((_%tab152651%_
                                    (class-type-interface-table
                                     _%iface-klass152648%_))
                                   (_%$e152693%_
                                    (let* ((_%prototable152654%_ _%tab152651%_)
                                           (_%descriptor152657%_
                                            _%descriptor152616%_)
                                           (_%prototable152661%_
                                            _%prototable152654%_)
                                           (_%descriptor152684%_
                                            _%descriptor152657%_))
                                      (____prototype-table-get
                                       _%prototable152661%_
                                       _%descriptor152684%_))))
                              (if _%$e152693%_
                                  (if (eq? _%$e152693%_ '#!void)
                                      (_%loop-interface152645%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass152648%_)))
                                      (if _%$e152693%_ '#t '#f))
                                  (let ((_%$e152703%_
                                         (try-create-prototype
                                          _%descriptor152616%_
                                          _%klass152621%_
                                          _%iface-klass152648%_)))
                                    (if _%$e152703%_
                                        (if _%$e152703%_ '#t '#f)
                                        (_%loop-interface152645%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass152648%_)))))))
                            (_%loop152628%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj152631%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab152714%_
                              (class-type-interface-table _%obj-klass152634%_))
                             (_%$e152743%_
                              (let* ((_%prototable152716%_ _%tab152714%_)
                                     (_%descriptor152719%_
                                      _%descriptor152616%_)
                                     (_%prototable152723%_
                                      _%prototable152716%_)
                                     (_%descriptor152734%_
                                      _%descriptor152719%_))
                                (____prototype-table-get
                                 _%prototable152723%_
                                 _%descriptor152734%_))))
                        (if _%$e152743%_
                            (if (eq? _%$e152743%_ '#!void)
                                '#f
                                (if _%$e152743%_ '#t '#f))
                            (let ((_%$e152756%_
                                   (try-create-prototype
                                    _%descriptor152616%_
                                    _%klass152621%_
                                    _%obj-klass152634%_)))
                              (if _%$e152756%_
                                  (if _%$e152756%_ '#t '#f)
                                  '#f)))))))))))
    (define __with-prototype
      (lambda (_%descriptor152460%_
               _%obj152461%_
               _%with-prototype+receiver152462%_
               _%with-receiver152463%_)
        (let* ((_%descriptor152466%_ _%descriptor152460%_)
               (_%with-prototype+receiver152474%_
                _%with-prototype+receiver152462%_)
               (_%with-receiver152482%_ _%with-receiver152463%_)
               (_%klass152491%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%descriptor152466%_ '1 '#f '#f)))
               (_%klass-id152494%_
                (let () (declare (not safe)) (##type-id _%klass152491%_))))
          (let _%loop152498%_ ((_%obj152501%_ _%obj152461%_))
            (declare (not interrupts-enabled))
            (let* ((_%obj-klass152504%_
                    (let () (declare (not safe)) (class-of _%obj152501%_)))
                   (_%obj-klass-id152507%_
                    (let ()
                      (declare (not safe))
                      (##type-id _%obj-klass152504%_))))
              (if (let ()
                    (declare (not safe))
                    (##eq? _%klass-id152494%_ _%obj-klass-id152507%_))
                  (let ()
                    (declare (not safe))
                    (_%with-receiver152482%_ _%obj152501%_))
                  (if (interface-subclass? _%obj-klass152504%_)
                      (let _%loop-interface152513%_ ((_%iface-klass152516%_
                                                      _%obj-klass152504%_))
                        (if _%iface-klass152516%_
                            (let* ((_%tab152519%_
                                    (class-type-interface-table
                                     _%iface-klass152516%_))
                                   (_%$e152563%_
                                    (let* ((_%prototable152522%_ _%tab152519%_)
                                           (_%descriptor152525%_
                                            _%descriptor152466%_)
                                           (_%prototable152529%_
                                            _%prototable152522%_)
                                           (_%descriptor152554%_
                                            _%descriptor152525%_))
                                      (____prototype-table-get
                                       _%prototable152529%_
                                       _%descriptor152554%_))))
                              (if _%$e152563%_
                                  (if (eq? _%$e152563%_ '#!void)
                                      (_%loop-interface152513%_
                                       (let ()
                                         (declare (not safe))
                                         (##type-super _%iface-klass152516%_)))
                                      (let ()
                                        (declare (not safe))
                                        (_%with-prototype+receiver152474%_
                                         _%descriptor152466%_
                                         _%$e152563%_
                                         _%obj152501%_)))
                                  (let ((_%$e152569%_
                                         (try-create-prototype
                                          _%descriptor152466%_
                                          _%klass152491%_
                                          _%iface-klass152516%_)))
                                    (if _%$e152569%_
                                        (let ()
                                          (declare (not safe))
                                          (_%with-prototype+receiver152474%_
                                           _%descriptor152466%_
                                           _%$e152569%_
                                           _%obj152501%_))
                                        (_%loop-interface152513%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-super
                                            _%iface-klass152516%_)))))))
                            (_%loop152498%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%obj152501%_
                                '1
                                '#f
                                '#f)))))
                      (let* ((_%tab152576%_
                              (class-type-interface-table _%obj-klass152504%_))
                             (_%$e152605%_
                              (let* ((_%prototable152578%_ _%tab152576%_)
                                     (_%descriptor152581%_
                                      _%descriptor152466%_)
                                     (_%prototable152585%_
                                      _%prototable152578%_)
                                     (_%descriptor152596%_
                                      _%descriptor152581%_))
                                (____prototype-table-get
                                 _%prototable152585%_
                                 _%descriptor152596%_))))
                        (if _%$e152605%_
                            (if (eq? _%$e152605%_ '#!void)
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver152474%_
                                   _%descriptor152466%_
                                   '#f
                                   _%obj152501%_))
                                (let ()
                                  (declare (not safe))
                                  (_%with-prototype+receiver152474%_
                                   _%descriptor152466%_
                                   _%$e152605%_
                                   _%obj152501%_)))
                            (let ((_%$e152610%_
                                   (create-prototype
                                    _%descriptor152466%_
                                    _%klass152491%_
                                    _%obj-klass152504%_)))
                              (if _%$e152610%_
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver152474%_
                                     _%descriptor152466%_
                                     _%$e152610%_
                                     _%obj152501%_))
                                  (let ()
                                    (declare (not safe))
                                    (_%with-prototype+receiver152474%_
                                     _%descriptor152466%_
                                     '#f
                                     _%obj152501%_)))))))))))))
    (define with-prototype
      (lambda (_%descriptor152423%_
               _%obj152424%_
               _%with-prototype+receiver152425%_
               _%with-receiver152426%_)
        (if (let ()
              (declare (not safe))
              (##structure-direct-instance-of?
               _%descriptor152423%_
               'interface-descriptor::t))
            (let ((_%descriptor152430%_ _%descriptor152423%_))
              (if (procedure? _%with-prototype+receiver152425%_)
                  (let ((_%with-prototype+receiver152440%_
                         _%with-prototype+receiver152425%_))
                    (if (procedure? _%with-receiver152426%_)
                        (let ((_%with-receiver152450%_
                               _%with-receiver152426%_))
                          (__with-prototype
                           _%descriptor152430%_
                           _%obj152424%_
                           _%with-prototype+receiver152440%_
                           _%with-receiver152450%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/interface.ss\"@236.9-236.22"
                           'contract:
                           'procedure?
                           'value:
                           _%with-receiver152426%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/interface.ss\"@235.9-235.32"
                     'contract:
                     'procedure?
                     'value:
                     _%with-prototype+receiver152425%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/interface.ss\"@234.23-234.33"
               'contract:
               'interface-descriptor?
               'value:
               _%descriptor152423%_)
              '#!void))))))
