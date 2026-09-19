(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1789839222)
  (begin
    (define type-flag-opaque '1)
    (define type-flag-extensible '2)
    (define type-flag-macros '4)
    (define type-flag-concrete '8)
    (define type-flag-id '16)
    (define class-type-flag-struct '1024)
    (define class-type-flag-sealed '2048)
    (define class-type-flag-metaclass '4096)
    (define class-type-flag-system '8192)
    (define class-type-flag-acyclic '16384)
    (define t::t
      (let ((_%flags145490%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties145491%_ '((direct-slots:) (system: . #t)))
            (_%slot-table145492%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags145490%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table145492%_
           _%properties145491%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots145447%_
              '(id name
                   flags
                   super
                   fields
                   precedence-list
                   slot-vector
                   slot-table
                   properties
                   constructor
                   methods
                   specializer
                   interface))
             (_%slot-vector145449%_ (list->vector (cons '#f _%slots145447%_)))
             (_%slot-table145475%_
              (let ((_%slot-table145451%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp148448
                       (lambda (_%slot145453%_ _%field145454%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table145451%_
                            _%slot145453%_
                            _%field145454%_))
                         (let ((__tmp148449
                                (let ((_%sym145456%_ _%slot145453%_))
                                  (if (symbol? _%sym145456%_)
                                      (let ((_%sym145461%_ _%sym145456%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym145461%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym145456%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table145451%_
                            __tmp148449
                            _%field145454%_))))
                      (__tmp148446
                       (let ((__tmp148447
                              (let ()
                                (declare (not safe))
                                (##length _%slots145447%_))))
                         (declare (not safe))
                         (##iota __tmp148447 '1))))
                  (declare (not safe))
                  (##for-each __tmp148448 _%slots145447%_ __tmp148446))
                _%slot-table145451%_))
             (_%flags145477%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields145483%_
              (list->vector
               (let ((__tmp148450
                      (map (lambda (_%$%g145478145480%_)
                             (list _%$%g145478145480%_ '5 '#f))
                           (drop _%slots145447%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp148450))))
             (_%properties145485%_
              (cons (cons 'direct-slots: _%slots145447%_) '((struct: . #t))))
             (_%t145487%_
              (let ((__tmp148451 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags145477%_
                 ##type-type
                 _%fields145483%_
                 __tmp148451
                 _%slot-vector145449%_
                 _%slot-table145475%_
                 _%properties145485%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t145487%_ _%t145487%_))
        _%t145487%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags145443%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties145444%_ '((direct-slots:) (system: . #t)))
            (_%slot-table145445%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp148452 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags145443%_
           '#f
           '#()
           __tmp148452
           '#(#f)
           _%slot-table145445%_
           _%properties145444%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass145431%_)
        (let ((_%klass145434%_ _%klass145431%_))
          (declare (not safe))
          (##structure-type _%klass145434%_))))
    (define class-type
      (lambda (_%klass145417%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass145417%_ 'class))
            (let ((_%klass145421%_ _%klass145417%_))
              (__class-type _%klass145421%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass145417%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj145415%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj145415%_ 'class))))
    (define __class-type=?
      (lambda (_%x145394%_ _%y145395%_)
        (let* ((_%x145398%_ _%x145394%_) (_%y145406%_ _%y145395%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x145398%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y145406%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x145369%_ _%y145370%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x145369%_ 'class))
            (let ((_%x145374%_ _%x145369%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y145370%_ 'class))
                  (let ((_%y145384%_ _%y145370%_))
                    (__class-type=? _%x145374%_ _%y145384%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y145370%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x145369%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type145357%_)
        (let* ((_%type145360%_ _%type145357%_)
               (__tmp148453
                (let ((__tmp148454
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type145360%_))))
                  (declare (not safe))
                  (##fxand __tmp148454 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp148453 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type145343%_)
        (if (let () (declare (not safe)) (##type? _%type145343%_))
            (let ((_%type145347%_ _%type145343%_))
              (__type-opaque? _%type145347%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type145343%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass145331%_)
        (let* ((_%klass145334%_ _%klass145331%_)
               (__tmp148455
                (let ((__tmp148456
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass145334%_))))
                  (declare (not safe))
                  (##fxand __tmp148456 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp148455 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass145317%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass145317%_ 'class))
            (let ((_%klass145321%_ _%klass145317%_))
              (__class-type-opaque? _%klass145321%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass145317%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type145305%_)
        (let* ((_%type145308%_ _%type145305%_)
               (__tmp148457
                (let ((__tmp148458
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type145308%_))))
                  (declare (not safe))
                  (##fxand __tmp148458 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp148457 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type145291%_)
        (if (let () (declare (not safe)) (##type? _%type145291%_))
            (let ((_%type145295%_ _%type145291%_))
              (__type-extensible? _%type145295%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type145291%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type145279%_)
        (let* ((_%type145282%_ _%type145279%_)
               (__tmp148459
                (let ((__tmp148460
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type145282%_))))
                  (declare (not safe))
                  (##fxand __tmp148460 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp148459 '0))))
    (define class-type-final?
      (lambda (_%type145265%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145265%_ 'class))
            (let ((_%type145269%_ _%type145265%_))
              (__class-type-final? _%type145269%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type145265%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass145253%_)
        (let* ((_%klass145256%_ _%klass145253%_)
               (__tmp148461
                (let ((__tmp148462
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass145256%_))))
                  (declare (not safe))
                  (##fxand __tmp148462 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp148461 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass145239%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass145239%_ 'class))
            (let ((_%klass145243%_ _%klass145239%_))
              (__class-type-struct? _%klass145243%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass145239%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass145227%_)
        (let* ((_%klass145230%_ _%klass145227%_)
               (__tmp148463
                (let ((__tmp148464
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass145230%_))))
                  (declare (not safe))
                  (##fxand __tmp148464 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp148463 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass145213%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass145213%_ 'class))
            (let ((_%klass145217%_ _%klass145213%_))
              (__class-type-sealed? _%klass145217%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass145213%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass145201%_)
        (let* ((_%klass145204%_ _%klass145201%_)
               (__tmp148465
                (let ((__tmp148466
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass145204%_))))
                  (declare (not safe))
                  (##fxand __tmp148466 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp148465 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass145187%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass145187%_ 'class))
            (let ((_%klass145191%_ _%klass145187%_))
              (__class-type-metaclass? _%klass145191%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass145187%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass145175%_)
        (let* ((_%klass145178%_ _%klass145175%_)
               (__tmp148467
                (let ((__tmp148468
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass145178%_))))
                  (declare (not safe))
                  (##fxand __tmp148468 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp148467 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass145161%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass145161%_ 'class))
            (let ((_%klass145165%_ _%klass145161%_))
              (__class-type-system? _%klass145165%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass145161%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass145149%_)
        (let* ((_%klass145152%_ _%klass145149%_)
               (__tmp148469
                (let ((__tmp148470
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass145152%_))))
                  (declare (not safe))
                  (##fxand __tmp148470 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp148469 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass145135%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass145135%_ 'class))
            (let ((_%klass145139%_ _%klass145135%_))
              (__class-type-acyclic? _%klass145139%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass145135%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id144901%_
               _%type-name144902%_
               _%type-super144903%_
               _%precedence-list144904%_
               _%slot-vector144905%_
               _%properties144906%_
               _%constructor144907%_
               _%slot-table144908%_
               _%methods144909%_)
        (letrec ((_%make-props!144912%_
                  (lambda (_%key145080%_ _%transparent?145081%_)
                    (letrec* ((_%ht145083%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!145084%_
                               (lambda (_%ht145128%_ _%slots145129%_)
                                 (for-each
                                  (lambda (_%$%g145130145132%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht145128%_
                                       _%$%g145130145132%_
                                       '#t)))
                                  _%slots145129%_)))
                              (_%put-all-new-slots!145085%_
                               (lambda (_%ht145120%_)
                                 (let ((_%first145122%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-super144903%_
                                               'class))
                                            (let ((__tmp148471
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%type-super144903%_
                                                      '7
                                                      '#f
                                                      '#f))))
                                              (declare (not safe))
                                              (##vector-length __tmp148471))
                                            '1)))
                                   (let _%lp145124%_ ((_%i145126%_
                                                       _%first145122%_))
                                     (if (let ((__tmp148472
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-length
                                                   _%slot-vector144905%_))))
                                           (declare (not safe))
                                           (##fx< _%i145126%_ __tmp148472))
                                         (begin
                                           (let ((__tmp148473
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _%slot-vector144905%_
                                                     _%i145126%_))))
                                             (declare (not safe))
                                             (symbolic-table-set!
                                              _%ht145120%_
                                              __tmp148473
                                              '#t))
                                           (_%lp145124%_
                                            (let ()
                                              (declare (not safe))
                                              (##fx+ _%i145126%_ '1))))
                                         '#!void)))))
                              (_%put-alist!145086%_
                               (lambda (_%ht145111%_
                                        _%key145112%_
                                        _%alist145113%_)
                                 (let ((_%$e145115%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__%
                                           _%key145112%_
                                           _%alist145113%_
                                           _%transparent?145081%_))))
                                   (if _%$e145115%_
                                       (if (eq? _%$e145115%_ '#t)
                                           (_%put-all-new-slots!145085%_
                                            _%ht145111%_)
                                           (_%put-slots!145084%_
                                            _%ht145111%_
                                            _%$e145115%_))
                                       '#!void)))))
                      (_%put-alist!145086%_
                       _%ht145083%_
                       _%key145080%_
                       _%properties144906%_)
                      (for-each
                       (lambda (_%mixin145088%_)
                         (let ((_%alist145090%_
                                (##structure-ref
                                 _%mixin145088%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (eq? '#t
                                    (let ()
                                      (declare (not safe))
                                      (agetq__%
                                       _%key145080%_
                                       _%alist145090%_
                                       _%transparent?145081%_)))
                               (_%put-slots!145084%_
                                _%ht145083%_
                                (let ((_%klass145092%_ _%mixin145088%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass145092%_
                                         'class))
                                      (let ((_%klass145097%_ _%klass145092%_))
                                        (__class-type-slot-list
                                         _%klass145097%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass145092%_)
                                        '#!void))))
                               (_%put-alist!145086%_
                                _%ht145083%_
                                _%key145080%_
                                _%alist145090%_))))
                       _%precedence-list144904%_)
                      _%ht145083%_)))
                 (_%all-slots-property?144913%_
                  (lambda (_%key145075%_ _%transparent?145076%_)
                    (let ((_%entry145078%_
                           (assq _%key145075%_ _%properties144906%_)))
                      (if _%entry145078%_
                          (eq? (cdr _%entry145078%_) '#t)
                          _%transparent?145076%_)))))
          (let* ((_%transparent?144933%_
                  (let ((__tmp148474
                         (if _%type-super144903%_
                             (not (let ((_%type144915%_ _%type-super144903%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##type? _%type144915%_))
                                        (let ((_%type144920%_ _%type144915%_))
                                          (__type-opaque? _%type144920%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '##type?
                                           'value:
                                           _%type144915%_)
                                          '#!void))))
                             '#t)))
                    (declare (not safe))
                    (agetq__% 'transparent: _%properties144906%_ __tmp148474)))
                 (_%all-slots-printable?144935%_
                  (_%all-slots-property?144913%_
                   'print:
                   _%transparent?144933%_))
                 (_%printable144937%_
                  (if _%all-slots-printable?144935%_
                      '#f
                      (_%make-props!144912%_ 'print: _%transparent?144933%_)))
                 (_%all-slots-equalable?144939%_
                  (_%all-slots-property?144913%_
                   'equal:
                   _%transparent?144933%_))
                 (_%equalable144941%_
                  (if _%all-slots-equalable?144939%_
                      '#f
                      (_%make-props!144912%_ 'equal: _%transparent?144933%_)))
                 (_%first-new-field144943%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super144903%_ 'class))
                      (let ((__tmp148475
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super144903%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp148475))
                      '1))
                 (_%field-info-length144945%_
                  (let ((__tmp148476
                         (let ((__tmp148477
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector144905%_))))
                           (declare (not safe))
                           (##fx- __tmp148477 _%first-new-field144943%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp148476)))
                 (_%field-info144947%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length144945%_ '#f)))
                 (_%_144965%_
                  (let _%loop144949%_ ((_%i144951%_ _%first-new-field144943%_)
                                       (_%j144952%_ '0))
                    (if (let ()
                          (declare (not safe))
                          (##fx< _%j144952%_ _%field-info-length144945%_))
                        (let* ((_%slot144954%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref
                                   _%slot-vector144905%_
                                   _%i144951%_)))
                               (_%flags144962%_
                                (let ((__tmp148479
                                       (if (or _%all-slots-printable?144935%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%printable144937%_
                                                  _%slot144954%_
                                                  '#f)))
                                           '0
                                           '1))
                                      (__tmp148478
                                       (if (or _%all-slots-equalable?144939%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%equalable144941%_
                                                  _%slot144954%_
                                                  '#f)))
                                           '0
                                           '4)))
                                  (declare (not safe))
                                  (##fxior __tmp148479 __tmp148478))))
                          (vector-set!
                           _%field-info144947%_
                           _%j144952%_
                           _%slot144954%_)
                          (vector-set!
                           _%field-info144947%_
                           (let () (declare (not safe)) (##fx+ _%j144952%_ '1))
                           _%flags144962%_)
                          (_%loop144949%_
                           (let () (declare (not safe)) (##fx+ _%i144951%_ '1))
                           (let ()
                             (declare (not safe))
                             (##fx+ _%j144952%_ '3))))
                        '#!void)))
                 (_%struct?144967%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties144906%_)))
                 (_%final?144969%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties144906%_)))
                 (_%metaclass144976%_
                  (let ((_%$%metaclass144970144972%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties144906%_))))
                    (if _%$%metaclass144970144972%_
                        (let ((_%metaclass144974%_
                               _%$%metaclass144970144972%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass144974%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id144901%_
                                     'metaclass:
                                     _%metaclass144974%_))
                          _%metaclass144974%_)
                        '#f)))
                 (_%system?144978%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties144906%_)))
                 (_%opaque?144987%_
                  (let ((_%$e144984%_
                         (let ((_%eq-entry144980%_
                                (assq 'equal: _%properties144906%_)))
                           (if _%eq-entry144980%_
                               (not (cdr _%eq-entry144980%_))
                               (let ((_%tr-entry144982%_
                                      (assq 'transparent:
                                            _%properties144906%_)))
                                 (if _%tr-entry144982%_
                                     (not (cdr _%tr-entry144982%_))
                                     '#f))))))
                    (if _%$e144984%_
                        _%$e144984%_
                        (let ((__tmp148480
                               (let ()
                                 (declare (not safe))
                                 (agetq__%
                                  'direct-supers:
                                  _%properties144906%_
                                  '()))))
                          (declare (not safe))
                          (ormap__0 type-opaque? __tmp148480)))))
                 (_%acyclic?144989%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties144906%_)))
                 (_%type-flags144991%_
                  (let ((__tmp148486
                         (if _%final?144969%_ '0 type-flag-extensible))
                        (__tmp148485
                         (if _%opaque?144987%_ type-flag-opaque '0))
                        (__tmp148484
                         (if _%struct?144967%_ class-type-flag-struct '0))
                        (__tmp148483
                         (if _%metaclass144976%_ class-type-flag-metaclass '0))
                        (__tmp148482
                         (if _%system?144978%_ class-type-flag-system '0))
                        (__tmp148481
                         (if _%acyclic?144989%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp148486
                             __tmp148485
                             __tmp148484
                             __tmp148483
                             __tmp148482
                             __tmp148481)))
                 (_%precedence-list144999%_
                  (let ((_%$e144993%_ (memq t::t _%precedence-list144904%_)))
                    (if _%$e144993%_
                        (if (null? (cdr _%$e144993%_))
                            _%precedence-list144904%_
                            (error '"BUG: t::t is not last in the precedence list"
                                   'precedence-list:
                                   _%precedence-list144904%_))
                        (let ((__tmp148487 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list144904%_ __tmp148487)))))
                 (_%klass145040%_
                  (if _%metaclass144976%_
                      (let ((_%val145037%_
                             (let* ((_%klass145001%_ _%metaclass144976%_)
                                    (_%args145004%_
                                     (list _%type-id144901%_
                                           _%type-name144902%_
                                           _%type-flags144991%_
                                           _%type-super144903%_
                                           _%field-info144947%_
                                           _%precedence-list144999%_
                                           _%slot-vector144905%_
                                           _%slot-table144908%_
                                           _%properties144906%_
                                           _%constructor144907%_
                                           _%methods144909%_
                                           '#f
                                           '#f)))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass145001%_
                                      'class))
                                   (let ((_%klass145009%_ _%klass145001%_))
                                     (declare (not safe))
                                     (##apply __make-instance
                                              _%klass145009%_
                                              _%args145004%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass145001%_)
                                     '#!void)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%val145037%_ 'class))
                            _%val145037%_
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/mop.ss\"@326.16-329.37"
                               'contract:
                               '(class-type? val)
                               'value:
                               _%val145037%_)
                              '#!void)))
                      (let ()
                        (declare (not safe))
                        (##structure
                         class::t
                         _%type-id144901%_
                         _%type-name144902%_
                         _%type-flags144991%_
                         _%type-super144903%_
                         _%field-info144947%_
                         _%precedence-list144999%_
                         _%slot-vector144905%_
                         _%slot-table144908%_
                         _%properties144906%_
                         _%constructor144907%_
                         _%methods144909%_
                         '#f
                         '#f)))))
            (for-each
             (lambda (_%super145043%_)
               (let ()
                 (declare (not interrupts-enabled))
                 (let _%again145047%_ ((_%spin145050%_ '0))
                   (if (let ((__tmp148488
                              (let ()
                                (declare (not safe))
                                (##vector-cas!
                                 __class-type-properties-lock
                                 '0
                                 '1
                                 '0))))
                         (declare (not safe))
                         (##fx= __tmp148488 '0))
                       (let ((__tmp148489 (current-thread)))
                         (declare (not safe))
                         (##vector-set!
                          __class-type-properties-lock
                          '1
                          __tmp148489))
                       (if (let ()
                             (declare (not safe))
                             (##fx< _%spin145050%_ '10))
                           (let ()
                             (let () (declare (not safe)) (##thread-yield!))
                             (_%again145047%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%spin145050%_ '1))))
                           (let ((_%owner145056%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref
                                     __class-type-properties-lock
                                     '1))))
                             (if (eq? _%owner145056%_ (macro-current-thread))
                                 (let ()
                                   (declare (not safe))
                                   (##thread-deadlock-action!))
                                 (if (macro-thread-end-condvar _%owner145056%_)
                                     (let ()
                                       (let ()
                                         (declare (not safe))
                                         (##thread-yield!))
                                       (_%again145047%_ '0))
                                     (let ()
                                       (declare (not safe))
                                       (##thread-deadlock-action!)))))))))
               (let ((_%$r145070%_
                      (let* ((_%props145062%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%super145043%_
                                 '9
                                 '#f
                                 '#f)))
                             (_%$e145064%_
                              (assq 'subclasses: _%props145062%_)))
                        (if _%$e145064%_
                            (set-cdr!
                             _%$e145064%_
                             (cons _%klass145040%_ (cdr _%$e145064%_)))
                            (let ((__tmp148490
                                   (cons (cons 'subclasses:
                                               (cons _%klass145040%_ '()))
                                         _%props145062%_)))
                              (declare (not safe))
                              (##unchecked-structure-set!
                               _%super145043%_
                               __tmp148490
                               '9
                               '#f
                               '#f))))))
                 (let ()
                   (declare (not interrupts-enabled))
                   (begin
                     (let ()
                       (declare (not safe))
                       (##vector-set! __class-type-properties-lock '1 '#f))
                     (let ()
                       (declare (not safe))
                       (##vector-cas! __class-type-properties-lock '0 '0 '1))))
                 _%$r145070%_))
             (let ()
               (declare (not safe))
               (agetq__% 'direct-supers: _%properties144906%_ '())))
            _%klass145040%_))))
    (define class-type-id
      (lambda (_%klass144899%_)
        (##structure-ref _%klass144899%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass144897%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144897%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass144894%_ _%val144895%_)
        (##structure-set! _%klass144894%_ _%val144895%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass144889%_ _%val144891%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144889%_
           _%val144891%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass144887%_)
        (##structure-ref _%klass144887%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass144885%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144885%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass144882%_ _%val144883%_)
        (##structure-set! _%klass144882%_ _%val144883%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass144877%_ _%val144879%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144877%_
           _%val144879%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass144875%_)
        (##structure-ref _%klass144875%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass144873%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144873%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass144870%_ _%val144871%_)
        (##structure-set! _%klass144870%_ _%val144871%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass144865%_ _%val144867%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144865%_
           _%val144867%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass144863%_)
        (##structure-ref _%klass144863%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass144861%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144861%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass144858%_ _%val144859%_)
        (##structure-set! _%klass144858%_ _%val144859%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass144853%_ _%val144855%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144853%_
           _%val144855%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass144851%_)
        (##structure-ref _%klass144851%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass144849%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144849%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass144846%_ _%val144847%_)
        (##structure-set! _%klass144846%_ _%val144847%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass144841%_ _%val144843%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144841%_
           _%val144843%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass144839%_)
        (##structure-ref _%klass144839%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass144837%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144837%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass144834%_ _%val144835%_)
        (##structure-set!
         _%klass144834%_
         _%val144835%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass144829%_ _%val144831%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144829%_
           _%val144831%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass144827%_)
        (##structure-ref _%klass144827%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass144825%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144825%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass144822%_ _%val144823%_)
        (##structure-set!
         _%klass144822%_
         _%val144823%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass144817%_ _%val144819%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144817%_
           _%val144819%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass144815%_)
        (##structure-ref _%klass144815%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass144813%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144813%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass144810%_ _%val144811%_)
        (##structure-set!
         _%klass144810%_
         _%val144811%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass144805%_ _%val144807%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144805%_
           _%val144807%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass144803%_)
        (##structure-ref _%klass144803%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass144801%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144801%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass144798%_ _%val144799%_)
        (##structure-set!
         _%klass144798%_
         _%val144799%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass144793%_ _%val144795%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144793%_
           _%val144795%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass144791%_)
        (##structure-ref _%klass144791%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass144789%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144789%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass144786%_ _%val144787%_)
        (##structure-set!
         _%klass144786%_
         _%val144787%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass144781%_ _%val144783%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144781%_
           _%val144783%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass144779%_)
        (##structure-ref _%klass144779%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass144777%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144777%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass144774%_ _%val144775%_)
        (##structure-set!
         _%klass144774%_
         _%val144775%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass144769%_ _%val144771%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144769%_
           _%val144771%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass144767%_)
        (##structure-ref _%klass144767%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass144765%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144765%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass144762%_ _%val144763%_)
        (##structure-set!
         _%klass144762%_
         _%val144763%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass144757%_ _%val144759%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144757%_
           _%val144759%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass144755%_)
        (##structure-ref _%klass144755%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass144753%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144753%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass144750%_ _%val144751%_)
        (##structure-set!
         _%klass144750%_
         _%val144751%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass144745%_ _%val144747%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144745%_
           _%val144747%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type144509%_)
        (letrec ((_%__fields->list144639%_
                  (lambda (_%fields144703%_)
                    (let* ((_%fields144706%_ _%fields144703%_)
                           (_%fields-len144715%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields144706%_))))
                      (let _%loop144717%_ ((_%i144719%_ '0) (_%r144720%_ '()))
                        (let* ((_%i144723%_ _%i144719%_)
                               (_%r144736%_ _%r144720%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i144723%_ _%fields-len144715%_))
                              (_%loop144717%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i144723%_ '3))
                               (cons (vector-ref _%fields144706%_ _%i144723%_)
                                     _%r144736%_))
                              (reverse! _%r144736%_)))))))
                 (_%fields->list144640%_
                  (lambda (_%fields144691%_)
                    (let ((_%fields144694%_ _%fields144691%_))
                      (_%__fields->list144639%_ _%fields144694%_)))))
          (let _%loop144642%_ ((_%type144644%_ _%type144509%_))
            (if (let () (declare (not safe)) (##type? _%type144644%_))
                (if (eq? _%type144644%_ ##type-type)
                    '()
                    (let ((_%$e144649%_
                           (let ()
                             (declare (not safe))
                             (##type-super _%type144644%_))))
                      (if _%$e144649%_
                          (let ((__tmp148492 (_%loop144642%_ _%$e144649%_))
                                (__tmp148491
                                 (let* ((_%fields144655%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-fields _%type144644%_)))
                                        (_%fields144659%_ _%fields144655%_))
                                   (_%__fields->list144639%_
                                    _%fields144659%_))))
                            (declare (not safe))
                            (##append __tmp148492 __tmp148491))
                          (let* ((_%fields144676%_
                                  (let ()
                                    (declare (not safe))
                                    (##type-fields _%type144644%_)))
                                 (_%fields144680%_ _%fields144676%_))
                            (_%__fields->list144639%_ _%fields144680%_)))))
                '())))))
    (define __class-type-field-list
      (lambda (_%klass144477%_)
        (let ((_%klass144480%_ _%klass144477%_))
          (letrec ((_%get-fields!144489%_
                    (lambda (_%klass144504%_ _%type144505%_)
                      (let ((_%fields144507%_
                             (type-field-list _%type144505%_)))
                        (##structure-set!
                         _%klass144504%_
                         (cons (cons 'fields: _%fields144507%_)
                               (##structure-ref
                                _%klass144504%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%fields144507%_))))
            (let* ((_%props144491%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass144480%_ '9 '#f '#f)))
                   (_%$e144493%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'fields: _%props144491%_))))
              (if _%$e144493%_
                  _%$e144493%_
                  (let ((_%$e144496%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props144491%_))))
                    (if _%$e144496%_
                        (_%get-fields!144489%_ _%klass144480%_ _%$e144496%_)
                        (_%get-fields!144489%_
                         _%klass144480%_
                         _%klass144480%_)))))))))
    (define class-type-field-list
      (lambda (_%klass144463%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass144463%_ 'class))
            (let ((_%klass144467%_ _%klass144463%_))
              (__class-type-field-list _%klass144467%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@427.30-427.35"
               'contract:
               'class-type?
               'value:
               _%klass144463%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass144451%_)
        (let ((_%klass144454%_ _%klass144451%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass144454%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass144437%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass144437%_ 'class))
            (let ((_%klass144441%_ _%klass144437%_))
              (__class-type-slot-list _%klass144441%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@443.29-443.34"
               'contract:
               'class-type?
               'value:
               _%klass144437%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass144425%_)
        (let* ((_%klass144428%_ _%klass144425%_)
               (__tmp148493
                (let ((__tmp148494
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass144428%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp148494))))
          (declare (not safe))
          (##fx- __tmp148493 '1))))
    (define class-type-field-count
      (lambda (_%klass144411%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass144411%_ 'class))
            (let ((_%klass144415%_ _%klass144411%_))
              (__class-type-field-count _%klass144415%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@445.31-445.36"
               'contract:
               'class-type?
               'value:
               _%klass144411%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass144399%_)
        (let ((_%klass144402%_ _%klass144399%_))
          (let ((__tmp148495
                 (let ((__tmp148496
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass144402%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp148496))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass144402%_
             __tmp148495
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass144385%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass144385%_ 'class))
            (let ((_%klass144389%_ _%klass144385%_))
              (__class-type-seal! _%klass144389%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@448.25-448.30"
               'contract:
               'class-type?
               'value:
               _%klass144385%_)
              '#!void))))
    (define __class-type-properties-lock (vector '0 '#f))
    (define __class-type-properties-put!
      (lambda (_%klass144339%_ _%key144340%_ _%val144341%_)
        (let* ((_%klass144344%_ _%klass144339%_) (_%key144352%_ _%key144340%_))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again144363%_ ((_%spin144366%_ '0))
              (if (let ((__tmp148497
                         (let ()
                           (declare (not safe))
                           (##vector-cas!
                            __class-type-properties-lock
                            '0
                            '1
                            '0))))
                    (declare (not safe))
                    (##fx= __tmp148497 '0))
                  (let ((__tmp148498 (current-thread)))
                    (declare (not safe))
                    (##vector-set!
                     __class-type-properties-lock
                     '1
                     __tmp148498))
                  (if (let () (declare (not safe)) (##fx< _%spin144366%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again144363%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin144366%_ '1))))
                      (let ((_%owner144372%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref
                                __class-type-properties-lock
                                '1))))
                        (if (eq? _%owner144372%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner144372%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again144363%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r144380%_
                 (let ((_%props144378%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass144344%_
                           '9
                           '#f
                           '#f))))
                   (if (assq _%key144352%_ _%props144378%_)
                       '#!void
                       (let ((__tmp148499
                              (cons (cons _%key144352%_ _%val144341%_)
                                    _%props144378%_)))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          _%klass144344%_
                          __tmp148499
                          '9
                          '#f
                          '#f))))))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! __class-type-properties-lock '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! __class-type-properties-lock '0 '0 '1))))
            _%$r144380%_))))
    (define class-type-properties-put!
      (lambda (_%klass144313%_ _%key144314%_ _%val144315%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass144313%_ 'class))
            (let ((_%klass144319%_ _%klass144313%_))
              (if (keyword? _%key144314%_)
                  (let ((_%key144329%_ _%key144314%_))
                    (__class-type-properties-put!
                     _%klass144319%_
                     _%key144329%_
                     _%val144315%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@456.52-456.55"
                     'contract:
                     'keyword?
                     'value:
                     _%key144314%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@456.35-456.40"
               'contract:
               'class-type?
               'value:
               _%klass144313%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass144207%_)
        (let ((_%klass144210%_ _%klass144207%_))
          (letrec ((_%get-field-vector144219%_
                    (lambda (_%type144297%_)
                      (let _%loop144299%_ ((_%type144301%_ _%type144297%_))
                        (let* ((_%fields144303%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type144301%_)))
                               (_%$e144305%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type144301%_))))
                          (if _%$e144305%_
                              (let ((_%super-fields144310%_
                                     (_%loop144299%_ _%$e144305%_)))
                                (vector-append
                                 _%super-fields144310%_
                                 _%fields144303%_))
                              _%fields144303%_)))))
                   (_%get-printable-slot-alist144220%_
                    (lambda (_%type144280%_)
                      (let* ((_%fields144282%_
                              (_%get-field-vector144219%_ _%type144280%_))
                             (_%count144284%_
                              (vector-length _%fields144282%_)))
                        (let _%loop144287%_ ((_%i144289%_ '0)
                                             (_%offset144290%_ '1)
                                             (_%r144291%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i144289%_ _%count144284%_))
                              (let ((_%slot-name144293%_
                                     (vector-ref _%fields144282%_ _%i144289%_))
                                    (_%slot-flags144294%_
                                     (vector-ref
                                      _%fields144282%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i144289%_ '1))))
                                    (_%next-i144295%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i144289%_ '3))))
                                (if (let ((__tmp148500
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags144294%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp148500 '0))
                                    (_%loop144287%_
                                     _%next-i144295%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset144290%_ '1))
                                     (cons (cons _%slot-name144293%_
                                                 _%offset144290%_)
                                           _%r144291%_))
                                    (_%loop144287%_
                                     _%next-i144295%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset144290%_ '1))
                                     _%r144291%_)))
                              (reverse! _%r144291%_))))))
                   (_%get-printable-slots!144221%_
                    (lambda (_%klass144236%_ _%type144237%_)
                      (let ((_%printable144239%_
                             (_%get-printable-slot-alist144220%_
                              _%type144237%_)))
                        (let* ((_%klass144241%_ _%klass144236%_)
                               (_%key144244%_ 'printable-slots:)
                               (_%val144247%_ _%printable144239%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%klass144241%_
                                 'class))
                              (let* ((_%klass144252%_ _%klass144241%_)
                                     (_%key144270%_ _%key144244%_))
                                (__class-type-properties-put!
                                 _%klass144252%_
                                 _%key144270%_
                                 _%val144247%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/mop
                                 'contract:
                                 'class-type?
                                 'value:
                                 _%klass144241%_)
                                '#!void)))
                        _%printable144239%_))))
            (let* ((_%props144223%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass144210%_ '9 '#f '#f)))
                   (_%$e144225%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props144223%_))))
              (if _%$e144225%_
                  _%$e144225%_
                  (let ((_%$e144228%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props144223%_))))
                    (if _%$e144228%_
                        (_%get-printable-slots!144221%_
                         _%klass144210%_
                         _%$e144228%_)
                        (_%get-printable-slots!144221%_
                         _%klass144210%_
                         _%klass144210%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass144193%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass144193%_ 'class))
            (let ((_%klass144197%_ _%klass144193%_))
              (__class-type-printable-slots _%klass144197%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@465.35-465.40"
               'contract:
               'class-type?
               'value:
               _%klass144193%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct144162%_ _%maybe-super-struct144163%_)
        (let* ((_%maybe-sub-struct144166%_ _%maybe-sub-struct144162%_)
               (_%maybe-super-struct144174%_ _%maybe-super-struct144163%_)
               (_%maybe-super-struct-id144183%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct144174%_))))
          (let _%lp144185%_ ((_%super-struct144187%_
                              _%maybe-sub-struct144166%_))
            (if _%super-struct144187%_
                (if (eq? _%maybe-super-struct-id144183%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct144187%_)))
                    '#t
                    (_%lp144185%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct144187%_))))
                '#f)))))
    (define substruct?
      (lambda (_%maybe-sub-struct144137%_ _%maybe-super-struct144138%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct144137%_ 'class))
            (let ((_%maybe-sub-struct144142%_ _%maybe-sub-struct144137%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct144138%_
                     'class))
                  (let ((_%maybe-super-struct144152%_
                         _%maybe-super-struct144138%_))
                    (__substruct?
                     _%maybe-sub-struct144142%_
                     _%maybe-super-struct144152%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@509.47-509.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct144138%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@509.19-509.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct144137%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass144115%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass144115%_ 'class))
            (if (let* ((_%klass144118%_ _%klass144115%_)
                       (_%klass144123%_ _%klass144118%_))
                  (__class-type-struct? _%klass144123%_))
                _%klass144115%_
                (let () (declare (not safe)) (##type-super _%klass144115%_)))
            (if _%klass144115%_
                (error '"not a class or false" _%klass144115%_)
                '#f))))
    (define base-struct/2
      (lambda (_%klass1144038%_ _%klass2144039%_)
        (let ((_%s1144041%_ (base-struct/1 _%klass1144038%_))
              (_%s2144042%_ (base-struct/1 _%klass2144039%_)))
          (if (or (not _%s1144041%_)
                  (and _%s2144042%_
                       (let* ((_%maybe-sub-struct144047%_ _%s1144041%_)
                              (_%maybe-super-struct144050%_ _%s2144042%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct144047%_
                                'class))
                             (let ((_%maybe-sub-struct144055%_
                                    _%maybe-sub-struct144047%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct144050%_
                                      'class))
                                   (let ((_%maybe-super-struct144069%_
                                          _%maybe-super-struct144050%_))
                                     (__substruct?
                                      _%maybe-sub-struct144055%_
                                      _%maybe-super-struct144069%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct144050%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct144047%_)
                               '#!void)))))
              _%s2144042%_
              (if (or (not _%s2144042%_)
                      (and _%s1144041%_
                           (let* ((_%maybe-sub-struct144083%_ _%s2144042%_)
                                  (_%maybe-super-struct144086%_ _%s1144041%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct144083%_
                                    'class))
                                 (let ((_%maybe-sub-struct144091%_
                                        _%maybe-sub-struct144083%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct144086%_
                                          'class))
                                       (let ((_%maybe-super-struct144103%_
                                              _%maybe-super-struct144086%_))
                                         (__substruct?
                                          _%maybe-sub-struct144091%_
                                          _%maybe-super-struct144103%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct144086%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct144083%_)
                                   '#!void)))))
                  _%s1144041%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1144038%_
                         _%klass2144039%_
                         _%s1144041%_
                         _%s2144042%_))))))
    (define base-struct/list
      (lambda (_%all-supers143923%_)
        (let* ((_%$%all-supers143924143949%_ _%all-supers143923%_)
               (_%$%E143929143953%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%all-supers143924143949%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%$%K143947144035%_ (lambda () '#f))
                (_%$%K143944144021%_
                 (lambda (_%x144019%_) (base-struct/1 _%x144019%_)))
                (_%$%K143939143998%_
                 (lambda (_%y143995%_ _%x143996%_)
                   (base-struct/2 _%x143996%_ _%y143995%_)))
                (_%$%K143930143960%_
                 (lambda (_%y143957%_ _%x143958%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x143958%_ _%y143957%_)))))
            (let* ((_%__match147260147261%_
                    (lambda (_%$%hd143931143963%_ _%$%tl143932143965%_)
                      (let ((_%x143968%_ _%$%hd143931143963%_))
                        (letrec ((_%$%splice-rest143934143970%_
                                  (lambda (_%$%rest143938143977%_ _%y143979%_)
                                    (if (null? _%$%rest143938143977%_)
                                        (_%$%K143930143960%_
                                         _%y143979%_
                                         _%x143968%_)
                                        (_%$%E143929143953%_))))
                                 (_%$%splice-try143936143972%_
                                  (lambda (_%$%hd143937143981%_
                                           _%$%rest143938143983%_
                                           _%$%y143933143984%_)
                                    (let ((_%y143986%_ _%$%hd143937143981%_))
                                      (_%$%splice-loop143935143974%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest143938143983%_))
                                       (cons _%y143986%_
                                             _%$%y143933143984%_)))))
                                 (_%$%splice-loop143935143974%_
                                  (lambda (_%$%rest143938143988%_
                                           _%$%y143933143989%_)
                                    (if (pair? _%$%rest143938143988%_)
                                        (_%$%splice-try143936143972%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest143938143988%_))
                                         _%$%rest143938143988%_
                                         _%$%y143933143989%_)
                                        (_%$%splice-rest143934143970%_
                                         _%$%rest143938143988%_
                                         (reverse _%$%y143933143989%_))))))
                          (_%$%splice-loop143935143974%_
                           _%$%tl143932143965%_
                           '())))))
                   (_%$%try-match143926144031%_
                    (lambda ()
                      (if (pair? _%$%all-supers143924143949%_)
                          (let ((_%$%tl143946144026%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all-supers143924143949%_)))
                                (_%$%hd143945144024%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all-supers143924143949%_))))
                            (if (null? _%$%tl143946144026%_)
                                (let ((_%x144029%_ _%$%hd143945144024%_))
                                  (base-struct/1 _%x144029%_))
                                (if (pair? _%$%tl143946144026%_)
                                    (let ((_%$%tl143943144010%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl143946144026%_)))
                                          (_%$%hd143942144008%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl143946144026%_))))
                                      (if (null? _%$%tl143943144010%_)
                                          (let ((_%x144006%_
                                                 _%$%hd143945144024%_)
                                                (_%y144013%_
                                                 _%$%hd143942144008%_))
                                            (_%$%K143939143998%_
                                             _%y144013%_
                                             _%x144006%_))
                                          (_%__match147260147261%_
                                           _%$%hd143945144024%_
                                           _%$%tl143946144026%_)))
                                    (_%__match147260147261%_
                                     _%$%hd143945144024%_
                                     _%$%tl143946144026%_))))
                          (_%$%E143929143953%_)))))
              (if (null? _%$%all-supers143924143949%_)
                  (_%$%K143947144035%_)
                  (_%$%try-match143926144031%_)))))))
    (define base-struct
      (lambda _%all-supers143921%_ (base-struct/list _%all-supers143921%_)))
    (define find-super-constructor
      (lambda (_%super143872%_)
        (let _%lp143874%_ ((_%rest143876%_ _%super143872%_)
                           (_%constructor143877%_ '#f))
          (let* ((_%$%rest143878143886%_ _%rest143876%_)
                 (_%$%else143880143894%_ (lambda () _%constructor143877%_))
                 (_%$%K143882143909%_
                  (lambda (_%rest143897%_ _%hd143898%_)
                    (let ((_%$e143900%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd143898%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e143900%_
                          (if (or (not _%constructor143877%_)
                                  (eq? _%constructor143877%_ _%$e143900%_))
                              (_%lp143874%_ _%rest143897%_ _%$e143900%_)
                              (error '"conflicting implicit constructors"
                                     _%constructor143877%_
                                     _%$e143900%_))
                          (_%lp143874%_
                           _%rest143897%_
                           _%constructor143877%_))))))
            (if (pair? _%$%rest143878143886%_)
                (let ((_%$%hd143883143912%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest143878143886%_)))
                      (_%$%tl143884143914%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest143878143886%_))))
                  (let* ((_%hd143917%_ _%$%hd143883143912%_)
                         (_%rest143919%_ _%$%tl143884143914%_))
                    (_%$%K143882143909%_ _%rest143919%_ _%hd143917%_)))
                (_%$%else143880143894%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list143864%_ _%direct-slots143865%_)
        (let ((__tmp148502
               (lambda (_%mixin143867%_)
                 (let ((__tmp148503
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%mixin143867%_
                           '9
                           '#f
                           '#f))))
                   (declare (not safe))
                   (agetq__% 'direct-slots: __tmp148503 '()))))
              (__tmp148501
               (lambda (_%slot-list143869%_ _%slot-table143870%_)
                 (values (list->vector _%slot-list143869%_)
                         _%slot-table143870%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%class-precedence-list143864%_
           _%direct-slots143865%_
           __tmp148502
           __tmp148501))))
    (define __make-class-type
      (lambda (_%id143691%_
               _%name143692%_
               _%direct-supers143693%_
               _%direct-slots143694%_
               _%properties143695%_
               _%constructor143696%_)
        (let* ((_%id143699%_ _%id143691%_)
               (_%name143707%_ _%name143692%_)
               (_%direct-supers143715%_ _%direct-supers143693%_)
               (_%direct-slots143723%_ _%direct-slots143694%_)
               (_%properties143731%_ _%properties143695%_)
               (_%constructor143739%_ _%constructor143696%_))
          (let ((_%$e143773%_
                 (let* ((_%pred143751%_
                         (lambda (_%$obj143748%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj143748%_
                                   'class)))))
                        (_%lst143754%_ _%direct-supers143715%_)
                        (_%pred143759%_ _%pred143751%_))
                   (declare (not safe))
                   (__find _%pred143759%_ _%lst143754%_))))
            (if _%$e143773%_
                (error '"Illegal super class; not a class descriptor"
                       _%$e143773%_)
                (let ((_%$e143800%_
                       (let* ((_%pred143780%_ __class-type-final?)
                              (_%lst143783%_ _%direct-supers143715%_)
                              (_%pred143788%_ _%pred143780%_))
                         (declare (not safe))
                         (__find _%pred143788%_ _%lst143783%_))))
                  (if _%$e143800%_
                      (error '"Cannot extend final class" _%$e143800%_)
                      '#!void))))
          (let ((_g148504_ (compute-precedence-list _%direct-supers143715%_)))
            (begin
              (let ((_g148505_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g148504_)
                           (##values-length _g148504_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g148505_ 2)))
                    (error "Context expects 2 values" _g148505_)))
              (let ((_%precedence-list143807%_
                     (let () (declare (not safe)) (##values-ref _g148504_ 0)))
                    (_%struct-super143808%_
                     (let () (declare (not safe)) (##values-ref _g148504_ 1))))
                (let ((_g148506_
                       (compute-class-slots
                        _%precedence-list143807%_
                        _%direct-slots143723%_)))
                  (begin
                    (let ((_g148507_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g148506_)
                                 (##values-length _g148506_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g148507_ 2)))
                          (error "Context expects 2 values" _g148507_)))
                    (let ((_%slot-vector143810%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g148506_ 0)))
                          (_%slot-table143811%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g148506_ 1))))
                      (let* ((_%properties143813%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots143723%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers143715%_)
                                          _%properties143731%_)))
                             (_%constructor*143818%_
                              (let ((_%$e143815%_ _%constructor143739%_))
                                (if _%$e143815%_
                                    _%$e143815%_
                                    (find-super-constructor
                                     _%direct-supers143715%_))))
                             (_%precedence-list143861%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties143813%_))
                                      (memq object::t
                                            _%precedence-list143807%_))
                                  _%precedence-list143807%_
                                  (let _%loop143823%_ ((_%tail143825%_
                                                        _%precedence-list143807%_)
                                                       (_%head143826%_ '()))
                                    (let* ((_%$%tail143827143835%_
                                            _%tail143825%_)
                                           (_%$%else143829143843%_
                                            (lambda ()
                                              (let ((__tmp148508
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp148508
                                                 _%head143826%_))))
                                           (_%$%K143831143849%_
                                            (lambda (_%rest143846%_
                                                     _%hd143847%_)
                                              (if (eq? _%hd143847%_ t::t)
                                                  (let ((__tmp148509
                                                         (cons object::t
                                                               _%tail143825%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp148509
                                                     _%head143826%_))
                                                  (_%loop143823%_
                                                   _%rest143846%_
                                                   (cons _%hd143847%_
                                                         _%head143826%_))))))
                                      (if (pair? _%$%tail143827143835%_)
                                          (let ((_%$%hd143832143852%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tail143827143835%_)))
                                                (_%$%tl143833143854%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tail143827143835%_))))
                                            (let* ((_%hd143857%_
                                                    _%$%hd143832143852%_)
                                                   (_%rest143859%_
                                                    _%$%tl143833143854%_))
                                              (_%$%K143831143849%_
                                               _%rest143859%_
                                               _%hd143857%_)))
                                          (_%$%else143829143843%_)))))))
                        (make-class-type-descriptor
                         _%id143699%_
                         _%name143707%_
                         _%struct-super143808%_
                         _%precedence-list143861%_
                         _%slot-vector143810%_
                         _%properties143813%_
                         _%constructor*143818%_
                         _%slot-table143811%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id143616%_
               _%name143617%_
               _%direct-supers143618%_
               _%direct-slots143619%_
               _%properties143620%_
               _%constructor143621%_)
        (if (symbol? _%id143616%_)
            (let ((_%id143625%_ _%id143616%_))
              (if (symbol? _%name143617%_)
                  (let ((_%name143635%_ _%name143617%_))
                    (if (list? _%direct-supers143618%_)
                        (let ((_%direct-supers143645%_
                               _%direct-supers143618%_))
                          (if (list? _%direct-slots143619%_)
                              (let ((_%direct-slots143655%_
                                     _%direct-slots143619%_))
                                (if (list? _%properties143620%_)
                                    (let ((_%properties143665%_
                                           _%properties143620%_))
                                      (if (or (not _%constructor143621%_)
                                              (symbol? _%constructor143621%_))
                                          (let ((_%constructor143681%_
                                                 _%constructor143621%_))
                                            (__make-class-type
                                             _%id143625%_
                                             _%name143635%_
                                             _%direct-supers143645%_
                                             _%direct-slots143655%_
                                             _%properties143665%_
                                             _%constructor143681%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@590.24-590.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor143621%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@589.24-589.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties143620%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@588.24-588.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots143619%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@587.24-587.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers143618%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@586.24-586.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name143617%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@585.24-585.26"
               'contract:
               'symbol?
               'value:
               _%id143616%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass143604%_)
        (let ((_%klass143607%_ _%klass143604%_))
          (cons _%klass143607%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass143607%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass143590%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143590%_ 'class))
            (let ((_%klass143594%_ _%klass143590%_))
              (__class-precedence-list _%klass143594%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.30-623.35"
               'contract:
               'class-type?
               'value:
               _%klass143590%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers143587%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers143587%_))))
    (define __make-class-predicate
      (lambda (_%klass143503%_)
        (let* ((_%klass143506%_ _%klass143503%_)
               (_%tid143515%_
                (let () (declare (not safe)) (##type-id _%klass143506%_))))
          (if (let* ((_%type143517%_ _%klass143506%_)
                     (_%type143522%_ _%type143517%_))
                (__class-type-final? _%type143522%_))
              (lambda (_%$%g143536143538%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%$%g143536143538%_
                   _%tid143515%_)))
              (if (let* ((_%klass143541%_ _%klass143506%_)
                         (_%klass143546%_ _%klass143541%_))
                    (__class-type-struct? _%klass143546%_))
                  (lambda (_%$%g143556143558%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$%g143556143558%_
                       _%tid143515%_)))
                  (lambda (_%$%g143561143563%_)
                    (let* ((_%klass143566%_ _%klass143506%_)
                           (_%obj143569%_ _%$%g143561143563%_)
                           (_%klass143574%_ _%klass143566%_))
                      (__class-instance? _%klass143574%_ _%obj143569%_))))))))
    (define make-class-predicate
      (lambda (_%klass143489%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143489%_ 'class))
            (let ((_%klass143493%_ _%klass143489%_))
              (__make-class-predicate _%klass143493%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@635.29-635.34"
               'contract:
               'class-type?
               'value:
               _%klass143489%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass143423%_ _%slot143424%_)
        (let* ((_%klass143427%_ _%klass143423%_)
               (_%slot143435%_ _%slot143424%_)
               (_%field143444%_
                (let ((__tmp148510
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass143427%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp148510 _%slot143435%_ '#f))))
          (if _%field143444%_
              (if (let* ((_%type143448%_ _%klass143427%_)
                         (_%type143453%_ _%type143448%_))
                    (__class-type-final? _%type143453%_))
                  (make-final-slot-accessor
                   _%klass143427%_
                   _%slot143435%_
                   _%field143444%_)
                  (if (let* ((_%klass143468%_ _%klass143427%_)
                             (_%klass143473%_ _%klass143468%_))
                        (__class-type-struct? _%klass143473%_))
                      (make-struct-slot-accessor
                       _%klass143427%_
                       _%slot143435%_
                       _%field143444%_)
                      (if (let ((_%strukt143484%_
                                 (base-struct/1 _%klass143427%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt143484%_
                                    'class))
                                 (let ((__tmp148511
                                        (let ((__tmp148512
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt143484%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp148512))))
                                   (declare (not safe))
                                   (##fx< _%field143444%_ __tmp148511))))
                          (make-struct-subclass-slot-accessor
                           _%klass143427%_
                           _%slot143435%_
                           _%field143444%_)
                          (make-class-cached-slot-accessor
                           _%klass143427%_
                           _%slot143435%_
                           _%field143444%_))))
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass143427%_
                       'slot:
                       _%slot143435%_)
                '#!void)))))
    (define make-class-slot-accessor
      (lambda (_%klass143398%_ _%slot143399%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143398%_ 'class))
            (let ((_%klass143403%_ _%klass143398%_))
              (if (symbol? _%slot143399%_)
                  (let ((_%slot143413%_ _%slot143399%_))
                    (__make-class-slot-accessor
                     _%klass143403%_
                     _%slot143413%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@666.50-666.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot143399%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@666.33-666.38"
               'contract:
               'class-type?
               'value:
               _%klass143398%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass143332%_ _%slot143333%_)
        (let* ((_%klass143336%_ _%klass143332%_)
               (_%slot143344%_ _%slot143333%_)
               (_%field143353%_
                (let ((__tmp148513
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass143336%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp148513 _%slot143344%_ '#f))))
          (if _%field143353%_
              (if (let* ((_%type143357%_ _%klass143336%_)
                         (_%type143362%_ _%type143357%_))
                    (__class-type-final? _%type143362%_))
                  (make-final-slot-mutator
                   _%klass143336%_
                   _%slot143344%_
                   _%field143353%_)
                  (if (let* ((_%klass143377%_ _%klass143336%_)
                             (_%klass143382%_ _%klass143377%_))
                        (__class-type-struct? _%klass143382%_))
                      (make-struct-slot-mutator
                       _%klass143336%_
                       _%slot143344%_
                       _%field143353%_)
                      (if (let ((_%strukt143393%_
                                 (base-struct/1 _%klass143336%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt143393%_
                                    'class))
                                 (let ((__tmp148514
                                        (let ((__tmp148515
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt143393%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp148515))))
                                   (declare (not safe))
                                   (##fx< _%field143353%_ __tmp148514))))
                          (make-struct-subclass-slot-mutator
                           _%klass143336%_
                           _%slot143344%_
                           _%field143353%_)
                          (make-class-cached-slot-mutator
                           _%klass143336%_
                           _%slot143344%_
                           _%field143353%_))))
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass143336%_
                       'slot:
                       _%slot143344%_)
                '#!void)))))
    (define make-class-slot-mutator
      (lambda (_%klass143307%_ _%slot143308%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143307%_ 'class))
            (let ((_%klass143312%_ _%klass143307%_))
              (if (symbol? _%slot143308%_)
                  (let ((_%slot143322%_ _%slot143308%_))
                    (__make-class-slot-mutator _%klass143312%_ _%slot143322%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@674.49-674.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot143308%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@674.32-674.37"
               'contract:
               'class-type?
               'value:
               _%klass143307%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass143241%_ _%slot143242%_)
        (let* ((_%klass143245%_ _%klass143241%_)
               (_%slot143253%_ _%slot143242%_)
               (_%field143262%_
                (let ((__tmp148516
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass143245%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp148516 _%slot143253%_ '#f))))
          (if _%field143262%_
              (if (let* ((_%type143266%_ _%klass143245%_)
                         (_%type143271%_ _%type143266%_))
                    (__class-type-final? _%type143271%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass143245%_
                   _%slot143253%_
                   _%field143262%_)
                  (if (let* ((_%klass143286%_ _%klass143245%_)
                             (_%klass143291%_ _%klass143286%_))
                        (__class-type-struct? _%klass143291%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass143245%_
                       _%slot143253%_
                       _%field143262%_)
                      (if (let ((_%strukt143302%_
                                 (base-struct/1 _%klass143245%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt143302%_
                                    'class))
                                 (let ((__tmp148517
                                        (let ((__tmp148518
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt143302%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp148518))))
                                   (declare (not safe))
                                   (##fx< _%field143262%_ __tmp148517))))
                          (make-struct-slot-unchecked-accessor
                           _%klass143245%_
                           _%slot143253%_
                           _%field143262%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass143245%_
                           _%slot143253%_
                           _%field143262%_))))
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass143245%_
                       'slot:
                       _%slot143253%_)
                '#!void)))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass143216%_ _%slot143217%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143216%_ 'class))
            (let ((_%klass143221%_ _%klass143216%_))
              (if (symbol? _%slot143217%_)
                  (let ((_%slot143231%_ _%slot143217%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass143221%_
                     _%slot143231%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@682.60-682.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot143217%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@682.43-682.48"
               'contract:
               'class-type?
               'value:
               _%klass143216%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass143150%_ _%slot143151%_)
        (let* ((_%klass143154%_ _%klass143150%_)
               (_%slot143162%_ _%slot143151%_)
               (_%field143171%_
                (let ((__tmp148519
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass143154%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp148519 _%slot143162%_ '#f))))
          (if _%field143171%_
              (if (let* ((_%type143175%_ _%klass143154%_)
                         (_%type143180%_ _%type143175%_))
                    (__class-type-final? _%type143180%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass143154%_
                   _%slot143162%_
                   _%field143171%_)
                  (if (let* ((_%klass143195%_ _%klass143154%_)
                             (_%klass143200%_ _%klass143195%_))
                        (__class-type-struct? _%klass143200%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass143154%_
                       _%slot143162%_
                       _%field143171%_)
                      (if (let ((_%strukt143211%_
                                 (base-struct/1 _%klass143154%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt143211%_
                                    'class))
                                 (let ((__tmp148520
                                        (let ((__tmp148521
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt143211%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp148521))))
                                   (declare (not safe))
                                   (##fx< _%field143171%_ __tmp148520))))
                          (make-struct-slot-unchecked-mutator
                           _%klass143154%_
                           _%slot143162%_
                           _%field143171%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass143154%_
                           _%slot143162%_
                           _%field143171%_))))
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass143154%_
                       'slot:
                       _%slot143162%_)
                '#!void)))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass143125%_ _%slot143126%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143125%_ 'class))
            (let ((_%klass143130%_ _%klass143125%_))
              (if (symbol? _%slot143126%_)
                  (let ((_%slot143140%_ _%slot143126%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass143130%_
                     _%slot143140%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@690.59-690.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot143126%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@690.42-690.47"
               'contract:
               'class-type?
               'value:
               _%klass143125%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object143109%_ _%class143110%_ _%slot143111%_)
        (apply error
               '"not an instance"
               'object:
               _%object143109%_
               'class:
               _%class143110%_
               (if _%slot143111%_
                   (cons 'slot: (cons _%slot143111%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object143116%_ _%class143117%_)
        (let ((_%slot143119%_ '#f))
          (not-an-instance__%
           _%object143116%_
           _%class143117%_
           _%slot143119%_))))
    (define not-an-instance
      (lambda _g148522_
        (let ((_g148523_ (let () (declare (not safe)) (##length _g148522_))))
          (cond ((let () (declare (not safe)) (##fx= _g148523_ 2))
                 (apply not-an-instance__0 _g148522_))
                ((let () (declare (not safe)) (##fx= _g148523_ 3))
                 (apply not-an-instance__% _g148522_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g148522_))))))
    (define make-final-slot-accessor
      (lambda (_%klass143102%_ _%slot143103%_ _%field143104%_)
        (lambda (_%obj143106%_)
          (##direct-structure-ref
           _%obj143106%_
           _%field143104%_
           _%klass143102%_
           _%slot143103%_))))
    (define make-final-slot-mutator
      (lambda (_%klass143095%_ _%slot143096%_ _%field143097%_)
        (lambda (_%obj143099%_ _%val143100%_)
          (##direct-structure-set!
           _%obj143099%_
           _%val143100%_
           _%field143097%_
           _%klass143095%_
           _%slot143096%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass143089%_ _%slot143090%_ _%field143091%_)
        (lambda (_%obj143093%_)
          (##structure-ref
           _%obj143093%_
           _%field143091%_
           _%klass143089%_
           _%slot143090%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass143082%_ _%slot143083%_ _%field143084%_)
        (lambda (_%obj143086%_ _%val143087%_)
          (##structure-set!
           _%obj143086%_
           _%val143087%_
           _%field143084%_
           _%klass143082%_
           _%slot143083%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass143076%_ _%slot143077%_ _%field143078%_)
        (lambda (_%obj143080%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj143080%_
             _%field143078%_
             _%klass143076%_
             _%slot143077%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass143069%_ _%slot143070%_ _%field143071%_)
        (lambda (_%obj143073%_ _%val143074%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj143073%_
             _%val143074%_
             _%field143071%_
             _%klass143069%_
             _%slot143070%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass143042%_ _%slot143043%_ _%field143044%_)
        (lambda (_%obj143046%_)
          (if (let* ((_%klass143048%_ _%klass143042%_)
                     (_%obj143051%_ _%obj143046%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass143048%_ 'class))
                    (let ((_%klass143056%_ _%klass143048%_))
                      (__class-instance? _%klass143056%_ _%obj143051%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass143048%_)
                      '#!void)))
              (unchecked-slot-ref _%obj143046%_ _%field143044%_)
              (not-an-instance__%
               _%obj143046%_
               _%klass143042%_
               _%slot143043%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass143014%_ _%slot143015%_ _%field143016%_)
        (lambda (_%obj143018%_ _%val143019%_)
          (if (let* ((_%klass143021%_ _%klass143014%_)
                     (_%obj143024%_ _%obj143018%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass143021%_ 'class))
                    (let ((_%klass143029%_ _%klass143021%_))
                      (__class-instance? _%klass143029%_ _%obj143024%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass143021%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj143018%_
               _%field143016%_
               _%val143019%_)
              (not-an-instance__%
               _%obj143018%_
               _%klass143014%_
               _%slot143015%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass142965%_ _%slot142966%_ _%field142967%_)
        (lambda (_%obj142969%_)
          (if (let* ((_%klass142971%_ _%klass142965%_)
                     (_%obj142974%_ _%obj142969%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass142971%_ 'class))
                    (let ((_%klass142979%_ _%klass142971%_))
                      (__direct-instance? _%klass142979%_ _%obj142974%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass142971%_)
                      '#!void)))
              (unchecked-field-ref _%obj142969%_ _%field142967%_)
              (if (let* ((_%klass142993%_ _%klass142965%_)
                         (_%obj142996%_ _%obj142969%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass142993%_ 'class))
                        (let ((_%klass143001%_ _%klass142993%_))
                          (__class-instance? _%klass143001%_ _%obj142996%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass142993%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj142969%_ _%slot142966%_)
                  (not-an-instance__%
                   _%obj142969%_
                   _%klass142965%_
                   _%slot142966%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass142915%_ _%slot142916%_ _%field142917%_)
        (lambda (_%obj142919%_ _%val142920%_)
          (if (let* ((_%klass142922%_ _%klass142915%_)
                     (_%obj142925%_ _%obj142919%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass142922%_ 'class))
                    (let ((_%klass142930%_ _%klass142922%_))
                      (__direct-instance? _%klass142930%_ _%obj142925%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass142922%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj142919%_
               _%field142917%_
               _%val142920%_)
              (if (let* ((_%klass142944%_ _%klass142915%_)
                         (_%obj142947%_ _%obj142919%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass142944%_ 'class))
                        (let ((_%klass142952%_ _%klass142944%_))
                          (__class-instance? _%klass142952%_ _%obj142947%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass142944%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj142919%_
                   _%slot142916%_
                   _%val142920%_)
                  (not-an-instance__%
                   _%obj142919%_
                   _%klass142915%_
                   _%slot142916%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass142888%_ _%slot142889%_ _%field142890%_)
        (lambda (_%obj142892%_)
          (if (let* ((_%klass142894%_ _%klass142888%_)
                     (_%obj142897%_ _%obj142892%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass142894%_ 'class))
                    (let ((_%klass142902%_ _%klass142894%_))
                      (__direct-instance? _%klass142902%_ _%obj142897%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass142894%_)
                      '#!void)))
              (unchecked-field-ref _%obj142892%_ _%field142890%_)
              (unchecked-slot-ref _%obj142892%_ _%slot142889%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass142860%_ _%slot142861%_ _%field142862%_)
        (lambda (_%obj142864%_ _%val142865%_)
          (if (let* ((_%klass142867%_ _%klass142860%_)
                     (_%obj142870%_ _%obj142864%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass142867%_ 'class))
                    (let ((_%klass142875%_ _%klass142867%_))
                      (__direct-instance? _%klass142875%_ _%obj142870%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass142867%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj142864%_
               _%field142862%_
               _%val142865%_)
              (unchecked-slot-set!
               _%obj142864%_
               _%slot142861%_
               _%val142865%_)))))
    (define __class-slot-offset
      (lambda (_%klass142839%_ _%slot142840%_)
        (let* ((_%klass142843%_ _%klass142839%_)
               (_%slot142851%_ _%slot142840%_)
               (__tmp148524
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass142843%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp148524 _%slot142851%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass142814%_ _%slot142815%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142814%_ 'class))
            (let ((_%klass142819%_ _%klass142814%_))
              (if (let () (declare (not safe)) (symbolic? _%slot142815%_))
                  (let ((_%slot142829%_ _%slot142815%_))
                    (__class-slot-offset _%klass142819%_ _%slot142829%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@752.43-752.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot142815%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@752.26-752.31"
               'contract:
               'class-type?
               'value:
               _%klass142814%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass142739%_ _%obj142740%_ _%slot142741%_)
        (let* ((_%klass142744%_ _%klass142739%_)
               (_%slot142752%_ _%slot142741%_))
          (if (let* ((_%klass142761%_ _%klass142744%_)
                     (_%obj142764%_ _%obj142740%_)
                     (_%klass142769%_ _%klass142761%_))
                (__class-instance? _%klass142769%_ _%obj142764%_))
              (let ((_%off142812%_
                     (let* ((_%klass142783%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj142740%_)))
                            (_%slot142786%_ _%slot142752%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass142783%_ 'class))
                           (let ((_%klass142791%_ _%klass142783%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot142786%_))
                                 (let ((_%slot142802%_ _%slot142786%_))
                                   (__class-slot-offset
                                    _%klass142791%_
                                    _%slot142802%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot142786%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass142783%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj142740%_
                 _%off142812%_
                 _%klass142744%_
                 _%slot142752%_))
              (not-an-instance__0 _%obj142740%_ _%klass142744%_)))))
    (define class-slot-ref
      (lambda (_%klass142713%_ _%obj142714%_ _%slot142715%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142713%_ 'class))
            (let ((_%klass142719%_ _%klass142713%_))
              (if (let () (declare (not safe)) (symbolic? _%slot142715%_))
                  (let ((_%slot142729%_ _%slot142715%_))
                    (__class-slot-ref
                     _%klass142719%_
                     _%obj142714%_
                     _%slot142729%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@755.44-755.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot142715%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@755.23-755.28"
               'contract:
               'class-type?
               'value:
               _%klass142713%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass142637%_ _%obj142638%_ _%slot142639%_ _%val142640%_)
        (let* ((_%klass142643%_ _%klass142637%_)
               (_%slot142651%_ _%slot142639%_))
          (if (let* ((_%klass142660%_ _%klass142643%_)
                     (_%obj142663%_ _%obj142638%_)
                     (_%klass142668%_ _%klass142660%_))
                (__class-instance? _%klass142668%_ _%obj142663%_))
              (let ((_%off142711%_
                     (let* ((_%klass142682%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj142638%_)))
                            (_%slot142685%_ _%slot142651%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass142682%_ 'class))
                           (let ((_%klass142690%_ _%klass142682%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot142685%_))
                                 (let ((_%slot142701%_ _%slot142685%_))
                                   (__class-slot-offset
                                    _%klass142690%_
                                    _%slot142701%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot142685%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass142682%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj142638%_
                 _%val142640%_
                 _%off142711%_
                 _%klass142643%_
                 _%slot142651%_))
              (not-an-instance__0 _%obj142638%_ _%klass142643%_)))))
    (define class-slot-set!
      (lambda (_%klass142610%_ _%obj142611%_ _%slot142612%_ _%val142613%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142610%_ 'class))
            (let ((_%klass142617%_ _%klass142610%_))
              (if (let () (declare (not safe)) (symbolic? _%slot142612%_))
                  (let ((_%slot142627%_ _%slot142612%_))
                    (__class-slot-set!
                     _%klass142617%_
                     _%obj142611%_
                     _%slot142627%_
                     _%val142613%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@761.45-761.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot142612%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@761.24-761.29"
               'contract:
               'class-type?
               'value:
               _%klass142610%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj142607%_ _%off142608%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj142607%_ _%off142608%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj142603%_ _%off142604%_ _%val142605%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj142603%_
           _%val142605%_
           _%off142604%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj142600%_ _%slot142601%_)
        (unchecked-field-ref
         _%obj142600%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj142600%_))
          _%slot142601%_))))
    (define unchecked-slot-set!
      (lambda (_%obj142596%_ _%slot142597%_ _%val142598%_)
        (unchecked-field-set!
         _%obj142596%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj142596%_))
          _%slot142597%_)
         _%val142598%_)))
    (define __slot-error
      (lambda (_%obj142593%_ _%slot142594%_)
        (error '"Cannot find slot"
               'object:
               _%obj142593%_
               'slot:
               _%slot142594%_)))
    (define __slot-ref__%
      (lambda (_%obj142517%_ _%slot142518%_ _%E142519%_)
        (let* ((_%slot142522%_ _%slot142518%_)
               (_%E142530%_ _%E142519%_)
               (_%klass142539%_ (class-of _%obj142517%_))
               (_%$e142575%_
                (let* ((_%klass142542%_ _%klass142539%_)
                       (_%slot142545%_ _%slot142522%_)
                       (_%klass142550%_ _%klass142542%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot142545%_))
                      (let ((_%slot142565%_ _%slot142545%_))
                        (__class-slot-offset _%klass142550%_ _%slot142565%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot142545%_)
                        '#!void)))))
          (if _%$e142575%_
              (unchecked-field-ref _%obj142517%_ _%$e142575%_)
              (let ()
                (declare (not safe))
                (_%E142530%_ _%obj142517%_ _%slot142522%_))))))
    (define __slot-ref__0
      (lambda (_%obj142584%_ _%slot142585%_)
        (let ((_%E142587%_ __slot-error))
          (__slot-ref__% _%obj142584%_ _%slot142585%_ _%E142587%_))))
    (define __slot-ref
      (lambda _g148525_
        (let ((_g148526_ (let () (declare (not safe)) (##length _g148525_))))
          (cond ((let () (declare (not safe)) (##fx= _g148526_ 2))
                 (apply __slot-ref__0 _g148525_))
                ((let () (declare (not safe)) (##fx= _g148526_ 3))
                 (apply __slot-ref__% _g148525_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g148525_))))))
    (define slot-ref__%
      (lambda (_%obj142478%_ _%slot142479%_ _%E142480%_)
        (if (symbol? _%slot142479%_)
            (let ((_%slot142484%_ _%slot142479%_))
              (if (procedure? _%E142480%_)
                  (let ((_%E142494%_ _%E142480%_))
                    (__slot-ref__% _%obj142478%_ _%slot142484%_ _%E142494%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@787.38-787.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E142480%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@787.21-787.25"
               'contract:
               'symbol?
               'value:
               _%slot142479%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj142507%_ _%slot142508%_)
        (let ((_%E142510%_ __slot-error))
          (slot-ref__% _%obj142507%_ _%slot142508%_ _%E142510%_))))
    (define slot-ref
      (lambda _g148527_
        (let ((_g148528_ (let () (declare (not safe)) (##length _g148527_))))
          (cond ((let () (declare (not safe)) (##fx= _g148528_ 2))
                 (apply slot-ref__0 _g148527_))
                ((let () (declare (not safe)) (##fx= _g148528_ 3))
                 (apply slot-ref__% _g148527_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g148527_))))))
    (define __slot-set!__%
      (lambda (_%obj142398%_ _%slot142399%_ _%val142400%_ _%E142401%_)
        (let* ((_%slot142404%_ _%slot142399%_)
               (_%E142412%_ _%E142401%_)
               (_%klass142421%_ (class-of _%obj142398%_))
               (_%$e142457%_
                (let* ((_%klass142424%_ _%klass142421%_)
                       (_%slot142427%_ _%slot142404%_)
                       (_%klass142432%_ _%klass142424%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot142427%_))
                      (let ((_%slot142447%_ _%slot142427%_))
                        (__class-slot-offset _%klass142432%_ _%slot142447%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot142427%_)
                        '#!void)))))
          (if _%$e142457%_
              (unchecked-field-set! _%obj142398%_ _%$e142457%_ _%val142400%_)
              (let ()
                (declare (not safe))
                (_%E142412%_ _%obj142398%_ _%slot142404%_))))))
    (define __slot-set!__0
      (lambda (_%obj142466%_ _%slot142467%_ _%val142468%_)
        (let ((_%E142470%_ __slot-error))
          (__slot-set!__%
           _%obj142466%_
           _%slot142467%_
           _%val142468%_
           _%E142470%_))))
    (define __slot-set!
      (lambda _g148529_
        (let ((_g148530_ (let () (declare (not safe)) (##length _g148529_))))
          (cond ((let () (declare (not safe)) (##fx= _g148530_ 3))
                 (apply __slot-set!__0 _g148529_))
                ((let () (declare (not safe)) (##fx= _g148530_ 4))
                 (apply __slot-set!__% _g148529_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g148529_))))))
    (define slot-set!__%
      (lambda (_%obj142356%_ _%slot142357%_ _%val142358%_ _%E142359%_)
        (if (symbol? _%slot142357%_)
            (let ((_%slot142363%_ _%slot142357%_))
              (if (procedure? _%E142359%_)
                  (let ((_%E142373%_ _%E142359%_))
                    (__slot-set!__%
                     _%obj142356%_
                     _%slot142363%_
                     _%val142358%_
                     _%E142373%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@789.43-789.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E142359%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@789.22-789.26"
               'contract:
               'symbol?
               'value:
               _%slot142357%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj142386%_ _%slot142387%_ _%val142388%_)
        (let ((_%E142390%_ __slot-error))
          (slot-set!__%
           _%obj142386%_
           _%slot142387%_
           _%val142388%_
           _%E142390%_))))
    (define slot-set!
      (lambda _g148531_
        (let ((_g148532_ (let () (declare (not safe)) (##length _g148531_))))
          (cond ((let () (declare (not safe)) (##fx= _g148532_ 3))
                 (apply slot-set!__0 _g148531_))
                ((let () (declare (not safe)) (##fx= _g148532_ 4))
                 (apply slot-set!__% _g148531_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g148531_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class142327%_ _%maybe-super-class142328%_)
        (let* ((_%maybe-sub-class142331%_ _%maybe-sub-class142327%_)
               (_%maybe-super-class142339%_ _%maybe-super-class142328%_)
               (_%maybe-super-class-id142348%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class142339%_)))
               (_%$e142350%_
                (eq? _%maybe-super-class-id142348%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class142331%_)))))
          (if _%$e142350%_
              _%$e142350%_
              (let ((__tmp148534
                     (lambda (_%super-class142353%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class142353%_))
                            _%maybe-super-class-id142348%_)))
                    (__tmp148533
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class142331%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp148534 __tmp148533))))))
    (define subclass?
      (lambda (_%maybe-sub-class142302%_ _%maybe-super-class142303%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class142302%_ 'class))
            (let ((_%maybe-sub-class142307%_ _%maybe-sub-class142302%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class142303%_
                     'class))
                  (let ((_%maybe-super-class142317%_
                         _%maybe-super-class142303%_))
                    (__subclass?
                     _%maybe-sub-class142307%_
                     _%maybe-super-class142317%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@795.45-795.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class142303%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@795.18-795.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class142302%_)
              '#!void))))
    (define object?
      (lambda (_%o142299%_)
        (if (let () (declare (not safe)) (##structure? _%o142299%_))
            (let ((__tmp148535
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o142299%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp148535 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass142286%_ _%obj142287%_)
        (let* ((_%klass142290%_ _%klass142286%_)
               (__tmp148536
                (let () (declare (not safe)) (##type-id _%klass142290%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj142287%_ __tmp148536))))
    (define direct-instance?
      (lambda (_%klass142271%_ _%obj142272%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142271%_ 'class))
            (let ((_%klass142276%_ _%klass142271%_))
              (__direct-instance? _%klass142276%_ _%obj142272%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@809.25-809.30"
               'contract:
               'class-type?
               'value:
               _%klass142271%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass142258%_ _%obj142259%_)
        (let* ((_%klass142262%_ _%klass142258%_)
               (__tmp148537
                (let () (declare (not safe)) (##type-id _%klass142262%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj142259%_ __tmp148537))))
    (define struct-instance?
      (lambda (_%klass142243%_ _%obj142244%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142243%_ 'class))
            (let ((_%klass142248%_ _%klass142243%_))
              (__struct-instance? _%klass142248%_ _%obj142244%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@821.25-821.30"
               'contract:
               'class-type?
               'value:
               _%klass142243%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass142195%_ _%obj142196%_)
        (let* ((_%klass142199%_ _%klass142195%_)
               (_%type142208%_ (class-of _%obj142196%_))
               (_%maybe-sub-class142210%_ _%type142208%_)
               (_%maybe-super-class142213%_ _%klass142199%_)
               (_%maybe-sub-class142218%_ _%maybe-sub-class142210%_)
               (_%maybe-super-class142233%_ _%maybe-super-class142213%_))
          (__subclass?
           _%maybe-sub-class142218%_
           _%maybe-super-class142233%_))))
    (define class-instance?
      (lambda (_%klass142180%_ _%obj142181%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142180%_ 'class))
            (let ((_%klass142185%_ _%klass142180%_))
              (__class-instance? _%klass142185%_ _%obj142181%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@833.24-833.29"
               'contract:
               'class-type?
               'value:
               _%klass142180%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass142139%_ _%k142140%_)
        (let* ((_%klass142143%_ _%klass142139%_) (_%k142151%_ _%k142140%_))
          (if (let* ((_%klass142160%_ _%klass142143%_)
                     (_%klass142165%_ _%klass142160%_))
                (__class-type-system? _%klass142165%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass142143%_)
                '#!void)
              (let ((_%obj142178%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass142143%_ _%k142151%_))))
                (__object-fill! _%obj142178%_ '#f))))))
    (define make-object
      (lambda (_%klass142114%_ _%k142115%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142114%_ 'class))
            (let ((_%klass142119%_ _%klass142114%_))
              (if (fixnum? _%k142115%_)
                  (let ((_%k142129%_ _%k142115%_))
                    (__make-object _%klass142119%_ _%k142129%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@838.37-838.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k142115%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@838.20-838.25"
               'contract:
               'class-type?
               'value:
               _%klass142114%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj142102%_)
        (let ((_%obj142105%_ _%obj142102%_))
          (declare (not safe))
          (##structure-type _%obj142105%_))))
    (define object-class
      (lambda (_%obj142088%_)
        (if (object? _%obj142088%_)
            (let ((_%obj142092%_ _%obj142088%_))
              (__object-class _%obj142092%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@858.21-858.24"
               'contract:
               'object?
               'value:
               _%obj142088%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj142070%_ _%fill142071%_)
        (let ((_%obj142074%_ _%obj142070%_))
          (let _%loop142083%_ ((_%i142085%_
                                (let ((__tmp148538
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj142074%_))))
                                  (declare (not safe))
                                  (##fx- __tmp148538 '1))))
            (if (let () (declare (not safe)) (##fx> _%i142085%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj142074%_
                     _%fill142071%_
                     _%i142085%_
                     '#f
                     '#f))
                  (_%loop142083%_
                   (let () (declare (not safe)) (##fx- _%i142085%_ '1))))
                _%obj142074%_)))))
    (define object-fill!
      (lambda (_%obj142055%_ _%fill142056%_)
        (if (object? _%obj142055%_)
            (let ((_%obj142060%_ _%obj142055%_))
              (__object-fill! _%obj142060%_ _%fill142056%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@863.21-863.24"
               'contract:
               'object?
               'value:
               _%obj142055%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass142011%_)
        (let* ((_%klass142014%_ _%klass142011%_)
               (_%klass142023%_ _%klass142014%_)
               (_%k142026%_
                (let ((__tmp148539
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass142014%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp148539)))
               (_%klass142031%_ _%klass142023%_)
               (_%k142045%_ _%k142026%_))
          (__make-object _%klass142031%_ _%k142045%_))))
    (define new-instance
      (lambda (_%klass141997%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141997%_ 'class))
            (let ((_%klass142001%_ _%klass141997%_))
              (__new-instance _%klass142001%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@874.21-874.26"
               'contract:
               'class-type?
               'value:
               _%klass141997%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass141856%_ . _%args141857%_)
        (let* ((_%klass141860%_ _%klass141856%_)
               (_%$e141869%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass141860%_ '10 '#f '#f))))
          (if _%$e141869%_
              (let ((_%obj141894%_
                     (let* ((_%klass141874%_ _%klass141860%_)
                            (_%klass141879%_ _%klass141874%_))
                       (__new-instance _%klass141879%_))))
                (___constructor-init!
                 _%klass141860%_
                 _%$e141869%_
                 _%obj141894%_
                 _%args141857%_)
                _%obj141894%_)
              (if (let* ((_%klass141896%_ _%klass141860%_)
                         (_%klass141901%_ _%klass141896%_))
                    (__class-type-metaclass? _%klass141901%_))
                  (let ((_%obj141928%_
                         (let* ((_%klass141912%_ _%klass141860%_)
                                (_%klass141917%_ _%klass141912%_))
                           (__new-instance _%klass141917%_))))
                    (__metaclass-instance-init!
                     _%klass141860%_
                     _%obj141928%_
                     _%args141857%_)
                    _%obj141928%_)
                  (if (let* ((_%klass141930%_ _%klass141860%_)
                             (_%klass141935%_ _%klass141930%_))
                        (__class-type-struct? _%klass141935%_))
                      (if (let ((__tmp148541
                                 (let* ((_%klass141964%_ _%klass141860%_)
                                        (_%klass141969%_ _%klass141964%_))
                                   (__class-type-field-count _%klass141969%_)))
                                (__tmp148540
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args141857%_))))
                            (declare (not safe))
                            (##fx= __tmp148541 __tmp148540))
                          (apply ##structure _%klass141860%_ _%args141857%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass141860%_
                                   'slots:
                                   (let* ((_%klass141981%_ _%klass141860%_)
                                          (_%klass141986%_ _%klass141981%_))
                                     (__class-type-slot-list _%klass141986%_))
                                   'args:
                                   _%args141857%_)
                            '#!void))
                      (let ((_%obj141962%_
                             (let* ((_%klass141946%_ _%klass141860%_)
                                    (_%klass141951%_ _%klass141946%_))
                               (__new-instance _%klass141951%_))))
                        (___class-instance-init!
                         _%klass141860%_
                         _%obj141962%_
                         _%args141857%_)
                        _%obj141962%_)))))))
    (define make-instance
      (lambda (_%klass141841%_ . _%args141842%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141841%_ 'class))
            (let ((_%klass141846%_ _%klass141841%_))
              (declare (not safe))
              (##apply __make-instance _%klass141846%_ _%args141842%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@877.22-877.27"
               'contract:
               'class-type?
               'value:
               _%klass141841%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj141828%_ . _%args141829%_)
        (let ((_%obj141832%_ _%obj141828%_))
          (if (let ((__tmp148543
                     (let () (declare (not safe)) (##length _%args141829%_)))
                    (__tmp148542
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj141832%_))))
                (declare (not safe))
                (##fx< __tmp148543 __tmp148542))
              (___struct-instance-init! _%obj141832%_ _%args141829%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj141832%_
                     'args:
                     _%args141829%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj141813%_ . _%args141814%_)
        (if (object? _%obj141813%_)
            (let ((_%obj141818%_ _%obj141813%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj141818%_ _%args141814%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@902.30-902.33"
               'contract:
               'object?
               'value:
               _%obj141813%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj141772%_ _%args141773%_)
        (let _%lp141775%_ ((_%k141777%_ '1) (_%rest141778%_ _%args141773%_))
          (let* ((_%$%rest141779141787%_ _%rest141778%_)
                 (_%$%else141781141795%_ (lambda () _%obj141772%_))
                 (_%$%K141783141801%_
                  (lambda (_%rest141798%_ _%hd141799%_)
                    (unchecked-field-set!
                     _%obj141772%_
                     _%k141777%_
                     _%hd141799%_)
                    (_%lp141775%_
                     (let () (declare (not safe)) (##fx+ _%k141777%_ '1))
                     _%rest141798%_))))
            (if (pair? _%$%rest141779141787%_)
                (let ((_%$%hd141784141804%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest141779141787%_)))
                      (_%$%tl141785141806%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest141779141787%_))))
                  (let* ((_%hd141809%_ _%$%hd141784141804%_)
                         (_%rest141811%_ _%$%tl141785141806%_))
                    (_%$%K141783141801%_ _%rest141811%_ _%hd141809%_)))
                (_%$%else141781141795%_))))))
    (define __class-instance-init!
      (lambda (_%obj141759%_ . _%args141760%_)
        (let ((_%obj141763%_ _%obj141759%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj141763%_))
           _%obj141763%_
           _%args141760%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj141744%_ . _%args141745%_)
        (if (object? _%obj141744%_)
            (let ((_%obj141749%_ _%obj141744%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj141749%_ _%args141745%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.29-942.32"
               'contract:
               'object?
               'value:
               _%obj141744%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass141686%_ _%obj141687%_ _%args141688%_)
        (let _%lp141690%_ ((_%rest141692%_ _%args141688%_))
          (let* ((_%$%rest141693141703%_ _%rest141692%_)
                 (_%$%else141695141711%_
                  (lambda ()
                    (if (null? _%rest141692%_)
                        _%obj141687%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass141686%_
                               'rest:
                               _%rest141692%_))))
                 (_%$%K141697141725%_
                  (lambda (_%rest141714%_ _%val141715%_ _%key141716%_)
                    (if (keyword? _%key141716%_)
                        (let ((_%$e141719%_
                               (__class-slot-offset
                                _%klass141686%_
                                _%key141716%_)))
                          (if _%$e141719%_
                              (let ()
                                (unchecked-field-set!
                                 _%obj141687%_
                                 _%$e141719%_
                                 _%val141715%_)
                                (_%lp141690%_ _%rest141714%_))
                              (error '"unknown slot"
                                     'class:
                                     _%klass141686%_
                                     'slot:
                                     _%key141716%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key141716%_)))))
            (if (pair? _%$%rest141693141703%_)
                (let ((_%$%hd141698141728%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest141693141703%_)))
                      (_%$%tl141699141730%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest141693141703%_))))
                  (let ((_%key141733%_ _%$%hd141698141728%_))
                    (if (pair? _%$%tl141699141730%_)
                        (let ((_%$%hd141700141735%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl141699141730%_)))
                              (_%$%tl141701141737%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl141699141730%_))))
                          (let* ((_%val141740%_ _%$%hd141700141735%_)
                                 (_%rest141742%_ _%$%tl141701141737%_))
                            (_%$%K141697141725%_
                             _%rest141742%_
                             _%val141740%_
                             _%key141733%_)))
                        (_%$%else141695141711%_))))
                (_%$%else141695141711%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass141682%_ _%obj141683%_ _%args141684%_)
        (apply call-method
               _%klass141682%_
               'instance-init!
               _%obj141683%_
               _%args141684%_)))
    (define __constructor-init!
      (lambda (_%klass141651%_
               _%kons-id141652%_
               _%obj141653%_
               .
               _%args141654%_)
        (let* ((_%klass141657%_ _%klass141651%_)
               (_%kons-id141665%_ _%kons-id141652%_)
               (_%obj141673%_ _%obj141653%_))
          (___constructor-init!
           _%klass141657%_
           _%kons-id141665%_
           _%obj141673%_
           _%args141654%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass141614%_
               _%kons-id141615%_
               _%obj141616%_
               .
               _%args141617%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141614%_ 'class))
            (let ((_%klass141621%_ _%klass141614%_))
              (if (symbol? _%kons-id141615%_)
                  (let ((_%kons-id141631%_ _%kons-id141615%_))
                    (if (object? _%obj141616%_)
                        (let ((_%obj141641%_ _%obj141616%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass141621%_
                                   _%kons-id141631%_
                                   _%obj141641%_
                                   _%args141617%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@966.63-966.66"
                           'contract:
                           'object?
                           'value:
                           _%obj141616%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@966.43-966.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id141615%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@966.26-966.31"
               'contract:
               'class-type?
               'value:
               _%klass141614%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass141603%_ _%kons-id141604%_ _%obj141605%_ _%args141606%_)
        (let ((_%$e141608%_
               (__find-method
                _%klass141603%_
                _%obj141605%_
                _%kons-id141604%_)))
          (if _%$e141608%_
              (let ()
                (apply _%$e141608%_ _%obj141605%_ _%args141606%_)
                _%obj141605%_)
              (error '"missing constructor"
                     'class:
                     _%klass141603%_
                     'method:
                     _%kons-id141604%_)))))
    (define __struct-copy
      (lambda (_%struct141591%_)
        (let ((_%struct141594%_ _%struct141591%_))
          (declare (not safe))
          (##structure-copy _%struct141594%_))))
    (define struct-copy
      (lambda (_%struct141577%_)
        (if (object? _%struct141577%_)
            (let ((_%struct141581%_ _%struct141577%_))
              (__struct-copy _%struct141581%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@980.20-980.26"
               'contract:
               'object?
               'value:
               _%struct141577%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj141558%_)
        (let* ((_%obj141561%_ _%obj141558%_)
               (_%len141570%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj141561%_))))
          (let _%recur141572%_ ((_%i141574%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i141574%_ _%len141570%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj141561%_
                         _%i141574%_
                         '#f
                         '#f))
                      (_%recur141572%_
                       (let () (declare (not safe)) (##fx+ _%i141574%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj141544%_)
        (if (object? _%obj141544%_)
            (let ((_%obj141548%_ _%obj141544%_))
              (__struct->list _%obj141548%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@983.21-983.24"
               'contract:
               'object?
               'value:
               _%obj141544%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj141496%_)
        (let* ((_%obj141499%_ _%obj141496%_)
               (_%klass141508%_
                (let () (declare (not safe)) (##structure-type _%obj141499%_)))
               (_%slot-vector141510%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass141508%_ '7 '#f '#f))))
          (let _%loop141512%_ ((_%index141514%_
                                (let ((__tmp148544
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector141510%_))))
                                  (declare (not safe))
                                  (##fx- __tmp148544 '1)))
                               (_%plist141515%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index141514%_ '1))
                (cons _%klass141508%_ _%plist141515%_)
                (let ((_%slot141518%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector141510%_
                          _%index141514%_))))
                  (_%loop141512%_
                   (let () (declare (not safe)) (##fx- _%index141514%_ '1))
                   (cons (let ((_%sym141520%_ _%slot141518%_))
                           (if (symbol? _%sym141520%_)
                               (let ((_%sym141525%_ _%sym141520%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym141525%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym141520%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj141499%_
                                _%index141514%_)
                               _%plist141515%_)))))))))
    (define class->list
      (lambda (_%obj141482%_)
        (if (object? _%obj141482%_)
            (let ((_%obj141486%_ _%obj141482%_)) (__class->list _%obj141486%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@991.20-991.23"
               'contract:
               'object?
               'value:
               _%obj141482%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj141432%_ _%id141433%_ . _%args141434%_)
        (let* ((_%id141437%_ _%id141433%_)
               (_%$e141468%_
                (let* ((_%obj141446%_ _%obj141432%_)
                       (_%id141449%_ _%id141437%_)
                       (_%id141454%_ _%id141449%_))
                  (__method-ref _%obj141446%_ _%id141454%_))))
          (if _%$e141468%_
              (let ((_%method141473%_ _%$e141468%_))
                (apply _%method141473%_ _%obj141432%_ _%args141434%_))
              (error '"cannot find method"
                     'object:
                     _%obj141432%_
                     'method:
                     _%id141437%_)))))
    (define call-method
      (lambda (_%obj141416%_ _%id141417%_ . _%args141418%_)
        (if (symbol? _%id141417%_)
            (let ((_%id141422%_ _%id141417%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj141416%_
                       _%id141422%_
                       _%args141418%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1006.24-1006.26"
               'contract:
               'symbol?
               'value:
               _%id141417%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj141367%_ _%id141368%_)
        (let* ((_%id141371%_ _%id141368%_)
               (_%klass141380%_ (class-of _%obj141367%_))
               (_%obj141383%_ _%obj141367%_)
               (_%id141386%_ _%id141371%_)
               (_%klass141391%_ _%klass141380%_)
               (_%id141406%_ _%id141386%_))
          (__find-method _%klass141391%_ _%obj141383%_ _%id141406%_))))
    (define method-ref
      (lambda (_%obj141352%_ _%id141353%_)
        (if (symbol? _%id141353%_)
            (let ((_%id141357%_ _%id141353%_))
              (__method-ref _%obj141352%_ _%id141357%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1033.23-1033.25"
               'contract:
               'symbol?
               'value:
               _%id141353%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj141324%_ _%id141325%_)
        (let ((_%$e141349%_
               (let* ((_%obj141328%_ _%obj141324%_)
                      (_%id141331%_ _%id141325%_))
                 (if (symbol? _%id141331%_)
                     (let ((_%id141336%_ _%id141331%_))
                       (__method-ref _%obj141328%_ _%id141336%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id141331%_)
                       '#!void)))))
          (if _%$e141349%_
              _%$e141349%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj141324%_
                       'method:
                       _%id141325%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj141273%_ _%id141274%_)
        (let* ((_%id141277%_ _%id141274%_)
               (_%$e141308%_
                (let* ((_%obj141286%_ _%obj141273%_)
                       (_%id141289%_ _%id141277%_)
                       (_%id141294%_ _%id141289%_))
                  (__method-ref _%obj141286%_ _%id141294%_))))
          (if _%$e141308%_
              (let ((_%method141313%_ _%$e141308%_))
                (lambda _%args141321%_
                  (apply _%method141313%_ _%obj141273%_ _%args141321%_)))
              '#f))))
    (define bound-method-ref
      (lambda (_%obj141258%_ _%id141259%_)
        (if (symbol? _%id141259%_)
            (let ((_%id141263%_ _%id141259%_))
              (__bound-method-ref _%obj141258%_ _%id141263%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1041.29-1041.31"
               'contract:
               'symbol?
               'value:
               _%id141259%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj141241%_ _%id141242%_)
        (let* ((_%id141245%_ _%id141242%_)
               (_%method141254%_
                (checked-method-ref _%obj141241%_ _%id141245%_)))
          (lambda _%args141256%_
            (apply _%method141254%_ _%obj141241%_ _%args141256%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj141226%_ _%id141227%_)
        (if (symbol? _%id141227%_)
            (let ((_%id141231%_ _%id141227%_))
              (__checked-bound-method-ref _%obj141226%_ _%id141231%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1050.37-1050.39"
               'contract:
               'symbol?
               'value:
               _%id141227%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass141095%_ _%obj141096%_ _%id141097%_)
        (let* ((_%klass141100%_ _%klass141095%_) (_%id141108%_ _%id141097%_))
          (if (let* ((_%klass141117%_ _%klass141100%_)
                     (_%klass141122%_ _%klass141117%_))
                (__class-type-sealed? _%klass141122%_))
              (let ((_%tab141152%_
                     (let* ((_%klass141136%_ _%klass141100%_)
                            (_%klass141141%_ _%klass141136%_))
                       (__specialize-class _%klass141141%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab141152%_ _%id141108%_ '#f))
              (let ((_%$e141187%_
                     (let* ((_%klass141154%_ _%klass141100%_)
                            (_%obj141157%_ _%obj141096%_)
                            (_%id141160%_ _%id141108%_)
                            (_%klass141165%_ _%klass141154%_)
                            (_%id141177%_ _%id141160%_))
                       (__direct-method-ref
                        _%klass141165%_
                        _%obj141157%_
                        _%id141177%_))))
                (if _%$e141187%_
                    _%$e141187%_
                    (let* ((_%klass141191%_ _%klass141100%_)
                           (_%obj141194%_ _%obj141096%_)
                           (_%id141197%_ _%id141108%_)
                           (_%klass141202%_ _%klass141191%_)
                           (_%id141216%_ _%id141197%_))
                      (__mixin-method-ref
                       _%klass141202%_
                       _%obj141194%_
                       _%id141216%_))))))))
    (define find-method
      (lambda (_%klass141069%_ _%obj141070%_ _%id141071%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141069%_ 'class))
            (let ((_%klass141075%_ _%klass141069%_))
              (if (symbol? _%id141071%_)
                  (let ((_%id141085%_ _%id141071%_))
                    (__find-method _%klass141075%_ _%obj141070%_ _%id141085%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1055.41-1055.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id141071%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1055.20-1055.25"
               'contract:
               'class-type?
               'value:
               _%klass141069%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins141014%_ _%obj141015%_ _%id141016%_)
        (let* ((_%id141019%_ _%id141016%_)
               (__tmp148545
                (lambda (_%$%g141027141029%_)
                  (let* ((_%klass141032%_ _%$%g141027141029%_)
                         (_%obj141035%_ _%obj141015%_)
                         (_%id141038%_ _%id141019%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass141032%_ 'class))
                        (let* ((_%klass141043%_ _%klass141032%_)
                               (_%id141059%_ _%id141038%_))
                          (__direct-method-ref
                           _%klass141043%_
                           _%obj141035%_
                           _%id141059%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass141032%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp148545 _%mixins141014%_))))
    (define mixin-find-method
      (lambda (_%mixins140998%_ _%obj140999%_ _%id141000%_)
        (if (symbol? _%id141000%_)
            (let ((_%id141004%_ _%id141000%_))
              (__mixin-find-method
               _%mixins140998%_
               _%obj140999%_
               _%id141004%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1064.37-1064.39"
               'contract:
               'symbol?
               'value:
               _%id141000%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass140891%_ _%obj140892%_ _%id140893%_)
        (let* ((_%klass140896%_ _%klass140891%_) (_%id140904%_ _%id140893%_))
          (letrec ((_%metaclass-resolve-method140913%_
                    (lambda ()
                      (let* ((_%obj140974%_ _%klass140896%_)
                             (_%id140977%_ 'direct-method-ref)
                             (_%args140980%_ (list _%obj140892%_ _%id140904%_))
                             (_%id140985%_ _%id140977%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj140974%_
                                 _%id140985%_
                                 _%args140980%_))))
                   (_%metaclass-resolve-method!140914%_
                    (lambda ()
                      (let ((_%method140971%_
                             (_%metaclass-resolve-method140913%_)))
                        (let ((__tmp148547
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass140896%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp148546
                               (if _%method140971%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp148547
                           _%id140904%_
                           __tmp148546))
                        _%method140971%_))))
            (let ((_%$e140916%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass140896%_ '11 '#f '#f))))
              (if _%$e140916%_
                  (let ((_%method140921%_
                         (let ()
                           (declare (not safe))
                           (symbolic-table-ref
                            _%$e140916%_
                            _%id140904%_
                            '#f))))
                    (if (procedure? _%method140921%_)
                        _%method140921%_
                        (if (let* ((_%klass140924%_ _%klass140896%_)
                                   (_%klass140929%_ _%klass140924%_))
                              (__class-type-metaclass? _%klass140929%_))
                            (let ((_%$e140947%_ _%method140921%_))
                              (if (eq? 'resolved _%$e140947%_)
                                  (_%metaclass-resolve-method140913%_)
                                  (if (eq? 'unknown _%$e140947%_)
                                      '#f
                                      (_%metaclass-resolve-method!140914%_))))
                            '#f)))
                  (if (let* ((_%klass140951%_ _%klass140896%_)
                             (_%klass140956%_ _%klass140951%_))
                        (__class-type-metaclass? _%klass140956%_))
                      (let ((_%tab140967%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass140896%_
                           _%tab140967%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!140914%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass140865%_ _%obj140866%_ _%id140867%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140865%_ 'class))
            (let ((_%klass140871%_ _%klass140865%_))
              (if (symbol? _%id140867%_)
                  (let ((_%id140881%_ _%id140867%_))
                    (__direct-method-ref
                     _%klass140871%_
                     _%obj140866%_
                     _%id140881%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1067.47-1067.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id140867%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1067.26-1067.31"
               'contract:
               'class-type?
               'value:
               _%klass140865%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass140817%_ _%obj140818%_ _%id140819%_)
        (let* ((_%klass140822%_ _%klass140817%_)
               (_%id140830%_ _%id140819%_)
               (_%mixins140839%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass140822%_ '6 '#f '#f)))
               (_%obj140842%_ _%obj140818%_)
               (_%id140845%_ _%id140830%_)
               (_%id140850%_ _%id140845%_))
          (__mixin-find-method _%mixins140839%_ _%obj140842%_ _%id140850%_))))
    (define mixin-method-ref
      (lambda (_%klass140791%_ _%obj140792%_ _%id140793%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140791%_ 'class))
            (let ((_%klass140797%_ _%klass140791%_))
              (if (symbol? _%id140793%_)
                  (let ((_%id140807%_ _%id140793%_))
                    (__mixin-method-ref
                     _%klass140797%_
                     _%obj140792%_
                     _%id140807%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1097.46-1097.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id140793%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1097.25-1097.30"
               'contract:
               'class-type?
               'value:
               _%klass140791%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass140672%_ _%id140673%_ _%proc140674%_ _%rebind?140675%_)
        (let* ((_%id140678%_ _%id140673%_) (_%proc140686%_ _%proc140674%_))
          (letrec ((_%flush-caches!140695%_
                    (lambda (_%klass140749%_)
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass140749%_
                             '12
                             '#f
                             '#f))
                          (begin
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               _%klass140749%_
                               '#f
                               '12
                               '#f
                               '#f))
                            (if (let ((_%klass140751%_ _%klass140749%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass140751%_
                                         'class))
                                      (let ((_%klass140756%_ _%klass140751%_))
                                        (__class-type-sealed? _%klass140756%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass140751%_)
                                        '#!void)))
                                (let ((__tmp148548
                                       (let ((__tmp148550
                                              (let ()
                                                (declare (not safe))
                                                (##fxnot class-type-flag-sealed)))
                                             (__tmp148549
                                              (let ()
                                                (declare (not safe))
                                                (##type-flags
                                                 _%klass140749%_))))
                                         (declare (not safe))
                                         (##fxand __tmp148550 __tmp148549))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass140749%_
                                   __tmp148548
                                   '3
                                   class::t
                                   bind-method!))
                                '#!void))
                          '#!void)
                      (if (and _%rebind?140675%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass140749%_
                                  '13
                                  '#f
                                  '#f)))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass140749%_
                             '#f
                             '13
                             '#f
                             '#f))
                          '#!void)
                      (let ((_%$e140767%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%klass140749%_
                                '9
                                '#f
                                '#f))))
                        (if _%$e140767%_
                            (let ((_%$e140772%_
                                   (let ()
                                     (declare (not safe))
                                     (agetq__0 'subclasses: _%$e140767%_))))
                              (if _%$e140772%_
                                  (for-each
                                   _%flush-caches!140695%_
                                   _%$e140772%_)
                                  '#!void))
                            '#!void))))
                   (_%bind!140696%_
                    (lambda (_%ht140747%_)
                      (if (if _%rebind?140675%_
                              '#f
                              (let ()
                                (declare (not safe))
                                (symbolic-table-ref
                                 _%ht140747%_
                                 _%id140678%_
                                 '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass140672%_
                                 'method:
                                 _%id140678%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht140747%_
                               _%id140678%_
                               _%proc140686%_))
                            (_%flush-caches!140695%_ _%klass140672%_)
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass140672%_ 'class))
                (let ((_%ht140699%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass140672%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht140699%_
                      (_%bind!140696%_ _%ht140699%_)
                      (let ((_%ht140701%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass140672%_
                           _%ht140701%_
                           '11
                           '#f
                           '#f))
                        (_%bind!140696%_ _%ht140701%_))))
                (if (let () (declare (not safe)) (##type? _%klass140672%_))
                    (let* ((_%klass140704%_
                            (__shadow-class__0 _%klass140672%_))
                           (_%id140707%_ _%id140678%_)
                           (_%proc140710%_ _%proc140686%_)
                           (_%rebind?140713%_ _%rebind?140675%_)
                           (_%id140718%_ _%id140707%_)
                           (_%proc140736%_ _%proc140710%_))
                      (__bind-method!__%
                       _%klass140704%_
                       _%id140718%_
                       _%proc140736%_
                       _%rebind?140713%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass140672%_)))))))
    (define __bind-method!__0
      (lambda (_%klass140780%_ _%id140781%_ _%proc140782%_)
        (let ((_%rebind?140784%_ '#f))
          (__bind-method!__%
           _%klass140780%_
           _%id140781%_
           _%proc140782%_
           _%rebind?140784%_))))
    (define __bind-method!
      (lambda _g148551_
        (let ((_g148552_ (let () (declare (not safe)) (##length _g148551_))))
          (cond ((let () (declare (not safe)) (##fx= _g148552_ 3))
                 (apply __bind-method!__0 _g148551_))
                ((let () (declare (not safe)) (##fx= _g148552_ 4))
                 (apply __bind-method!__% _g148551_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g148551_))))))
    (define bind-method!__%
      (lambda (_%klass140630%_ _%id140631%_ _%proc140632%_ _%rebind?140633%_)
        (if (symbol? _%id140631%_)
            (let ((_%id140637%_ _%id140631%_))
              (if (procedure? _%proc140632%_)
                  (let ((_%proc140647%_ _%proc140632%_))
                    (__bind-method!__%
                     _%klass140630%_
                     _%id140637%_
                     _%proc140647%_
                     _%rebind?140633%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1100.42-1100.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc140632%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1100.27-1100.29"
               'contract:
               'symbol?
               'value:
               _%id140631%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass140660%_ _%id140661%_ _%proc140662%_)
        (let ((_%rebind?140664%_ '#f))
          (bind-method!__%
           _%klass140660%_
           _%id140661%_
           _%proc140662%_
           _%rebind?140664%_))))
    (define bind-method!
      (lambda _g148553_
        (let ((_g148554_ (let () (declare (not safe)) (##length _g148553_))))
          (cond ((let () (declare (not safe)) (##fx= _g148554_ 3))
                 (apply bind-method!__0 _g148553_))
                ((let () (declare (not safe)) (##fx= _g148554_ 4))
                 (apply bind-method!__% _g148553_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g148553_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint140611%_ _%seed140612%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint140611%_
           procedure-hash
           eq?
           _%seed140612%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint140618%_ '#f) (_%seed140620%_ '0))
          (make-method-specializer-table__%
           _%size-hint140618%_
           _%seed140620%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint140622%_)
        (let ((_%seed140624%_ '0))
          (make-method-specializer-table__%
           _%size-hint140622%_
           _%seed140624%_))))
    (define make-method-specializer-table
      (lambda _g148555_
        (let ((_g148556_ (let () (declare (not safe)) (##length _g148555_))))
          (cond ((let () (declare (not safe)) (##fx= _g148556_ 0))
                 (apply make-method-specializer-table__0 _g148555_))
                ((let () (declare (not safe)) (##fx= _g148556_ 1))
                 (apply make-method-specializer-table__1 _g148555_))
                ((let () (declare (not safe)) (##fx= _g148556_ 2))
                 (apply make-method-specializer-table__% _g148555_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g148555_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint140591%_ _%seed140593%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint140591%_
           procedure-hash
           eq?
           _%seed140593%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint140599%_ '#f) (_%seed140601%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint140599%_
           _%seed140601%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint140603%_)
        (let ((_%seed140605%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint140603%_
           _%seed140605%_))))
    (define make-method-specializer-table/lock
      (lambda _g148557_
        (let ((_g148558_ (let () (declare (not safe)) (##length _g148557_))))
          (cond ((let () (declare (not safe)) (##fx= _g148558_ 0))
                 (apply make-method-specializer-table/lock__0 _g148557_))
                ((let () (declare (not safe)) (##fx= _g148558_ 1))
                 (apply make-method-specializer-table/lock__1 _g148557_))
                ((let () (declare (not safe)) (##fx= _g148558_ 2))
                 (apply make-method-specializer-table/lock__% _g148557_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g148557_))))))
    (define method-specializer-table-ref
      (lambda (_%tab140544%_ _%key140545%_ _%default140546%_)
        (let ((_%table140548%_
               (let () (declare (not safe)) (&raw-table-table _%tab140544%_)))
              (_%seed140549%_
               (let () (declare (not safe)) (&raw-table-seed _%tab140544%_))))
          (let* ((_%h140551%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key140545%_))
                         _%seed140549%_))
                 (_%size140554%_ (vector-length _%table140548%_))
                 (_%entries140557%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size140554%_ '2)))
                 (_%start140560%_
                  (let ((__tmp148559
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h140551%_ _%entries140557%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp148559 '1))))
            (let _%loop140564%_ ((_%probe140567%_ _%start140560%_)
                                 (_%i140569%_ '1)
                                 (_%deleted140571%_ '#f))
              (let ((_%k140574%_ (vector-ref _%table140548%_ _%probe140567%_)))
                (if (eq? _%k140574%_ (macro-unused-obj))
                    _%default140546%_
                    (if (eq? _%k140574%_ (macro-deleted-obj))
                        (_%loop140564%_
                         (let ((_%next-probe140579%_
                                (fx+ _%start140560%_
                                     _%i140569%_
                                     (fx* _%i140569%_ _%i140569%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe140579%_ _%size140554%_))
                         (let () (declare (not safe)) (##fx+ _%i140569%_ '1))
                         (let ((_%$e140582%_ _%deleted140571%_))
                           (if _%$e140582%_ _%$e140582%_ _%probe140567%_)))
                        (if (eq? _%key140545%_ _%k140574%_)
                            (vector-ref
                             _%table140548%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe140567%_ '1)))
                            (_%loop140564%_
                             (let ((_%next-probe140587%_
                                    (fx+ _%start140560%_
                                         _%i140569%_
                                         (fx* _%i140569%_ _%i140569%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe140587%_
                                _%size140554%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i140569%_ '1))
                             _%deleted140571%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab140515%_ _%key140516%_ _%default140517%_)
        (let ((_%lock140519%_
               (let () (declare (not safe)) (&raw-table-lock _%tab140515%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again140524%_ ((_%spin140527%_ '0))
              (if (let ((__tmp148560
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock140519%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp148560 '0))
                  (let ((__tmp148561 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock140519%_ '1 __tmp148561))
                  (if (let () (declare (not safe)) (##fx< _%spin140527%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again140524%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin140527%_ '1))))
                      (let ((_%owner140533%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock140519%_ '1))))
                        (if (eq? _%owner140533%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner140533%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again140524%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r140539%_
                 (method-specializer-table-ref
                  _%tab140515%_
                  _%key140516%_
                  _%default140517%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock140519%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock140519%_ '0 '0 '1))))
            _%$r140539%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab140467%_ _%key140468%_ _%value140469%_)
        (let ((_%table140471%_
               (let () (declare (not safe)) (&raw-table-table _%tab140467%_)))
              (_%seed140472%_
               (let () (declare (not safe)) (&raw-table-seed _%tab140467%_))))
          (let* ((_%h140474%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key140468%_))
                         _%seed140472%_))
                 (_%size140477%_ (vector-length _%table140471%_))
                 (_%entries140480%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size140477%_ '2)))
                 (_%start140483%_
                  (let ((__tmp148562
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h140474%_ _%entries140480%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp148562 '1))))
            (let _%loop140487%_ ((_%probe140490%_ _%start140483%_)
                                 (_%i140492%_ '1)
                                 (_%deleted140494%_ '#f))
              (let ((_%k140497%_ (vector-ref _%table140471%_ _%probe140490%_)))
                (if (eq? _%k140497%_ (macro-unused-obj))
                    (if _%deleted140494%_
                        (begin
                          (vector-set!
                           _%table140471%_
                           _%deleted140494%_
                           _%key140468%_)
                          (vector-set!
                           _%table140471%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted140494%_ '1))
                           _%value140469%_)
                          (let ((__tmp148563
                                 (let ((__tmp148564
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab140467%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp148564 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab140467%_ __tmp148563)))
                        (begin
                          (vector-set!
                           _%table140471%_
                           _%probe140490%_
                           _%key140468%_)
                          (vector-set!
                           _%table140471%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe140490%_ '1))
                           _%value140469%_)
                          (let ()
                            (let ((__tmp148565
                                   (let ((__tmp148566
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab140467%_))))
                                     (declare (not safe))
                                     (##fx- __tmp148566 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab140467%_ __tmp148565))
                            (let ((__tmp148567
                                   (let ((__tmp148568
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab140467%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp148568 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab140467%_
                               __tmp148567)))))
                    (if (eq? _%k140497%_ (macro-deleted-obj))
                        (_%loop140487%_
                         (let ((_%next-probe140504%_
                                (fx+ _%start140483%_
                                     _%i140492%_
                                     (fx* _%i140492%_ _%i140492%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe140504%_ _%size140477%_))
                         (let () (declare (not safe)) (##fx+ _%i140492%_ '1))
                         (let ((_%$e140507%_ _%deleted140494%_))
                           (if _%$e140507%_ _%$e140507%_ _%probe140490%_)))
                        (if (eq? _%key140468%_ _%k140497%_)
                            (let ()
                              (vector-set!
                               _%table140471%_
                               _%probe140490%_
                               _%key140468%_)
                              (vector-set!
                               _%table140471%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe140490%_ '1))
                               _%value140469%_))
                            (_%loop140487%_
                             (let ((_%next-probe140512%_
                                    (fx+ _%start140483%_
                                         _%i140492%_
                                         (fx* _%i140492%_ _%i140492%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe140512%_
                                _%size140477%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i140492%_ '1))
                             _%deleted140494%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab140463%_ _%key140464%_ _%value140465%_)
        (if (let ((__tmp148571
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab140463%_)))
                  (__tmp148569
                   (let ((__tmp148570
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab140463%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp148570 '4))))
              (declare (not safe))
              (##fx< __tmp148571 __tmp148569))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab140463%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab140463%_
         _%key140464%_
         _%value140465%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab140433%_ _%key140434%_ _%value140435%_)
        (let ((_%lock140438%_
               (let () (declare (not safe)) (&raw-table-lock _%tab140433%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again140443%_ ((_%spin140446%_ '0))
              (if (let ((__tmp148572
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock140438%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp148572 '0))
                  (let ((__tmp148573 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock140438%_ '1 __tmp148573))
                  (if (let () (declare (not safe)) (##fx< _%spin140446%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again140443%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin140446%_ '1))))
                      (let ((_%owner140452%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock140438%_ '1))))
                        (if (eq? _%owner140452%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner140452%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again140443%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r140458%_
                 (method-specializer-table-set!
                  _%tab140433%_
                  _%key140434%_
                  _%value140435%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock140438%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock140438%_ '0 '0 '1))))
            _%$r140458%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab140384%_
               _%key140385%_
               _%method-specializer-table-update!140386%_
               _%default140387%_)
        (let ((_%table140389%_
               (let () (declare (not safe)) (&raw-table-table _%tab140384%_)))
              (_%seed140390%_
               (let () (declare (not safe)) (&raw-table-seed _%tab140384%_))))
          (let* ((_%h140392%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key140385%_))
                         _%seed140390%_))
                 (_%size140395%_ (vector-length _%table140389%_))
                 (_%entries140398%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size140395%_ '2)))
                 (_%start140401%_
                  (let ((__tmp148574
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h140392%_ _%entries140398%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp148574 '1))))
            (let _%loop140405%_ ((_%probe140408%_ _%start140401%_)
                                 (_%i140410%_ '1)
                                 (_%deleted140412%_ '#f))
              (let ((_%k140415%_ (vector-ref _%table140389%_ _%probe140408%_)))
                (if (eq? _%k140415%_ (macro-unused-obj))
                    (if _%deleted140412%_
                        (begin
                          (vector-set!
                           _%table140389%_
                           _%deleted140412%_
                           _%key140385%_)
                          (vector-set!
                           _%table140389%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted140412%_ '1))
                           (_%method-specializer-table-update!140386%_
                            _%default140387%_))
                          (let ((__tmp148575
                                 (let ((__tmp148576
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab140384%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp148576 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab140384%_ __tmp148575)))
                        (begin
                          (vector-set!
                           _%table140389%_
                           _%probe140408%_
                           _%key140385%_)
                          (vector-set!
                           _%table140389%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe140408%_ '1))
                           (_%method-specializer-table-update!140386%_
                            _%default140387%_))
                          (let ()
                            (let ((__tmp148577
                                   (let ((__tmp148578
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab140384%_))))
                                     (declare (not safe))
                                     (##fx- __tmp148578 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab140384%_ __tmp148577))
                            (let ((__tmp148579
                                   (let ((__tmp148580
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab140384%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp148580 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab140384%_
                               __tmp148579)))))
                    (if (eq? _%k140415%_ (macro-deleted-obj))
                        (_%loop140405%_
                         (let ((_%next-probe140422%_
                                (fx+ _%start140401%_
                                     _%i140410%_
                                     (fx* _%i140410%_ _%i140410%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe140422%_ _%size140395%_))
                         (let () (declare (not safe)) (##fx+ _%i140410%_ '1))
                         (let ((_%$e140425%_ _%deleted140412%_))
                           (if _%$e140425%_ _%$e140425%_ _%probe140408%_)))
                        (if (eq? _%key140385%_ _%k140415%_)
                            (let ()
                              (vector-set!
                               _%table140389%_
                               _%probe140408%_
                               _%key140385%_)
                              (vector-set!
                               _%table140389%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe140408%_ '1))
                               (_%method-specializer-table-update!140386%_
                                (vector-ref
                                 _%table140389%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe140408%_ '1))))))
                            (_%loop140405%_
                             (let ((_%next-probe140430%_
                                    (fx+ _%start140401%_
                                         _%i140410%_
                                         (fx* _%i140410%_ _%i140410%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe140430%_
                                _%size140395%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i140410%_ '1))
                             _%deleted140412%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab140379%_
               _%key140380%_
               _%method-specializer-table-update!140381%_
               _%default140382%_)
        (if (let ((__tmp148583
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab140379%_)))
                  (__tmp148581
                   (let ((__tmp148582
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab140379%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp148582 '4))))
              (declare (not safe))
              (##fx< __tmp148583 __tmp148581))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab140379%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab140379%_
         _%key140380%_
         _%method-specializer-table-update!140381%_
         _%default140382%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab140348%_
               _%key140349%_
               _%method-specializer-table-update!140350%_
               _%default140351%_)
        (let ((_%lock140354%_
               (let () (declare (not safe)) (&raw-table-lock _%tab140348%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again140359%_ ((_%spin140362%_ '0))
              (if (let ((__tmp148584
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock140354%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp148584 '0))
                  (let ((__tmp148585 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock140354%_ '1 __tmp148585))
                  (if (let () (declare (not safe)) (##fx< _%spin140362%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again140359%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin140362%_ '1))))
                      (let ((_%owner140368%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock140354%_ '1))))
                        (if (eq? _%owner140368%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner140368%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again140359%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r140374%_
                 (_%method-specializer-table-update!140350%_
                  _%tab140348%_
                  _%key140349%_
                  _%method-specializer-table-update!140350%_
                  _%default140351%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock140354%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock140354%_ '0 '0 '1))))
            _%$r140374%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab140305%_ _%key140306%_)
        (let ((_%table140308%_
               (let () (declare (not safe)) (&raw-table-table _%tab140305%_)))
              (_%seed140310%_
               (let () (declare (not safe)) (&raw-table-seed _%tab140305%_))))
          (let* ((_%h140313%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key140306%_))
                         _%seed140310%_))
                 (_%size140316%_ (vector-length _%table140308%_))
                 (_%entries140319%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size140316%_ '2)))
                 (_%start140322%_
                  (let ((__tmp148586
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h140313%_ _%entries140319%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp148586 '1))))
            (let _%loop140326%_ ((_%probe140329%_ _%start140322%_)
                                 (_%i140331%_ '1))
              (let ((_%k140334%_ (vector-ref _%table140308%_ _%probe140329%_)))
                (if (eq? _%k140334%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k140334%_ (macro-deleted-obj))
                        (_%loop140326%_
                         (let ((_%next-probe140339%_
                                (fx+ _%start140322%_
                                     _%i140331%_
                                     (fx* _%i140331%_ _%i140331%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe140339%_ _%size140316%_))
                         (let () (declare (not safe)) (##fx+ _%i140331%_ '1)))
                        (if (eq? _%key140306%_ _%k140334%_)
                            (let ()
                              (vector-set!
                               _%table140308%_
                               _%probe140329%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table140308%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe140329%_ '1))
                               (macro-absent-obj))
                              (let ((__tmp148587
                                     (let ((__tmp148588
                                            (let ()
                                              (declare (not safe))
                                              (&raw-table-count
                                               _%tab140305%_))))
                                       (declare (not safe))
                                       (##fx- __tmp148588 '1))))
                                (declare (not safe))
                                (&raw-table-count-set!
                                 _%tab140305%_
                                 __tmp148587)))
                            (_%loop140326%_
                             (let ((_%next-probe140345%_
                                    (fx+ _%start140322%_
                                         _%i140331%_
                                         (fx* _%i140331%_ _%i140331%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe140345%_
                                _%size140316%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i140331%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab140275%_ _%key140277%_)
        (let ((_%lock140280%_
               (let () (declare (not safe)) (&raw-table-lock _%tab140275%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again140285%_ ((_%spin140288%_ '0))
              (if (let ((__tmp148589
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock140280%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp148589 '0))
                  (let ((__tmp148590 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock140280%_ '1 __tmp148590))
                  (if (let () (declare (not safe)) (##fx< _%spin140288%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again140285%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin140288%_ '1))))
                      (let ((_%owner140294%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock140280%_ '1))))
                        (if (eq? _%owner140294%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner140294%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again140285%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r140300%_
                 (method-specializer-table-delete!
                  _%tab140275%_
                  _%key140277%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock140280%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock140280%_ '0 '0 '1))))
            _%$r140300%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc140272%_ _%specializer140273%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc140272%_
         _%specializer140273%_)))
    (define __lookup-method-specializer
      (lambda (_%proc140270%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc140270%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass140252%_)
        (let* ((_%klass140255%_ _%klass140252%_)
               (_%$e140264%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass140255%_ '12 '#f '#f))))
          (if _%$e140264%_
              _%$e140264%_
              (let ((_%method-table140268%_
                     (___specialize-class _%klass140255%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass140255%_
                   _%method-table140268%_
                   '12
                   '#f
                   '#f))
                _%method-table140268%_)))))
    (define specialize-class
      (lambda (_%klass140238%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140238%_ 'class))
            (let ((_%klass140242%_ _%klass140238%_))
              (__specialize-class _%klass140242%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1174.25-1174.30"
               'contract:
               'class-type?
               'value:
               _%klass140238%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass140222%_
               _%method-table140223%_
               _%method140224%_
               _%proc140225%_)
        (let ((_%$e140227%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table140223%_
                  _%method140224%_
                  '#f))))
          (if _%$e140227%_
              _%$e140227%_
              (let ((_%$e140230%_
                     (__lookup-method-specializer _%proc140225%_)))
                (if _%$e140230%_
                    (let ((_%specialized-proc140235%_
                           (_%$e140230%_
                            _%klass140222%_
                            _%method-table140223%_)))
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table140223%_
                       _%method140224%_
                       _%specialized-proc140235%_))
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table140223%_
                       _%method140224%_
                       _%proc140225%_))))))))
    (define ___specialize-class
      (lambda (_%klass140089%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140089%_ 'class))
            (if (let* ((_%klass140092%_ _%klass140089%_)
                       (_%klass140097%_ _%klass140092%_))
                  (__class-type-metaclass? _%klass140097%_))
                (let* ((_%obj140109%_ _%klass140089%_)
                       (_%id140112%_ 'specialize-class)
                       (_%args140115%_ '())
                       (_%id140120%_ _%id140112%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj140109%_
                           _%id140120%_
                           _%args140115%_))
                (if (let* ((_%pred140133%_ class-type-metaclass?)
                           (_%lst140136%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass140089%_
                               '6
                               '#f
                               '#f)))
                           (_%pred140141%_ _%pred140133%_))
                      (declare (not safe))
                      (__find _%pred140141%_ _%lst140136%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass140089%_)
                    (let ((_%method-table140154%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop140156%_ ((_%rest140158%_
                                            (let* ((_%klass140205%_
                                                    _%klass140089%_)
                                                   (_%klass140210%_
                                                    _%klass140205%_))
                                              (__class-precedence-list
                                               _%klass140210%_))))
                        (let* ((_%$%rest140159140167%_ _%rest140158%_)
                               (_%$%else140161140175%_
                                (lambda () _%method-table140154%_))
                               (_%$%K140163140193%_
                                (lambda (_%rest140178%_ _%xklass140179%_)
                                  (let ((_%$%xmethod-table140180140182%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass140179%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%$%xmethod-table140180140182%_
                                        (let* ((_%xmethod-table140184%_
                                                _%$%xmethod-table140180140182%_)
                                               (__tmp148591
                                                (lambda (_%$%g140185140188%_
                                                         _%$%g140186140190%_)
                                                  (__specialize-method
                                                   _%klass140089%_
                                                   _%method-table140154%_
                                                   _%$%g140185140188%_
                                                   _%$%g140186140190%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table140184%_
                                           __tmp148591))
                                        '#f))
                                  (_%loop140156%_ _%rest140178%_))))
                          (if (pair? _%$%rest140159140167%_)
                              (let ((_%$%hd140164140196%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest140159140167%_)))
                                    (_%$%tl140165140198%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest140159140167%_))))
                                (let* ((_%xklass140201%_ _%$%hd140164140196%_)
                                       (_%rest140203%_ _%$%tl140165140198%_))
                                  (_%$%K140163140193%_
                                   _%rest140203%_
                                   _%xklass140201%_)))
                              (_%$%else140161140175%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass140089%_))
                (__specialize-class (__shadow-class__0 _%klass140089%_))
                (error '"bad class; cannot specialize" _%klass140089%_)))))
    (define __seal-class!
      (lambda (_%klass139952%_)
        (let ((_%klass139955%_ _%klass139952%_))
          (if (let* ((_%klass139964%_ _%klass139955%_)
                     (_%klass139969%_ _%klass139964%_))
                (__class-type-sealed? _%klass139969%_))
              '#!void
              (begin
                (if (let* ((_%klass139982%_ _%klass139955%_)
                           (_%klass139987%_ _%klass139982%_))
                      (__class-type-metaclass? _%klass139987%_))
                    (let ()
                      (let* ((_%obj139998%_ _%klass139955%_)
                             (_%id140001%_ 'seal-class!)
                             (_%args140004%_ '())
                             (_%id140009%_ _%id140001%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj139998%_
                                 _%id140009%_
                                 _%args140004%_))
                      (let* ((_%klass140022%_ _%klass139955%_)
                             (_%klass140027%_ _%klass140022%_))
                        (__specialize-class _%klass140027%_)))
                    (if (let* ((_%pred140037%_ class-type-metaclass?)
                               (_%lst140040%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass139955%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred140045%_ _%pred140037%_))
                          (declare (not safe))
                          (__find _%pred140045%_ _%lst140040%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass139955%_)
                        (let* ((_%klass140058%_ _%klass139955%_)
                               (_%klass140063%_ _%klass140058%_))
                          (__specialize-class _%klass140063%_))))
                (let* ((_%klass140074%_ _%klass139955%_)
                       (_%klass140079%_ _%klass140074%_))
                  (__class-type-seal! _%klass140079%_)))))))
    (define seal-class!
      (lambda (_%klass139938%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139938%_ 'class))
            (let ((_%klass139942%_ _%klass139938%_))
              (__seal-class! _%klass139942%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1220.20-1220.25"
               'contract:
               'class-type?
               'value:
               _%klass139938%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass139826%_ _%obj139827%_ _%id139828%_)
        (let* ((_%subklass139831%_ _%subklass139826%_)
               (_%id139839%_ _%id139828%_))
          (letrec ((_%find-next-method139848%_
                    (lambda (_%klass139850%_)
                      (let _%lp139852%_ ((_%rest139854%_
                                          (let ((_%klass139923%_
                                                 _%klass139850%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass139923%_
                                                   'class))
                                                (let ((_%klass139928%_
                                                       _%klass139923%_))
                                                  (__class-precedence-list
                                                   _%klass139928%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass139923%_)
                                                  '#!void)))))
                        (let* ((_%$%rest139855139863%_ _%rest139854%_)
                               (_%$%else139857139871%_ (lambda () '#f))
                               (_%$%K139859139911%_
                                (lambda (_%rest139874%_ _%klass139875%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass139831%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass139875%_)))
                                      (let* ((_%mixins139877%_ _%rest139874%_)
                                             (_%obj139880%_ _%obj139827%_)
                                             (_%id139883%_ _%id139839%_)
                                             (_%id139888%_ _%id139883%_))
                                        (__mixin-find-method
                                         _%mixins139877%_
                                         _%obj139880%_
                                         _%id139888%_))
                                      (_%lp139852%_ _%rest139874%_)))))
                          (if (pair? _%$%rest139855139863%_)
                              (let ((_%$%hd139860139914%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest139855139863%_)))
                                    (_%$%tl139861139916%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest139855139863%_))))
                                (let* ((_%klass139919%_ _%$%hd139860139914%_)
                                       (_%rest139921%_ _%$%tl139861139916%_))
                                  (_%$%K139859139911%_
                                   _%rest139921%_
                                   _%klass139919%_)))
                              (_%$%else139857139871%_)))))))
            (_%find-next-method139848%_ (class-of _%obj139827%_))))))
    (define next-method
      (lambda (_%subklass139800%_ _%obj139801%_ _%id139802%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass139800%_ 'class))
            (let ((_%subklass139806%_ _%subklass139800%_))
              (if (symbol? _%id139802%_)
                  (let ((_%id139816%_ _%id139802%_))
                    (__next-method
                     _%subklass139806%_
                     _%obj139801%_
                     _%id139816%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1242.44-1242.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id139802%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1242.20-1242.28"
               'contract:
               'class-type?
               'value:
               _%subklass139800%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass139735%_ _%obj139736%_ _%id139737%_ . _%args139738%_)
        (let* ((_%subklass139741%_ _%subklass139735%_)
               (_%id139749%_ _%id139737%_)
               (_%$e139794%_
                (let* ((_%subklass139758%_ _%subklass139741%_)
                       (_%obj139761%_ _%obj139736%_)
                       (_%id139764%_ _%id139749%_)
                       (_%subklass139769%_ _%subklass139758%_)
                       (_%id139784%_ _%id139764%_))
                  (__next-method
                   _%subklass139769%_
                   _%obj139761%_
                   _%id139784%_))))
          (if _%$e139794%_
              (apply _%$e139794%_ _%obj139736%_ _%args139738%_)
              (error '"cannot find next method"
                     'object:
                     _%obj139736%_
                     'method:
                     _%id139749%_)))))
    (define call-next-method
      (lambda (_%subklass139708%_ _%obj139709%_ _%id139710%_ . _%args139711%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass139708%_ 'class))
            (let ((_%subklass139715%_ _%subklass139708%_))
              (if (symbol? _%id139710%_)
                  (let ((_%id139725%_ _%id139710%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass139715%_
                             _%obj139709%_
                             _%id139725%_
                             _%args139711%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1253.49-1253.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id139710%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1253.25-1253.33"
               'contract:
               'class-type?
               'value:
               _%subklass139708%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type139487%_ _%properties139488%_)
        (letrec ((_%shadow-type-id139490%_
                  (lambda (_%type139696%_)
                    (let ((__tmp148592
                           (let ()
                             (declare (not safe))
                             (##type-name _%type139696%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp148592 '"::t"))))
                 (_%shadow-type-name139491%_
                  (lambda (_%type139694%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type139694%_))))
                 (_%make-shadow-class139492%_
                  (lambda (_%type139576%_ _%precedence-list139577%_)
                    (let* ((_%super139579%_
                            (if (pair? _%precedence-list139577%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list139577%_))
                                      '())
                                '()))
                           (_%klass139691%_
                            (let* ((_%id139581%_
                                    (_%shadow-type-id139490%_ _%type139576%_))
                                   (_%name139584%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type139576%_)))
                                   (_%direct-supers139587%_ _%super139579%_)
                                   (_%direct-slots139590%_ '())
                                   (_%properties139616%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type139576%_)
                                                      (append (if (let ((_%type139593%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%type139576%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##type? _%type139593%_))
                                (let ((_%type139598%_ _%type139593%_))
                                  (__type-extensible? _%type139598%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/mop
                                   'contract:
                                   '##type?
                                   'value:
                                   _%type139593%_)
                                  '#!void)))
                          '()
                          (cons (cons 'final: '#t) '()))
                      _%properties139488%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor139619%_ '#f)
                                   (_%id139624%_ _%id139581%_))
                              (if (symbol? _%name139584%_)
                                  (let* ((_%name139635%_ _%name139584%_)
                                         (_%direct-supers139645%_
                                          _%direct-supers139587%_)
                                         (_%direct-slots139655%_
                                          _%direct-slots139590%_)
                                         (_%properties139665%_
                                          _%properties139616%_))
                                    (if (let ((_%$e139677%_ '#t))
                                          (and _%$e139677%_ _%$e139677%_))
                                        (let ((_%constructor139681%_
                                               _%constructor139619%_))
                                          (__make-class-type
                                           _%id139624%_
                                           _%name139635%_
                                           _%direct-supers139645%_
                                           _%direct-slots139655%_
                                           _%properties139665%_
                                           _%constructor139681%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor139619%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name139584%_)
                                    '#!void)))))
                      (let ((__tmp148593
                             (let ()
                               (declare (not safe))
                               (##type-id _%type139576%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp148593
                         _%klass139691%_))
                      _%klass139691%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again139496%_ ((_%spin139499%_ '0))
              (if (let ((__tmp148594
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp148594 '0))
                  (let ((__tmp148595 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp148595))
                  (if (let () (declare (not safe)) (##fx< _%spin139499%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again139496%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin139499%_ '1))))
                      (let ((_%owner139505%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner139505%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner139505%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again139496%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e139511%_
                 (let ((__tmp148596
                        (let ()
                          (declare (not safe))
                          (##type-id _%type139487%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp148596 '#f))))
            (if _%$e139511%_
                (let ()
                  (let ()
                    (declare (not interrupts-enabled))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##vector-set! __shadow-classes-lock '1 '#f))
                      (let ()
                        (declare (not safe))
                        (##vector-cas! __shadow-classes-lock '0 '0 '1))))
                  _%$e139511%_)
                (let _%loop139519%_ ((_%super139521%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type139487%_)))
                                     (_%hierarchy139522%_ '()))
                  (if _%super139521%_
                      (_%loop139519%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super139521%_))
                       (cons _%super139521%_ _%hierarchy139522%_))
                      (let _%loop139525%_ ((_%rest139527%_ _%hierarchy139522%_)
                                           (_%precedence-list139528%_ '()))
                        (let* ((_%$%rest139529139537%_ _%rest139527%_)
                               (_%$%else139531139549%_
                                (lambda ()
                                  (let ((_%klass139545%_
                                         (_%make-shadow-class139492%_
                                          _%type139487%_
                                          _%precedence-list139528%_)))
                                    (let ()
                                      (declare (not interrupts-enabled))
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##vector-set!
                                           __shadow-classes-lock
                                           '1
                                           '#f))
                                        (let ()
                                          (declare (not safe))
                                          (##vector-cas!
                                           __shadow-classes-lock
                                           '0
                                           '0
                                           '1))))
                                    _%klass139545%_)))
                               (_%$%K139533139563%_
                                (lambda (_%rest139552%_ _%type139553%_)
                                  (let ((_%$e139555%_
                                         (let ((__tmp148597
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type139553%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp148597
                                            '#f))))
                                    (if _%$e139555%_
                                        (_%loop139525%_
                                         _%rest139552%_
                                         (cons _%$e139555%_
                                               _%precedence-list139528%_))
                                        (let ((_%klass139561%_
                                               (_%make-shadow-class139492%_
                                                _%type139553%_
                                                _%precedence-list139528%_)))
                                          (_%loop139525%_
                                           _%rest139552%_
                                           (cons _%klass139561%_
                                                 _%precedence-list139528%_))))))))
                          (if (pair? _%$%rest139529139537%_)
                              (let ((_%$%hd139534139566%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest139529139537%_)))
                                    (_%$%tl139535139568%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest139529139537%_))))
                                (let* ((_%type139571%_ _%$%hd139534139566%_)
                                       (_%rest139573%_ _%$%tl139535139568%_))
                                  (_%$%K139533139563%_
                                   _%rest139573%_
                                   _%type139571%_)))
                              (_%$%else139531139549%_)))))))))))
    (define __shadow-class__0
      (lambda (_%type139701%_)
        (let ((_%properties139703%_ '()))
          (__shadow-class__% _%type139701%_ _%properties139703%_))))
    (define __shadow-class
      (lambda _g148598_
        (let ((_g148599_ (let () (declare (not safe)) (##length _g148598_))))
          (cond ((let () (declare (not safe)) (##fx= _g148599_ 1))
                 (apply __shadow-class__0 _g148598_))
                ((let () (declare (not safe)) (##fx= _g148599_ 2))
                 (apply __shadow-class__% _g148598_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g148598_))))))
    (define __type
      (let* ((_%tb139475%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e139477%_ _%tb139475%_))
        (if (eq? '2 _%$e139477%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e139477%_)
                (let ((_%flonum-self-tagging-tags139480%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits139481%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e139483%_ _%flonum-self-tagging-tags139480%_))
                    (if (eq? '0 _%$e139483%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits139481%_ '2))
                            '#(fixnum
                               subtyped
                               special
                               vector
                               fixnum
                               pair
                               undefined
                               haflonum)
                            '#(fixnum
                               subtyped
                               undefined
                               vector
                               special
                               pair
                               undefined
                               haflonum))
                        (if (eq? '1 _%$e139483%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits139481%_ '2))
                                '#(fixnum
                                   subtyped
                                   special
                                   vector
                                   fixnum
                                   pair
                                   stflonum
                                   haflonum)
                                '#(fixnum
                                   subtyped
                                   undefined
                                   vector
                                   special
                                   pair
                                   stflonum
                                   haflonum))
                            (if (eq? '2 _%$e139483%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e139483%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e139483%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags139480%_))))))))
                (error '"unexpected tag width" _%tb139475%_)))))
    (define __primitive-class
      (let ((__tmp148600 (vector-length __type)))
        (declare (not safe))
        (##make-vector __tmp148600 '#f)))
    (define __boxvalues-class
      (let () (declare (not safe)) (##make-vector '2 '#f)))
    (define __subtype-class
      (let () (declare (not safe)) (##make-vector '32 '#f)))
    (define __char-class '#f)
    (define __special-class
      (let () (declare (not safe)) (##make-vector '16 '#f)))
    (define __class-of
      (let* ((_%len139365%_ (vector-length __type))
             (_%cv139367%_
              (let () (declare (not safe)) (##make-vector _%len139365%_ '#f))))
        (let _%loop139370%_ ((_%i139372%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i139372%_ _%len139365%_))
              (let* ((_%t139374%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i139372%_)))
                     (_%f139472%_
                      (if (eq? _%t139374%_ 'undefined)
                          (lambda (_%obj139377%_)
                            (error '"object type is undefined" _%obj139377%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t139374%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj139380%_)
                                (declare (not interrupts-enabled) (not safe))
                                (let ((_%$e139383%_
                                       (##vector-ref
                                        __primitive-class
                                        _%i139372%_)))
                                  (if _%$e139383%_
                                      _%$e139383%_
                                      (let ((_%klass139387%_
                                             (__system-class _%t139374%_)))
                                        (##vector-set!
                                         __primitive-class
                                         _%i139372%_
                                         _%klass139387%_)
                                        _%klass139387%_))))
                              (if (eq? _%t139374%_ 'subtyped)
                                  (lambda (_%obj139391%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st139394%_
                                           (##subtype _%obj139391%_)))
                                      (if (##fx= _%st139394%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass139397%_
                                                 (##structure-type
                                                  _%obj139391%_)))
                                            (if (##structure-instance-of?
                                                 _%klass139397%_
                                                 'class)
                                                _%klass139397%_
                                                (__shadow-class__0
                                                 _%klass139397%_)))
                                          (if (##fx= _%st139394%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj139391%_)
                                                         '1)
                                                  (let ((_%$e139400%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '0)))
                                                    (if _%$e139400%_
                                                        _%$e139400%_
                                                        (let ((_%klass139404%_
                                                               (__system-class
                                                                'box)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '0
                                                           _%klass139404%_)
                                                          _%klass139404%_)))
                                                  (let ((_%$e139407%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '1)))
                                                    (if _%$e139407%_
                                                        _%$e139407%_
                                                        (let ((_%klass139411%_
                                                               (__system-class
                                                                'values)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '1
                                                           _%klass139411%_)
                                                          _%klass139411%_))))
                                              (let ((_%$e139414%_
                                                     (##vector-ref
                                                      __subtype-class
                                                      _%st139394%_)))
                                                (if _%$e139414%_
                                                    _%$e139414%_
                                                    (let ((_%klass139431%_
                                                           (let ((_%$e139418%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref __subtype-id _%st139394%_)))
                     (if _%$e139418%_
                         (let ((_%$e139423%_
                                (##vector-ref __subtype-class _%st139394%_)))
                           (if _%$e139423%_
                               _%$e139423%_
                               (let ((_%klass139427%_
                                      (__system-class _%$e139418%_)))
                                 (##vector-set!
                                  __subtype-class
                                  _%st139394%_
                                  _%klass139427%_)
                                 _%klass139427%_)))
                         (error '"unknown class"
                                'object:
                                _%obj139391%_
                                'subtype:
                                _%st139394%_)))))
              (##vector-set! __subtype-class _%st139394%_ _%klass139431%_)
              _%klass139431%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (eq? _%t139374%_ 'special)
                                      (lambda (_%obj139435%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (let ((_%x139438%_
                                               (##type-cast _%obj139435%_ '0)))
                                          (if (##fx> _%x139438%_ '0)
                                              (let ((_%$e139441%_
                                                     __char-class))
                                                (if _%$e139441%_
                                                    _%$e139441%_
                                                    (let ((_%klass139445%_
                                                           (__system-class
                                                            'char)))
                                                      (set! __char-class
                                                            _%klass139445%_)
                                                      _%klass139445%_)))
                                              (let* ((_%t139448%_
                                                      (##fx- _%x139438%_))
                                                     (_%$e139451%_
                                                      (##vector-ref
                                                       __special-class
                                                       _%t139448%_)))
                                                (if _%$e139451%_
                                                    _%$e139451%_
                                                    (let ((_%klass139469%_
                                                           (if (eq? _%obj139435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                       (__system-class 'null)
                       (if (eq? _%obj139435%_ '#f)
                           (__system-class 'false)
                           (if (eq? _%obj139435%_ '#t)
                               (__system-class 'true)
                               (if (eq? _%obj139435%_ '#!void)
                                   (__system-class 'void)
                                   (if (eq? _%obj139435%_ '#!eof)
                                       (__system-class 'eof)
                                       (if (eq? _%obj139435%_ '#!unbound)
                                           (__system-class 'unbound)
                                           (if (eq? _%obj139435%_ '#!unbound2)
                                               (__system-class 'unbound2)
                                               (if (eq? _%obj139435%_
                                                        '#!optional)
                                                   (__system-class 'optional)
                                                   (if (eq? _%obj139435%_
                                                            '#!rest)
                                                       (__system-class 'rest)
                                                       (if (eq? _%obj139435%_
                                                                '#!key)
                                                           (__system-class
                                                            'key)
                                                           (if (eq? _%obj139435%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (macro-unused-obj))
                       (__system-class 'unused)
                       (if (eq? _%obj139435%_ (macro-deleted-obj))
                           (__system-class 'deleted)
                           (if (eq? _%obj139435%_ (macro-absent-obj))
                               (__system-class 'absent)
                               (__system-class 'unknown))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (##vector-set! __special-class _%t139448%_ _%klass139469%_)
              _%klass139469%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t139374%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv139367%_ _%i139372%_ _%f139472%_))
                (_%loop139370%_
                 (let () (declare (not safe)) (##fx+ _%i139372%_ '1))))
              _%cv139367%_))))
    (define type-of
      (lambda (_%obj139361%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj139361%_)))))
    (define class-of
      (lambda (_%obj139352%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t139356%_ (##type _%obj139352%_))
                 (_%f139358%_ (##vector-ref __class-of _%t139356%_)))
            (_%f139358%_ _%obj139352%_)))))
    (define __subtype-id (let () (declare (not safe)) (##make-vector '32 '#f)))
    (vector-set! __subtype-id (macro-subtype-vector) 'vector)
    (vector-set! __subtype-id (macro-subtype-pair) 'pair)
    (vector-set! __subtype-id (macro-subtype-ratnum) 'ratnum)
    (vector-set! __subtype-id (macro-subtype-cpxnum) 'cpxnum)
    (vector-set! __subtype-id (macro-subtype-symbol) 'symbol)
    (vector-set! __subtype-id (macro-subtype-keyword) 'keyword)
    (vector-set! __subtype-id (macro-subtype-frame) 'frame)
    (vector-set! __subtype-id (macro-subtype-continuation) 'continuation)
    (vector-set! __subtype-id (macro-subtype-promise) 'promise)
    (vector-set! __subtype-id (macro-subtype-weak) 'weak)
    (vector-set! __subtype-id (macro-subtype-procedure) 'procedure)
    (vector-set! __subtype-id (macro-subtype-return) 'return)
    (vector-set! __subtype-id (macro-subtype-foreign) 'foreign)
    (vector-set! __subtype-id (macro-subtype-string) 'string)
    (vector-set! __subtype-id (macro-subtype-s8vector) 's8vector)
    (vector-set! __subtype-id (macro-subtype-u8vector) 'u8vector)
    (vector-set! __subtype-id (macro-subtype-s16vector) 's16vector)
    (vector-set! __subtype-id (macro-subtype-u16vector) 'u16vector)
    (vector-set! __subtype-id (macro-subtype-s32vector) 's32vector)
    (vector-set! __subtype-id (macro-subtype-u32vector) 'u32vector)
    (vector-set! __subtype-id (macro-subtype-f32vector) 'f32vector)
    (vector-set! __subtype-id (macro-subtype-s64vector) 's64vector)
    (vector-set! __subtype-id (macro-subtype-u64vector) 'u64vector)
    (vector-set! __subtype-id (macro-subtype-f64vector) 'f64vector)
    (vector-set! __subtype-id (macro-subtype-flonum) 'haflonum)
    (vector-set! __subtype-id (macro-subtype-bignum) 'bignum)
    (define __system-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __system-class
      (lambda (_%id139346%_)
        (let ((_%$e139348%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id139346%_ '#f))))
          (if _%$e139348%_
              _%$e139348%_
              (error '"unknown system class" _%id139346%_)))))
    (define __make-system-class
      (lambda (_%id139248%_ _%super139249%_ _%properties139250%_)
        (let ((_%klass139344%_
               (let* ((_%id139252%_ _%id139248%_)
                      (_%name139255%_ _%id139248%_)
                      (_%direct-supers139258%_ _%super139249%_)
                      (_%direct-slots139261%_ '())
                      (_%properties139264%_
                       (cons '(system: . #t) _%properties139250%_))
                      (_%constructor139267%_ '#f))
                 (if (symbol? _%id139252%_)
                     (let ((_%id139272%_ _%id139252%_))
                       (if (symbol? _%name139255%_)
                           (let ((_%name139288%_ _%name139255%_))
                             (if (list? _%direct-supers139258%_)
                                 (let* ((_%direct-supers139298%_
                                         _%direct-supers139258%_)
                                        (_%direct-slots139308%_
                                         _%direct-slots139261%_)
                                        (_%properties139318%_
                                         _%properties139264%_))
                                   (if (let ((_%$e139330%_ '#t))
                                         (and _%$e139330%_ _%$e139330%_))
                                       (let ((_%constructor139334%_
                                              _%constructor139267%_))
                                         (__make-class-type
                                          _%id139272%_
                                          _%name139288%_
                                          _%direct-supers139298%_
                                          _%direct-slots139308%_
                                          _%properties139318%_
                                          _%constructor139334%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor139267%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers139258%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name139255%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id139252%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id139248%_
             _%klass139344%_))
          _%klass139344%_)))))
