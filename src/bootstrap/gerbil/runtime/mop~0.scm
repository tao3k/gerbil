(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1789371522)
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
      (let ((_%flags145328%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties145329%_ '((direct-slots:) (system: . #t)))
            (_%slot-table145330%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags145328%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table145330%_
           _%properties145329%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots145285%_
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
             (_%slot-vector145287%_ (list->vector (cons '#f _%slots145285%_)))
             (_%slot-table145313%_
              (let ((_%slot-table145289%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp148286
                       (lambda (_%slot145291%_ _%field145292%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table145289%_
                            _%slot145291%_
                            _%field145292%_))
                         (let ((__tmp148287
                                (let ((_%sym145294%_ _%slot145291%_))
                                  (if (symbol? _%sym145294%_)
                                      (let ((_%sym145299%_ _%sym145294%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym145299%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym145294%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table145289%_
                            __tmp148287
                            _%field145292%_))))
                      (__tmp148284
                       (let ((__tmp148285
                              (let ()
                                (declare (not safe))
                                (##length _%slots145285%_))))
                         (declare (not safe))
                         (##iota __tmp148285 '1))))
                  (declare (not safe))
                  (##for-each __tmp148286 _%slots145285%_ __tmp148284))
                _%slot-table145289%_))
             (_%flags145315%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields145321%_
              (list->vector
               (let ((__tmp148288
                      (map (lambda (_%$%g145316145318%_)
                             (list _%$%g145316145318%_ '5 '#f))
                           (drop _%slots145285%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp148288))))
             (_%properties145323%_
              (cons (cons 'direct-slots: _%slots145285%_) '((struct: . #t))))
             (_%t145325%_
              (let ((__tmp148289 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags145315%_
                 ##type-type
                 _%fields145321%_
                 __tmp148289
                 _%slot-vector145287%_
                 _%slot-table145313%_
                 _%properties145323%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t145325%_ _%t145325%_))
        _%t145325%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags145281%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties145282%_ '((direct-slots:) (system: . #t)))
            (_%slot-table145283%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp148290 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags145281%_
           '#f
           '#()
           __tmp148290
           '#(#f)
           _%slot-table145283%_
           _%properties145282%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass145269%_)
        (let ((_%klass145272%_ _%klass145269%_))
          (declare (not safe))
          (##structure-type _%klass145272%_))))
    (define class-type
      (lambda (_%klass145255%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass145255%_ 'class))
            (let ((_%klass145259%_ _%klass145255%_))
              (__class-type _%klass145259%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass145255%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj145253%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj145253%_ 'class))))
    (define __class-type=?
      (lambda (_%x145232%_ _%y145233%_)
        (let* ((_%x145236%_ _%x145232%_) (_%y145244%_ _%y145233%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x145236%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y145244%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x145207%_ _%y145208%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x145207%_ 'class))
            (let ((_%x145212%_ _%x145207%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y145208%_ 'class))
                  (let ((_%y145222%_ _%y145208%_))
                    (__class-type=? _%x145212%_ _%y145222%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y145208%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x145207%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type145195%_)
        (let* ((_%type145198%_ _%type145195%_)
               (__tmp148291
                (let ((__tmp148292
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type145198%_))))
                  (declare (not safe))
                  (##fxand __tmp148292 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp148291 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type145181%_)
        (if (let () (declare (not safe)) (##type? _%type145181%_))
            (let ((_%type145185%_ _%type145181%_))
              (__type-opaque? _%type145185%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type145181%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass145169%_)
        (let* ((_%klass145172%_ _%klass145169%_)
               (__tmp148293
                (let ((__tmp148294
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass145172%_))))
                  (declare (not safe))
                  (##fxand __tmp148294 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp148293 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass145155%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass145155%_ 'class))
            (let ((_%klass145159%_ _%klass145155%_))
              (__class-type-opaque? _%klass145159%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass145155%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type145143%_)
        (let* ((_%type145146%_ _%type145143%_)
               (__tmp148295
                (let ((__tmp148296
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type145146%_))))
                  (declare (not safe))
                  (##fxand __tmp148296 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp148295 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type145129%_)
        (if (let () (declare (not safe)) (##type? _%type145129%_))
            (let ((_%type145133%_ _%type145129%_))
              (__type-extensible? _%type145133%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type145129%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type145117%_)
        (let* ((_%type145120%_ _%type145117%_)
               (__tmp148297
                (let ((__tmp148298
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type145120%_))))
                  (declare (not safe))
                  (##fxand __tmp148298 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp148297 '0))))
    (define class-type-final?
      (lambda (_%type145103%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type145103%_ 'class))
            (let ((_%type145107%_ _%type145103%_))
              (__class-type-final? _%type145107%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type145103%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass145091%_)
        (let* ((_%klass145094%_ _%klass145091%_)
               (__tmp148299
                (let ((__tmp148300
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass145094%_))))
                  (declare (not safe))
                  (##fxand __tmp148300 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp148299 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass145077%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass145077%_ 'class))
            (let ((_%klass145081%_ _%klass145077%_))
              (__class-type-struct? _%klass145081%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass145077%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass145065%_)
        (let* ((_%klass145068%_ _%klass145065%_)
               (__tmp148301
                (let ((__tmp148302
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass145068%_))))
                  (declare (not safe))
                  (##fxand __tmp148302 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp148301 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass145051%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass145051%_ 'class))
            (let ((_%klass145055%_ _%klass145051%_))
              (__class-type-sealed? _%klass145055%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass145051%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass145039%_)
        (let* ((_%klass145042%_ _%klass145039%_)
               (__tmp148303
                (let ((__tmp148304
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass145042%_))))
                  (declare (not safe))
                  (##fxand __tmp148304 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp148303 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass145025%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass145025%_ 'class))
            (let ((_%klass145029%_ _%klass145025%_))
              (__class-type-metaclass? _%klass145029%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass145025%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass145013%_)
        (let* ((_%klass145016%_ _%klass145013%_)
               (__tmp148305
                (let ((__tmp148306
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass145016%_))))
                  (declare (not safe))
                  (##fxand __tmp148306 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp148305 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass144999%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass144999%_ 'class))
            (let ((_%klass145003%_ _%klass144999%_))
              (__class-type-system? _%klass145003%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass144999%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass144987%_)
        (let* ((_%klass144990%_ _%klass144987%_)
               (__tmp148307
                (let ((__tmp148308
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass144990%_))))
                  (declare (not safe))
                  (##fxand __tmp148308 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp148307 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass144973%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass144973%_ 'class))
            (let ((_%klass144977%_ _%klass144973%_))
              (__class-type-acyclic? _%klass144977%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass144973%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id144739%_
               _%type-name144740%_
               _%type-super144741%_
               _%precedence-list144742%_
               _%slot-vector144743%_
               _%properties144744%_
               _%constructor144745%_
               _%slot-table144746%_
               _%methods144747%_)
        (letrec ((_%make-props!144750%_
                  (lambda (_%key144918%_ _%transparent?144919%_)
                    (letrec* ((_%ht144921%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!144922%_
                               (lambda (_%ht144966%_ _%slots144967%_)
                                 (for-each
                                  (lambda (_%$%g144968144970%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht144966%_
                                       _%$%g144968144970%_
                                       '#t)))
                                  _%slots144967%_)))
                              (_%put-all-new-slots!144923%_
                               (lambda (_%ht144958%_)
                                 (let ((_%first144960%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-super144741%_
                                               'class))
                                            (let ((__tmp148309
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%type-super144741%_
                                                      '7
                                                      '#f
                                                      '#f))))
                                              (declare (not safe))
                                              (##vector-length __tmp148309))
                                            '1)))
                                   (let _%lp144962%_ ((_%i144964%_
                                                       _%first144960%_))
                                     (if (let ((__tmp148310
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-length
                                                   _%slot-vector144743%_))))
                                           (declare (not safe))
                                           (##fx< _%i144964%_ __tmp148310))
                                         (begin
                                           (let ((__tmp148311
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _%slot-vector144743%_
                                                     _%i144964%_))))
                                             (declare (not safe))
                                             (symbolic-table-set!
                                              _%ht144958%_
                                              __tmp148311
                                              '#t))
                                           (_%lp144962%_
                                            (let ()
                                              (declare (not safe))
                                              (##fx+ _%i144964%_ '1))))
                                         '#!void)))))
                              (_%put-alist!144924%_
                               (lambda (_%ht144949%_
                                        _%key144950%_
                                        _%alist144951%_)
                                 (let ((_%$e144953%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__%
                                           _%key144950%_
                                           _%alist144951%_
                                           _%transparent?144919%_))))
                                   (if _%$e144953%_
                                       (if (eq? _%$e144953%_ '#t)
                                           (_%put-all-new-slots!144923%_
                                            _%ht144949%_)
                                           (_%put-slots!144922%_
                                            _%ht144949%_
                                            _%$e144953%_))
                                       '#!void)))))
                      (_%put-alist!144924%_
                       _%ht144921%_
                       _%key144918%_
                       _%properties144744%_)
                      (for-each
                       (lambda (_%mixin144926%_)
                         (let ((_%alist144928%_
                                (##structure-ref
                                 _%mixin144926%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (eq? '#t
                                    (let ()
                                      (declare (not safe))
                                      (agetq__%
                                       _%key144918%_
                                       _%alist144928%_
                                       _%transparent?144919%_)))
                               (_%put-slots!144922%_
                                _%ht144921%_
                                (let ((_%klass144930%_ _%mixin144926%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass144930%_
                                         'class))
                                      (let ((_%klass144935%_ _%klass144930%_))
                                        (__class-type-slot-list
                                         _%klass144935%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass144930%_)
                                        '#!void))))
                               (_%put-alist!144924%_
                                _%ht144921%_
                                _%key144918%_
                                _%alist144928%_))))
                       _%precedence-list144742%_)
                      _%ht144921%_)))
                 (_%all-slots-property?144751%_
                  (lambda (_%key144913%_ _%transparent?144914%_)
                    (let ((_%entry144916%_
                           (assq _%key144913%_ _%properties144744%_)))
                      (if _%entry144916%_
                          (eq? (cdr _%entry144916%_) '#t)
                          _%transparent?144914%_)))))
          (let* ((_%transparent?144771%_
                  (let ((__tmp148312
                         (if _%type-super144741%_
                             (not (let ((_%type144753%_ _%type-super144741%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##type? _%type144753%_))
                                        (let ((_%type144758%_ _%type144753%_))
                                          (__type-opaque? _%type144758%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '##type?
                                           'value:
                                           _%type144753%_)
                                          '#!void))))
                             '#t)))
                    (declare (not safe))
                    (agetq__% 'transparent: _%properties144744%_ __tmp148312)))
                 (_%all-slots-printable?144773%_
                  (_%all-slots-property?144751%_
                   'print:
                   _%transparent?144771%_))
                 (_%printable144775%_
                  (if _%all-slots-printable?144773%_
                      '#f
                      (_%make-props!144750%_ 'print: _%transparent?144771%_)))
                 (_%all-slots-equalable?144777%_
                  (_%all-slots-property?144751%_
                   'equal:
                   _%transparent?144771%_))
                 (_%equalable144779%_
                  (if _%all-slots-equalable?144777%_
                      '#f
                      (_%make-props!144750%_ 'equal: _%transparent?144771%_)))
                 (_%first-new-field144781%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super144741%_ 'class))
                      (let ((__tmp148313
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super144741%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp148313))
                      '1))
                 (_%field-info-length144783%_
                  (let ((__tmp148314
                         (let ((__tmp148315
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector144743%_))))
                           (declare (not safe))
                           (##fx- __tmp148315 _%first-new-field144781%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp148314)))
                 (_%field-info144785%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length144783%_ '#f)))
                 (_%_144803%_
                  (let _%loop144787%_ ((_%i144789%_ _%first-new-field144781%_)
                                       (_%j144790%_ '0))
                    (if (let ()
                          (declare (not safe))
                          (##fx< _%j144790%_ _%field-info-length144783%_))
                        (let* ((_%slot144792%_
                                (let ()
                                  (declare (not safe))
                                  (##vector-ref
                                   _%slot-vector144743%_
                                   _%i144789%_)))
                               (_%flags144800%_
                                (let ((__tmp148317
                                       (if (or _%all-slots-printable?144773%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%printable144775%_
                                                  _%slot144792%_
                                                  '#f)))
                                           '0
                                           '1))
                                      (__tmp148316
                                       (if (or _%all-slots-equalable?144777%_
                                               (let ()
                                                 (declare (not safe))
                                                 (symbolic-table-ref
                                                  _%equalable144779%_
                                                  _%slot144792%_
                                                  '#f)))
                                           '0
                                           '4)))
                                  (declare (not safe))
                                  (##fxior __tmp148317 __tmp148316))))
                          (vector-set!
                           _%field-info144785%_
                           _%j144790%_
                           _%slot144792%_)
                          (vector-set!
                           _%field-info144785%_
                           (let () (declare (not safe)) (##fx+ _%j144790%_ '1))
                           _%flags144800%_)
                          (_%loop144787%_
                           (let () (declare (not safe)) (##fx+ _%i144789%_ '1))
                           (let ()
                             (declare (not safe))
                             (##fx+ _%j144790%_ '3))))
                        '#!void)))
                 (_%struct?144805%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties144744%_)))
                 (_%final?144807%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties144744%_)))
                 (_%metaclass144814%_
                  (let ((_%$%metaclass144808144810%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties144744%_))))
                    (if _%$%metaclass144808144810%_
                        (let ((_%metaclass144812%_
                               _%$%metaclass144808144810%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass144812%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id144739%_
                                     'metaclass:
                                     _%metaclass144812%_))
                          _%metaclass144812%_)
                        '#f)))
                 (_%system?144816%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties144744%_)))
                 (_%opaque?144825%_
                  (let ((_%$e144822%_
                         (let ((_%eq-entry144818%_
                                (assq 'equal: _%properties144744%_)))
                           (if _%eq-entry144818%_
                               (not (cdr _%eq-entry144818%_))
                               (let ((_%tr-entry144820%_
                                      (assq 'transparent:
                                            _%properties144744%_)))
                                 (if _%tr-entry144820%_
                                     (not (cdr _%tr-entry144820%_))
                                     '#f))))))
                    (if _%$e144822%_
                        _%$e144822%_
                        (let ((__tmp148318
                               (let ()
                                 (declare (not safe))
                                 (agetq__%
                                  'direct-supers:
                                  _%properties144744%_
                                  '()))))
                          (declare (not safe))
                          (ormap__0 type-opaque? __tmp148318)))))
                 (_%acyclic?144827%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties144744%_)))
                 (_%type-flags144829%_
                  (let ((__tmp148324
                         (if _%final?144807%_ '0 type-flag-extensible))
                        (__tmp148323
                         (if _%opaque?144825%_ type-flag-opaque '0))
                        (__tmp148322
                         (if _%struct?144805%_ class-type-flag-struct '0))
                        (__tmp148321
                         (if _%metaclass144814%_ class-type-flag-metaclass '0))
                        (__tmp148320
                         (if _%system?144816%_ class-type-flag-system '0))
                        (__tmp148319
                         (if _%acyclic?144827%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp148324
                             __tmp148323
                             __tmp148322
                             __tmp148321
                             __tmp148320
                             __tmp148319)))
                 (_%precedence-list144837%_
                  (let ((_%$e144831%_ (memq t::t _%precedence-list144742%_)))
                    (if _%$e144831%_
                        (if (null? (cdr _%$e144831%_))
                            _%precedence-list144742%_
                            (error '"BUG: t::t is not last in the precedence list"
                                   'precedence-list:
                                   _%precedence-list144742%_))
                        (let ((__tmp148325 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list144742%_ __tmp148325)))))
                 (_%klass144878%_
                  (if _%metaclass144814%_
                      (let ((_%val144875%_
                             (let* ((_%klass144839%_ _%metaclass144814%_)
                                    (_%args144842%_
                                     (list _%type-id144739%_
                                           _%type-name144740%_
                                           _%type-flags144829%_
                                           _%type-super144741%_
                                           _%field-info144785%_
                                           _%precedence-list144837%_
                                           _%slot-vector144743%_
                                           _%slot-table144746%_
                                           _%properties144744%_
                                           _%constructor144745%_
                                           _%methods144747%_
                                           '#f
                                           '#f)))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%klass144839%_
                                      'class))
                                   (let ((_%klass144847%_ _%klass144839%_))
                                     (declare (not safe))
                                     (##apply __make-instance
                                              _%klass144847%_
                                              _%args144842%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%klass144839%_)
                                     '#!void)))))
                        (if (let ()
                              (declare (not safe))
                              (##structure-instance-of? _%val144875%_ 'class))
                            _%val144875%_
                            (begin
                              (raise-contract-violation-error
                               '"contract violation"
                               'context:
                               '"\"gerbil/runtime/mop.ss\"@326.16-329.37"
                               'contract:
                               '(class-type? val)
                               'value:
                               _%val144875%_)
                              '#!void)))
                      (let ()
                        (declare (not safe))
                        (##structure
                         class::t
                         _%type-id144739%_
                         _%type-name144740%_
                         _%type-flags144829%_
                         _%type-super144741%_
                         _%field-info144785%_
                         _%precedence-list144837%_
                         _%slot-vector144743%_
                         _%slot-table144746%_
                         _%properties144744%_
                         _%constructor144745%_
                         _%methods144747%_
                         '#f
                         '#f)))))
            (for-each
             (lambda (_%super144881%_)
               (let ()
                 (declare (not interrupts-enabled))
                 (let _%again144885%_ ((_%spin144888%_ '0))
                   (if (let ((__tmp148326
                              (let ()
                                (declare (not safe))
                                (##vector-cas!
                                 __class-type-properties-lock
                                 '0
                                 '1
                                 '0))))
                         (declare (not safe))
                         (##fx= __tmp148326 '0))
                       (let ((__tmp148327 (current-thread)))
                         (declare (not safe))
                         (##vector-set!
                          __class-type-properties-lock
                          '1
                          __tmp148327))
                       (if (let ()
                             (declare (not safe))
                             (##fx< _%spin144888%_ '10))
                           (let ()
                             (let () (declare (not safe)) (##thread-yield!))
                             (_%again144885%_
                              (let ()
                                (declare (not safe))
                                (##fx+ _%spin144888%_ '1))))
                           (let ((_%owner144894%_
                                  (let ()
                                    (declare (not safe))
                                    (##vector-ref
                                     __class-type-properties-lock
                                     '1))))
                             (if (eq? _%owner144894%_ (macro-current-thread))
                                 (let ()
                                   (declare (not safe))
                                   (##thread-deadlock-action!))
                                 (if (macro-thread-end-condvar _%owner144894%_)
                                     (let ()
                                       (let ()
                                         (declare (not safe))
                                         (##thread-yield!))
                                       (_%again144885%_ '0))
                                     (let ()
                                       (declare (not safe))
                                       (##thread-deadlock-action!)))))))))
               (let ((_%$r144908%_
                      (let* ((_%props144900%_
                              (let ()
                                (declare (not safe))
                                (##unchecked-structure-ref
                                 _%super144881%_
                                 '9
                                 '#f
                                 '#f)))
                             (_%$e144902%_
                              (assq 'subclasses: _%props144900%_)))
                        (if _%$e144902%_
                            (set-cdr!
                             _%$e144902%_
                             (cons _%klass144878%_ (cdr _%$e144902%_)))
                            (let ((__tmp148328
                                   (cons (cons 'subclasses:
                                               (cons _%klass144878%_ '()))
                                         _%props144900%_)))
                              (declare (not safe))
                              (##unchecked-structure-set!
                               _%super144881%_
                               __tmp148328
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
                 _%$r144908%_))
             (let ()
               (declare (not safe))
               (agetq__% 'direct-supers: _%properties144744%_ '())))
            _%klass144878%_))))
    (define class-type-id
      (lambda (_%klass144737%_)
        (##structure-ref _%klass144737%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass144735%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144735%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass144732%_ _%val144733%_)
        (##structure-set! _%klass144732%_ _%val144733%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass144727%_ _%val144729%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144727%_
           _%val144729%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass144725%_)
        (##structure-ref _%klass144725%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass144723%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144723%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass144720%_ _%val144721%_)
        (##structure-set! _%klass144720%_ _%val144721%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass144715%_ _%val144717%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144715%_
           _%val144717%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass144713%_)
        (##structure-ref _%klass144713%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass144711%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144711%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass144708%_ _%val144709%_)
        (##structure-set! _%klass144708%_ _%val144709%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass144703%_ _%val144705%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144703%_
           _%val144705%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass144701%_)
        (##structure-ref _%klass144701%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass144699%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144699%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass144696%_ _%val144697%_)
        (##structure-set! _%klass144696%_ _%val144697%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass144691%_ _%val144693%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144691%_
           _%val144693%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass144689%_)
        (##structure-ref _%klass144689%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass144687%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144687%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass144684%_ _%val144685%_)
        (##structure-set! _%klass144684%_ _%val144685%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass144679%_ _%val144681%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144679%_
           _%val144681%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass144677%_)
        (##structure-ref _%klass144677%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass144675%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144675%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass144672%_ _%val144673%_)
        (##structure-set!
         _%klass144672%_
         _%val144673%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass144667%_ _%val144669%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144667%_
           _%val144669%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass144665%_)
        (##structure-ref _%klass144665%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass144663%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144663%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass144660%_ _%val144661%_)
        (##structure-set!
         _%klass144660%_
         _%val144661%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass144655%_ _%val144657%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144655%_
           _%val144657%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass144653%_)
        (##structure-ref _%klass144653%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass144651%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144651%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass144648%_ _%val144649%_)
        (##structure-set!
         _%klass144648%_
         _%val144649%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass144643%_ _%val144645%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144643%_
           _%val144645%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass144641%_)
        (##structure-ref _%klass144641%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass144639%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144639%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass144636%_ _%val144637%_)
        (##structure-set!
         _%klass144636%_
         _%val144637%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass144631%_ _%val144633%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144631%_
           _%val144633%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass144629%_)
        (##structure-ref _%klass144629%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass144627%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144627%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass144624%_ _%val144625%_)
        (##structure-set!
         _%klass144624%_
         _%val144625%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass144619%_ _%val144621%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144619%_
           _%val144621%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass144617%_)
        (##structure-ref _%klass144617%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass144615%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass144615%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass144612%_ _%val144613%_)
        (##structure-set!
         _%klass144612%_
         _%val144613%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass144607%_ _%val144609%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144607%_
           _%val144609%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass144605%_)
        (##structure-ref _%klass144605%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass144603%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144603%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass144600%_ _%val144601%_)
        (##structure-set!
         _%klass144600%_
         _%val144601%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass144595%_ _%val144597%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144595%_
           _%val144597%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass144593%_)
        (##structure-ref _%klass144593%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass144591%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass144591%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass144588%_ _%val144589%_)
        (##structure-set!
         _%klass144588%_
         _%val144589%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass144583%_ _%val144585%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass144583%_
           _%val144585%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type144347%_)
        (letrec ((_%__fields->list144477%_
                  (lambda (_%fields144541%_)
                    (let* ((_%fields144544%_ _%fields144541%_)
                           (_%fields-len144553%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields144544%_))))
                      (let _%loop144555%_ ((_%i144557%_ '0) (_%r144558%_ '()))
                        (let* ((_%i144561%_ _%i144557%_)
                               (_%r144574%_ _%r144558%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i144561%_ _%fields-len144553%_))
                              (_%loop144555%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i144561%_ '3))
                               (cons (vector-ref _%fields144544%_ _%i144561%_)
                                     _%r144574%_))
                              (reverse! _%r144574%_)))))))
                 (_%fields->list144478%_
                  (lambda (_%fields144529%_)
                    (let ((_%fields144532%_ _%fields144529%_))
                      (_%__fields->list144477%_ _%fields144532%_)))))
          (let _%loop144480%_ ((_%type144482%_ _%type144347%_))
            (if (let () (declare (not safe)) (##type? _%type144482%_))
                (if (eq? _%type144482%_ ##type-type)
                    '()
                    (let ((_%$e144487%_
                           (let ()
                             (declare (not safe))
                             (##type-super _%type144482%_))))
                      (if _%$e144487%_
                          (let ((__tmp148330 (_%loop144480%_ _%$e144487%_))
                                (__tmp148329
                                 (let* ((_%fields144493%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-fields _%type144482%_)))
                                        (_%fields144497%_ _%fields144493%_))
                                   (_%__fields->list144477%_
                                    _%fields144497%_))))
                            (declare (not safe))
                            (##append __tmp148330 __tmp148329))
                          (let* ((_%fields144514%_
                                  (let ()
                                    (declare (not safe))
                                    (##type-fields _%type144482%_)))
                                 (_%fields144518%_ _%fields144514%_))
                            (_%__fields->list144477%_ _%fields144518%_)))))
                '())))))
    (define __class-type-field-list
      (lambda (_%klass144315%_)
        (let ((_%klass144318%_ _%klass144315%_))
          (letrec ((_%get-fields!144327%_
                    (lambda (_%klass144342%_ _%type144343%_)
                      (let ((_%fields144345%_
                             (type-field-list _%type144343%_)))
                        (##structure-set!
                         _%klass144342%_
                         (cons (cons 'fields: _%fields144345%_)
                               (##structure-ref
                                _%klass144342%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%fields144345%_))))
            (let* ((_%props144329%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass144318%_ '9 '#f '#f)))
                   (_%$e144331%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'fields: _%props144329%_))))
              (if _%$e144331%_
                  _%$e144331%_
                  (let ((_%$e144334%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props144329%_))))
                    (if _%$e144334%_
                        (_%get-fields!144327%_ _%klass144318%_ _%$e144334%_)
                        (_%get-fields!144327%_
                         _%klass144318%_
                         _%klass144318%_)))))))))
    (define class-type-field-list
      (lambda (_%klass144301%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass144301%_ 'class))
            (let ((_%klass144305%_ _%klass144301%_))
              (__class-type-field-list _%klass144305%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@427.30-427.35"
               'contract:
               'class-type?
               'value:
               _%klass144301%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass144289%_)
        (let ((_%klass144292%_ _%klass144289%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass144292%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass144275%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass144275%_ 'class))
            (let ((_%klass144279%_ _%klass144275%_))
              (__class-type-slot-list _%klass144279%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@443.29-443.34"
               'contract:
               'class-type?
               'value:
               _%klass144275%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass144263%_)
        (let* ((_%klass144266%_ _%klass144263%_)
               (__tmp148331
                (let ((__tmp148332
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass144266%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp148332))))
          (declare (not safe))
          (##fx- __tmp148331 '1))))
    (define class-type-field-count
      (lambda (_%klass144249%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass144249%_ 'class))
            (let ((_%klass144253%_ _%klass144249%_))
              (__class-type-field-count _%klass144253%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@445.31-445.36"
               'contract:
               'class-type?
               'value:
               _%klass144249%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass144237%_)
        (let ((_%klass144240%_ _%klass144237%_))
          (let ((__tmp148333
                 (let ((__tmp148334
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass144240%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp148334))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass144240%_
             __tmp148333
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass144223%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass144223%_ 'class))
            (let ((_%klass144227%_ _%klass144223%_))
              (__class-type-seal! _%klass144227%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@448.25-448.30"
               'contract:
               'class-type?
               'value:
               _%klass144223%_)
              '#!void))))
    (define __class-type-properties-lock (vector '0 '#f))
    (define __class-type-properties-put!
      (lambda (_%klass144177%_ _%key144178%_ _%val144179%_)
        (let* ((_%klass144182%_ _%klass144177%_) (_%key144190%_ _%key144178%_))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again144201%_ ((_%spin144204%_ '0))
              (if (let ((__tmp148335
                         (let ()
                           (declare (not safe))
                           (##vector-cas!
                            __class-type-properties-lock
                            '0
                            '1
                            '0))))
                    (declare (not safe))
                    (##fx= __tmp148335 '0))
                  (let ((__tmp148336 (current-thread)))
                    (declare (not safe))
                    (##vector-set!
                     __class-type-properties-lock
                     '1
                     __tmp148336))
                  (if (let () (declare (not safe)) (##fx< _%spin144204%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again144201%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin144204%_ '1))))
                      (let ((_%owner144210%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref
                                __class-type-properties-lock
                                '1))))
                        (if (eq? _%owner144210%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner144210%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again144201%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r144218%_
                 (let ((_%props144216%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass144182%_
                           '9
                           '#f
                           '#f))))
                   (if (assq _%key144190%_ _%props144216%_)
                       '#!void
                       (let ((__tmp148337
                              (cons (cons _%key144190%_ _%val144179%_)
                                    _%props144216%_)))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          _%klass144182%_
                          __tmp148337
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
            _%$r144218%_))))
    (define class-type-properties-put!
      (lambda (_%klass144151%_ _%key144152%_ _%val144153%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass144151%_ 'class))
            (let ((_%klass144157%_ _%klass144151%_))
              (if (keyword? _%key144152%_)
                  (let ((_%key144167%_ _%key144152%_))
                    (__class-type-properties-put!
                     _%klass144157%_
                     _%key144167%_
                     _%val144153%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@456.52-456.55"
                     'contract:
                     'keyword?
                     'value:
                     _%key144152%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@456.35-456.40"
               'contract:
               'class-type?
               'value:
               _%klass144151%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass144045%_)
        (let ((_%klass144048%_ _%klass144045%_))
          (letrec ((_%get-field-vector144057%_
                    (lambda (_%type144135%_)
                      (let _%loop144137%_ ((_%type144139%_ _%type144135%_))
                        (let* ((_%fields144141%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type144139%_)))
                               (_%$e144143%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type144139%_))))
                          (if _%$e144143%_
                              (let ((_%super-fields144148%_
                                     (_%loop144137%_ _%$e144143%_)))
                                (vector-append
                                 _%super-fields144148%_
                                 _%fields144141%_))
                              _%fields144141%_)))))
                   (_%get-printable-slot-alist144058%_
                    (lambda (_%type144118%_)
                      (let* ((_%fields144120%_
                              (_%get-field-vector144057%_ _%type144118%_))
                             (_%count144122%_
                              (vector-length _%fields144120%_)))
                        (let _%loop144125%_ ((_%i144127%_ '0)
                                             (_%offset144128%_ '1)
                                             (_%r144129%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i144127%_ _%count144122%_))
                              (let ((_%slot-name144131%_
                                     (vector-ref _%fields144120%_ _%i144127%_))
                                    (_%slot-flags144132%_
                                     (vector-ref
                                      _%fields144120%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i144127%_ '1))))
                                    (_%next-i144133%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i144127%_ '3))))
                                (if (let ((__tmp148338
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags144132%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp148338 '0))
                                    (_%loop144125%_
                                     _%next-i144133%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset144128%_ '1))
                                     (cons (cons _%slot-name144131%_
                                                 _%offset144128%_)
                                           _%r144129%_))
                                    (_%loop144125%_
                                     _%next-i144133%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset144128%_ '1))
                                     _%r144129%_)))
                              (reverse! _%r144129%_))))))
                   (_%get-printable-slots!144059%_
                    (lambda (_%klass144074%_ _%type144075%_)
                      (let ((_%printable144077%_
                             (_%get-printable-slot-alist144058%_
                              _%type144075%_)))
                        (let* ((_%klass144079%_ _%klass144074%_)
                               (_%key144082%_ 'printable-slots:)
                               (_%val144085%_ _%printable144077%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%klass144079%_
                                 'class))
                              (let* ((_%klass144090%_ _%klass144079%_)
                                     (_%key144108%_ _%key144082%_))
                                (__class-type-properties-put!
                                 _%klass144090%_
                                 _%key144108%_
                                 _%val144085%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/mop
                                 'contract:
                                 'class-type?
                                 'value:
                                 _%klass144079%_)
                                '#!void)))
                        _%printable144077%_))))
            (let* ((_%props144061%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass144048%_ '9 '#f '#f)))
                   (_%$e144063%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props144061%_))))
              (if _%$e144063%_
                  _%$e144063%_
                  (let ((_%$e144066%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props144061%_))))
                    (if _%$e144066%_
                        (_%get-printable-slots!144059%_
                         _%klass144048%_
                         _%$e144066%_)
                        (_%get-printable-slots!144059%_
                         _%klass144048%_
                         _%klass144048%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass144031%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass144031%_ 'class))
            (let ((_%klass144035%_ _%klass144031%_))
              (__class-type-printable-slots _%klass144035%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@465.35-465.40"
               'contract:
               'class-type?
               'value:
               _%klass144031%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct144000%_ _%maybe-super-struct144001%_)
        (let* ((_%maybe-sub-struct144004%_ _%maybe-sub-struct144000%_)
               (_%maybe-super-struct144012%_ _%maybe-super-struct144001%_)
               (_%maybe-super-struct-id144021%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct144012%_))))
          (let _%lp144023%_ ((_%super-struct144025%_
                              _%maybe-sub-struct144004%_))
            (if _%super-struct144025%_
                (if (eq? _%maybe-super-struct-id144021%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct144025%_)))
                    '#t
                    (_%lp144023%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct144025%_))))
                '#f)))))
    (define substruct?
      (lambda (_%maybe-sub-struct143975%_ _%maybe-super-struct143976%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct143975%_ 'class))
            (let ((_%maybe-sub-struct143980%_ _%maybe-sub-struct143975%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct143976%_
                     'class))
                  (let ((_%maybe-super-struct143990%_
                         _%maybe-super-struct143976%_))
                    (__substruct?
                     _%maybe-sub-struct143980%_
                     _%maybe-super-struct143990%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@509.47-509.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct143976%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@509.19-509.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct143975%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass143953%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143953%_ 'class))
            (if (let* ((_%klass143956%_ _%klass143953%_)
                       (_%klass143961%_ _%klass143956%_))
                  (__class-type-struct? _%klass143961%_))
                _%klass143953%_
                (let () (declare (not safe)) (##type-super _%klass143953%_)))
            (if _%klass143953%_
                (error '"not a class or false" _%klass143953%_)
                '#f))))
    (define base-struct/2
      (lambda (_%klass1143876%_ _%klass2143877%_)
        (let ((_%s1143879%_ (base-struct/1 _%klass1143876%_))
              (_%s2143880%_ (base-struct/1 _%klass2143877%_)))
          (if (or (not _%s1143879%_)
                  (and _%s2143880%_
                       (let* ((_%maybe-sub-struct143885%_ _%s1143879%_)
                              (_%maybe-super-struct143888%_ _%s2143880%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct143885%_
                                'class))
                             (let ((_%maybe-sub-struct143893%_
                                    _%maybe-sub-struct143885%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct143888%_
                                      'class))
                                   (let ((_%maybe-super-struct143907%_
                                          _%maybe-super-struct143888%_))
                                     (__substruct?
                                      _%maybe-sub-struct143893%_
                                      _%maybe-super-struct143907%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct143888%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct143885%_)
                               '#!void)))))
              _%s2143880%_
              (if (or (not _%s2143880%_)
                      (and _%s1143879%_
                           (let* ((_%maybe-sub-struct143921%_ _%s2143880%_)
                                  (_%maybe-super-struct143924%_ _%s1143879%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct143921%_
                                    'class))
                                 (let ((_%maybe-sub-struct143929%_
                                        _%maybe-sub-struct143921%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct143924%_
                                          'class))
                                       (let ((_%maybe-super-struct143941%_
                                              _%maybe-super-struct143924%_))
                                         (__substruct?
                                          _%maybe-sub-struct143929%_
                                          _%maybe-super-struct143941%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct143924%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct143921%_)
                                   '#!void)))))
                  _%s1143879%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1143876%_
                         _%klass2143877%_
                         _%s1143879%_
                         _%s2143880%_))))))
    (define base-struct/list
      (lambda (_%all-supers143761%_)
        (let* ((_%$%all-supers143762143787%_ _%all-supers143761%_)
               (_%$%E143767143791%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%all-supers143762143787%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%$%K143785143873%_ (lambda () '#f))
                (_%$%K143782143859%_
                 (lambda (_%x143857%_) (base-struct/1 _%x143857%_)))
                (_%$%K143777143836%_
                 (lambda (_%y143833%_ _%x143834%_)
                   (base-struct/2 _%x143834%_ _%y143833%_)))
                (_%$%K143768143798%_
                 (lambda (_%y143795%_ _%x143796%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x143796%_ _%y143795%_)))))
            (let* ((_%__match147098147099%_
                    (lambda (_%$%hd143769143801%_ _%$%tl143770143803%_)
                      (let ((_%x143806%_ _%$%hd143769143801%_))
                        (letrec ((_%$%splice-rest143772143808%_
                                  (lambda (_%$%rest143776143815%_ _%y143817%_)
                                    (if (null? _%$%rest143776143815%_)
                                        (_%$%K143768143798%_
                                         _%y143817%_
                                         _%x143806%_)
                                        (_%$%E143767143791%_))))
                                 (_%$%splice-try143774143810%_
                                  (lambda (_%$%hd143775143819%_
                                           _%$%rest143776143821%_
                                           _%$%y143771143822%_)
                                    (let ((_%y143824%_ _%$%hd143775143819%_))
                                      (_%$%splice-loop143773143812%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest143776143821%_))
                                       (cons _%y143824%_
                                             _%$%y143771143822%_)))))
                                 (_%$%splice-loop143773143812%_
                                  (lambda (_%$%rest143776143826%_
                                           _%$%y143771143827%_)
                                    (if (pair? _%$%rest143776143826%_)
                                        (_%$%splice-try143774143810%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest143776143826%_))
                                         _%$%rest143776143826%_
                                         _%$%y143771143827%_)
                                        (_%$%splice-rest143772143808%_
                                         _%$%rest143776143826%_
                                         (reverse _%$%y143771143827%_))))))
                          (_%$%splice-loop143773143812%_
                           _%$%tl143770143803%_
                           '())))))
                   (_%$%try-match143764143869%_
                    (lambda ()
                      (if (pair? _%$%all-supers143762143787%_)
                          (let ((_%$%tl143784143864%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all-supers143762143787%_)))
                                (_%$%hd143783143862%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all-supers143762143787%_))))
                            (if (null? _%$%tl143784143864%_)
                                (let ((_%x143867%_ _%$%hd143783143862%_))
                                  (base-struct/1 _%x143867%_))
                                (if (pair? _%$%tl143784143864%_)
                                    (let ((_%$%tl143781143848%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl143784143864%_)))
                                          (_%$%hd143780143846%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl143784143864%_))))
                                      (if (null? _%$%tl143781143848%_)
                                          (let ((_%x143844%_
                                                 _%$%hd143783143862%_)
                                                (_%y143851%_
                                                 _%$%hd143780143846%_))
                                            (_%$%K143777143836%_
                                             _%y143851%_
                                             _%x143844%_))
                                          (_%__match147098147099%_
                                           _%$%hd143783143862%_
                                           _%$%tl143784143864%_)))
                                    (_%__match147098147099%_
                                     _%$%hd143783143862%_
                                     _%$%tl143784143864%_))))
                          (_%$%E143767143791%_)))))
              (if (null? _%$%all-supers143762143787%_)
                  (_%$%K143785143873%_)
                  (_%$%try-match143764143869%_)))))))
    (define base-struct
      (lambda _%all-supers143759%_ (base-struct/list _%all-supers143759%_)))
    (define find-super-constructor
      (lambda (_%super143710%_)
        (let _%lp143712%_ ((_%rest143714%_ _%super143710%_)
                           (_%constructor143715%_ '#f))
          (let* ((_%$%rest143716143724%_ _%rest143714%_)
                 (_%$%else143718143732%_ (lambda () _%constructor143715%_))
                 (_%$%K143720143747%_
                  (lambda (_%rest143735%_ _%hd143736%_)
                    (let ((_%$e143738%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd143736%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e143738%_
                          (if (or (not _%constructor143715%_)
                                  (eq? _%constructor143715%_ _%$e143738%_))
                              (_%lp143712%_ _%rest143735%_ _%$e143738%_)
                              (error '"conflicting implicit constructors"
                                     _%constructor143715%_
                                     _%$e143738%_))
                          (_%lp143712%_
                           _%rest143735%_
                           _%constructor143715%_))))))
            (if (pair? _%$%rest143716143724%_)
                (let ((_%$%hd143721143750%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest143716143724%_)))
                      (_%$%tl143722143752%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest143716143724%_))))
                  (let* ((_%hd143755%_ _%$%hd143721143750%_)
                         (_%rest143757%_ _%$%tl143722143752%_))
                    (_%$%K143720143747%_ _%rest143757%_ _%hd143755%_)))
                (_%$%else143718143732%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list143702%_ _%direct-slots143703%_)
        (let ((__tmp148340
               (lambda (_%mixin143705%_)
                 (let ((__tmp148341
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%mixin143705%_
                           '9
                           '#f
                           '#f))))
                   (declare (not safe))
                   (agetq__% 'direct-slots: __tmp148341 '()))))
              (__tmp148339
               (lambda (_%slot-list143707%_ _%slot-table143708%_)
                 (values (list->vector _%slot-list143707%_)
                         _%slot-table143708%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%class-precedence-list143702%_
           _%direct-slots143703%_
           __tmp148340
           __tmp148339))))
    (define __make-class-type
      (lambda (_%id143529%_
               _%name143530%_
               _%direct-supers143531%_
               _%direct-slots143532%_
               _%properties143533%_
               _%constructor143534%_)
        (let* ((_%id143537%_ _%id143529%_)
               (_%name143545%_ _%name143530%_)
               (_%direct-supers143553%_ _%direct-supers143531%_)
               (_%direct-slots143561%_ _%direct-slots143532%_)
               (_%properties143569%_ _%properties143533%_)
               (_%constructor143577%_ _%constructor143534%_))
          (let ((_%$e143611%_
                 (let* ((_%pred143589%_
                         (lambda (_%$obj143586%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj143586%_
                                   'class)))))
                        (_%lst143592%_ _%direct-supers143553%_)
                        (_%pred143597%_ _%pred143589%_))
                   (declare (not safe))
                   (__find _%pred143597%_ _%lst143592%_))))
            (if _%$e143611%_
                (error '"Illegal super class; not a class descriptor"
                       _%$e143611%_)
                (let ((_%$e143638%_
                       (let* ((_%pred143618%_ __class-type-final?)
                              (_%lst143621%_ _%direct-supers143553%_)
                              (_%pred143626%_ _%pred143618%_))
                         (declare (not safe))
                         (__find _%pred143626%_ _%lst143621%_))))
                  (if _%$e143638%_
                      (error '"Cannot extend final class" _%$e143638%_)
                      '#!void))))
          (let ((_g148342_ (compute-precedence-list _%direct-supers143553%_)))
            (begin
              (let ((_g148343_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g148342_)
                           (##values-length _g148342_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g148343_ 2)))
                    (error "Context expects 2 values" _g148343_)))
              (let ((_%precedence-list143645%_
                     (let () (declare (not safe)) (##values-ref _g148342_ 0)))
                    (_%struct-super143646%_
                     (let () (declare (not safe)) (##values-ref _g148342_ 1))))
                (let ((_g148344_
                       (compute-class-slots
                        _%precedence-list143645%_
                        _%direct-slots143561%_)))
                  (begin
                    (let ((_g148345_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g148344_)
                                 (##values-length _g148344_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g148345_ 2)))
                          (error "Context expects 2 values" _g148345_)))
                    (let ((_%slot-vector143648%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g148344_ 0)))
                          (_%slot-table143649%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g148344_ 1))))
                      (let* ((_%properties143651%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots143561%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers143553%_)
                                          _%properties143569%_)))
                             (_%constructor*143656%_
                              (let ((_%$e143653%_ _%constructor143577%_))
                                (if _%$e143653%_
                                    _%$e143653%_
                                    (find-super-constructor
                                     _%direct-supers143553%_))))
                             (_%precedence-list143699%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties143651%_))
                                      (memq object::t
                                            _%precedence-list143645%_))
                                  _%precedence-list143645%_
                                  (let _%loop143661%_ ((_%tail143663%_
                                                        _%precedence-list143645%_)
                                                       (_%head143664%_ '()))
                                    (let* ((_%$%tail143665143673%_
                                            _%tail143663%_)
                                           (_%$%else143667143681%_
                                            (lambda ()
                                              (let ((__tmp148346
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp148346
                                                 _%head143664%_))))
                                           (_%$%K143669143687%_
                                            (lambda (_%rest143684%_
                                                     _%hd143685%_)
                                              (if (eq? _%hd143685%_ t::t)
                                                  (let ((__tmp148347
                                                         (cons object::t
                                                               _%tail143663%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp148347
                                                     _%head143664%_))
                                                  (_%loop143661%_
                                                   _%rest143684%_
                                                   (cons _%hd143685%_
                                                         _%head143664%_))))))
                                      (if (pair? _%$%tail143665143673%_)
                                          (let ((_%$%hd143670143690%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tail143665143673%_)))
                                                (_%$%tl143671143692%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tail143665143673%_))))
                                            (let* ((_%hd143695%_
                                                    _%$%hd143670143690%_)
                                                   (_%rest143697%_
                                                    _%$%tl143671143692%_))
                                              (_%$%K143669143687%_
                                               _%rest143697%_
                                               _%hd143695%_)))
                                          (_%$%else143667143681%_)))))))
                        (make-class-type-descriptor
                         _%id143537%_
                         _%name143545%_
                         _%struct-super143646%_
                         _%precedence-list143699%_
                         _%slot-vector143648%_
                         _%properties143651%_
                         _%constructor*143656%_
                         _%slot-table143649%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id143454%_
               _%name143455%_
               _%direct-supers143456%_
               _%direct-slots143457%_
               _%properties143458%_
               _%constructor143459%_)
        (if (symbol? _%id143454%_)
            (let ((_%id143463%_ _%id143454%_))
              (if (symbol? _%name143455%_)
                  (let ((_%name143473%_ _%name143455%_))
                    (if (list? _%direct-supers143456%_)
                        (let ((_%direct-supers143483%_
                               _%direct-supers143456%_))
                          (if (list? _%direct-slots143457%_)
                              (let ((_%direct-slots143493%_
                                     _%direct-slots143457%_))
                                (if (list? _%properties143458%_)
                                    (let ((_%properties143503%_
                                           _%properties143458%_))
                                      (if (or (not _%constructor143459%_)
                                              (symbol? _%constructor143459%_))
                                          (let ((_%constructor143519%_
                                                 _%constructor143459%_))
                                            (__make-class-type
                                             _%id143463%_
                                             _%name143473%_
                                             _%direct-supers143483%_
                                             _%direct-slots143493%_
                                             _%properties143503%_
                                             _%constructor143519%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@590.24-590.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor143459%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@589.24-589.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties143458%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@588.24-588.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots143457%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@587.24-587.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers143456%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@586.24-586.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name143455%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@585.24-585.26"
               'contract:
               'symbol?
               'value:
               _%id143454%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass143442%_)
        (let ((_%klass143445%_ _%klass143442%_))
          (cons _%klass143445%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass143445%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass143428%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143428%_ 'class))
            (let ((_%klass143432%_ _%klass143428%_))
              (__class-precedence-list _%klass143432%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@623.30-623.35"
               'contract:
               'class-type?
               'value:
               _%klass143428%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers143425%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers143425%_))))
    (define __make-class-predicate
      (lambda (_%klass143341%_)
        (let* ((_%klass143344%_ _%klass143341%_)
               (_%tid143353%_
                (let () (declare (not safe)) (##type-id _%klass143344%_))))
          (if (let* ((_%type143355%_ _%klass143344%_)
                     (_%type143360%_ _%type143355%_))
                (__class-type-final? _%type143360%_))
              (lambda (_%$%g143374143376%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%$%g143374143376%_
                   _%tid143353%_)))
              (if (let* ((_%klass143379%_ _%klass143344%_)
                         (_%klass143384%_ _%klass143379%_))
                    (__class-type-struct? _%klass143384%_))
                  (lambda (_%$%g143394143396%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$%g143394143396%_
                       _%tid143353%_)))
                  (lambda (_%$%g143399143401%_)
                    (let* ((_%klass143404%_ _%klass143344%_)
                           (_%obj143407%_ _%$%g143399143401%_)
                           (_%klass143412%_ _%klass143404%_))
                      (__class-instance? _%klass143412%_ _%obj143407%_))))))))
    (define make-class-predicate
      (lambda (_%klass143327%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143327%_ 'class))
            (let ((_%klass143331%_ _%klass143327%_))
              (__make-class-predicate _%klass143331%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@635.29-635.34"
               'contract:
               'class-type?
               'value:
               _%klass143327%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass143261%_ _%slot143262%_)
        (let* ((_%klass143265%_ _%klass143261%_)
               (_%slot143273%_ _%slot143262%_)
               (_%field143282%_
                (let ((__tmp148348
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass143265%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp148348 _%slot143273%_ '#f))))
          (if _%field143282%_
              (if (let* ((_%type143286%_ _%klass143265%_)
                         (_%type143291%_ _%type143286%_))
                    (__class-type-final? _%type143291%_))
                  (make-final-slot-accessor
                   _%klass143265%_
                   _%slot143273%_
                   _%field143282%_)
                  (if (let* ((_%klass143306%_ _%klass143265%_)
                             (_%klass143311%_ _%klass143306%_))
                        (__class-type-struct? _%klass143311%_))
                      (make-struct-slot-accessor
                       _%klass143265%_
                       _%slot143273%_
                       _%field143282%_)
                      (if (let ((_%strukt143322%_
                                 (base-struct/1 _%klass143265%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt143322%_
                                    'class))
                                 (let ((__tmp148349
                                        (let ((__tmp148350
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt143322%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp148350))))
                                   (declare (not safe))
                                   (##fx< _%field143282%_ __tmp148349))))
                          (make-struct-subclass-slot-accessor
                           _%klass143265%_
                           _%slot143273%_
                           _%field143282%_)
                          (make-class-cached-slot-accessor
                           _%klass143265%_
                           _%slot143273%_
                           _%field143282%_))))
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass143265%_
                       'slot:
                       _%slot143273%_)
                '#!void)))))
    (define make-class-slot-accessor
      (lambda (_%klass143236%_ _%slot143237%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143236%_ 'class))
            (let ((_%klass143241%_ _%klass143236%_))
              (if (symbol? _%slot143237%_)
                  (let ((_%slot143251%_ _%slot143237%_))
                    (__make-class-slot-accessor
                     _%klass143241%_
                     _%slot143251%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@666.50-666.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot143237%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@666.33-666.38"
               'contract:
               'class-type?
               'value:
               _%klass143236%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass143170%_ _%slot143171%_)
        (let* ((_%klass143174%_ _%klass143170%_)
               (_%slot143182%_ _%slot143171%_)
               (_%field143191%_
                (let ((__tmp148351
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass143174%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp148351 _%slot143182%_ '#f))))
          (if _%field143191%_
              (if (let* ((_%type143195%_ _%klass143174%_)
                         (_%type143200%_ _%type143195%_))
                    (__class-type-final? _%type143200%_))
                  (make-final-slot-mutator
                   _%klass143174%_
                   _%slot143182%_
                   _%field143191%_)
                  (if (let* ((_%klass143215%_ _%klass143174%_)
                             (_%klass143220%_ _%klass143215%_))
                        (__class-type-struct? _%klass143220%_))
                      (make-struct-slot-mutator
                       _%klass143174%_
                       _%slot143182%_
                       _%field143191%_)
                      (if (let ((_%strukt143231%_
                                 (base-struct/1 _%klass143174%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt143231%_
                                    'class))
                                 (let ((__tmp148352
                                        (let ((__tmp148353
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt143231%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp148353))))
                                   (declare (not safe))
                                   (##fx< _%field143191%_ __tmp148352))))
                          (make-struct-subclass-slot-mutator
                           _%klass143174%_
                           _%slot143182%_
                           _%field143191%_)
                          (make-class-cached-slot-mutator
                           _%klass143174%_
                           _%slot143182%_
                           _%field143191%_))))
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass143174%_
                       'slot:
                       _%slot143182%_)
                '#!void)))))
    (define make-class-slot-mutator
      (lambda (_%klass143145%_ _%slot143146%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143145%_ 'class))
            (let ((_%klass143150%_ _%klass143145%_))
              (if (symbol? _%slot143146%_)
                  (let ((_%slot143160%_ _%slot143146%_))
                    (__make-class-slot-mutator _%klass143150%_ _%slot143160%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@674.49-674.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot143146%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@674.32-674.37"
               'contract:
               'class-type?
               'value:
               _%klass143145%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass143079%_ _%slot143080%_)
        (let* ((_%klass143083%_ _%klass143079%_)
               (_%slot143091%_ _%slot143080%_)
               (_%field143100%_
                (let ((__tmp148354
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass143083%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp148354 _%slot143091%_ '#f))))
          (if _%field143100%_
              (if (let* ((_%type143104%_ _%klass143083%_)
                         (_%type143109%_ _%type143104%_))
                    (__class-type-final? _%type143109%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass143083%_
                   _%slot143091%_
                   _%field143100%_)
                  (if (let* ((_%klass143124%_ _%klass143083%_)
                             (_%klass143129%_ _%klass143124%_))
                        (__class-type-struct? _%klass143129%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass143083%_
                       _%slot143091%_
                       _%field143100%_)
                      (if (let ((_%strukt143140%_
                                 (base-struct/1 _%klass143083%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt143140%_
                                    'class))
                                 (let ((__tmp148355
                                        (let ((__tmp148356
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt143140%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp148356))))
                                   (declare (not safe))
                                   (##fx< _%field143100%_ __tmp148355))))
                          (make-struct-slot-unchecked-accessor
                           _%klass143083%_
                           _%slot143091%_
                           _%field143100%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass143083%_
                           _%slot143091%_
                           _%field143100%_))))
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass143083%_
                       'slot:
                       _%slot143091%_)
                '#!void)))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass143054%_ _%slot143055%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143054%_ 'class))
            (let ((_%klass143059%_ _%klass143054%_))
              (if (symbol? _%slot143055%_)
                  (let ((_%slot143069%_ _%slot143055%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass143059%_
                     _%slot143069%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@682.60-682.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot143055%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@682.43-682.48"
               'contract:
               'class-type?
               'value:
               _%klass143054%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass142988%_ _%slot142989%_)
        (let* ((_%klass142992%_ _%klass142988%_)
               (_%slot143000%_ _%slot142989%_)
               (_%field143009%_
                (let ((__tmp148357
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass142992%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp148357 _%slot143000%_ '#f))))
          (if _%field143009%_
              (if (let* ((_%type143013%_ _%klass142992%_)
                         (_%type143018%_ _%type143013%_))
                    (__class-type-final? _%type143018%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass142992%_
                   _%slot143000%_
                   _%field143009%_)
                  (if (let* ((_%klass143033%_ _%klass142992%_)
                             (_%klass143038%_ _%klass143033%_))
                        (__class-type-struct? _%klass143038%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass142992%_
                       _%slot143000%_
                       _%field143009%_)
                      (if (let ((_%strukt143049%_
                                 (base-struct/1 _%klass142992%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt143049%_
                                    'class))
                                 (let ((__tmp148358
                                        (let ((__tmp148359
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt143049%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp148359))))
                                   (declare (not safe))
                                   (##fx< _%field143009%_ __tmp148358))))
                          (make-struct-slot-unchecked-mutator
                           _%klass142992%_
                           _%slot143000%_
                           _%field143009%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass142992%_
                           _%slot143000%_
                           _%field143009%_))))
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass142992%_
                       'slot:
                       _%slot143000%_)
                '#!void)))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass142963%_ _%slot142964%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142963%_ 'class))
            (let ((_%klass142968%_ _%klass142963%_))
              (if (symbol? _%slot142964%_)
                  (let ((_%slot142978%_ _%slot142964%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass142968%_
                     _%slot142978%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@690.59-690.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot142964%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@690.42-690.47"
               'contract:
               'class-type?
               'value:
               _%klass142963%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object142947%_ _%class142948%_ _%slot142949%_)
        (apply error
               '"not an instance"
               'object:
               _%object142947%_
               'class:
               _%class142948%_
               (if _%slot142949%_
                   (cons 'slot: (cons _%slot142949%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object142954%_ _%class142955%_)
        (let ((_%slot142957%_ '#f))
          (not-an-instance__%
           _%object142954%_
           _%class142955%_
           _%slot142957%_))))
    (define not-an-instance
      (lambda _g148360_
        (let ((_g148361_ (let () (declare (not safe)) (##length _g148360_))))
          (cond ((let () (declare (not safe)) (##fx= _g148361_ 2))
                 (apply not-an-instance__0 _g148360_))
                ((let () (declare (not safe)) (##fx= _g148361_ 3))
                 (apply not-an-instance__% _g148360_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g148360_))))))
    (define make-final-slot-accessor
      (lambda (_%klass142940%_ _%slot142941%_ _%field142942%_)
        (lambda (_%obj142944%_)
          (##direct-structure-ref
           _%obj142944%_
           _%field142942%_
           _%klass142940%_
           _%slot142941%_))))
    (define make-final-slot-mutator
      (lambda (_%klass142933%_ _%slot142934%_ _%field142935%_)
        (lambda (_%obj142937%_ _%val142938%_)
          (##direct-structure-set!
           _%obj142937%_
           _%val142938%_
           _%field142935%_
           _%klass142933%_
           _%slot142934%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass142927%_ _%slot142928%_ _%field142929%_)
        (lambda (_%obj142931%_)
          (##structure-ref
           _%obj142931%_
           _%field142929%_
           _%klass142927%_
           _%slot142928%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass142920%_ _%slot142921%_ _%field142922%_)
        (lambda (_%obj142924%_ _%val142925%_)
          (##structure-set!
           _%obj142924%_
           _%val142925%_
           _%field142922%_
           _%klass142920%_
           _%slot142921%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass142914%_ _%slot142915%_ _%field142916%_)
        (lambda (_%obj142918%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj142918%_
             _%field142916%_
             _%klass142914%_
             _%slot142915%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass142907%_ _%slot142908%_ _%field142909%_)
        (lambda (_%obj142911%_ _%val142912%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj142911%_
             _%val142912%_
             _%field142909%_
             _%klass142907%_
             _%slot142908%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass142880%_ _%slot142881%_ _%field142882%_)
        (lambda (_%obj142884%_)
          (if (let* ((_%klass142886%_ _%klass142880%_)
                     (_%obj142889%_ _%obj142884%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass142886%_ 'class))
                    (let ((_%klass142894%_ _%klass142886%_))
                      (__class-instance? _%klass142894%_ _%obj142889%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass142886%_)
                      '#!void)))
              (unchecked-slot-ref _%obj142884%_ _%field142882%_)
              (not-an-instance__%
               _%obj142884%_
               _%klass142880%_
               _%slot142881%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass142852%_ _%slot142853%_ _%field142854%_)
        (lambda (_%obj142856%_ _%val142857%_)
          (if (let* ((_%klass142859%_ _%klass142852%_)
                     (_%obj142862%_ _%obj142856%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass142859%_ 'class))
                    (let ((_%klass142867%_ _%klass142859%_))
                      (__class-instance? _%klass142867%_ _%obj142862%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass142859%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj142856%_
               _%field142854%_
               _%val142857%_)
              (not-an-instance__%
               _%obj142856%_
               _%klass142852%_
               _%slot142853%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass142803%_ _%slot142804%_ _%field142805%_)
        (lambda (_%obj142807%_)
          (if (let* ((_%klass142809%_ _%klass142803%_)
                     (_%obj142812%_ _%obj142807%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass142809%_ 'class))
                    (let ((_%klass142817%_ _%klass142809%_))
                      (__direct-instance? _%klass142817%_ _%obj142812%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass142809%_)
                      '#!void)))
              (unchecked-field-ref _%obj142807%_ _%field142805%_)
              (if (let* ((_%klass142831%_ _%klass142803%_)
                         (_%obj142834%_ _%obj142807%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass142831%_ 'class))
                        (let ((_%klass142839%_ _%klass142831%_))
                          (__class-instance? _%klass142839%_ _%obj142834%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass142831%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj142807%_ _%slot142804%_)
                  (not-an-instance__%
                   _%obj142807%_
                   _%klass142803%_
                   _%slot142804%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass142753%_ _%slot142754%_ _%field142755%_)
        (lambda (_%obj142757%_ _%val142758%_)
          (if (let* ((_%klass142760%_ _%klass142753%_)
                     (_%obj142763%_ _%obj142757%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass142760%_ 'class))
                    (let ((_%klass142768%_ _%klass142760%_))
                      (__direct-instance? _%klass142768%_ _%obj142763%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass142760%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj142757%_
               _%field142755%_
               _%val142758%_)
              (if (let* ((_%klass142782%_ _%klass142753%_)
                         (_%obj142785%_ _%obj142757%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass142782%_ 'class))
                        (let ((_%klass142790%_ _%klass142782%_))
                          (__class-instance? _%klass142790%_ _%obj142785%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass142782%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj142757%_
                   _%slot142754%_
                   _%val142758%_)
                  (not-an-instance__%
                   _%obj142757%_
                   _%klass142753%_
                   _%slot142754%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass142726%_ _%slot142727%_ _%field142728%_)
        (lambda (_%obj142730%_)
          (if (let* ((_%klass142732%_ _%klass142726%_)
                     (_%obj142735%_ _%obj142730%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass142732%_ 'class))
                    (let ((_%klass142740%_ _%klass142732%_))
                      (__direct-instance? _%klass142740%_ _%obj142735%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass142732%_)
                      '#!void)))
              (unchecked-field-ref _%obj142730%_ _%field142728%_)
              (unchecked-slot-ref _%obj142730%_ _%slot142727%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass142698%_ _%slot142699%_ _%field142700%_)
        (lambda (_%obj142702%_ _%val142703%_)
          (if (let* ((_%klass142705%_ _%klass142698%_)
                     (_%obj142708%_ _%obj142702%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass142705%_ 'class))
                    (let ((_%klass142713%_ _%klass142705%_))
                      (__direct-instance? _%klass142713%_ _%obj142708%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass142705%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj142702%_
               _%field142700%_
               _%val142703%_)
              (unchecked-slot-set!
               _%obj142702%_
               _%slot142699%_
               _%val142703%_)))))
    (define __class-slot-offset
      (lambda (_%klass142677%_ _%slot142678%_)
        (let* ((_%klass142681%_ _%klass142677%_)
               (_%slot142689%_ _%slot142678%_)
               (__tmp148362
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass142681%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp148362 _%slot142689%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass142652%_ _%slot142653%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142652%_ 'class))
            (let ((_%klass142657%_ _%klass142652%_))
              (if (let () (declare (not safe)) (symbolic? _%slot142653%_))
                  (let ((_%slot142667%_ _%slot142653%_))
                    (__class-slot-offset _%klass142657%_ _%slot142667%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@752.43-752.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot142653%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@752.26-752.31"
               'contract:
               'class-type?
               'value:
               _%klass142652%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass142577%_ _%obj142578%_ _%slot142579%_)
        (let* ((_%klass142582%_ _%klass142577%_)
               (_%slot142590%_ _%slot142579%_))
          (if (let* ((_%klass142599%_ _%klass142582%_)
                     (_%obj142602%_ _%obj142578%_)
                     (_%klass142607%_ _%klass142599%_))
                (__class-instance? _%klass142607%_ _%obj142602%_))
              (let ((_%off142650%_
                     (let* ((_%klass142621%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj142578%_)))
                            (_%slot142624%_ _%slot142590%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass142621%_ 'class))
                           (let ((_%klass142629%_ _%klass142621%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot142624%_))
                                 (let ((_%slot142640%_ _%slot142624%_))
                                   (__class-slot-offset
                                    _%klass142629%_
                                    _%slot142640%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot142624%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass142621%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj142578%_
                 _%off142650%_
                 _%klass142582%_
                 _%slot142590%_))
              (not-an-instance__0 _%obj142578%_ _%klass142582%_)))))
    (define class-slot-ref
      (lambda (_%klass142551%_ _%obj142552%_ _%slot142553%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142551%_ 'class))
            (let ((_%klass142557%_ _%klass142551%_))
              (if (let () (declare (not safe)) (symbolic? _%slot142553%_))
                  (let ((_%slot142567%_ _%slot142553%_))
                    (__class-slot-ref
                     _%klass142557%_
                     _%obj142552%_
                     _%slot142567%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@755.44-755.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot142553%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@755.23-755.28"
               'contract:
               'class-type?
               'value:
               _%klass142551%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass142475%_ _%obj142476%_ _%slot142477%_ _%val142478%_)
        (let* ((_%klass142481%_ _%klass142475%_)
               (_%slot142489%_ _%slot142477%_))
          (if (let* ((_%klass142498%_ _%klass142481%_)
                     (_%obj142501%_ _%obj142476%_)
                     (_%klass142506%_ _%klass142498%_))
                (__class-instance? _%klass142506%_ _%obj142501%_))
              (let ((_%off142549%_
                     (let* ((_%klass142520%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj142476%_)))
                            (_%slot142523%_ _%slot142489%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass142520%_ 'class))
                           (let ((_%klass142528%_ _%klass142520%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot142523%_))
                                 (let ((_%slot142539%_ _%slot142523%_))
                                   (__class-slot-offset
                                    _%klass142528%_
                                    _%slot142539%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot142523%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass142520%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj142476%_
                 _%val142478%_
                 _%off142549%_
                 _%klass142481%_
                 _%slot142489%_))
              (not-an-instance__0 _%obj142476%_ _%klass142481%_)))))
    (define class-slot-set!
      (lambda (_%klass142448%_ _%obj142449%_ _%slot142450%_ _%val142451%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142448%_ 'class))
            (let ((_%klass142455%_ _%klass142448%_))
              (if (let () (declare (not safe)) (symbolic? _%slot142450%_))
                  (let ((_%slot142465%_ _%slot142450%_))
                    (__class-slot-set!
                     _%klass142455%_
                     _%obj142449%_
                     _%slot142465%_
                     _%val142451%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@761.45-761.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot142450%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@761.24-761.29"
               'contract:
               'class-type?
               'value:
               _%klass142448%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj142445%_ _%off142446%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj142445%_ _%off142446%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj142441%_ _%off142442%_ _%val142443%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj142441%_
           _%val142443%_
           _%off142442%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj142438%_ _%slot142439%_)
        (unchecked-field-ref
         _%obj142438%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj142438%_))
          _%slot142439%_))))
    (define unchecked-slot-set!
      (lambda (_%obj142434%_ _%slot142435%_ _%val142436%_)
        (unchecked-field-set!
         _%obj142434%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj142434%_))
          _%slot142435%_)
         _%val142436%_)))
    (define __slot-error
      (lambda (_%obj142431%_ _%slot142432%_)
        (error '"Cannot find slot"
               'object:
               _%obj142431%_
               'slot:
               _%slot142432%_)))
    (define __slot-ref__%
      (lambda (_%obj142355%_ _%slot142356%_ _%E142357%_)
        (let* ((_%slot142360%_ _%slot142356%_)
               (_%E142368%_ _%E142357%_)
               (_%klass142377%_ (class-of _%obj142355%_))
               (_%$e142413%_
                (let* ((_%klass142380%_ _%klass142377%_)
                       (_%slot142383%_ _%slot142360%_)
                       (_%klass142388%_ _%klass142380%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot142383%_))
                      (let ((_%slot142403%_ _%slot142383%_))
                        (__class-slot-offset _%klass142388%_ _%slot142403%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot142383%_)
                        '#!void)))))
          (if _%$e142413%_
              (unchecked-field-ref _%obj142355%_ _%$e142413%_)
              (let ()
                (declare (not safe))
                (_%E142368%_ _%obj142355%_ _%slot142360%_))))))
    (define __slot-ref__0
      (lambda (_%obj142422%_ _%slot142423%_)
        (let ((_%E142425%_ __slot-error))
          (__slot-ref__% _%obj142422%_ _%slot142423%_ _%E142425%_))))
    (define __slot-ref
      (lambda _g148363_
        (let ((_g148364_ (let () (declare (not safe)) (##length _g148363_))))
          (cond ((let () (declare (not safe)) (##fx= _g148364_ 2))
                 (apply __slot-ref__0 _g148363_))
                ((let () (declare (not safe)) (##fx= _g148364_ 3))
                 (apply __slot-ref__% _g148363_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g148363_))))))
    (define slot-ref__%
      (lambda (_%obj142316%_ _%slot142317%_ _%E142318%_)
        (if (symbol? _%slot142317%_)
            (let ((_%slot142322%_ _%slot142317%_))
              (if (procedure? _%E142318%_)
                  (let ((_%E142332%_ _%E142318%_))
                    (__slot-ref__% _%obj142316%_ _%slot142322%_ _%E142332%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@787.38-787.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E142318%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@787.21-787.25"
               'contract:
               'symbol?
               'value:
               _%slot142317%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj142345%_ _%slot142346%_)
        (let ((_%E142348%_ __slot-error))
          (slot-ref__% _%obj142345%_ _%slot142346%_ _%E142348%_))))
    (define slot-ref
      (lambda _g148365_
        (let ((_g148366_ (let () (declare (not safe)) (##length _g148365_))))
          (cond ((let () (declare (not safe)) (##fx= _g148366_ 2))
                 (apply slot-ref__0 _g148365_))
                ((let () (declare (not safe)) (##fx= _g148366_ 3))
                 (apply slot-ref__% _g148365_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g148365_))))))
    (define __slot-set!__%
      (lambda (_%obj142236%_ _%slot142237%_ _%val142238%_ _%E142239%_)
        (let* ((_%slot142242%_ _%slot142237%_)
               (_%E142250%_ _%E142239%_)
               (_%klass142259%_ (class-of _%obj142236%_))
               (_%$e142295%_
                (let* ((_%klass142262%_ _%klass142259%_)
                       (_%slot142265%_ _%slot142242%_)
                       (_%klass142270%_ _%klass142262%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot142265%_))
                      (let ((_%slot142285%_ _%slot142265%_))
                        (__class-slot-offset _%klass142270%_ _%slot142285%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot142265%_)
                        '#!void)))))
          (if _%$e142295%_
              (unchecked-field-set! _%obj142236%_ _%$e142295%_ _%val142238%_)
              (let ()
                (declare (not safe))
                (_%E142250%_ _%obj142236%_ _%slot142242%_))))))
    (define __slot-set!__0
      (lambda (_%obj142304%_ _%slot142305%_ _%val142306%_)
        (let ((_%E142308%_ __slot-error))
          (__slot-set!__%
           _%obj142304%_
           _%slot142305%_
           _%val142306%_
           _%E142308%_))))
    (define __slot-set!
      (lambda _g148367_
        (let ((_g148368_ (let () (declare (not safe)) (##length _g148367_))))
          (cond ((let () (declare (not safe)) (##fx= _g148368_ 3))
                 (apply __slot-set!__0 _g148367_))
                ((let () (declare (not safe)) (##fx= _g148368_ 4))
                 (apply __slot-set!__% _g148367_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g148367_))))))
    (define slot-set!__%
      (lambda (_%obj142194%_ _%slot142195%_ _%val142196%_ _%E142197%_)
        (if (symbol? _%slot142195%_)
            (let ((_%slot142201%_ _%slot142195%_))
              (if (procedure? _%E142197%_)
                  (let ((_%E142211%_ _%E142197%_))
                    (__slot-set!__%
                     _%obj142194%_
                     _%slot142201%_
                     _%val142196%_
                     _%E142211%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@789.43-789.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E142197%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@789.22-789.26"
               'contract:
               'symbol?
               'value:
               _%slot142195%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj142224%_ _%slot142225%_ _%val142226%_)
        (let ((_%E142228%_ __slot-error))
          (slot-set!__%
           _%obj142224%_
           _%slot142225%_
           _%val142226%_
           _%E142228%_))))
    (define slot-set!
      (lambda _g148369_
        (let ((_g148370_ (let () (declare (not safe)) (##length _g148369_))))
          (cond ((let () (declare (not safe)) (##fx= _g148370_ 3))
                 (apply slot-set!__0 _g148369_))
                ((let () (declare (not safe)) (##fx= _g148370_ 4))
                 (apply slot-set!__% _g148369_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g148369_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class142165%_ _%maybe-super-class142166%_)
        (let* ((_%maybe-sub-class142169%_ _%maybe-sub-class142165%_)
               (_%maybe-super-class142177%_ _%maybe-super-class142166%_)
               (_%maybe-super-class-id142186%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class142177%_)))
               (_%$e142188%_
                (eq? _%maybe-super-class-id142186%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class142169%_)))))
          (if _%$e142188%_
              _%$e142188%_
              (let ((__tmp148372
                     (lambda (_%super-class142191%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class142191%_))
                            _%maybe-super-class-id142186%_)))
                    (__tmp148371
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class142169%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp148372 __tmp148371))))))
    (define subclass?
      (lambda (_%maybe-sub-class142140%_ _%maybe-super-class142141%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class142140%_ 'class))
            (let ((_%maybe-sub-class142145%_ _%maybe-sub-class142140%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class142141%_
                     'class))
                  (let ((_%maybe-super-class142155%_
                         _%maybe-super-class142141%_))
                    (__subclass?
                     _%maybe-sub-class142145%_
                     _%maybe-super-class142155%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@795.45-795.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class142141%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@795.18-795.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class142140%_)
              '#!void))))
    (define object?
      (lambda (_%o142137%_)
        (if (let () (declare (not safe)) (##structure? _%o142137%_))
            (let ((__tmp148373
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o142137%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp148373 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass142124%_ _%obj142125%_)
        (let* ((_%klass142128%_ _%klass142124%_)
               (__tmp148374
                (let () (declare (not safe)) (##type-id _%klass142128%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj142125%_ __tmp148374))))
    (define direct-instance?
      (lambda (_%klass142109%_ _%obj142110%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142109%_ 'class))
            (let ((_%klass142114%_ _%klass142109%_))
              (__direct-instance? _%klass142114%_ _%obj142110%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@809.25-809.30"
               'contract:
               'class-type?
               'value:
               _%klass142109%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass142096%_ _%obj142097%_)
        (let* ((_%klass142100%_ _%klass142096%_)
               (__tmp148375
                (let () (declare (not safe)) (##type-id _%klass142100%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj142097%_ __tmp148375))))
    (define struct-instance?
      (lambda (_%klass142081%_ _%obj142082%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142081%_ 'class))
            (let ((_%klass142086%_ _%klass142081%_))
              (__struct-instance? _%klass142086%_ _%obj142082%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@821.25-821.30"
               'contract:
               'class-type?
               'value:
               _%klass142081%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass142033%_ _%obj142034%_)
        (let* ((_%klass142037%_ _%klass142033%_)
               (_%type142046%_ (class-of _%obj142034%_))
               (_%maybe-sub-class142048%_ _%type142046%_)
               (_%maybe-super-class142051%_ _%klass142037%_)
               (_%maybe-sub-class142056%_ _%maybe-sub-class142048%_)
               (_%maybe-super-class142071%_ _%maybe-super-class142051%_))
          (__subclass?
           _%maybe-sub-class142056%_
           _%maybe-super-class142071%_))))
    (define class-instance?
      (lambda (_%klass142018%_ _%obj142019%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142018%_ 'class))
            (let ((_%klass142023%_ _%klass142018%_))
              (__class-instance? _%klass142023%_ _%obj142019%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@833.24-833.29"
               'contract:
               'class-type?
               'value:
               _%klass142018%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass141977%_ _%k141978%_)
        (let* ((_%klass141981%_ _%klass141977%_) (_%k141989%_ _%k141978%_))
          (if (let* ((_%klass141998%_ _%klass141981%_)
                     (_%klass142003%_ _%klass141998%_))
                (__class-type-system? _%klass142003%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass141981%_)
                '#!void)
              (let ((_%obj142016%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass141981%_ _%k141989%_))))
                (__object-fill! _%obj142016%_ '#f))))))
    (define make-object
      (lambda (_%klass141952%_ _%k141953%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141952%_ 'class))
            (let ((_%klass141957%_ _%klass141952%_))
              (if (fixnum? _%k141953%_)
                  (let ((_%k141967%_ _%k141953%_))
                    (__make-object _%klass141957%_ _%k141967%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@838.37-838.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k141953%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@838.20-838.25"
               'contract:
               'class-type?
               'value:
               _%klass141952%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj141940%_)
        (let ((_%obj141943%_ _%obj141940%_))
          (declare (not safe))
          (##structure-type _%obj141943%_))))
    (define object-class
      (lambda (_%obj141926%_)
        (if (object? _%obj141926%_)
            (let ((_%obj141930%_ _%obj141926%_))
              (__object-class _%obj141930%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@858.21-858.24"
               'contract:
               'object?
               'value:
               _%obj141926%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj141908%_ _%fill141909%_)
        (let ((_%obj141912%_ _%obj141908%_))
          (let _%loop141921%_ ((_%i141923%_
                                (let ((__tmp148376
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj141912%_))))
                                  (declare (not safe))
                                  (##fx- __tmp148376 '1))))
            (if (let () (declare (not safe)) (##fx> _%i141923%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj141912%_
                     _%fill141909%_
                     _%i141923%_
                     '#f
                     '#f))
                  (_%loop141921%_
                   (let () (declare (not safe)) (##fx- _%i141923%_ '1))))
                _%obj141912%_)))))
    (define object-fill!
      (lambda (_%obj141893%_ _%fill141894%_)
        (if (object? _%obj141893%_)
            (let ((_%obj141898%_ _%obj141893%_))
              (__object-fill! _%obj141898%_ _%fill141894%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@863.21-863.24"
               'contract:
               'object?
               'value:
               _%obj141893%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass141849%_)
        (let* ((_%klass141852%_ _%klass141849%_)
               (_%klass141861%_ _%klass141852%_)
               (_%k141864%_
                (let ((__tmp148377
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass141852%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp148377)))
               (_%klass141869%_ _%klass141861%_)
               (_%k141883%_ _%k141864%_))
          (__make-object _%klass141869%_ _%k141883%_))))
    (define new-instance
      (lambda (_%klass141835%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141835%_ 'class))
            (let ((_%klass141839%_ _%klass141835%_))
              (__new-instance _%klass141839%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@874.21-874.26"
               'contract:
               'class-type?
               'value:
               _%klass141835%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass141694%_ . _%args141695%_)
        (let* ((_%klass141698%_ _%klass141694%_)
               (_%$e141707%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass141698%_ '10 '#f '#f))))
          (if _%$e141707%_
              (let ((_%obj141732%_
                     (let* ((_%klass141712%_ _%klass141698%_)
                            (_%klass141717%_ _%klass141712%_))
                       (__new-instance _%klass141717%_))))
                (___constructor-init!
                 _%klass141698%_
                 _%$e141707%_
                 _%obj141732%_
                 _%args141695%_)
                _%obj141732%_)
              (if (let* ((_%klass141734%_ _%klass141698%_)
                         (_%klass141739%_ _%klass141734%_))
                    (__class-type-metaclass? _%klass141739%_))
                  (let ((_%obj141766%_
                         (let* ((_%klass141750%_ _%klass141698%_)
                                (_%klass141755%_ _%klass141750%_))
                           (__new-instance _%klass141755%_))))
                    (__metaclass-instance-init!
                     _%klass141698%_
                     _%obj141766%_
                     _%args141695%_)
                    _%obj141766%_)
                  (if (let* ((_%klass141768%_ _%klass141698%_)
                             (_%klass141773%_ _%klass141768%_))
                        (__class-type-struct? _%klass141773%_))
                      (if (let ((__tmp148379
                                 (let* ((_%klass141802%_ _%klass141698%_)
                                        (_%klass141807%_ _%klass141802%_))
                                   (__class-type-field-count _%klass141807%_)))
                                (__tmp148378
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args141695%_))))
                            (declare (not safe))
                            (##fx= __tmp148379 __tmp148378))
                          (apply ##structure _%klass141698%_ _%args141695%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass141698%_
                                   'slots:
                                   (let* ((_%klass141819%_ _%klass141698%_)
                                          (_%klass141824%_ _%klass141819%_))
                                     (__class-type-slot-list _%klass141824%_))
                                   'args:
                                   _%args141695%_)
                            '#!void))
                      (let ((_%obj141800%_
                             (let* ((_%klass141784%_ _%klass141698%_)
                                    (_%klass141789%_ _%klass141784%_))
                               (__new-instance _%klass141789%_))))
                        (___class-instance-init!
                         _%klass141698%_
                         _%obj141800%_
                         _%args141695%_)
                        _%obj141800%_)))))))
    (define make-instance
      (lambda (_%klass141679%_ . _%args141680%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141679%_ 'class))
            (let ((_%klass141684%_ _%klass141679%_))
              (declare (not safe))
              (##apply __make-instance _%klass141684%_ _%args141680%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@877.22-877.27"
               'contract:
               'class-type?
               'value:
               _%klass141679%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj141666%_ . _%args141667%_)
        (let ((_%obj141670%_ _%obj141666%_))
          (if (let ((__tmp148381
                     (let () (declare (not safe)) (##length _%args141667%_)))
                    (__tmp148380
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj141670%_))))
                (declare (not safe))
                (##fx< __tmp148381 __tmp148380))
              (___struct-instance-init! _%obj141670%_ _%args141667%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj141670%_
                     'args:
                     _%args141667%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj141651%_ . _%args141652%_)
        (if (object? _%obj141651%_)
            (let ((_%obj141656%_ _%obj141651%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj141656%_ _%args141652%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@902.30-902.33"
               'contract:
               'object?
               'value:
               _%obj141651%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj141610%_ _%args141611%_)
        (let _%lp141613%_ ((_%k141615%_ '1) (_%rest141616%_ _%args141611%_))
          (let* ((_%$%rest141617141625%_ _%rest141616%_)
                 (_%$%else141619141633%_ (lambda () _%obj141610%_))
                 (_%$%K141621141639%_
                  (lambda (_%rest141636%_ _%hd141637%_)
                    (unchecked-field-set!
                     _%obj141610%_
                     _%k141615%_
                     _%hd141637%_)
                    (_%lp141613%_
                     (let () (declare (not safe)) (##fx+ _%k141615%_ '1))
                     _%rest141636%_))))
            (if (pair? _%$%rest141617141625%_)
                (let ((_%$%hd141622141642%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest141617141625%_)))
                      (_%$%tl141623141644%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest141617141625%_))))
                  (let* ((_%hd141647%_ _%$%hd141622141642%_)
                         (_%rest141649%_ _%$%tl141623141644%_))
                    (_%$%K141621141639%_ _%rest141649%_ _%hd141647%_)))
                (_%$%else141619141633%_))))))
    (define __class-instance-init!
      (lambda (_%obj141597%_ . _%args141598%_)
        (let ((_%obj141601%_ _%obj141597%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj141601%_))
           _%obj141601%_
           _%args141598%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj141582%_ . _%args141583%_)
        (if (object? _%obj141582%_)
            (let ((_%obj141587%_ _%obj141582%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj141587%_ _%args141583%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@942.29-942.32"
               'contract:
               'object?
               'value:
               _%obj141582%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass141524%_ _%obj141525%_ _%args141526%_)
        (let _%lp141528%_ ((_%rest141530%_ _%args141526%_))
          (let* ((_%$%rest141531141541%_ _%rest141530%_)
                 (_%$%else141533141549%_
                  (lambda ()
                    (if (null? _%rest141530%_)
                        _%obj141525%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass141524%_
                               'rest:
                               _%rest141530%_))))
                 (_%$%K141535141563%_
                  (lambda (_%rest141552%_ _%val141553%_ _%key141554%_)
                    (if (keyword? _%key141554%_)
                        (let ((_%$e141557%_
                               (__class-slot-offset
                                _%klass141524%_
                                _%key141554%_)))
                          (if _%$e141557%_
                              (let ()
                                (unchecked-field-set!
                                 _%obj141525%_
                                 _%$e141557%_
                                 _%val141553%_)
                                (_%lp141528%_ _%rest141552%_))
                              (error '"unknown slot"
                                     'class:
                                     _%klass141524%_
                                     'slot:
                                     _%key141554%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key141554%_)))))
            (if (pair? _%$%rest141531141541%_)
                (let ((_%$%hd141536141566%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest141531141541%_)))
                      (_%$%tl141537141568%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest141531141541%_))))
                  (let ((_%key141571%_ _%$%hd141536141566%_))
                    (if (pair? _%$%tl141537141568%_)
                        (let ((_%$%hd141538141573%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl141537141568%_)))
                              (_%$%tl141539141575%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl141537141568%_))))
                          (let* ((_%val141578%_ _%$%hd141538141573%_)
                                 (_%rest141580%_ _%$%tl141539141575%_))
                            (_%$%K141535141563%_
                             _%rest141580%_
                             _%val141578%_
                             _%key141571%_)))
                        (_%$%else141533141549%_))))
                (_%$%else141533141549%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass141520%_ _%obj141521%_ _%args141522%_)
        (apply call-method
               _%klass141520%_
               'instance-init!
               _%obj141521%_
               _%args141522%_)))
    (define __constructor-init!
      (lambda (_%klass141489%_
               _%kons-id141490%_
               _%obj141491%_
               .
               _%args141492%_)
        (let* ((_%klass141495%_ _%klass141489%_)
               (_%kons-id141503%_ _%kons-id141490%_)
               (_%obj141511%_ _%obj141491%_))
          (___constructor-init!
           _%klass141495%_
           _%kons-id141503%_
           _%obj141511%_
           _%args141492%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass141452%_
               _%kons-id141453%_
               _%obj141454%_
               .
               _%args141455%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141452%_ 'class))
            (let ((_%klass141459%_ _%klass141452%_))
              (if (symbol? _%kons-id141453%_)
                  (let ((_%kons-id141469%_ _%kons-id141453%_))
                    (if (object? _%obj141454%_)
                        (let ((_%obj141479%_ _%obj141454%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass141459%_
                                   _%kons-id141469%_
                                   _%obj141479%_
                                   _%args141455%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@966.63-966.66"
                           'contract:
                           'object?
                           'value:
                           _%obj141454%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@966.43-966.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id141453%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@966.26-966.31"
               'contract:
               'class-type?
               'value:
               _%klass141452%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass141441%_ _%kons-id141442%_ _%obj141443%_ _%args141444%_)
        (let ((_%$e141446%_
               (__find-method
                _%klass141441%_
                _%obj141443%_
                _%kons-id141442%_)))
          (if _%$e141446%_
              (let ()
                (apply _%$e141446%_ _%obj141443%_ _%args141444%_)
                _%obj141443%_)
              (error '"missing constructor"
                     'class:
                     _%klass141441%_
                     'method:
                     _%kons-id141442%_)))))
    (define __struct-copy
      (lambda (_%struct141429%_)
        (let ((_%struct141432%_ _%struct141429%_))
          (declare (not safe))
          (##structure-copy _%struct141432%_))))
    (define struct-copy
      (lambda (_%struct141415%_)
        (if (object? _%struct141415%_)
            (let ((_%struct141419%_ _%struct141415%_))
              (__struct-copy _%struct141419%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@980.20-980.26"
               'contract:
               'object?
               'value:
               _%struct141415%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj141396%_)
        (let* ((_%obj141399%_ _%obj141396%_)
               (_%len141408%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj141399%_))))
          (let _%recur141410%_ ((_%i141412%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i141412%_ _%len141408%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj141399%_
                         _%i141412%_
                         '#f
                         '#f))
                      (_%recur141410%_
                       (let () (declare (not safe)) (##fx+ _%i141412%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj141382%_)
        (if (object? _%obj141382%_)
            (let ((_%obj141386%_ _%obj141382%_))
              (__struct->list _%obj141386%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@983.21-983.24"
               'contract:
               'object?
               'value:
               _%obj141382%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj141334%_)
        (let* ((_%obj141337%_ _%obj141334%_)
               (_%klass141346%_
                (let () (declare (not safe)) (##structure-type _%obj141337%_)))
               (_%slot-vector141348%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass141346%_ '7 '#f '#f))))
          (let _%loop141350%_ ((_%index141352%_
                                (let ((__tmp148382
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector141348%_))))
                                  (declare (not safe))
                                  (##fx- __tmp148382 '1)))
                               (_%plist141353%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index141352%_ '1))
                (cons _%klass141346%_ _%plist141353%_)
                (let ((_%slot141356%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector141348%_
                          _%index141352%_))))
                  (_%loop141350%_
                   (let () (declare (not safe)) (##fx- _%index141352%_ '1))
                   (cons (let ((_%sym141358%_ _%slot141356%_))
                           (if (symbol? _%sym141358%_)
                               (let ((_%sym141363%_ _%sym141358%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym141363%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym141358%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj141337%_
                                _%index141352%_)
                               _%plist141353%_)))))))))
    (define class->list
      (lambda (_%obj141320%_)
        (if (object? _%obj141320%_)
            (let ((_%obj141324%_ _%obj141320%_)) (__class->list _%obj141324%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@991.20-991.23"
               'contract:
               'object?
               'value:
               _%obj141320%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj141270%_ _%id141271%_ . _%args141272%_)
        (let* ((_%id141275%_ _%id141271%_)
               (_%$e141306%_
                (let* ((_%obj141284%_ _%obj141270%_)
                       (_%id141287%_ _%id141275%_)
                       (_%id141292%_ _%id141287%_))
                  (__method-ref _%obj141284%_ _%id141292%_))))
          (if _%$e141306%_
              (let ((_%method141311%_ _%$e141306%_))
                (apply _%method141311%_ _%obj141270%_ _%args141272%_))
              (error '"cannot find method"
                     'object:
                     _%obj141270%_
                     'method:
                     _%id141275%_)))))
    (define call-method
      (lambda (_%obj141254%_ _%id141255%_ . _%args141256%_)
        (if (symbol? _%id141255%_)
            (let ((_%id141260%_ _%id141255%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj141254%_
                       _%id141260%_
                       _%args141256%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1006.24-1006.26"
               'contract:
               'symbol?
               'value:
               _%id141255%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj141205%_ _%id141206%_)
        (let* ((_%id141209%_ _%id141206%_)
               (_%klass141218%_ (class-of _%obj141205%_))
               (_%obj141221%_ _%obj141205%_)
               (_%id141224%_ _%id141209%_)
               (_%klass141229%_ _%klass141218%_)
               (_%id141244%_ _%id141224%_))
          (__find-method _%klass141229%_ _%obj141221%_ _%id141244%_))))
    (define method-ref
      (lambda (_%obj141190%_ _%id141191%_)
        (if (symbol? _%id141191%_)
            (let ((_%id141195%_ _%id141191%_))
              (__method-ref _%obj141190%_ _%id141195%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1033.23-1033.25"
               'contract:
               'symbol?
               'value:
               _%id141191%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj141162%_ _%id141163%_)
        (let ((_%$e141187%_
               (let* ((_%obj141166%_ _%obj141162%_)
                      (_%id141169%_ _%id141163%_))
                 (if (symbol? _%id141169%_)
                     (let ((_%id141174%_ _%id141169%_))
                       (__method-ref _%obj141166%_ _%id141174%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id141169%_)
                       '#!void)))))
          (if _%$e141187%_
              _%$e141187%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj141162%_
                       'method:
                       _%id141163%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj141111%_ _%id141112%_)
        (let* ((_%id141115%_ _%id141112%_)
               (_%$e141146%_
                (let* ((_%obj141124%_ _%obj141111%_)
                       (_%id141127%_ _%id141115%_)
                       (_%id141132%_ _%id141127%_))
                  (__method-ref _%obj141124%_ _%id141132%_))))
          (if _%$e141146%_
              (let ((_%method141151%_ _%$e141146%_))
                (lambda _%args141159%_
                  (apply _%method141151%_ _%obj141111%_ _%args141159%_)))
              '#f))))
    (define bound-method-ref
      (lambda (_%obj141096%_ _%id141097%_)
        (if (symbol? _%id141097%_)
            (let ((_%id141101%_ _%id141097%_))
              (__bound-method-ref _%obj141096%_ _%id141101%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1041.29-1041.31"
               'contract:
               'symbol?
               'value:
               _%id141097%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj141079%_ _%id141080%_)
        (let* ((_%id141083%_ _%id141080%_)
               (_%method141092%_
                (checked-method-ref _%obj141079%_ _%id141083%_)))
          (lambda _%args141094%_
            (apply _%method141092%_ _%obj141079%_ _%args141094%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj141064%_ _%id141065%_)
        (if (symbol? _%id141065%_)
            (let ((_%id141069%_ _%id141065%_))
              (__checked-bound-method-ref _%obj141064%_ _%id141069%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1050.37-1050.39"
               'contract:
               'symbol?
               'value:
               _%id141065%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass140933%_ _%obj140934%_ _%id140935%_)
        (let* ((_%klass140938%_ _%klass140933%_) (_%id140946%_ _%id140935%_))
          (if (let* ((_%klass140955%_ _%klass140938%_)
                     (_%klass140960%_ _%klass140955%_))
                (__class-type-sealed? _%klass140960%_))
              (let ((_%tab140990%_
                     (let* ((_%klass140974%_ _%klass140938%_)
                            (_%klass140979%_ _%klass140974%_))
                       (__specialize-class _%klass140979%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab140990%_ _%id140946%_ '#f))
              (let ((_%$e141025%_
                     (let* ((_%klass140992%_ _%klass140938%_)
                            (_%obj140995%_ _%obj140934%_)
                            (_%id140998%_ _%id140946%_)
                            (_%klass141003%_ _%klass140992%_)
                            (_%id141015%_ _%id140998%_))
                       (__direct-method-ref
                        _%klass141003%_
                        _%obj140995%_
                        _%id141015%_))))
                (if _%$e141025%_
                    _%$e141025%_
                    (let* ((_%klass141029%_ _%klass140938%_)
                           (_%obj141032%_ _%obj140934%_)
                           (_%id141035%_ _%id140946%_)
                           (_%klass141040%_ _%klass141029%_)
                           (_%id141054%_ _%id141035%_))
                      (__mixin-method-ref
                       _%klass141040%_
                       _%obj141032%_
                       _%id141054%_))))))))
    (define find-method
      (lambda (_%klass140907%_ _%obj140908%_ _%id140909%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140907%_ 'class))
            (let ((_%klass140913%_ _%klass140907%_))
              (if (symbol? _%id140909%_)
                  (let ((_%id140923%_ _%id140909%_))
                    (__find-method _%klass140913%_ _%obj140908%_ _%id140923%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1055.41-1055.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id140909%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1055.20-1055.25"
               'contract:
               'class-type?
               'value:
               _%klass140907%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins140852%_ _%obj140853%_ _%id140854%_)
        (let* ((_%id140857%_ _%id140854%_)
               (__tmp148383
                (lambda (_%$%g140865140867%_)
                  (let* ((_%klass140870%_ _%$%g140865140867%_)
                         (_%obj140873%_ _%obj140853%_)
                         (_%id140876%_ _%id140857%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass140870%_ 'class))
                        (let* ((_%klass140881%_ _%klass140870%_)
                               (_%id140897%_ _%id140876%_))
                          (__direct-method-ref
                           _%klass140881%_
                           _%obj140873%_
                           _%id140897%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass140870%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp148383 _%mixins140852%_))))
    (define mixin-find-method
      (lambda (_%mixins140836%_ _%obj140837%_ _%id140838%_)
        (if (symbol? _%id140838%_)
            (let ((_%id140842%_ _%id140838%_))
              (__mixin-find-method
               _%mixins140836%_
               _%obj140837%_
               _%id140842%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1064.37-1064.39"
               'contract:
               'symbol?
               'value:
               _%id140838%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass140729%_ _%obj140730%_ _%id140731%_)
        (let* ((_%klass140734%_ _%klass140729%_) (_%id140742%_ _%id140731%_))
          (letrec ((_%metaclass-resolve-method140751%_
                    (lambda ()
                      (let* ((_%obj140812%_ _%klass140734%_)
                             (_%id140815%_ 'direct-method-ref)
                             (_%args140818%_ (list _%obj140730%_ _%id140742%_))
                             (_%id140823%_ _%id140815%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj140812%_
                                 _%id140823%_
                                 _%args140818%_))))
                   (_%metaclass-resolve-method!140752%_
                    (lambda ()
                      (let ((_%method140809%_
                             (_%metaclass-resolve-method140751%_)))
                        (let ((__tmp148385
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass140734%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp148384
                               (if _%method140809%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp148385
                           _%id140742%_
                           __tmp148384))
                        _%method140809%_))))
            (let ((_%$e140754%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass140734%_ '11 '#f '#f))))
              (if _%$e140754%_
                  (let ((_%method140759%_
                         (let ()
                           (declare (not safe))
                           (symbolic-table-ref
                            _%$e140754%_
                            _%id140742%_
                            '#f))))
                    (if (procedure? _%method140759%_)
                        _%method140759%_
                        (if (let* ((_%klass140762%_ _%klass140734%_)
                                   (_%klass140767%_ _%klass140762%_))
                              (__class-type-metaclass? _%klass140767%_))
                            (let ((_%$e140785%_ _%method140759%_))
                              (if (eq? 'resolved _%$e140785%_)
                                  (_%metaclass-resolve-method140751%_)
                                  (if (eq? 'unknown _%$e140785%_)
                                      '#f
                                      (_%metaclass-resolve-method!140752%_))))
                            '#f)))
                  (if (let* ((_%klass140789%_ _%klass140734%_)
                             (_%klass140794%_ _%klass140789%_))
                        (__class-type-metaclass? _%klass140794%_))
                      (let ((_%tab140805%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass140734%_
                           _%tab140805%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!140752%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass140703%_ _%obj140704%_ _%id140705%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140703%_ 'class))
            (let ((_%klass140709%_ _%klass140703%_))
              (if (symbol? _%id140705%_)
                  (let ((_%id140719%_ _%id140705%_))
                    (__direct-method-ref
                     _%klass140709%_
                     _%obj140704%_
                     _%id140719%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1067.47-1067.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id140705%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1067.26-1067.31"
               'contract:
               'class-type?
               'value:
               _%klass140703%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass140655%_ _%obj140656%_ _%id140657%_)
        (let* ((_%klass140660%_ _%klass140655%_)
               (_%id140668%_ _%id140657%_)
               (_%mixins140677%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass140660%_ '6 '#f '#f)))
               (_%obj140680%_ _%obj140656%_)
               (_%id140683%_ _%id140668%_)
               (_%id140688%_ _%id140683%_))
          (__mixin-find-method _%mixins140677%_ _%obj140680%_ _%id140688%_))))
    (define mixin-method-ref
      (lambda (_%klass140629%_ _%obj140630%_ _%id140631%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140629%_ 'class))
            (let ((_%klass140635%_ _%klass140629%_))
              (if (symbol? _%id140631%_)
                  (let ((_%id140645%_ _%id140631%_))
                    (__mixin-method-ref
                     _%klass140635%_
                     _%obj140630%_
                     _%id140645%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1097.46-1097.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id140631%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1097.25-1097.30"
               'contract:
               'class-type?
               'value:
               _%klass140629%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass140510%_ _%id140511%_ _%proc140512%_ _%rebind?140513%_)
        (let* ((_%id140516%_ _%id140511%_) (_%proc140524%_ _%proc140512%_))
          (letrec ((_%flush-caches!140533%_
                    (lambda (_%klass140587%_)
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass140587%_
                             '12
                             '#f
                             '#f))
                          (begin
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               _%klass140587%_
                               '#f
                               '12
                               '#f
                               '#f))
                            (if (let ((_%klass140589%_ _%klass140587%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass140589%_
                                         'class))
                                      (let ((_%klass140594%_ _%klass140589%_))
                                        (__class-type-sealed? _%klass140594%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass140589%_)
                                        '#!void)))
                                (let ((__tmp148386
                                       (let ((__tmp148388
                                              (let ()
                                                (declare (not safe))
                                                (##fxnot class-type-flag-sealed)))
                                             (__tmp148387
                                              (let ()
                                                (declare (not safe))
                                                (##type-flags
                                                 _%klass140587%_))))
                                         (declare (not safe))
                                         (##fxand __tmp148388 __tmp148387))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass140587%_
                                   __tmp148386
                                   '3
                                   class::t
                                   bind-method!))
                                '#!void))
                          '#!void)
                      (if (and _%rebind?140513%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass140587%_
                                  '13
                                  '#f
                                  '#f)))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass140587%_
                             '#f
                             '13
                             '#f
                             '#f))
                          '#!void)
                      (let ((_%$e140605%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%klass140587%_
                                '9
                                '#f
                                '#f))))
                        (if _%$e140605%_
                            (let ((_%$e140610%_
                                   (let ()
                                     (declare (not safe))
                                     (agetq__0 'subclasses: _%$e140605%_))))
                              (if _%$e140610%_
                                  (for-each
                                   _%flush-caches!140533%_
                                   _%$e140610%_)
                                  '#!void))
                            '#!void))))
                   (_%bind!140534%_
                    (lambda (_%ht140585%_)
                      (if (if _%rebind?140513%_
                              '#f
                              (let ()
                                (declare (not safe))
                                (symbolic-table-ref
                                 _%ht140585%_
                                 _%id140516%_
                                 '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass140510%_
                                 'method:
                                 _%id140516%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht140585%_
                               _%id140516%_
                               _%proc140524%_))
                            (_%flush-caches!140533%_ _%klass140510%_)
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass140510%_ 'class))
                (let ((_%ht140537%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass140510%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht140537%_
                      (_%bind!140534%_ _%ht140537%_)
                      (let ((_%ht140539%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass140510%_
                           _%ht140539%_
                           '11
                           '#f
                           '#f))
                        (_%bind!140534%_ _%ht140539%_))))
                (if (let () (declare (not safe)) (##type? _%klass140510%_))
                    (let* ((_%klass140542%_
                            (__shadow-class__0 _%klass140510%_))
                           (_%id140545%_ _%id140516%_)
                           (_%proc140548%_ _%proc140524%_)
                           (_%rebind?140551%_ _%rebind?140513%_)
                           (_%id140556%_ _%id140545%_)
                           (_%proc140574%_ _%proc140548%_))
                      (__bind-method!__%
                       _%klass140542%_
                       _%id140556%_
                       _%proc140574%_
                       _%rebind?140551%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass140510%_)))))))
    (define __bind-method!__0
      (lambda (_%klass140618%_ _%id140619%_ _%proc140620%_)
        (let ((_%rebind?140622%_ '#f))
          (__bind-method!__%
           _%klass140618%_
           _%id140619%_
           _%proc140620%_
           _%rebind?140622%_))))
    (define __bind-method!
      (lambda _g148389_
        (let ((_g148390_ (let () (declare (not safe)) (##length _g148389_))))
          (cond ((let () (declare (not safe)) (##fx= _g148390_ 3))
                 (apply __bind-method!__0 _g148389_))
                ((let () (declare (not safe)) (##fx= _g148390_ 4))
                 (apply __bind-method!__% _g148389_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g148389_))))))
    (define bind-method!__%
      (lambda (_%klass140468%_ _%id140469%_ _%proc140470%_ _%rebind?140471%_)
        (if (symbol? _%id140469%_)
            (let ((_%id140475%_ _%id140469%_))
              (if (procedure? _%proc140470%_)
                  (let ((_%proc140485%_ _%proc140470%_))
                    (__bind-method!__%
                     _%klass140468%_
                     _%id140475%_
                     _%proc140485%_
                     _%rebind?140471%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1100.42-1100.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc140470%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1100.27-1100.29"
               'contract:
               'symbol?
               'value:
               _%id140469%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass140498%_ _%id140499%_ _%proc140500%_)
        (let ((_%rebind?140502%_ '#f))
          (bind-method!__%
           _%klass140498%_
           _%id140499%_
           _%proc140500%_
           _%rebind?140502%_))))
    (define bind-method!
      (lambda _g148391_
        (let ((_g148392_ (let () (declare (not safe)) (##length _g148391_))))
          (cond ((let () (declare (not safe)) (##fx= _g148392_ 3))
                 (apply bind-method!__0 _g148391_))
                ((let () (declare (not safe)) (##fx= _g148392_ 4))
                 (apply bind-method!__% _g148391_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g148391_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint140449%_ _%seed140450%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint140449%_
           procedure-hash
           eq?
           _%seed140450%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint140456%_ '#f) (_%seed140458%_ '0))
          (make-method-specializer-table__%
           _%size-hint140456%_
           _%seed140458%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint140460%_)
        (let ((_%seed140462%_ '0))
          (make-method-specializer-table__%
           _%size-hint140460%_
           _%seed140462%_))))
    (define make-method-specializer-table
      (lambda _g148393_
        (let ((_g148394_ (let () (declare (not safe)) (##length _g148393_))))
          (cond ((let () (declare (not safe)) (##fx= _g148394_ 0))
                 (apply make-method-specializer-table__0 _g148393_))
                ((let () (declare (not safe)) (##fx= _g148394_ 1))
                 (apply make-method-specializer-table__1 _g148393_))
                ((let () (declare (not safe)) (##fx= _g148394_ 2))
                 (apply make-method-specializer-table__% _g148393_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g148393_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint140429%_ _%seed140431%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint140429%_
           procedure-hash
           eq?
           _%seed140431%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint140437%_ '#f) (_%seed140439%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint140437%_
           _%seed140439%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint140441%_)
        (let ((_%seed140443%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint140441%_
           _%seed140443%_))))
    (define make-method-specializer-table/lock
      (lambda _g148395_
        (let ((_g148396_ (let () (declare (not safe)) (##length _g148395_))))
          (cond ((let () (declare (not safe)) (##fx= _g148396_ 0))
                 (apply make-method-specializer-table/lock__0 _g148395_))
                ((let () (declare (not safe)) (##fx= _g148396_ 1))
                 (apply make-method-specializer-table/lock__1 _g148395_))
                ((let () (declare (not safe)) (##fx= _g148396_ 2))
                 (apply make-method-specializer-table/lock__% _g148395_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g148395_))))))
    (define method-specializer-table-ref
      (lambda (_%tab140382%_ _%key140383%_ _%default140384%_)
        (let ((_%table140386%_
               (let () (declare (not safe)) (&raw-table-table _%tab140382%_)))
              (_%seed140387%_
               (let () (declare (not safe)) (&raw-table-seed _%tab140382%_))))
          (let* ((_%h140389%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key140383%_))
                         _%seed140387%_))
                 (_%size140392%_ (vector-length _%table140386%_))
                 (_%entries140395%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size140392%_ '2)))
                 (_%start140398%_
                  (let ((__tmp148397
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h140389%_ _%entries140395%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp148397 '1))))
            (let _%loop140402%_ ((_%probe140405%_ _%start140398%_)
                                 (_%i140407%_ '1)
                                 (_%deleted140409%_ '#f))
              (let ((_%k140412%_ (vector-ref _%table140386%_ _%probe140405%_)))
                (if (eq? _%k140412%_ (macro-unused-obj))
                    _%default140384%_
                    (if (eq? _%k140412%_ (macro-deleted-obj))
                        (_%loop140402%_
                         (let ((_%next-probe140417%_
                                (fx+ _%start140398%_
                                     _%i140407%_
                                     (fx* _%i140407%_ _%i140407%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe140417%_ _%size140392%_))
                         (let () (declare (not safe)) (##fx+ _%i140407%_ '1))
                         (let ((_%$e140420%_ _%deleted140409%_))
                           (if _%$e140420%_ _%$e140420%_ _%probe140405%_)))
                        (if (eq? _%key140383%_ _%k140412%_)
                            (vector-ref
                             _%table140386%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe140405%_ '1)))
                            (_%loop140402%_
                             (let ((_%next-probe140425%_
                                    (fx+ _%start140398%_
                                         _%i140407%_
                                         (fx* _%i140407%_ _%i140407%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe140425%_
                                _%size140392%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i140407%_ '1))
                             _%deleted140409%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab140353%_ _%key140354%_ _%default140355%_)
        (let ((_%lock140357%_
               (let () (declare (not safe)) (&raw-table-lock _%tab140353%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again140362%_ ((_%spin140365%_ '0))
              (if (let ((__tmp148398
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock140357%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp148398 '0))
                  (let ((__tmp148399 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock140357%_ '1 __tmp148399))
                  (if (let () (declare (not safe)) (##fx< _%spin140365%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again140362%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin140365%_ '1))))
                      (let ((_%owner140371%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock140357%_ '1))))
                        (if (eq? _%owner140371%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner140371%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again140362%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r140377%_
                 (method-specializer-table-ref
                  _%tab140353%_
                  _%key140354%_
                  _%default140355%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock140357%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock140357%_ '0 '0 '1))))
            _%$r140377%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab140305%_ _%key140306%_ _%value140307%_)
        (let ((_%table140309%_
               (let () (declare (not safe)) (&raw-table-table _%tab140305%_)))
              (_%seed140310%_
               (let () (declare (not safe)) (&raw-table-seed _%tab140305%_))))
          (let* ((_%h140312%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key140306%_))
                         _%seed140310%_))
                 (_%size140315%_ (vector-length _%table140309%_))
                 (_%entries140318%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size140315%_ '2)))
                 (_%start140321%_
                  (let ((__tmp148400
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h140312%_ _%entries140318%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp148400 '1))))
            (let _%loop140325%_ ((_%probe140328%_ _%start140321%_)
                                 (_%i140330%_ '1)
                                 (_%deleted140332%_ '#f))
              (let ((_%k140335%_ (vector-ref _%table140309%_ _%probe140328%_)))
                (if (eq? _%k140335%_ (macro-unused-obj))
                    (if _%deleted140332%_
                        (begin
                          (vector-set!
                           _%table140309%_
                           _%deleted140332%_
                           _%key140306%_)
                          (vector-set!
                           _%table140309%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted140332%_ '1))
                           _%value140307%_)
                          (let ((__tmp148401
                                 (let ((__tmp148402
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab140305%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp148402 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab140305%_ __tmp148401)))
                        (begin
                          (vector-set!
                           _%table140309%_
                           _%probe140328%_
                           _%key140306%_)
                          (vector-set!
                           _%table140309%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe140328%_ '1))
                           _%value140307%_)
                          (let ()
                            (let ((__tmp148403
                                   (let ((__tmp148404
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab140305%_))))
                                     (declare (not safe))
                                     (##fx- __tmp148404 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab140305%_ __tmp148403))
                            (let ((__tmp148405
                                   (let ((__tmp148406
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab140305%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp148406 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab140305%_
                               __tmp148405)))))
                    (if (eq? _%k140335%_ (macro-deleted-obj))
                        (_%loop140325%_
                         (let ((_%next-probe140342%_
                                (fx+ _%start140321%_
                                     _%i140330%_
                                     (fx* _%i140330%_ _%i140330%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe140342%_ _%size140315%_))
                         (let () (declare (not safe)) (##fx+ _%i140330%_ '1))
                         (let ((_%$e140345%_ _%deleted140332%_))
                           (if _%$e140345%_ _%$e140345%_ _%probe140328%_)))
                        (if (eq? _%key140306%_ _%k140335%_)
                            (let ()
                              (vector-set!
                               _%table140309%_
                               _%probe140328%_
                               _%key140306%_)
                              (vector-set!
                               _%table140309%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe140328%_ '1))
                               _%value140307%_))
                            (_%loop140325%_
                             (let ((_%next-probe140350%_
                                    (fx+ _%start140321%_
                                         _%i140330%_
                                         (fx* _%i140330%_ _%i140330%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe140350%_
                                _%size140315%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i140330%_ '1))
                             _%deleted140332%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab140301%_ _%key140302%_ _%value140303%_)
        (if (let ((__tmp148409
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab140301%_)))
                  (__tmp148407
                   (let ((__tmp148408
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab140301%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp148408 '4))))
              (declare (not safe))
              (##fx< __tmp148409 __tmp148407))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab140301%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab140301%_
         _%key140302%_
         _%value140303%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab140271%_ _%key140272%_ _%value140273%_)
        (let ((_%lock140276%_
               (let () (declare (not safe)) (&raw-table-lock _%tab140271%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again140281%_ ((_%spin140284%_ '0))
              (if (let ((__tmp148410
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock140276%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp148410 '0))
                  (let ((__tmp148411 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock140276%_ '1 __tmp148411))
                  (if (let () (declare (not safe)) (##fx< _%spin140284%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again140281%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin140284%_ '1))))
                      (let ((_%owner140290%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock140276%_ '1))))
                        (if (eq? _%owner140290%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner140290%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again140281%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r140296%_
                 (method-specializer-table-set!
                  _%tab140271%_
                  _%key140272%_
                  _%value140273%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock140276%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock140276%_ '0 '0 '1))))
            _%$r140296%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab140222%_
               _%key140223%_
               _%method-specializer-table-update!140224%_
               _%default140225%_)
        (let ((_%table140227%_
               (let () (declare (not safe)) (&raw-table-table _%tab140222%_)))
              (_%seed140228%_
               (let () (declare (not safe)) (&raw-table-seed _%tab140222%_))))
          (let* ((_%h140230%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key140223%_))
                         _%seed140228%_))
                 (_%size140233%_ (vector-length _%table140227%_))
                 (_%entries140236%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size140233%_ '2)))
                 (_%start140239%_
                  (let ((__tmp148412
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h140230%_ _%entries140236%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp148412 '1))))
            (let _%loop140243%_ ((_%probe140246%_ _%start140239%_)
                                 (_%i140248%_ '1)
                                 (_%deleted140250%_ '#f))
              (let ((_%k140253%_ (vector-ref _%table140227%_ _%probe140246%_)))
                (if (eq? _%k140253%_ (macro-unused-obj))
                    (if _%deleted140250%_
                        (begin
                          (vector-set!
                           _%table140227%_
                           _%deleted140250%_
                           _%key140223%_)
                          (vector-set!
                           _%table140227%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted140250%_ '1))
                           (_%method-specializer-table-update!140224%_
                            _%default140225%_))
                          (let ((__tmp148413
                                 (let ((__tmp148414
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab140222%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp148414 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab140222%_ __tmp148413)))
                        (begin
                          (vector-set!
                           _%table140227%_
                           _%probe140246%_
                           _%key140223%_)
                          (vector-set!
                           _%table140227%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe140246%_ '1))
                           (_%method-specializer-table-update!140224%_
                            _%default140225%_))
                          (let ()
                            (let ((__tmp148415
                                   (let ((__tmp148416
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab140222%_))))
                                     (declare (not safe))
                                     (##fx- __tmp148416 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab140222%_ __tmp148415))
                            (let ((__tmp148417
                                   (let ((__tmp148418
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab140222%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp148418 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab140222%_
                               __tmp148417)))))
                    (if (eq? _%k140253%_ (macro-deleted-obj))
                        (_%loop140243%_
                         (let ((_%next-probe140260%_
                                (fx+ _%start140239%_
                                     _%i140248%_
                                     (fx* _%i140248%_ _%i140248%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe140260%_ _%size140233%_))
                         (let () (declare (not safe)) (##fx+ _%i140248%_ '1))
                         (let ((_%$e140263%_ _%deleted140250%_))
                           (if _%$e140263%_ _%$e140263%_ _%probe140246%_)))
                        (if (eq? _%key140223%_ _%k140253%_)
                            (let ()
                              (vector-set!
                               _%table140227%_
                               _%probe140246%_
                               _%key140223%_)
                              (vector-set!
                               _%table140227%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe140246%_ '1))
                               (_%method-specializer-table-update!140224%_
                                (vector-ref
                                 _%table140227%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe140246%_ '1))))))
                            (_%loop140243%_
                             (let ((_%next-probe140268%_
                                    (fx+ _%start140239%_
                                         _%i140248%_
                                         (fx* _%i140248%_ _%i140248%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe140268%_
                                _%size140233%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i140248%_ '1))
                             _%deleted140250%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab140217%_
               _%key140218%_
               _%method-specializer-table-update!140219%_
               _%default140220%_)
        (if (let ((__tmp148421
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab140217%_)))
                  (__tmp148419
                   (let ((__tmp148420
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab140217%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp148420 '4))))
              (declare (not safe))
              (##fx< __tmp148421 __tmp148419))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab140217%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab140217%_
         _%key140218%_
         _%method-specializer-table-update!140219%_
         _%default140220%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab140186%_
               _%key140187%_
               _%method-specializer-table-update!140188%_
               _%default140189%_)
        (let ((_%lock140192%_
               (let () (declare (not safe)) (&raw-table-lock _%tab140186%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again140197%_ ((_%spin140200%_ '0))
              (if (let ((__tmp148422
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock140192%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp148422 '0))
                  (let ((__tmp148423 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock140192%_ '1 __tmp148423))
                  (if (let () (declare (not safe)) (##fx< _%spin140200%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again140197%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin140200%_ '1))))
                      (let ((_%owner140206%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock140192%_ '1))))
                        (if (eq? _%owner140206%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner140206%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again140197%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r140212%_
                 (_%method-specializer-table-update!140188%_
                  _%tab140186%_
                  _%key140187%_
                  _%method-specializer-table-update!140188%_
                  _%default140189%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock140192%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock140192%_ '0 '0 '1))))
            _%$r140212%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab140143%_ _%key140144%_)
        (let ((_%table140146%_
               (let () (declare (not safe)) (&raw-table-table _%tab140143%_)))
              (_%seed140148%_
               (let () (declare (not safe)) (&raw-table-seed _%tab140143%_))))
          (let* ((_%h140151%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key140144%_))
                         _%seed140148%_))
                 (_%size140154%_ (vector-length _%table140146%_))
                 (_%entries140157%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size140154%_ '2)))
                 (_%start140160%_
                  (let ((__tmp148424
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h140151%_ _%entries140157%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp148424 '1))))
            (let _%loop140164%_ ((_%probe140167%_ _%start140160%_)
                                 (_%i140169%_ '1))
              (let ((_%k140172%_ (vector-ref _%table140146%_ _%probe140167%_)))
                (if (eq? _%k140172%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k140172%_ (macro-deleted-obj))
                        (_%loop140164%_
                         (let ((_%next-probe140177%_
                                (fx+ _%start140160%_
                                     _%i140169%_
                                     (fx* _%i140169%_ _%i140169%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe140177%_ _%size140154%_))
                         (let () (declare (not safe)) (##fx+ _%i140169%_ '1)))
                        (if (eq? _%key140144%_ _%k140172%_)
                            (let ()
                              (vector-set!
                               _%table140146%_
                               _%probe140167%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table140146%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe140167%_ '1))
                               (macro-absent-obj))
                              (let ((__tmp148425
                                     (let ((__tmp148426
                                            (let ()
                                              (declare (not safe))
                                              (&raw-table-count
                                               _%tab140143%_))))
                                       (declare (not safe))
                                       (##fx- __tmp148426 '1))))
                                (declare (not safe))
                                (&raw-table-count-set!
                                 _%tab140143%_
                                 __tmp148425)))
                            (_%loop140164%_
                             (let ((_%next-probe140183%_
                                    (fx+ _%start140160%_
                                         _%i140169%_
                                         (fx* _%i140169%_ _%i140169%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe140183%_
                                _%size140154%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i140169%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab140113%_ _%key140115%_)
        (let ((_%lock140118%_
               (let () (declare (not safe)) (&raw-table-lock _%tab140113%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again140123%_ ((_%spin140126%_ '0))
              (if (let ((__tmp148427
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock140118%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp148427 '0))
                  (let ((__tmp148428 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock140118%_ '1 __tmp148428))
                  (if (let () (declare (not safe)) (##fx< _%spin140126%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again140123%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin140126%_ '1))))
                      (let ((_%owner140132%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock140118%_ '1))))
                        (if (eq? _%owner140132%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner140132%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again140123%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r140138%_
                 (method-specializer-table-delete!
                  _%tab140113%_
                  _%key140115%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock140118%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock140118%_ '0 '0 '1))))
            _%$r140138%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc140110%_ _%specializer140111%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc140110%_
         _%specializer140111%_)))
    (define __lookup-method-specializer
      (lambda (_%proc140108%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc140108%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass140090%_)
        (let* ((_%klass140093%_ _%klass140090%_)
               (_%$e140102%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass140093%_ '12 '#f '#f))))
          (if _%$e140102%_
              _%$e140102%_
              (let ((_%method-table140106%_
                     (___specialize-class _%klass140093%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass140093%_
                   _%method-table140106%_
                   '12
                   '#f
                   '#f))
                _%method-table140106%_)))))
    (define specialize-class
      (lambda (_%klass140076%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140076%_ 'class))
            (let ((_%klass140080%_ _%klass140076%_))
              (__specialize-class _%klass140080%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1174.25-1174.30"
               'contract:
               'class-type?
               'value:
               _%klass140076%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass140060%_
               _%method-table140061%_
               _%method140062%_
               _%proc140063%_)
        (let ((_%$e140065%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table140061%_
                  _%method140062%_
                  '#f))))
          (if _%$e140065%_
              _%$e140065%_
              (let ((_%$e140068%_
                     (__lookup-method-specializer _%proc140063%_)))
                (if _%$e140068%_
                    (let ((_%specialized-proc140073%_
                           (_%$e140068%_
                            _%klass140060%_
                            _%method-table140061%_)))
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table140061%_
                       _%method140062%_
                       _%specialized-proc140073%_))
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table140061%_
                       _%method140062%_
                       _%proc140063%_))))))))
    (define ___specialize-class
      (lambda (_%klass139927%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139927%_ 'class))
            (if (let* ((_%klass139930%_ _%klass139927%_)
                       (_%klass139935%_ _%klass139930%_))
                  (__class-type-metaclass? _%klass139935%_))
                (let* ((_%obj139947%_ _%klass139927%_)
                       (_%id139950%_ 'specialize-class)
                       (_%args139953%_ '())
                       (_%id139958%_ _%id139950%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj139947%_
                           _%id139958%_
                           _%args139953%_))
                (if (let* ((_%pred139971%_ class-type-metaclass?)
                           (_%lst139974%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass139927%_
                               '6
                               '#f
                               '#f)))
                           (_%pred139979%_ _%pred139971%_))
                      (declare (not safe))
                      (__find _%pred139979%_ _%lst139974%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass139927%_)
                    (let ((_%method-table139992%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop139994%_ ((_%rest139996%_
                                            (let* ((_%klass140043%_
                                                    _%klass139927%_)
                                                   (_%klass140048%_
                                                    _%klass140043%_))
                                              (__class-precedence-list
                                               _%klass140048%_))))
                        (let* ((_%$%rest139997140005%_ _%rest139996%_)
                               (_%$%else139999140013%_
                                (lambda () _%method-table139992%_))
                               (_%$%K140001140031%_
                                (lambda (_%rest140016%_ _%xklass140017%_)
                                  (let ((_%$%xmethod-table140018140020%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass140017%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%$%xmethod-table140018140020%_
                                        (let* ((_%xmethod-table140022%_
                                                _%$%xmethod-table140018140020%_)
                                               (__tmp148429
                                                (lambda (_%$%g140023140026%_
                                                         _%$%g140024140028%_)
                                                  (__specialize-method
                                                   _%klass139927%_
                                                   _%method-table139992%_
                                                   _%$%g140023140026%_
                                                   _%$%g140024140028%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table140022%_
                                           __tmp148429))
                                        '#f))
                                  (_%loop139994%_ _%rest140016%_))))
                          (if (pair? _%$%rest139997140005%_)
                              (let ((_%$%hd140002140034%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest139997140005%_)))
                                    (_%$%tl140003140036%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest139997140005%_))))
                                (let* ((_%xklass140039%_ _%$%hd140002140034%_)
                                       (_%rest140041%_ _%$%tl140003140036%_))
                                  (_%$%K140001140031%_
                                   _%rest140041%_
                                   _%xklass140039%_)))
                              (_%$%else139999140013%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass139927%_))
                (__specialize-class (__shadow-class__0 _%klass139927%_))
                (error '"bad class; cannot specialize" _%klass139927%_)))))
    (define __seal-class!
      (lambda (_%klass139790%_)
        (let ((_%klass139793%_ _%klass139790%_))
          (if (let* ((_%klass139802%_ _%klass139793%_)
                     (_%klass139807%_ _%klass139802%_))
                (__class-type-sealed? _%klass139807%_))
              '#!void
              (begin
                (if (let* ((_%klass139820%_ _%klass139793%_)
                           (_%klass139825%_ _%klass139820%_))
                      (__class-type-metaclass? _%klass139825%_))
                    (let ()
                      (let* ((_%obj139836%_ _%klass139793%_)
                             (_%id139839%_ 'seal-class!)
                             (_%args139842%_ '())
                             (_%id139847%_ _%id139839%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj139836%_
                                 _%id139847%_
                                 _%args139842%_))
                      (let* ((_%klass139860%_ _%klass139793%_)
                             (_%klass139865%_ _%klass139860%_))
                        (__specialize-class _%klass139865%_)))
                    (if (let* ((_%pred139875%_ class-type-metaclass?)
                               (_%lst139878%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass139793%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred139883%_ _%pred139875%_))
                          (declare (not safe))
                          (__find _%pred139883%_ _%lst139878%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass139793%_)
                        (let* ((_%klass139896%_ _%klass139793%_)
                               (_%klass139901%_ _%klass139896%_))
                          (__specialize-class _%klass139901%_))))
                (let* ((_%klass139912%_ _%klass139793%_)
                       (_%klass139917%_ _%klass139912%_))
                  (__class-type-seal! _%klass139917%_)))))))
    (define seal-class!
      (lambda (_%klass139776%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139776%_ 'class))
            (let ((_%klass139780%_ _%klass139776%_))
              (__seal-class! _%klass139780%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1220.20-1220.25"
               'contract:
               'class-type?
               'value:
               _%klass139776%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass139664%_ _%obj139665%_ _%id139666%_)
        (let* ((_%subklass139669%_ _%subklass139664%_)
               (_%id139677%_ _%id139666%_))
          (letrec ((_%find-next-method139686%_
                    (lambda (_%klass139688%_)
                      (let _%lp139690%_ ((_%rest139692%_
                                          (let ((_%klass139761%_
                                                 _%klass139688%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass139761%_
                                                   'class))
                                                (let ((_%klass139766%_
                                                       _%klass139761%_))
                                                  (__class-precedence-list
                                                   _%klass139766%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass139761%_)
                                                  '#!void)))))
                        (let* ((_%$%rest139693139701%_ _%rest139692%_)
                               (_%$%else139695139709%_ (lambda () '#f))
                               (_%$%K139697139749%_
                                (lambda (_%rest139712%_ _%klass139713%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass139669%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass139713%_)))
                                      (let* ((_%mixins139715%_ _%rest139712%_)
                                             (_%obj139718%_ _%obj139665%_)
                                             (_%id139721%_ _%id139677%_)
                                             (_%id139726%_ _%id139721%_))
                                        (__mixin-find-method
                                         _%mixins139715%_
                                         _%obj139718%_
                                         _%id139726%_))
                                      (_%lp139690%_ _%rest139712%_)))))
                          (if (pair? _%$%rest139693139701%_)
                              (let ((_%$%hd139698139752%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest139693139701%_)))
                                    (_%$%tl139699139754%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest139693139701%_))))
                                (let* ((_%klass139757%_ _%$%hd139698139752%_)
                                       (_%rest139759%_ _%$%tl139699139754%_))
                                  (_%$%K139697139749%_
                                   _%rest139759%_
                                   _%klass139757%_)))
                              (_%$%else139695139709%_)))))))
            (_%find-next-method139686%_ (class-of _%obj139665%_))))))
    (define next-method
      (lambda (_%subklass139638%_ _%obj139639%_ _%id139640%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass139638%_ 'class))
            (let ((_%subklass139644%_ _%subklass139638%_))
              (if (symbol? _%id139640%_)
                  (let ((_%id139654%_ _%id139640%_))
                    (__next-method
                     _%subklass139644%_
                     _%obj139639%_
                     _%id139654%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1242.44-1242.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id139640%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1242.20-1242.28"
               'contract:
               'class-type?
               'value:
               _%subklass139638%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass139573%_ _%obj139574%_ _%id139575%_ . _%args139576%_)
        (let* ((_%subklass139579%_ _%subklass139573%_)
               (_%id139587%_ _%id139575%_)
               (_%$e139632%_
                (let* ((_%subklass139596%_ _%subklass139579%_)
                       (_%obj139599%_ _%obj139574%_)
                       (_%id139602%_ _%id139587%_)
                       (_%subklass139607%_ _%subklass139596%_)
                       (_%id139622%_ _%id139602%_))
                  (__next-method
                   _%subklass139607%_
                   _%obj139599%_
                   _%id139622%_))))
          (if _%$e139632%_
              (apply _%$e139632%_ _%obj139574%_ _%args139576%_)
              (error '"cannot find next method"
                     'object:
                     _%obj139574%_
                     'method:
                     _%id139587%_)))))
    (define call-next-method
      (lambda (_%subklass139546%_ _%obj139547%_ _%id139548%_ . _%args139549%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass139546%_ 'class))
            (let ((_%subklass139553%_ _%subklass139546%_))
              (if (symbol? _%id139548%_)
                  (let ((_%id139563%_ _%id139548%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass139553%_
                             _%obj139547%_
                             _%id139563%_
                             _%args139549%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1253.49-1253.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id139548%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1253.25-1253.33"
               'contract:
               'class-type?
               'value:
               _%subklass139546%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type139325%_ _%properties139326%_)
        (letrec ((_%shadow-type-id139328%_
                  (lambda (_%type139534%_)
                    (let ((__tmp148430
                           (let ()
                             (declare (not safe))
                             (##type-name _%type139534%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp148430 '"::t"))))
                 (_%shadow-type-name139329%_
                  (lambda (_%type139532%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type139532%_))))
                 (_%make-shadow-class139330%_
                  (lambda (_%type139414%_ _%precedence-list139415%_)
                    (let* ((_%super139417%_
                            (if (pair? _%precedence-list139415%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list139415%_))
                                      '())
                                '()))
                           (_%klass139529%_
                            (let* ((_%id139419%_
                                    (_%shadow-type-id139328%_ _%type139414%_))
                                   (_%name139422%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type139414%_)))
                                   (_%direct-supers139425%_ _%super139417%_)
                                   (_%direct-slots139428%_ '())
                                   (_%properties139454%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type139414%_)
                                                      (append (if (let ((_%type139431%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%type139414%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##type? _%type139431%_))
                                (let ((_%type139436%_ _%type139431%_))
                                  (__type-extensible? _%type139436%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/mop
                                   'contract:
                                   '##type?
                                   'value:
                                   _%type139431%_)
                                  '#!void)))
                          '()
                          (cons (cons 'final: '#t) '()))
                      _%properties139326%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor139457%_ '#f)
                                   (_%id139462%_ _%id139419%_))
                              (if (symbol? _%name139422%_)
                                  (let* ((_%name139473%_ _%name139422%_)
                                         (_%direct-supers139483%_
                                          _%direct-supers139425%_)
                                         (_%direct-slots139493%_
                                          _%direct-slots139428%_)
                                         (_%properties139503%_
                                          _%properties139454%_))
                                    (if (let ((_%$e139515%_ '#t))
                                          (and _%$e139515%_ _%$e139515%_))
                                        (let ((_%constructor139519%_
                                               _%constructor139457%_))
                                          (__make-class-type
                                           _%id139462%_
                                           _%name139473%_
                                           _%direct-supers139483%_
                                           _%direct-slots139493%_
                                           _%properties139503%_
                                           _%constructor139519%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor139457%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name139422%_)
                                    '#!void)))))
                      (let ((__tmp148431
                             (let ()
                               (declare (not safe))
                               (##type-id _%type139414%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp148431
                         _%klass139529%_))
                      _%klass139529%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again139334%_ ((_%spin139337%_ '0))
              (if (let ((__tmp148432
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp148432 '0))
                  (let ((__tmp148433 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp148433))
                  (if (let () (declare (not safe)) (##fx< _%spin139337%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again139334%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin139337%_ '1))))
                      (let ((_%owner139343%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner139343%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner139343%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again139334%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e139349%_
                 (let ((__tmp148434
                        (let ()
                          (declare (not safe))
                          (##type-id _%type139325%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp148434 '#f))))
            (if _%$e139349%_
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
                  _%$e139349%_)
                (let _%loop139357%_ ((_%super139359%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type139325%_)))
                                     (_%hierarchy139360%_ '()))
                  (if _%super139359%_
                      (_%loop139357%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super139359%_))
                       (cons _%super139359%_ _%hierarchy139360%_))
                      (let _%loop139363%_ ((_%rest139365%_ _%hierarchy139360%_)
                                           (_%precedence-list139366%_ '()))
                        (let* ((_%$%rest139367139375%_ _%rest139365%_)
                               (_%$%else139369139387%_
                                (lambda ()
                                  (let ((_%klass139383%_
                                         (_%make-shadow-class139330%_
                                          _%type139325%_
                                          _%precedence-list139366%_)))
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
                                    _%klass139383%_)))
                               (_%$%K139371139401%_
                                (lambda (_%rest139390%_ _%type139391%_)
                                  (let ((_%$e139393%_
                                         (let ((__tmp148435
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type139391%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp148435
                                            '#f))))
                                    (if _%$e139393%_
                                        (_%loop139363%_
                                         _%rest139390%_
                                         (cons _%$e139393%_
                                               _%precedence-list139366%_))
                                        (let ((_%klass139399%_
                                               (_%make-shadow-class139330%_
                                                _%type139391%_
                                                _%precedence-list139366%_)))
                                          (_%loop139363%_
                                           _%rest139390%_
                                           (cons _%klass139399%_
                                                 _%precedence-list139366%_))))))))
                          (if (pair? _%$%rest139367139375%_)
                              (let ((_%$%hd139372139404%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest139367139375%_)))
                                    (_%$%tl139373139406%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest139367139375%_))))
                                (let* ((_%type139409%_ _%$%hd139372139404%_)
                                       (_%rest139411%_ _%$%tl139373139406%_))
                                  (_%$%K139371139401%_
                                   _%rest139411%_
                                   _%type139409%_)))
                              (_%$%else139369139387%_)))))))))))
    (define __shadow-class__0
      (lambda (_%type139539%_)
        (let ((_%properties139541%_ '()))
          (__shadow-class__% _%type139539%_ _%properties139541%_))))
    (define __shadow-class
      (lambda _g148436_
        (let ((_g148437_ (let () (declare (not safe)) (##length _g148436_))))
          (cond ((let () (declare (not safe)) (##fx= _g148437_ 1))
                 (apply __shadow-class__0 _g148436_))
                ((let () (declare (not safe)) (##fx= _g148437_ 2))
                 (apply __shadow-class__% _g148436_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g148436_))))))
    (define __type
      (let* ((_%tb139313%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e139315%_ _%tb139313%_))
        (if (eq? '2 _%$e139315%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e139315%_)
                (let ((_%flonum-self-tagging-tags139318%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits139319%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e139321%_ _%flonum-self-tagging-tags139318%_))
                    (if (eq? '0 _%$e139321%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits139319%_ '2))
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
                        (if (eq? '1 _%$e139321%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits139319%_ '2))
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
                            (if (eq? '2 _%$e139321%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e139321%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e139321%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags139318%_))))))))
                (error '"unexpected tag width" _%tb139313%_)))))
    (define __primitive-class
      (let ((__tmp148438 (vector-length __type)))
        (declare (not safe))
        (##make-vector __tmp148438 '#f)))
    (define __boxvalues-class
      (let () (declare (not safe)) (##make-vector '2 '#f)))
    (define __subtype-class
      (let () (declare (not safe)) (##make-vector '32 '#f)))
    (define __char-class '#f)
    (define __special-class
      (let () (declare (not safe)) (##make-vector '16 '#f)))
    (define __class-of
      (let* ((_%len139203%_ (vector-length __type))
             (_%cv139205%_
              (let () (declare (not safe)) (##make-vector _%len139203%_ '#f))))
        (let _%loop139208%_ ((_%i139210%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i139210%_ _%len139203%_))
              (let* ((_%t139212%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i139210%_)))
                     (_%f139310%_
                      (if (eq? _%t139212%_ 'undefined)
                          (lambda (_%obj139215%_)
                            (error '"object type is undefined" _%obj139215%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t139212%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj139218%_)
                                (declare (not interrupts-enabled) (not safe))
                                (let ((_%$e139221%_
                                       (##vector-ref
                                        __primitive-class
                                        _%i139210%_)))
                                  (if _%$e139221%_
                                      _%$e139221%_
                                      (let ((_%klass139225%_
                                             (__system-class _%t139212%_)))
                                        (##vector-set!
                                         __primitive-class
                                         _%i139210%_
                                         _%klass139225%_)
                                        _%klass139225%_))))
                              (if (eq? _%t139212%_ 'subtyped)
                                  (lambda (_%obj139229%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st139232%_
                                           (##subtype _%obj139229%_)))
                                      (if (##fx= _%st139232%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass139235%_
                                                 (##structure-type
                                                  _%obj139229%_)))
                                            (if (##structure-instance-of?
                                                 _%klass139235%_
                                                 'class)
                                                _%klass139235%_
                                                (__shadow-class__0
                                                 _%klass139235%_)))
                                          (if (##fx= _%st139232%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj139229%_)
                                                         '1)
                                                  (let ((_%$e139238%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '0)))
                                                    (if _%$e139238%_
                                                        _%$e139238%_
                                                        (let ((_%klass139242%_
                                                               (__system-class
                                                                'box)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '0
                                                           _%klass139242%_)
                                                          _%klass139242%_)))
                                                  (let ((_%$e139245%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '1)))
                                                    (if _%$e139245%_
                                                        _%$e139245%_
                                                        (let ((_%klass139249%_
                                                               (__system-class
                                                                'values)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '1
                                                           _%klass139249%_)
                                                          _%klass139249%_))))
                                              (let ((_%$e139252%_
                                                     (##vector-ref
                                                      __subtype-class
                                                      _%st139232%_)))
                                                (if _%$e139252%_
                                                    _%$e139252%_
                                                    (let ((_%klass139269%_
                                                           (let ((_%$e139256%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref __subtype-id _%st139232%_)))
                     (if _%$e139256%_
                         (let ((_%$e139261%_
                                (##vector-ref __subtype-class _%st139232%_)))
                           (if _%$e139261%_
                               _%$e139261%_
                               (let ((_%klass139265%_
                                      (__system-class _%$e139256%_)))
                                 (##vector-set!
                                  __subtype-class
                                  _%st139232%_
                                  _%klass139265%_)
                                 _%klass139265%_)))
                         (error '"unknown class"
                                'object:
                                _%obj139229%_
                                'subtype:
                                _%st139232%_)))))
              (##vector-set! __subtype-class _%st139232%_ _%klass139269%_)
              _%klass139269%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (eq? _%t139212%_ 'special)
                                      (lambda (_%obj139273%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (let ((_%x139276%_
                                               (##type-cast _%obj139273%_ '0)))
                                          (if (##fx> _%x139276%_ '0)
                                              (let ((_%$e139279%_
                                                     __char-class))
                                                (if _%$e139279%_
                                                    _%$e139279%_
                                                    (let ((_%klass139283%_
                                                           (__system-class
                                                            'char)))
                                                      (set! __char-class
                                                            _%klass139283%_)
                                                      _%klass139283%_)))
                                              (let* ((_%t139286%_
                                                      (##fx- _%x139276%_))
                                                     (_%$e139289%_
                                                      (##vector-ref
                                                       __special-class
                                                       _%t139286%_)))
                                                (if _%$e139289%_
                                                    _%$e139289%_
                                                    (let ((_%klass139307%_
                                                           (if (eq? _%obj139273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                       (__system-class 'null)
                       (if (eq? _%obj139273%_ '#f)
                           (__system-class 'false)
                           (if (eq? _%obj139273%_ '#t)
                               (__system-class 'true)
                               (if (eq? _%obj139273%_ '#!void)
                                   (__system-class 'void)
                                   (if (eq? _%obj139273%_ '#!eof)
                                       (__system-class 'eof)
                                       (if (eq? _%obj139273%_ '#!unbound)
                                           (__system-class 'unbound)
                                           (if (eq? _%obj139273%_ '#!unbound2)
                                               (__system-class 'unbound2)
                                               (if (eq? _%obj139273%_
                                                        '#!optional)
                                                   (__system-class 'optional)
                                                   (if (eq? _%obj139273%_
                                                            '#!rest)
                                                       (__system-class 'rest)
                                                       (if (eq? _%obj139273%_
                                                                '#!key)
                                                           (__system-class
                                                            'key)
                                                           (if (eq? _%obj139273%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (macro-unused-obj))
                       (__system-class 'unused)
                       (if (eq? _%obj139273%_ (macro-deleted-obj))
                           (__system-class 'deleted)
                           (if (eq? _%obj139273%_ (macro-absent-obj))
                               (__system-class 'absent)
                               (__system-class 'unknown))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (##vector-set! __special-class _%t139286%_ _%klass139307%_)
              _%klass139307%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t139212%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv139205%_ _%i139210%_ _%f139310%_))
                (_%loop139208%_
                 (let () (declare (not safe)) (##fx+ _%i139210%_ '1))))
              _%cv139205%_))))
    (define type-of
      (lambda (_%obj139199%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj139199%_)))))
    (define class-of
      (lambda (_%obj139190%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t139194%_ (##type _%obj139190%_))
                 (_%f139196%_ (##vector-ref __class-of _%t139194%_)))
            (_%f139196%_ _%obj139190%_)))))
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
      (lambda (_%id139184%_)
        (let ((_%$e139186%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id139184%_ '#f))))
          (if _%$e139186%_
              _%$e139186%_
              (error '"unknown system class" _%id139184%_)))))
    (define __make-system-class
      (lambda (_%id139086%_ _%super139087%_ _%properties139088%_)
        (let ((_%klass139182%_
               (let* ((_%id139090%_ _%id139086%_)
                      (_%name139093%_ _%id139086%_)
                      (_%direct-supers139096%_ _%super139087%_)
                      (_%direct-slots139099%_ '())
                      (_%properties139102%_
                       (cons '(system: . #t) _%properties139088%_))
                      (_%constructor139105%_ '#f))
                 (if (symbol? _%id139090%_)
                     (let ((_%id139110%_ _%id139090%_))
                       (if (symbol? _%name139093%_)
                           (let ((_%name139126%_ _%name139093%_))
                             (if (list? _%direct-supers139096%_)
                                 (let* ((_%direct-supers139136%_
                                         _%direct-supers139096%_)
                                        (_%direct-slots139146%_
                                         _%direct-slots139099%_)
                                        (_%properties139156%_
                                         _%properties139102%_))
                                   (if (let ((_%$e139168%_ '#t))
                                         (and _%$e139168%_ _%$e139168%_))
                                       (let ((_%constructor139172%_
                                              _%constructor139105%_))
                                         (__make-class-type
                                          _%id139110%_
                                          _%name139126%_
                                          _%direct-supers139136%_
                                          _%direct-slots139146%_
                                          _%properties139156%_
                                          _%constructor139172%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor139105%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers139096%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name139093%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id139090%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id139086%_
             _%klass139182%_))
          _%klass139182%_)))))
