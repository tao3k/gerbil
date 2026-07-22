(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/mop::timestamp 1784461440)
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
      (let ((_%flags143292%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties143293%_ '((direct-slots:) (system: . #t)))
            (_%slot-table143294%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ()
          (declare (not safe))
          (##structure
           '#f
           't
           't
           _%flags143292%_
           '#f
           '#()
           '()
           '#(#f)
           _%slot-table143294%_
           _%properties143293%_
           '#f
           '#f
           '#f
           '#f))))
    (define class::t
      (let* ((_%slots143249%_
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
             (_%slot-vector143251%_ (list->vector (cons '#f _%slots143249%_)))
             (_%slot-table143277%_
              (let ((_%slot-table143253%_
                     (let ()
                       (declare (not safe))
                       (make-symbolic-table__% '#f '0))))
                (let ((__tmp146250
                       (lambda (_%slot143255%_ _%field143256%_)
                         (let ()
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table143253%_
                            _%slot143255%_
                            _%field143256%_))
                         (let ((__tmp146251
                                (let ((_%sym143258%_ _%slot143255%_))
                                  (if (symbol? _%sym143258%_)
                                      (let ((_%sym143263%_ _%sym143258%_))
                                        (declare (not safe))
                                        (__symbol->keyword _%sym143263%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'symbol?
                                         'value:
                                         _%sym143258%_)
                                        '#!void)))))
                           (declare (not safe))
                           (symbolic-table-set!
                            _%slot-table143253%_
                            __tmp146251
                            _%field143256%_))))
                      (__tmp146248
                       (let ((__tmp146249
                              (let ()
                                (declare (not safe))
                                (##length _%slots143249%_))))
                         (declare (not safe))
                         (##iota __tmp146249 '1))))
                  (declare (not safe))
                  (##for-each __tmp146250 _%slots143249%_ __tmp146248))
                _%slot-table143253%_))
             (_%flags143279%_
              (let ()
                (declare (not safe))
                (##fxior type-flag-extensible
                         type-flag-concrete
                         type-flag-id
                         class-type-flag-struct)))
             (_%fields143285%_
              (list->vector
               (let ((__tmp146252
                      (map (lambda (_%$%g143280143282%_)
                             (list _%$%g143280143282%_ '5 '#f))
                           (drop _%slots143249%_ '5))))
                 (declare (not safe))
                 (##apply append __tmp146252))))
             (_%properties143287%_
              (cons (cons 'direct-slots: _%slots143249%_) '((struct: . #t))))
             (_%t143289%_
              (let ((__tmp146253 (cons t::t '())))
                (declare (not safe))
                (##structure
                 '#f
                 'class
                 'class
                 _%flags143279%_
                 ##type-type
                 _%fields143285%_
                 __tmp146253
                 _%slot-vector143251%_
                 _%slot-table143277%_
                 _%properties143287%_
                 '#f
                 '#f
                 '#f
                 '#f))))
        (let ()
          (declare (not safe))
          (##structure-type-set! _%t143289%_ _%t143289%_))
        _%t143289%_))
    (let () (declare (not safe)) (##structure-type-set! t::t class::t))
    (define object::t
      (let ((_%flags143245%_
             (let ()
               (declare (not safe))
               (##fxior type-flag-extensible
                        type-flag-id
                        class-type-flag-system)))
            (_%properties143246%_ '((direct-slots:) (system: . #t)))
            (_%slot-table143247%_
             (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
        (let ((__tmp146254 (cons t::t '())))
          (declare (not safe))
          (##structure
           class::t
           'object
           'object
           _%flags143245%_
           '#f
           '#()
           __tmp146254
           '#(#f)
           _%slot-table143247%_
           _%properties143246%_
           '#f
           '#f
           '#f
           '#f))))
    (define __class-type
      (lambda (_%klass143233%_)
        (let ((_%klass143236%_ _%klass143233%_))
          (declare (not safe))
          (##structure-type _%klass143236%_))))
    (define class-type
      (lambda (_%klass143219%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143219%_ 'class))
            (let ((_%klass143223%_ _%klass143219%_))
              (__class-type _%klass143223%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@166.19-166.24"
               'contract:
               'class-type?
               'value:
               _%klass143219%_)
              '#!void))))
    (define class-type?
      (lambda (_%obj143217%_)
        (let ()
          (declare (not safe))
          (##structure-instance-of? _%obj143217%_ 'class))))
    (define __class-type=?
      (lambda (_%x143196%_ _%y143197%_)
        (let* ((_%x143200%_ _%x143196%_) (_%y143208%_ _%y143197%_))
          (eq? (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%x143200%_ '1 '#f '#f))
               (let ()
                 (declare (not safe))
                 (##unchecked-structure-ref _%y143208%_ '1 '#f '#f))))))
    (define class-type=?
      (lambda (_%x143171%_ _%y143172%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%x143171%_ 'class))
            (let ((_%x143176%_ _%x143171%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of? _%y143172%_ 'class))
                  (let ((_%y143186%_ _%y143172%_))
                    (__class-type=? _%x143176%_ _%y143186%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@175.34-175.35"
                     'contract:
                     'class-type?
                     'value:
                     _%y143172%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@175.21-175.22"
               'contract:
               'class-type?
               'value:
               _%x143171%_)
              '#!void))))
    (define __type-opaque?
      (lambda (_%type143159%_)
        (let* ((_%type143162%_ _%type143159%_)
               (__tmp146255
                (let ((__tmp146256
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type143162%_))))
                  (declare (not safe))
                  (##fxand __tmp146256 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp146255 type-flag-opaque))))
    (define type-opaque?
      (lambda (_%type143145%_)
        (if (let () (declare (not safe)) (##type? _%type143145%_))
            (let ((_%type143149%_ _%type143145%_))
              (__type-opaque? _%type143149%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@189.21-189.25"
               'contract:
               '##type?
               'value:
               _%type143145%_)
              '#!void))))
    (define __class-type-opaque?
      (lambda (_%klass143133%_)
        (let* ((_%klass143136%_ _%klass143133%_)
               (__tmp146257
                (let ((__tmp146258
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass143136%_))))
                  (declare (not safe))
                  (##fxand __tmp146258 type-flag-opaque))))
          (declare (not safe))
          (##fx= __tmp146257 type-flag-opaque))))
    (define class-type-opaque?
      (lambda (_%klass143119%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143119%_ 'class))
            (let ((_%klass143123%_ _%klass143119%_))
              (__class-type-opaque? _%klass143123%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@191.27-191.32"
               'contract:
               'class-type?
               'value:
               _%klass143119%_)
              '#!void))))
    (define __type-extensible?
      (lambda (_%type143107%_)
        (let* ((_%type143110%_ _%type143107%_)
               (__tmp146259
                (let ((__tmp146260
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type143110%_))))
                  (declare (not safe))
                  (##fxand __tmp146260 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp146259 type-flag-extensible))))
    (define type-extensible?
      (lambda (_%type143093%_)
        (if (let () (declare (not safe)) (##type? _%type143093%_))
            (let ((_%type143097%_ _%type143093%_))
              (__type-extensible? _%type143097%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@193.25-193.29"
               'contract:
               '##type?
               'value:
               _%type143093%_)
              '#!void))))
    (define __class-type-final?
      (lambda (_%type143081%_)
        (let* ((_%type143084%_ _%type143081%_)
               (__tmp146261
                (let ((__tmp146262
                       (let ()
                         (declare (not safe))
                         (##type-flags _%type143084%_))))
                  (declare (not safe))
                  (##fxand __tmp146262 type-flag-extensible))))
          (declare (not safe))
          (##fx= __tmp146261 '0))))
    (define class-type-final?
      (lambda (_%type143067%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%type143067%_ 'class))
            (let ((_%type143071%_ _%type143067%_))
              (__class-type-final? _%type143071%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@195.26-195.30"
               'contract:
               'class-type?
               'value:
               _%type143067%_)
              '#!void))))
    (define __class-type-struct?
      (lambda (_%klass143055%_)
        (let* ((_%klass143058%_ _%klass143055%_)
               (__tmp146263
                (let ((__tmp146264
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass143058%_))))
                  (declare (not safe))
                  (##fxand __tmp146264 class-type-flag-struct))))
          (declare (not safe))
          (##fx= __tmp146263 class-type-flag-struct))))
    (define class-type-struct?
      (lambda (_%klass143041%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143041%_ 'class))
            (let ((_%klass143045%_ _%klass143041%_))
              (__class-type-struct? _%klass143045%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@197.27-197.32"
               'contract:
               'class-type?
               'value:
               _%klass143041%_)
              '#!void))))
    (define __class-type-sealed?
      (lambda (_%klass143029%_)
        (let* ((_%klass143032%_ _%klass143029%_)
               (__tmp146265
                (let ((__tmp146266
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass143032%_))))
                  (declare (not safe))
                  (##fxand __tmp146266 class-type-flag-sealed))))
          (declare (not safe))
          (##fx= __tmp146265 class-type-flag-sealed))))
    (define class-type-sealed?
      (lambda (_%klass143015%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass143015%_ 'class))
            (let ((_%klass143019%_ _%klass143015%_))
              (__class-type-sealed? _%klass143019%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@199.27-199.32"
               'contract:
               'class-type?
               'value:
               _%klass143015%_)
              '#!void))))
    (define __class-type-metaclass?
      (lambda (_%klass143003%_)
        (let* ((_%klass143006%_ _%klass143003%_)
               (__tmp146267
                (let ((__tmp146268
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass143006%_))))
                  (declare (not safe))
                  (##fxand __tmp146268 class-type-flag-metaclass))))
          (declare (not safe))
          (##fx= __tmp146267 class-type-flag-metaclass))))
    (define class-type-metaclass?
      (lambda (_%klass142989%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142989%_ 'class))
            (let ((_%klass142993%_ _%klass142989%_))
              (__class-type-metaclass? _%klass142993%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@201.30-201.35"
               'contract:
               'class-type?
               'value:
               _%klass142989%_)
              '#!void))))
    (define __class-type-system?
      (lambda (_%klass142977%_)
        (let* ((_%klass142980%_ _%klass142977%_)
               (__tmp146269
                (let ((__tmp146270
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass142980%_))))
                  (declare (not safe))
                  (##fxand __tmp146270 class-type-flag-system))))
          (declare (not safe))
          (##fx= __tmp146269 class-type-flag-system))))
    (define class-type-system?
      (lambda (_%klass142963%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142963%_ 'class))
            (let ((_%klass142967%_ _%klass142963%_))
              (__class-type-system? _%klass142967%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@203.27-203.32"
               'contract:
               'class-type?
               'value:
               _%klass142963%_)
              '#!void))))
    (define __class-type-acyclic?
      (lambda (_%klass142951%_)
        (let* ((_%klass142954%_ _%klass142951%_)
               (__tmp146271
                (let ((__tmp146272
                       (let ()
                         (declare (not safe))
                         (##type-flags _%klass142954%_))))
                  (declare (not safe))
                  (##fxand __tmp146272 class-type-flag-acyclic))))
          (declare (not safe))
          (##fx= __tmp146271 class-type-flag-acyclic))))
    (define class-type-acyclic?
      (lambda (_%klass142937%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142937%_ 'class))
            (let ((_%klass142941%_ _%klass142937%_))
              (__class-type-acyclic? _%klass142941%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@205.28-205.33"
               'contract:
               'class-type?
               'value:
               _%klass142937%_)
              '#!void))))
    (define make-class-type-descriptor
      (lambda (_%type-id142712%_
               _%type-name142713%_
               _%type-super142714%_
               _%precedence-list142715%_
               _%slot-vector142716%_
               _%properties142717%_
               _%constructor142718%_
               _%slot-table142719%_
               _%methods142720%_)
        (letrec ((_%make-props!142723%_
                  (lambda (_%key142882%_ _%transparent?142883%_)
                    (letrec* ((_%ht142885%_
                               (let ()
                                 (declare (not safe))
                                 (make-symbolic-table__% '#f '0)))
                              (_%put-slots!142886%_
                               (lambda (_%ht142930%_ _%slots142931%_)
                                 (for-each
                                  (lambda (_%$%g142932142934%_)
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%ht142930%_
                                       _%$%g142932142934%_
                                       '#t)))
                                  _%slots142931%_)))
                              (_%put-all-new-slots!142887%_
                               (lambda (_%ht142922%_)
                                 (let ((_%first142924%_
                                        (if (let ()
                                              (declare (not safe))
                                              (##structure-instance-of?
                                               _%type-super142714%_
                                               'class))
                                            (let ((__tmp146273
                                                   (let ()
                                                     (declare (not safe))
                                                     (##unchecked-structure-ref
                                                      _%type-super142714%_
                                                      '7
                                                      '#f
                                                      '#f))))
                                              (declare (not safe))
                                              (##vector-length __tmp146273))
                                            '1)))
                                   (let _%lp142926%_ ((_%i142928%_
                                                       _%first142924%_))
                                     (if (let ((__tmp146274
                                                (let ()
                                                  (declare (not safe))
                                                  (##vector-length
                                                   _%slot-vector142716%_))))
                                           (declare (not safe))
                                           (##fx< _%i142928%_ __tmp146274))
                                         (begin
                                           (let ((__tmp146275
                                                  (let ()
                                                    (declare (not safe))
                                                    (##vector-ref
                                                     _%slot-vector142716%_
                                                     _%i142928%_))))
                                             (declare (not safe))
                                             (symbolic-table-set!
                                              _%ht142922%_
                                              __tmp146275
                                              '#t))
                                           (_%lp142926%_
                                            (let ()
                                              (declare (not safe))
                                              (##fx+ _%i142928%_ '1))))
                                         '#!void)))))
                              (_%put-alist!142888%_
                               (lambda (_%ht142913%_
                                        _%key142914%_
                                        _%alist142915%_)
                                 (let ((_%$e142917%_
                                        (let ()
                                          (declare (not safe))
                                          (agetq__%
                                           _%key142914%_
                                           _%alist142915%_
                                           _%transparent?142883%_))))
                                   (if _%$e142917%_
                                       (if (eq? _%$e142917%_ '#t)
                                           (_%put-all-new-slots!142887%_
                                            _%ht142913%_)
                                           (_%put-slots!142886%_
                                            _%ht142913%_
                                            _%$e142917%_))
                                       '#!void)))))
                      (_%put-alist!142888%_
                       _%ht142885%_
                       _%key142882%_
                       _%properties142717%_)
                      (for-each
                       (lambda (_%mixin142890%_)
                         (let ((_%alist142892%_
                                (##structure-ref
                                 _%mixin142890%_
                                 '9
                                 class::t
                                 '#f)))
                           (if (eq? '#t
                                    (let ()
                                      (declare (not safe))
                                      (agetq__%
                                       _%key142882%_
                                       _%alist142892%_
                                       _%transparent?142883%_)))
                               (_%put-slots!142886%_
                                _%ht142885%_
                                (let ((_%klass142894%_ _%mixin142890%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass142894%_
                                         'class))
                                      (let ((_%klass142899%_ _%klass142894%_))
                                        (__class-type-slot-list
                                         _%klass142899%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass142894%_)
                                        '#!void))))
                               (_%put-alist!142888%_
                                _%ht142885%_
                                _%key142882%_
                                _%alist142892%_))))
                       _%precedence-list142715%_)
                      _%ht142885%_)))
                 (_%all-slots-property?142724%_
                  (lambda (_%key142877%_ _%transparent?142878%_)
                    (let ((_%entry142880%_
                           (assq _%key142877%_ _%properties142717%_)))
                      (if _%entry142880%_
                          (eq? (cdr _%entry142880%_) '#t)
                          _%transparent?142878%_)))))
          (let* ((_%transparent?142744%_
                  (let ((__tmp146276
                         (if _%type-super142714%_
                             (not (let ((_%type142726%_ _%type-super142714%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (##type? _%type142726%_))
                                        (let ((_%type142731%_ _%type142726%_))
                                          (__type-opaque? _%type142731%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '##type?
                                           'value:
                                           _%type142726%_)
                                          '#!void))))
                             '#t)))
                    (declare (not safe))
                    (agetq__% 'transparent: _%properties142717%_ __tmp146276)))
                 (_%all-slots-printable?142746%_
                  (_%all-slots-property?142724%_
                   'print:
                   _%transparent?142744%_))
                 (_%printable142748%_
                  (if (not _%all-slots-printable?142746%_)
                      (_%make-props!142723%_ 'print: _%transparent?142744%_)
                      '#f))
                 (_%all-slots-equalable?142750%_
                  (_%all-slots-property?142724%_
                   'equal:
                   _%transparent?142744%_))
                 (_%equalable142752%_
                  (if (not _%all-slots-equalable?142750%_)
                      (_%make-props!142723%_ 'equal: _%transparent?142744%_)
                      '#f))
                 (_%first-new-field142754%_
                  (if (let ()
                        (declare (not safe))
                        (##structure-instance-of? _%type-super142714%_ 'class))
                      (let ((__tmp146277
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%type-super142714%_
                                '7
                                '#f
                                '#f))))
                        (declare (not safe))
                        (##vector-length __tmp146277))
                      '1))
                 (_%field-info-length142756%_
                  (let ((__tmp146278
                         (let ((__tmp146279
                                (let ()
                                  (declare (not safe))
                                  (##vector-length _%slot-vector142716%_))))
                           (declare (not safe))
                           (##fx- __tmp146279 _%first-new-field142754%_))))
                    (declare (not safe))
                    (##fx* '3 __tmp146278)))
                 (_%field-info142758%_
                  (let ()
                    (declare (not safe))
                    (##make-vector _%field-info-length142756%_ '#f)))
                 (_%struct?142760%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'struct: _%properties142717%_)))
                 (_%final?142762%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'final: _%properties142717%_)))
                 (_%metaclass142769%_
                  (let ((_%$%metaclass142763142765%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'metaclass: _%properties142717%_))))
                    (if _%$%metaclass142763142765%_
                        (let ((_%metaclass142767%_
                               _%$%metaclass142763142765%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%metaclass142767%_
                                 'class))
                              '#!void
                              (error '"metaclass is not a class type"
                                     'class:
                                     _%type-id142712%_
                                     'metaclass:
                                     _%metaclass142767%_))
                          _%metaclass142767%_)
                        '#f)))
                 (_%system?142771%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'system: _%properties142717%_)))
                 (_%opaque?142773%_ (not _%transparent?142744%_))
                 (_%acyclic?142775%_
                  (let ()
                    (declare (not safe))
                    (agetq__0 'acyclic: _%properties142717%_)))
                 (_%type-flags142777%_
                  (let ((__tmp146285
                         (if _%final?142762%_ '0 type-flag-extensible))
                        (__tmp146284
                         (if (and _%opaque?142773%_
                                  (not (let ()
                                         (declare (not safe))
                                         (agetq__0
                                          'equal:
                                          _%properties142717%_))))
                             type-flag-opaque
                             '0))
                        (__tmp146283
                         (if _%struct?142760%_ class-type-flag-struct '0))
                        (__tmp146282
                         (if _%metaclass142769%_ class-type-flag-metaclass '0))
                        (__tmp146281
                         (if _%system?142771%_ class-type-flag-system '0))
                        (__tmp146280
                         (if _%acyclic?142775%_ class-type-flag-acyclic '0)))
                    (declare (not safe))
                    (##fxior type-flag-id
                             type-flag-concrete
                             __tmp146285
                             __tmp146284
                             __tmp146283
                             __tmp146282
                             __tmp146281
                             __tmp146280)))
                 (_%precedence-list142785%_
                  (let ((_%$e142779%_ (memq t::t _%precedence-list142715%_)))
                    (if _%$e142779%_
                        (if (null? (cdr _%$e142779%_))
                            _%precedence-list142715%_
                            (error '"BUG: t::t is not last in the precedence list"
                                   'precedence-list:
                                   _%precedence-list142715%_))
                        (let ((__tmp146286 (cons t::t '())))
                          (declare (not safe))
                          (##append _%precedence-list142715%_ __tmp146286))))))
            (let _%loop142788%_ ((_%i142790%_ _%first-new-field142754%_)
                                 (_%j142791%_ '0))
              (if (let ()
                    (declare (not safe))
                    (##fx< _%j142791%_ _%field-info-length142756%_))
                  (let* ((_%slot142793%_
                          (let ()
                            (declare (not safe))
                            (##vector-ref _%slot-vector142716%_ _%i142790%_)))
                         (_%flags142801%_
                          (let ((__tmp146288
                                 (if (or _%all-slots-printable?142746%_
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            _%printable142748%_
                                            _%slot142793%_
                                            '#f)))
                                     '0
                                     '1))
                                (__tmp146287
                                 (if (or _%all-slots-equalable?142750%_
                                         (let ()
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            _%equalable142752%_
                                            _%slot142793%_
                                            '#f)))
                                     '0
                                     '4)))
                            (declare (not safe))
                            (##fxior __tmp146288 __tmp146287))))
                    (vector-set!
                     _%field-info142758%_
                     _%j142791%_
                     _%slot142793%_)
                    (vector-set!
                     _%field-info142758%_
                     (let () (declare (not safe)) (##fx+ _%j142791%_ '1))
                     _%flags142801%_)
                    (_%loop142788%_
                     (let () (declare (not safe)) (##fx+ _%i142790%_ '1))
                     (let () (declare (not safe)) (##fx+ _%j142791%_ '3))))
                  '#!void))
            (if _%metaclass142769%_
                (let ((_%val142840%_
                       (let* ((_%klass142804%_ _%metaclass142769%_)
                              (_%args142807%_
                               (list _%type-id142712%_
                                     _%type-name142713%_
                                     _%type-flags142777%_
                                     _%type-super142714%_
                                     _%field-info142758%_
                                     _%precedence-list142785%_
                                     _%slot-vector142716%_
                                     _%slot-table142719%_
                                     _%properties142717%_
                                     _%constructor142718%_
                                     _%methods142720%_
                                     '#f
                                     '#f)))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%klass142804%_
                                'class))
                             (let ((_%klass142812%_ _%klass142804%_))
                               (declare (not safe))
                               (##apply __make-instance
                                        _%klass142812%_
                                        _%args142807%_))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%klass142804%_)
                               '#!void)))))
                  (raise-contract-violation-error
                   '"contract violation"
                   'context:
                   '"\"gerbil/runtime/mop.ss\"@305.10-311.31"
                   'contract:
                   '(class-type? val)
                   'value:
                   _%val142840%_)
                  '#!void)
                (let ((_%klass142843%_
                       (let ()
                         (declare (not safe))
                         (##structure
                          class::t
                          _%type-id142712%_
                          _%type-name142713%_
                          _%type-flags142777%_
                          _%type-super142714%_
                          _%field-info142758%_
                          _%precedence-list142785%_
                          _%slot-vector142716%_
                          _%slot-table142719%_
                          _%properties142717%_
                          _%constructor142718%_
                          _%methods142720%_
                          '#f
                          '#f))))
                  (for-each
                   (lambda (_%super142845%_)
                     (let ()
                       (declare (not interrupts-enabled))
                       (let _%again142849%_ ((_%spin142852%_ '0))
                         (if (let ((__tmp146289
                                    (let ()
                                      (declare (not safe))
                                      (##vector-cas!
                                       __class-type-properties-lock
                                       '0
                                       '1
                                       '0))))
                               (declare (not safe))
                               (##fx= __tmp146289 '0))
                             (let ((__tmp146290 (current-thread)))
                               (declare (not safe))
                               (##vector-set!
                                __class-type-properties-lock
                                '1
                                __tmp146290))
                             (if (let ()
                                   (declare (not safe))
                                   (##fx< _%spin142852%_ '10))
                                 (let ()
                                   (let ()
                                     (declare (not safe))
                                     (##thread-yield!))
                                   (_%again142849%_
                                    (let ()
                                      (declare (not safe))
                                      (##fx+ _%spin142852%_ '1))))
                                 (let ((_%owner142858%_
                                        (let ()
                                          (declare (not safe))
                                          (##vector-ref
                                           __class-type-properties-lock
                                           '1))))
                                   (if (eq? _%owner142858%_
                                            (macro-current-thread))
                                       (let ()
                                         (declare (not safe))
                                         (##thread-deadlock-action!))
                                       (if (macro-thread-end-condvar
                                            _%owner142858%_)
                                           (let ()
                                             (let ()
                                               (declare (not safe))
                                               (##thread-yield!))
                                             (_%again142849%_ '0))
                                           (let ()
                                             (declare (not safe))
                                             (##thread-deadlock-action!)))))))))
                     (let ((_%$r142872%_
                            (let* ((_%props142864%_
                                    (let ()
                                      (declare (not safe))
                                      (##unchecked-structure-ref
                                       _%super142845%_
                                       '9
                                       '#f
                                       '#f)))
                                   (_%$e142866%_
                                    (assq 'subclasses: _%props142864%_)))
                              (if _%$e142866%_
                                  (set-cdr!
                                   _%$e142866%_
                                   (cons _%klass142843%_ (cdr _%$e142866%_)))
                                  (let ((__tmp146291
                                         (cons (cons 'subclasses:
                                                     (cons _%klass142843%_
                                                           '()))
                                               _%props142864%_)))
                                    (declare (not safe))
                                    (##unchecked-structure-set!
                                     _%super142845%_
                                     __tmp146291
                                     '9
                                     '#f
                                     '#f))))))
                       (let ()
                         (declare (not interrupts-enabled))
                         (begin
                           (let ()
                             (declare (not safe))
                             (##vector-set!
                              __class-type-properties-lock
                              '1
                              '#f))
                           (let ()
                             (declare (not safe))
                             (##vector-cas!
                              __class-type-properties-lock
                              '0
                              '0
                              '1))))
                       _%$r142872%_))
                   (let ()
                     (declare (not safe))
                     (agetq__% 'direct-supers: _%properties142717%_ '())))
                  _%klass142843%_))))))
    (define class-type-id
      (lambda (_%klass142710%_)
        (##structure-ref _%klass142710%_ '1 class::t 'id)))
    (define &class-type-id
      (lambda (_%klass142708%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass142708%_ '1 class::t 'id))))
    (define class-type-id-set!
      (lambda (_%klass142705%_ _%val142706%_)
        (##structure-set! _%klass142705%_ _%val142706%_ '1 class::t 'id)))
    (define &class-type-id-set!
      (lambda (_%klass142700%_ _%val142702%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142700%_
           _%val142702%_
           '1
           class::t
           'id))))
    (define class-type-name
      (lambda (_%klass142698%_)
        (##structure-ref _%klass142698%_ '2 class::t 'name)))
    (define &class-type-name
      (lambda (_%klass142696%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass142696%_ '2 class::t 'name))))
    (define class-type-name-set!
      (lambda (_%klass142693%_ _%val142694%_)
        (##structure-set! _%klass142693%_ _%val142694%_ '2 class::t 'name)))
    (define &class-type-name-set!
      (lambda (_%klass142688%_ _%val142690%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142688%_
           _%val142690%_
           '2
           class::t
           'name))))
    (define class-type-flags
      (lambda (_%klass142686%_)
        (##structure-ref _%klass142686%_ '3 class::t 'flags)))
    (define &class-type-flags
      (lambda (_%klass142684%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass142684%_ '3 class::t 'flags))))
    (define class-type-flags-set!
      (lambda (_%klass142681%_ _%val142682%_)
        (##structure-set! _%klass142681%_ _%val142682%_ '3 class::t 'flags)))
    (define &class-type-flags-set!
      (lambda (_%klass142676%_ _%val142678%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142676%_
           _%val142678%_
           '3
           class::t
           'flags))))
    (define class-type-super
      (lambda (_%klass142674%_)
        (##structure-ref _%klass142674%_ '4 class::t 'super)))
    (define &class-type-super
      (lambda (_%klass142672%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass142672%_ '4 class::t 'super))))
    (define class-type-super-set!
      (lambda (_%klass142669%_ _%val142670%_)
        (##structure-set! _%klass142669%_ _%val142670%_ '4 class::t 'super)))
    (define &class-type-super-set!
      (lambda (_%klass142664%_ _%val142666%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142664%_
           _%val142666%_
           '4
           class::t
           'super))))
    (define class-type-fields
      (lambda (_%klass142662%_)
        (##structure-ref _%klass142662%_ '5 class::t 'fields)))
    (define &class-type-fields
      (lambda (_%klass142660%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass142660%_ '5 class::t 'fields))))
    (define class-type-fields-set!
      (lambda (_%klass142657%_ _%val142658%_)
        (##structure-set! _%klass142657%_ _%val142658%_ '5 class::t 'fields)))
    (define &class-type-fields-set!
      (lambda (_%klass142652%_ _%val142654%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142652%_
           _%val142654%_
           '5
           class::t
           'fields))))
    (define class-type-precedence-list
      (lambda (_%klass142650%_)
        (##structure-ref _%klass142650%_ '6 class::t 'precedence-list)))
    (define &class-type-precedence-list
      (lambda (_%klass142648%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass142648%_
           '6
           class::t
           'precedence-list))))
    (define class-type-precedence-list-set!
      (lambda (_%klass142645%_ _%val142646%_)
        (##structure-set!
         _%klass142645%_
         _%val142646%_
         '6
         class::t
         'precedence-list)))
    (define &class-type-precedence-list-set!
      (lambda (_%klass142640%_ _%val142642%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142640%_
           _%val142642%_
           '6
           class::t
           'precedence-list))))
    (define class-type-slot-vector
      (lambda (_%klass142638%_)
        (##structure-ref _%klass142638%_ '7 class::t 'slot-vector)))
    (define &class-type-slot-vector
      (lambda (_%klass142636%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass142636%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-vector-set!
      (lambda (_%klass142633%_ _%val142634%_)
        (##structure-set!
         _%klass142633%_
         _%val142634%_
         '7
         class::t
         'slot-vector)))
    (define &class-type-slot-vector-set!
      (lambda (_%klass142628%_ _%val142630%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142628%_
           _%val142630%_
           '7
           class::t
           'slot-vector))))
    (define class-type-slot-table
      (lambda (_%klass142626%_)
        (##structure-ref _%klass142626%_ '8 class::t 'slot-table)))
    (define &class-type-slot-table
      (lambda (_%klass142624%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass142624%_
           '8
           class::t
           'slot-table))))
    (define class-type-slot-table-set!
      (lambda (_%klass142621%_ _%val142622%_)
        (##structure-set!
         _%klass142621%_
         _%val142622%_
         '8
         class::t
         'slot-table)))
    (define &class-type-slot-table-set!
      (lambda (_%klass142616%_ _%val142618%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142616%_
           _%val142618%_
           '8
           class::t
           'slot-table))))
    (define class-type-properties
      (lambda (_%klass142614%_)
        (##structure-ref _%klass142614%_ '9 class::t 'properties)))
    (define &class-type-properties
      (lambda (_%klass142612%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass142612%_
           '9
           class::t
           'properties))))
    (define class-type-properties-set!
      (lambda (_%klass142609%_ _%val142610%_)
        (##structure-set!
         _%klass142609%_
         _%val142610%_
         '9
         class::t
         'properties)))
    (define &class-type-properties-set!
      (lambda (_%klass142604%_ _%val142606%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142604%_
           _%val142606%_
           '9
           class::t
           'properties))))
    (define class-type-constructor
      (lambda (_%klass142602%_)
        (##structure-ref _%klass142602%_ '10 class::t 'constructor)))
    (define &class-type-constructor
      (lambda (_%klass142600%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass142600%_
           '10
           class::t
           'constructor))))
    (define class-type-constructor-set!
      (lambda (_%klass142597%_ _%val142598%_)
        (##structure-set!
         _%klass142597%_
         _%val142598%_
         '10
         class::t
         'constructor)))
    (define &class-type-constructor-set!
      (lambda (_%klass142592%_ _%val142594%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142592%_
           _%val142594%_
           '10
           class::t
           'constructor))))
    (define class-type-methods
      (lambda (_%klass142590%_)
        (##structure-ref _%klass142590%_ '11 class::t 'methods)))
    (define &class-type-methods
      (lambda (_%klass142588%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%klass142588%_ '11 class::t 'methods))))
    (define class-type-methods-set!
      (lambda (_%klass142585%_ _%val142586%_)
        (##structure-set!
         _%klass142585%_
         _%val142586%_
         '11
         class::t
         'methods)))
    (define &class-type-methods-set!
      (lambda (_%klass142580%_ _%val142582%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142580%_
           _%val142582%_
           '11
           class::t
           'methods))))
    (define class-type-specializer
      (lambda (_%klass142578%_)
        (##structure-ref _%klass142578%_ '12 class::t 'specializer)))
    (define &class-type-specializer
      (lambda (_%klass142576%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass142576%_
           '12
           class::t
           'specializer))))
    (define class-type-specializer-set!
      (lambda (_%klass142573%_ _%val142574%_)
        (##structure-set!
         _%klass142573%_
         _%val142574%_
         '12
         class::t
         'specializer)))
    (define &class-type-specializer-set!
      (lambda (_%klass142568%_ _%val142570%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142568%_
           _%val142570%_
           '12
           class::t
           'specializer))))
    (define class-type-interface
      (lambda (_%klass142566%_)
        (##structure-ref _%klass142566%_ '13 class::t 'interface)))
    (define &class-type-interface
      (lambda (_%klass142564%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref
           _%klass142564%_
           '13
           class::t
           'interface))))
    (define class-type-interface-set!
      (lambda (_%klass142561%_ _%val142562%_)
        (##structure-set!
         _%klass142561%_
         _%val142562%_
         '13
         class::t
         'interface)))
    (define &class-type-interface-set!
      (lambda (_%klass142556%_ _%val142558%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%klass142556%_
           _%val142558%_
           '13
           class::t
           'interface))))
    (define type-field-list
      (lambda (_%type142320%_)
        (letrec ((_%__fields->list142450%_
                  (lambda (_%fields142514%_)
                    (let* ((_%fields142517%_ _%fields142514%_)
                           (_%fields-len142526%_
                            (let ()
                              (declare (not safe))
                              (##vector-length _%fields142517%_))))
                      (let _%loop142528%_ ((_%i142530%_ '0) (_%r142531%_ '()))
                        (let* ((_%i142534%_ _%i142530%_)
                               (_%r142547%_ _%r142531%_))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i142534%_ _%fields-len142526%_))
                              (_%loop142528%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%i142534%_ '3))
                               (cons (vector-ref _%fields142517%_ _%i142534%_)
                                     _%r142547%_))
                              (reverse! _%r142547%_)))))))
                 (_%fields->list142451%_
                  (lambda (_%fields142502%_)
                    (let ((_%fields142505%_ _%fields142502%_))
                      (_%__fields->list142450%_ _%fields142505%_)))))
          (let _%loop142453%_ ((_%type142455%_ _%type142320%_))
            (if (let () (declare (not safe)) (##type? _%type142455%_))
                (if (eq? _%type142455%_ ##type-type)
                    '()
                    (let ((_%$e142460%_
                           (let ()
                             (declare (not safe))
                             (##type-super _%type142455%_))))
                      (if _%$e142460%_
                          (let ((__tmp146293 (_%loop142453%_ _%$e142460%_))
                                (__tmp146292
                                 (let* ((_%fields142466%_
                                         (let ()
                                           (declare (not safe))
                                           (##type-fields _%type142455%_)))
                                        (_%fields142470%_ _%fields142466%_))
                                   (_%__fields->list142450%_
                                    _%fields142470%_))))
                            (declare (not safe))
                            (##append __tmp146293 __tmp146292))
                          (let* ((_%fields142487%_
                                  (let ()
                                    (declare (not safe))
                                    (##type-fields _%type142455%_)))
                                 (_%fields142491%_ _%fields142487%_))
                            (_%__fields->list142450%_ _%fields142491%_)))))
                '())))))
    (define __class-type-field-list
      (lambda (_%klass142288%_)
        (let ((_%klass142291%_ _%klass142288%_))
          (letrec ((_%get-fields!142300%_
                    (lambda (_%klass142315%_ _%type142316%_)
                      (let ((_%fields142318%_
                             (type-field-list _%type142316%_)))
                        (##structure-set!
                         _%klass142315%_
                         (cons (cons 'fields: _%fields142318%_)
                               (##structure-ref
                                _%klass142315%_
                                '9
                                class::t
                                '#f))
                         '9
                         class::t
                         '#f)
                        _%fields142318%_))))
            (let* ((_%props142302%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass142291%_ '9 '#f '#f)))
                   (_%$e142304%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'fields: _%props142302%_))))
              (if _%$e142304%_
                  _%$e142304%_
                  (let ((_%$e142307%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props142302%_))))
                    (if _%$e142307%_
                        (_%get-fields!142300%_ _%klass142291%_ _%$e142307%_)
                        (_%get-fields!142300%_
                         _%klass142291%_
                         _%klass142291%_)))))))))
    (define class-type-field-list
      (lambda (_%klass142274%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142274%_ 'class))
            (let ((_%klass142278%_ _%klass142274%_))
              (__class-type-field-list _%klass142278%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@409.30-409.35"
               'contract:
               'class-type?
               'value:
               _%klass142274%_)
              '#!void))))
    (define __class-type-slot-list
      (lambda (_%klass142262%_)
        (let ((_%klass142265%_ _%klass142262%_))
          (vector->list
           (let ()
             (declare (not safe))
             (##unchecked-structure-ref _%klass142265%_ '7 '#f '#f))
           '1))))
    (define class-type-slot-list
      (lambda (_%klass142248%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142248%_ 'class))
            (let ((_%klass142252%_ _%klass142248%_))
              (__class-type-slot-list _%klass142252%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@425.29-425.34"
               'contract:
               'class-type?
               'value:
               _%klass142248%_)
              '#!void))))
    (define __class-type-field-count
      (lambda (_%klass142236%_)
        (let* ((_%klass142239%_ _%klass142236%_)
               (__tmp146294
                (let ((__tmp146295
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass142239%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp146295))))
          (declare (not safe))
          (##fx- __tmp146294 '1))))
    (define class-type-field-count
      (lambda (_%klass142222%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142222%_ 'class))
            (let ((_%klass142226%_ _%klass142222%_))
              (__class-type-field-count _%klass142226%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@427.31-427.36"
               'contract:
               'class-type?
               'value:
               _%klass142222%_)
              '#!void))))
    (define __class-type-seal!
      (lambda (_%klass142210%_)
        (let ((_%klass142213%_ _%klass142210%_))
          (let ((__tmp146296
                 (let ((__tmp146297
                        (let ()
                          (declare (not safe))
                          (##type-flags _%klass142213%_))))
                   (declare (not safe))
                   (##fxior class-type-flag-sealed __tmp146297))))
            (declare (not safe))
            (##unchecked-structure-set!
             _%klass142213%_
             __tmp146296
             '3
             class::t
             class-type-seal!))
          '#!void)))
    (define class-type-seal!
      (lambda (_%klass142196%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142196%_ 'class))
            (let ((_%klass142200%_ _%klass142196%_))
              (__class-type-seal! _%klass142200%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@430.25-430.30"
               'contract:
               'class-type?
               'value:
               _%klass142196%_)
              '#!void))))
    (define __class-type-properties-lock (vector '0 '#f))
    (define __class-type-properties-put!
      (lambda (_%klass142150%_ _%key142151%_ _%val142152%_)
        (let* ((_%klass142155%_ _%klass142150%_) (_%key142163%_ _%key142151%_))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again142174%_ ((_%spin142177%_ '0))
              (if (let ((__tmp146298
                         (let ()
                           (declare (not safe))
                           (##vector-cas!
                            __class-type-properties-lock
                            '0
                            '1
                            '0))))
                    (declare (not safe))
                    (##fx= __tmp146298 '0))
                  (let ((__tmp146299 (current-thread)))
                    (declare (not safe))
                    (##vector-set!
                     __class-type-properties-lock
                     '1
                     __tmp146299))
                  (if (let () (declare (not safe)) (##fx< _%spin142177%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again142174%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin142177%_ '1))))
                      (let ((_%owner142183%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref
                                __class-type-properties-lock
                                '1))))
                        (if (eq? _%owner142183%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner142183%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again142174%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r142191%_
                 (let ((_%props142189%_
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%klass142155%_
                           '9
                           '#f
                           '#f))))
                   (if (assq _%key142163%_ _%props142189%_)
                       '#!void
                       (let ((__tmp146300
                              (cons (cons _%key142163%_ _%val142152%_)
                                    _%props142189%_)))
                         (declare (not safe))
                         (##unchecked-structure-set!
                          _%klass142155%_
                          __tmp146300
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
            _%$r142191%_))))
    (define class-type-properties-put!
      (lambda (_%klass142124%_ _%key142125%_ _%val142126%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142124%_ 'class))
            (let ((_%klass142130%_ _%klass142124%_))
              (if (keyword? _%key142125%_)
                  (let ((_%key142140%_ _%key142125%_))
                    (__class-type-properties-put!
                     _%klass142130%_
                     _%key142140%_
                     _%val142126%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@438.52-438.55"
                     'contract:
                     'keyword?
                     'value:
                     _%key142125%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@438.35-438.40"
               'contract:
               'class-type?
               'value:
               _%klass142124%_)
              '#!void))))
    (define __class-type-printable-slots
      (lambda (_%klass142018%_)
        (let ((_%klass142021%_ _%klass142018%_))
          (letrec ((_%get-field-vector142030%_
                    (lambda (_%type142108%_)
                      (let _%loop142110%_ ((_%type142112%_ _%type142108%_))
                        (let* ((_%fields142114%_
                                (let ()
                                  (declare (not safe))
                                  (##type-fields _%type142112%_)))
                               (_%$e142116%_
                                (let ()
                                  (declare (not safe))
                                  (##type-super _%type142112%_))))
                          (if _%$e142116%_
                              (let ((_%super-fields142121%_
                                     (_%loop142110%_ _%$e142116%_)))
                                (vector-append
                                 _%super-fields142121%_
                                 _%fields142114%_))
                              _%fields142114%_)))))
                   (_%get-printable-slot-alist142031%_
                    (lambda (_%type142091%_)
                      (let* ((_%fields142093%_
                              (_%get-field-vector142030%_ _%type142091%_))
                             (_%count142095%_
                              (vector-length _%fields142093%_)))
                        (let _%loop142098%_ ((_%i142100%_ '0)
                                             (_%offset142101%_ '1)
                                             (_%r142102%_ '()))
                          (if (let ()
                                (declare (not safe))
                                (##fx< _%i142100%_ _%count142095%_))
                              (let ((_%slot-name142104%_
                                     (vector-ref _%fields142093%_ _%i142100%_))
                                    (_%slot-flags142105%_
                                     (vector-ref
                                      _%fields142093%_
                                      (let ()
                                        (declare (not safe))
                                        (##fx+ _%i142100%_ '1))))
                                    (_%next-i142106%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%i142100%_ '3))))
                                (if (let ((__tmp146301
                                           (let ()
                                             (declare (not safe))
                                             (##fxand _%slot-flags142105%_
                                                      '1))))
                                      (declare (not safe))
                                      (##fx= __tmp146301 '0))
                                    (_%loop142098%_
                                     _%next-i142106%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset142101%_ '1))
                                     (cons (cons _%slot-name142104%_
                                                 _%offset142101%_)
                                           _%r142102%_))
                                    (_%loop142098%_
                                     _%next-i142106%_
                                     (let ()
                                       (declare (not safe))
                                       (##fx+ _%offset142101%_ '1))
                                     _%r142102%_)))
                              (reverse! _%r142102%_))))))
                   (_%get-printable-slots!142032%_
                    (lambda (_%klass142047%_ _%type142048%_)
                      (let ((_%printable142050%_
                             (_%get-printable-slot-alist142031%_
                              _%type142048%_)))
                        (let* ((_%klass142052%_ _%klass142047%_)
                               (_%key142055%_ 'printable-slots:)
                               (_%val142058%_ _%printable142050%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%klass142052%_
                                 'class))
                              (let* ((_%klass142063%_ _%klass142052%_)
                                     (_%key142081%_ _%key142055%_))
                                (__class-type-properties-put!
                                 _%klass142063%_
                                 _%key142081%_
                                 _%val142058%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 'gerbil/runtime/mop
                                 'contract:
                                 'class-type?
                                 'value:
                                 _%klass142052%_)
                                '#!void)))
                        _%printable142050%_))))
            (let* ((_%props142034%_
                    (let ()
                      (declare (not safe))
                      (##unchecked-structure-ref _%klass142021%_ '9 '#f '#f)))
                   (_%$e142036%_
                    (let ()
                      (declare (not safe))
                      (agetq__0 'printable-slots: _%props142034%_))))
              (if _%$e142036%_
                  _%$e142036%_
                  (let ((_%$e142039%_
                         (let ()
                           (declare (not safe))
                           (agetq__0 'system-type: _%props142034%_))))
                    (if _%$e142039%_
                        (_%get-printable-slots!142032%_
                         _%klass142021%_
                         _%$e142039%_)
                        (_%get-printable-slots!142032%_
                         _%klass142021%_
                         _%klass142021%_)))))))))
    (define class-type-printable-slots
      (lambda (_%klass142004%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass142004%_ 'class))
            (let ((_%klass142008%_ _%klass142004%_))
              (__class-type-printable-slots _%klass142008%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@447.35-447.40"
               'contract:
               'class-type?
               'value:
               _%klass142004%_)
              '#!void))))
    (define __substruct?
      (lambda (_%maybe-sub-struct141973%_ _%maybe-super-struct141974%_)
        (let* ((_%maybe-sub-struct141977%_ _%maybe-sub-struct141973%_)
               (_%maybe-super-struct141985%_ _%maybe-super-struct141974%_)
               (_%maybe-super-struct-id141994%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-struct141985%_))))
          (let _%lp141996%_ ((_%super-struct141998%_
                              _%maybe-sub-struct141977%_))
            (if (not _%super-struct141998%_)
                '#f
                (if (eq? _%maybe-super-struct-id141994%_
                         (let ()
                           (declare (not safe))
                           (##type-id _%super-struct141998%_)))
                    '#t
                    (_%lp141996%_
                     (let ()
                       (declare (not safe))
                       (##type-super _%super-struct141998%_)))))))))
    (define substruct?
      (lambda (_%maybe-sub-struct141948%_ _%maybe-super-struct141949%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-struct141948%_ 'class))
            (let ((_%maybe-sub-struct141953%_ _%maybe-sub-struct141948%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-struct141949%_
                     'class))
                  (let ((_%maybe-super-struct141963%_
                         _%maybe-super-struct141949%_))
                    (__substruct?
                     _%maybe-sub-struct141953%_
                     _%maybe-super-struct141963%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@491.47-491.65"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-struct141949%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@491.19-491.35"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-struct141948%_)
              '#!void))))
    (define base-struct/1
      (lambda (_%klass141926%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141926%_ 'class))
            (if (let* ((_%klass141929%_ _%klass141926%_)
                       (_%klass141934%_ _%klass141929%_))
                  (__class-type-struct? _%klass141934%_))
                _%klass141926%_
                (let () (declare (not safe)) (##type-super _%klass141926%_)))
            (if (not _%klass141926%_)
                '#f
                (error '"not a class or false" _%klass141926%_)))))
    (define base-struct/2
      (lambda (_%klass1141849%_ _%klass2141850%_)
        (let ((_%s1141852%_ (base-struct/1 _%klass1141849%_))
              (_%s2141853%_ (base-struct/1 _%klass2141850%_)))
          (if (or (not _%s1141852%_)
                  (and _%s2141853%_
                       (let* ((_%maybe-sub-struct141858%_ _%s1141852%_)
                              (_%maybe-super-struct141861%_ _%s2141853%_))
                         (if (let ()
                               (declare (not safe))
                               (##structure-instance-of?
                                _%maybe-sub-struct141858%_
                                'class))
                             (let ((_%maybe-sub-struct141866%_
                                    _%maybe-sub-struct141858%_))
                               (if (let ()
                                     (declare (not safe))
                                     (##structure-instance-of?
                                      _%maybe-super-struct141861%_
                                      'class))
                                   (let ((_%maybe-super-struct141880%_
                                          _%maybe-super-struct141861%_))
                                     (__substruct?
                                      _%maybe-sub-struct141866%_
                                      _%maybe-super-struct141880%_))
                                   (begin
                                     (raise-contract-violation-error
                                      '"contract violation"
                                      'context:
                                      'gerbil/runtime/mop
                                      'contract:
                                      'class-type?
                                      'value:
                                      _%maybe-super-struct141861%_)
                                     '#!void)))
                             (begin
                               (raise-contract-violation-error
                                '"contract violation"
                                'context:
                                'gerbil/runtime/mop
                                'contract:
                                'class-type?
                                'value:
                                _%maybe-sub-struct141858%_)
                               '#!void)))))
              _%s2141853%_
              (if (or (not _%s2141853%_)
                      (and _%s1141852%_
                           (let* ((_%maybe-sub-struct141894%_ _%s2141853%_)
                                  (_%maybe-super-struct141897%_ _%s1141852%_))
                             (if (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%maybe-sub-struct141894%_
                                    'class))
                                 (let ((_%maybe-sub-struct141902%_
                                        _%maybe-sub-struct141894%_))
                                   (if (let ()
                                         (declare (not safe))
                                         (##structure-instance-of?
                                          _%maybe-super-struct141897%_
                                          'class))
                                       (let ((_%maybe-super-struct141914%_
                                              _%maybe-super-struct141897%_))
                                         (__substruct?
                                          _%maybe-sub-struct141902%_
                                          _%maybe-super-struct141914%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          'class-type?
                                          'value:
                                          _%maybe-super-struct141897%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'class-type?
                                    'value:
                                    _%maybe-sub-struct141894%_)
                                   '#!void)))))
                  _%s1141852%_
                  (error '"bad mixin: incompatible struct bases"
                         _%klass1141849%_
                         _%klass2141850%_
                         _%s1141852%_
                         _%s2141853%_))))))
    (define base-struct/list
      (lambda (_%all-supers141734%_)
        (let* ((_%$%all-supers141735141760%_ _%all-supers141734%_)
               (_%$%E141740141764%_
                (lambda ()
                  (error '"No clause matching"
                         _%$%all-supers141735141760%_
                         '([])
                         '([x])
                         '([x y])
                         '([x y ...]))
                  '#!void)))
          (let ((_%$%K141758141846%_ (lambda () '#f))
                (_%$%K141755141832%_
                 (lambda (_%x141830%_) (base-struct/1 _%x141830%_)))
                (_%$%K141750141809%_
                 (lambda (_%y141806%_ _%x141807%_)
                   (base-struct/2 _%x141807%_ _%y141806%_)))
                (_%$%K141741141771%_
                 (lambda (_%y141768%_ _%x141769%_)
                   (let ()
                     (declare (not safe))
                     (foldr__0 base-struct/2 _%x141769%_ _%y141768%_)))))
            (let* ((_%__match145062145063%_
                    (lambda (_%$%hd141742141774%_ _%$%tl141743141776%_)
                      (let ((_%x141779%_ _%$%hd141742141774%_))
                        (letrec ((_%$%splice-rest141745141781%_
                                  (lambda (_%$%rest141749141788%_ _%y141790%_)
                                    (if (null? _%$%rest141749141788%_)
                                        (_%$%K141741141771%_
                                         _%y141790%_
                                         _%x141779%_)
                                        (_%$%E141740141764%_))))
                                 (_%$%splice-try141747141783%_
                                  (lambda (_%$%hd141748141792%_
                                           _%$%rest141749141794%_
                                           _%$%y141744141795%_)
                                    (let ((_%y141797%_ _%$%hd141748141792%_))
                                      (_%$%splice-loop141746141785%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%rest141749141794%_))
                                       (cons _%y141797%_
                                             _%$%y141744141795%_)))))
                                 (_%$%splice-loop141746141785%_
                                  (lambda (_%$%rest141749141799%_
                                           _%$%y141744141800%_)
                                    (if (pair? _%$%rest141749141799%_)
                                        (_%$%splice-try141747141783%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%rest141749141799%_))
                                         _%$%rest141749141799%_
                                         _%$%y141744141800%_)
                                        (_%$%splice-rest141745141781%_
                                         _%$%rest141749141799%_
                                         (reverse _%$%y141744141800%_))))))
                          (_%$%splice-loop141746141785%_
                           _%$%tl141743141776%_
                           '())))))
                   (_%$%try-match141737141842%_
                    (lambda ()
                      (if (pair? _%$%all-supers141735141760%_)
                          (let ((_%$%tl141757141837%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%all-supers141735141760%_)))
                                (_%$%hd141756141835%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%all-supers141735141760%_))))
                            (if (null? _%$%tl141757141837%_)
                                (let ((_%x141840%_ _%$%hd141756141835%_))
                                  (base-struct/1 _%x141840%_))
                                (if (pair? _%$%tl141757141837%_)
                                    (let ((_%$%tl141754141821%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%tl141757141837%_)))
                                          (_%$%hd141753141819%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%tl141757141837%_))))
                                      (if (null? _%$%tl141754141821%_)
                                          (let ((_%x141817%_
                                                 _%$%hd141756141835%_)
                                                (_%y141824%_
                                                 _%$%hd141753141819%_))
                                            (_%$%K141750141809%_
                                             _%y141824%_
                                             _%x141817%_))
                                          (_%__match145062145063%_
                                           _%$%hd141756141835%_
                                           _%$%tl141757141837%_)))
                                    (_%__match145062145063%_
                                     _%$%hd141756141835%_
                                     _%$%tl141757141837%_))))
                          (_%$%E141740141764%_)))))
              (if (null? _%$%all-supers141735141760%_)
                  (_%$%K141758141846%_)
                  (_%$%try-match141737141842%_)))))))
    (define base-struct
      (lambda _%all-supers141732%_ (base-struct/list _%all-supers141732%_)))
    (define find-super-constructor
      (lambda (_%super141683%_)
        (let _%lp141685%_ ((_%rest141687%_ _%super141683%_)
                           (_%constructor141688%_ '#f))
          (let* ((_%$%rest141689141697%_ _%rest141687%_)
                 (_%$%else141691141705%_ (lambda () _%constructor141688%_))
                 (_%$%K141693141720%_
                  (lambda (_%rest141708%_ _%hd141709%_)
                    (let ((_%$e141711%_
                           (let ()
                             (declare (not safe))
                             (##unchecked-structure-ref
                              _%hd141709%_
                              '10
                              '#f
                              '#f))))
                      (if _%$e141711%_
                          (if (or (not _%constructor141688%_)
                                  (eq? _%constructor141688%_ _%$e141711%_))
                              (_%lp141685%_ _%rest141708%_ _%$e141711%_)
                              (error '"conflicting implicit constructors"
                                     _%constructor141688%_
                                     _%$e141711%_))
                          (_%lp141685%_
                           _%rest141708%_
                           _%constructor141688%_))))))
            (if (pair? _%$%rest141689141697%_)
                (let ((_%$%hd141694141723%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest141689141697%_)))
                      (_%$%tl141695141725%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest141689141697%_))))
                  (let* ((_%hd141728%_ _%$%hd141694141723%_)
                         (_%rest141730%_ _%$%tl141695141725%_))
                    (_%$%K141693141720%_ _%rest141730%_ _%hd141728%_)))
                (_%$%else141691141705%_))))))
    (define compute-class-slots
      (lambda (_%class-precedence-list141675%_ _%direct-slots141676%_)
        (let ((__tmp146303
               (lambda (_%mixin141678%_)
                 (let ((__tmp146304
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%mixin141678%_
                           '9
                           '#f
                           '#f))))
                   (declare (not safe))
                   (agetq__% 'direct-slots: __tmp146304 '()))))
              (__tmp146302
               (lambda (_%slot-list141680%_ _%slot-table141681%_)
                 (values (list->vector _%slot-list141680%_)
                         _%slot-table141681%_))))
          (declare (not safe))
          (c4-compute-class-slots
           _%class-precedence-list141675%_
           _%direct-slots141676%_
           __tmp146303
           __tmp146302))))
    (define __make-class-type
      (lambda (_%id141502%_
               _%name141503%_
               _%direct-supers141504%_
               _%direct-slots141505%_
               _%properties141506%_
               _%constructor141507%_)
        (let* ((_%id141510%_ _%id141502%_)
               (_%name141518%_ _%name141503%_)
               (_%direct-supers141526%_ _%direct-supers141504%_)
               (_%direct-slots141534%_ _%direct-slots141505%_)
               (_%properties141542%_ _%properties141506%_)
               (_%constructor141550%_ _%constructor141507%_))
          (let ((_%$e141584%_
                 (let* ((_%pred141562%_
                         (lambda (_%$obj141559%_)
                           (not (let ()
                                  (declare (not safe))
                                  (##structure-instance-of?
                                   _%$obj141559%_
                                   'class)))))
                        (_%lst141565%_ _%direct-supers141526%_)
                        (_%pred141570%_ _%pred141562%_))
                   (declare (not safe))
                   (__find _%pred141570%_ _%lst141565%_))))
            (if _%$e141584%_
                (error '"Illegal super class; not a class descriptor"
                       _%$e141584%_)
                (let ((_%$e141611%_
                       (let* ((_%pred141591%_ __class-type-final?)
                              (_%lst141594%_ _%direct-supers141526%_)
                              (_%pred141599%_ _%pred141591%_))
                         (declare (not safe))
                         (__find _%pred141599%_ _%lst141594%_))))
                  (if _%$e141611%_
                      (error '"Cannot extend final class" _%$e141611%_)
                      '#!void))))
          (let ((_g146305_ (compute-precedence-list _%direct-supers141526%_)))
            (begin
              (let ((_g146306_
                     (let ()
                       (declare (not safe))
                       (if (##values? _g146305_)
                           (##values-length _g146305_)
                           1))))
                (if (not (let () (declare (not safe)) (##fx= _g146306_ 2)))
                    (error "Context expects 2 values" _g146306_)))
              (let ((_%precedence-list141618%_
                     (let () (declare (not safe)) (##values-ref _g146305_ 0)))
                    (_%struct-super141619%_
                     (let () (declare (not safe)) (##values-ref _g146305_ 1))))
                (let ((_g146307_
                       (compute-class-slots
                        _%precedence-list141618%_
                        _%direct-slots141534%_)))
                  (begin
                    (let ((_g146308_
                           (let ()
                             (declare (not safe))
                             (if (##values? _g146307_)
                                 (##values-length _g146307_)
                                 1))))
                      (if (not (let ()
                                 (declare (not safe))
                                 (##fx= _g146308_ 2)))
                          (error "Context expects 2 values" _g146308_)))
                    (let ((_%slot-vector141621%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g146307_ 0)))
                          (_%slot-table141622%_
                           (let ()
                             (declare (not safe))
                             (##values-ref _g146307_ 1))))
                      (let* ((_%properties141624%_
                              (cons (cons 'direct-slots:
                                          _%direct-slots141534%_)
                                    (cons (cons 'direct-supers:
                                                _%direct-supers141526%_)
                                          _%properties141542%_)))
                             (_%constructor*141629%_
                              (let ((_%$e141626%_ _%constructor141550%_))
                                (if _%$e141626%_
                                    _%$e141626%_
                                    (find-super-constructor
                                     _%direct-supers141526%_))))
                             (_%precedence-list141672%_
                              (if (or (let ()
                                        (declare (not safe))
                                        (agetq__0
                                         'system:
                                         _%properties141624%_))
                                      (memq object::t
                                            _%precedence-list141618%_))
                                  _%precedence-list141618%_
                                  (let _%loop141634%_ ((_%tail141636%_
                                                        _%precedence-list141618%_)
                                                       (_%head141637%_ '()))
                                    (let* ((_%$%tail141638141646%_
                                            _%tail141636%_)
                                           (_%$%else141640141654%_
                                            (lambda ()
                                              (let ((__tmp146309
                                                     (cons object::t
                                                           (cons t::t '()))))
                                                (declare (not safe))
                                                (foldl__0
                                                 cons
                                                 __tmp146309
                                                 _%head141637%_))))
                                           (_%$%K141642141660%_
                                            (lambda (_%rest141657%_
                                                     _%hd141658%_)
                                              (if (eq? _%hd141658%_ t::t)
                                                  (let ((__tmp146310
                                                         (cons object::t
                                                               _%tail141636%_)))
                                                    (declare (not safe))
                                                    (foldl__0
                                                     cons
                                                     __tmp146310
                                                     _%head141637%_))
                                                  (_%loop141634%_
                                                   _%rest141657%_
                                                   (cons _%hd141658%_
                                                         _%head141637%_))))))
                                      (if (pair? _%$%tail141638141646%_)
                                          (let ((_%$%hd141643141663%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##car _%$%tail141638141646%_)))
                                                (_%$%tl141644141665%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##cdr _%$%tail141638141646%_))))
                                            (let* ((_%hd141668%_
                                                    _%$%hd141643141663%_)
                                                   (_%rest141670%_
                                                    _%$%tl141644141665%_))
                                              (_%$%K141642141660%_
                                               _%rest141670%_
                                               _%hd141668%_)))
                                          (_%$%else141640141654%_)))))))
                        (make-class-type-descriptor
                         _%id141510%_
                         _%name141518%_
                         _%struct-super141619%_
                         _%precedence-list141672%_
                         _%slot-vector141621%_
                         _%properties141624%_
                         _%constructor*141629%_
                         _%slot-table141622%_
                         '#f)))))))))))
    (define make-class-type
      (lambda (_%id141427%_
               _%name141428%_
               _%direct-supers141429%_
               _%direct-slots141430%_
               _%properties141431%_
               _%constructor141432%_)
        (if (symbol? _%id141427%_)
            (let ((_%id141436%_ _%id141427%_))
              (if (symbol? _%name141428%_)
                  (let ((_%name141446%_ _%name141428%_))
                    (if (list? _%direct-supers141429%_)
                        (let ((_%direct-supers141456%_
                               _%direct-supers141429%_))
                          (if (list? _%direct-slots141430%_)
                              (let ((_%direct-slots141466%_
                                     _%direct-slots141430%_))
                                (if (list? _%properties141431%_)
                                    (let ((_%properties141476%_
                                           _%properties141431%_))
                                      (if (or (not _%constructor141432%_)
                                              (symbol? _%constructor141432%_))
                                          (let ((_%constructor141492%_
                                                 _%constructor141432%_))
                                            (__make-class-type
                                             _%id141436%_
                                             _%name141446%_
                                             _%direct-supers141456%_
                                             _%direct-slots141466%_
                                             _%properties141476%_
                                             _%constructor141492%_))
                                          (begin
                                            (raise-contract-violation-error
                                             '"contract violation"
                                             'context:
                                             '"\"gerbil/runtime/mop.ss\"@572.24-572.35"
                                             'contract:
                                             '(? (or not symbol?))
                                             'value:
                                             _%constructor141432%_)
                                            '#!void)))
                                    (begin
                                      (raise-contract-violation-error
                                       '"contract violation"
                                       'context:
                                       '"\"gerbil/runtime/mop.ss\"@571.24-571.34"
                                       'contract:
                                       'list?
                                       'value:
                                       _%properties141431%_)
                                      '#!void)))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/mop.ss\"@570.24-570.36"
                                 'contract:
                                 'list?
                                 'value:
                                 _%direct-slots141430%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@569.24-569.37"
                           'contract:
                           'list?
                           'value:
                           _%direct-supers141429%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@568.24-568.28"
                     'contract:
                     'symbol?
                     'value:
                     _%name141428%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@567.24-567.26"
               'contract:
               'symbol?
               'value:
               _%id141427%_)
              '#!void))))
    (define __class-precedence-list
      (lambda (_%klass141415%_)
        (let ((_%klass141418%_ _%klass141415%_))
          (cons _%klass141418%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass141418%_ '6 '#f '#f))))))
    (define class-precedence-list
      (lambda (_%klass141401%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141401%_ 'class))
            (let ((_%klass141405%_ _%klass141401%_))
              (__class-precedence-list _%klass141405%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@605.30-605.35"
               'contract:
               'class-type?
               'value:
               _%klass141401%_)
              '#!void))))
    (define compute-precedence-list
      (lambda (_%direct-supers141398%_)
        (let ()
          (declare (not safe))
          (c4-linearize__%
           '#f
           class-precedence-list
           class-type-struct?
           eq?
           ##type-name
           '()
           _%direct-supers141398%_))))
    (define __make-class-predicate
      (lambda (_%klass141314%_)
        (let* ((_%klass141317%_ _%klass141314%_)
               (_%tid141326%_
                (let () (declare (not safe)) (##type-id _%klass141317%_))))
          (if (let* ((_%type141328%_ _%klass141317%_)
                     (_%type141333%_ _%type141328%_))
                (__class-type-final? _%type141333%_))
              (lambda (_%$%g141347141349%_)
                (let ()
                  (declare (not safe))
                  (##structure-direct-instance-of?
                   _%$%g141347141349%_
                   _%tid141326%_)))
              (if (let* ((_%klass141352%_ _%klass141317%_)
                         (_%klass141357%_ _%klass141352%_))
                    (__class-type-struct? _%klass141357%_))
                  (lambda (_%$%g141367141369%_)
                    (let ()
                      (declare (not safe))
                      (##structure-instance-of?
                       _%$%g141367141369%_
                       _%tid141326%_)))
                  (lambda (_%$%g141372141374%_)
                    (let* ((_%klass141377%_ _%klass141317%_)
                           (_%obj141380%_ _%$%g141372141374%_)
                           (_%klass141385%_ _%klass141377%_))
                      (__class-instance? _%klass141385%_ _%obj141380%_))))))))
    (define make-class-predicate
      (lambda (_%klass141300%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141300%_ 'class))
            (let ((_%klass141304%_ _%klass141300%_))
              (__make-class-predicate _%klass141304%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@617.29-617.34"
               'contract:
               'class-type?
               'value:
               _%klass141300%_)
              '#!void))))
    (define __make-class-slot-accessor
      (lambda (_%klass141234%_ _%slot141235%_)
        (let* ((_%klass141238%_ _%klass141234%_)
               (_%slot141246%_ _%slot141235%_)
               (_%field141255%_
                (let ((__tmp146311
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass141238%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp146311 _%slot141246%_ '#f))))
          (if (not _%field141255%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass141238%_
                       'slot:
                       _%slot141246%_)
                '#!void)
              (if (let* ((_%type141259%_ _%klass141238%_)
                         (_%type141264%_ _%type141259%_))
                    (__class-type-final? _%type141264%_))
                  (make-final-slot-accessor
                   _%klass141238%_
                   _%slot141246%_
                   _%field141255%_)
                  (if (let* ((_%klass141279%_ _%klass141238%_)
                             (_%klass141284%_ _%klass141279%_))
                        (__class-type-struct? _%klass141284%_))
                      (make-struct-slot-accessor
                       _%klass141238%_
                       _%slot141246%_
                       _%field141255%_)
                      (if (let ((_%strukt141295%_
                                 (base-struct/1 _%klass141238%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt141295%_
                                    'class))
                                 (let ((__tmp146312
                                        (let ((__tmp146313
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt141295%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp146313))))
                                   (declare (not safe))
                                   (##fx< _%field141255%_ __tmp146312))))
                          (make-struct-subclass-slot-accessor
                           _%klass141238%_
                           _%slot141246%_
                           _%field141255%_)
                          (make-class-cached-slot-accessor
                           _%klass141238%_
                           _%slot141246%_
                           _%field141255%_))))))))
    (define make-class-slot-accessor
      (lambda (_%klass141209%_ _%slot141210%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141209%_ 'class))
            (let ((_%klass141214%_ _%klass141209%_))
              (if (symbol? _%slot141210%_)
                  (let ((_%slot141224%_ _%slot141210%_))
                    (__make-class-slot-accessor
                     _%klass141214%_
                     _%slot141224%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@648.50-648.54"
                     'contract:
                     'symbol?
                     'value:
                     _%slot141210%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@648.33-648.38"
               'contract:
               'class-type?
               'value:
               _%klass141209%_)
              '#!void))))
    (define __make-class-slot-mutator
      (lambda (_%klass141143%_ _%slot141144%_)
        (let* ((_%klass141147%_ _%klass141143%_)
               (_%slot141155%_ _%slot141144%_)
               (_%field141164%_
                (let ((__tmp146314
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass141147%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp146314 _%slot141155%_ '#f))))
          (if (not _%field141164%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass141147%_
                       'slot:
                       _%slot141155%_)
                '#!void)
              (if (let* ((_%type141168%_ _%klass141147%_)
                         (_%type141173%_ _%type141168%_))
                    (__class-type-final? _%type141173%_))
                  (make-final-slot-mutator
                   _%klass141147%_
                   _%slot141155%_
                   _%field141164%_)
                  (if (let* ((_%klass141188%_ _%klass141147%_)
                             (_%klass141193%_ _%klass141188%_))
                        (__class-type-struct? _%klass141193%_))
                      (make-struct-slot-mutator
                       _%klass141147%_
                       _%slot141155%_
                       _%field141164%_)
                      (if (let ((_%strukt141204%_
                                 (base-struct/1 _%klass141147%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt141204%_
                                    'class))
                                 (let ((__tmp146315
                                        (let ((__tmp146316
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt141204%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp146316))))
                                   (declare (not safe))
                                   (##fx< _%field141164%_ __tmp146315))))
                          (make-struct-subclass-slot-mutator
                           _%klass141147%_
                           _%slot141155%_
                           _%field141164%_)
                          (make-class-cached-slot-mutator
                           _%klass141147%_
                           _%slot141155%_
                           _%field141164%_))))))))
    (define make-class-slot-mutator
      (lambda (_%klass141118%_ _%slot141119%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141118%_ 'class))
            (let ((_%klass141123%_ _%klass141118%_))
              (if (symbol? _%slot141119%_)
                  (let ((_%slot141133%_ _%slot141119%_))
                    (__make-class-slot-mutator _%klass141123%_ _%slot141133%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@656.49-656.53"
                     'contract:
                     'symbol?
                     'value:
                     _%slot141119%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@656.32-656.37"
               'contract:
               'class-type?
               'value:
               _%klass141118%_)
              '#!void))))
    (define __make-class-slot-unchecked-accessor
      (lambda (_%klass141052%_ _%slot141053%_)
        (let* ((_%klass141056%_ _%klass141052%_)
               (_%slot141064%_ _%slot141053%_)
               (_%field141073%_
                (let ((__tmp146317
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass141056%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp146317 _%slot141064%_ '#f))))
          (if (not _%field141073%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass141056%_
                       'slot:
                       _%slot141064%_)
                '#!void)
              (if (let* ((_%type141077%_ _%klass141056%_)
                         (_%type141082%_ _%type141077%_))
                    (__class-type-final? _%type141082%_))
                  (make-struct-slot-unchecked-accessor
                   _%klass141056%_
                   _%slot141064%_
                   _%field141073%_)
                  (if (let* ((_%klass141097%_ _%klass141056%_)
                             (_%klass141102%_ _%klass141097%_))
                        (__class-type-struct? _%klass141102%_))
                      (make-struct-slot-unchecked-accessor
                       _%klass141056%_
                       _%slot141064%_
                       _%field141073%_)
                      (if (let ((_%strukt141113%_
                                 (base-struct/1 _%klass141056%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt141113%_
                                    'class))
                                 (let ((__tmp146318
                                        (let ((__tmp146319
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt141113%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp146319))))
                                   (declare (not safe))
                                   (##fx< _%field141073%_ __tmp146318))))
                          (make-struct-slot-unchecked-accessor
                           _%klass141056%_
                           _%slot141064%_
                           _%field141073%_)
                          (make-class-cached-slot-unchecked-accessor
                           _%klass141056%_
                           _%slot141064%_
                           _%field141073%_))))))))
    (define make-class-slot-unchecked-accessor
      (lambda (_%klass141027%_ _%slot141028%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass141027%_ 'class))
            (let ((_%klass141032%_ _%klass141027%_))
              (if (symbol? _%slot141028%_)
                  (let ((_%slot141042%_ _%slot141028%_))
                    (__make-class-slot-unchecked-accessor
                     _%klass141032%_
                     _%slot141042%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@664.60-664.64"
                     'contract:
                     'symbol?
                     'value:
                     _%slot141028%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@664.43-664.48"
               'contract:
               'class-type?
               'value:
               _%klass141027%_)
              '#!void))))
    (define __make-class-slot-unchecked-mutator
      (lambda (_%klass140961%_ _%slot140962%_)
        (let* ((_%klass140965%_ _%klass140961%_)
               (_%slot140973%_ _%slot140962%_)
               (_%field140982%_
                (let ((__tmp146320
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass140965%_
                          '8
                          '#f
                          '#f))))
                  (declare (not safe))
                  (symbolic-table-ref __tmp146320 _%slot140973%_ '#f))))
          (if (not _%field140982%_)
              (let ()
                (error '"unknown slot"
                       'class:
                       _%klass140965%_
                       'slot:
                       _%slot140973%_)
                '#!void)
              (if (let* ((_%type140986%_ _%klass140965%_)
                         (_%type140991%_ _%type140986%_))
                    (__class-type-final? _%type140991%_))
                  (make-struct-slot-unchecked-mutator
                   _%klass140965%_
                   _%slot140973%_
                   _%field140982%_)
                  (if (let* ((_%klass141006%_ _%klass140965%_)
                             (_%klass141011%_ _%klass141006%_))
                        (__class-type-struct? _%klass141011%_))
                      (make-struct-slot-unchecked-mutator
                       _%klass140965%_
                       _%slot140973%_
                       _%field140982%_)
                      (if (let ((_%strukt141022%_
                                 (base-struct/1 _%klass140965%_)))
                            (and (let ()
                                   (declare (not safe))
                                   (##structure-instance-of?
                                    _%strukt141022%_
                                    'class))
                                 (let ((__tmp146321
                                        (let ((__tmp146322
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%strukt141022%_
                                                  '7
                                                  '#f
                                                  '#f))))
                                          (declare (not safe))
                                          (##vector-length __tmp146322))))
                                   (declare (not safe))
                                   (##fx< _%field140982%_ __tmp146321))))
                          (make-struct-slot-unchecked-mutator
                           _%klass140965%_
                           _%slot140973%_
                           _%field140982%_)
                          (make-class-cached-slot-unchecked-mutator
                           _%klass140965%_
                           _%slot140973%_
                           _%field140982%_))))))))
    (define make-class-slot-unchecked-mutator
      (lambda (_%klass140936%_ _%slot140937%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140936%_ 'class))
            (let ((_%klass140941%_ _%klass140936%_))
              (if (symbol? _%slot140937%_)
                  (let ((_%slot140951%_ _%slot140937%_))
                    (__make-class-slot-unchecked-mutator
                     _%klass140941%_
                     _%slot140951%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@672.59-672.63"
                     'contract:
                     'symbol?
                     'value:
                     _%slot140937%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@672.42-672.47"
               'contract:
               'class-type?
               'value:
               _%klass140936%_)
              '#!void))))
    (define not-an-instance__%
      (lambda (_%object140920%_ _%class140921%_ _%slot140922%_)
        (apply error
               '"not an instance"
               'object:
               _%object140920%_
               'class:
               _%class140921%_
               (if _%slot140922%_
                   (cons 'slot: (cons _%slot140922%_ '()))
                   '()))))
    (define not-an-instance__0
      (lambda (_%object140927%_ _%class140928%_)
        (let ((_%slot140930%_ '#f))
          (not-an-instance__%
           _%object140927%_
           _%class140928%_
           _%slot140930%_))))
    (define not-an-instance
      (lambda _g146323_
        (let ((_g146324_ (let () (declare (not safe)) (##length _g146323_))))
          (cond ((let () (declare (not safe)) (##fx= _g146324_ 2))
                 (apply not-an-instance__0 _g146323_))
                ((let () (declare (not safe)) (##fx= _g146324_ 3))
                 (apply not-an-instance__% _g146323_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  not-an-instance
                  _g146323_))))))
    (define make-final-slot-accessor
      (lambda (_%klass140913%_ _%slot140914%_ _%field140915%_)
        (lambda (_%obj140917%_)
          (##direct-structure-ref
           _%obj140917%_
           _%field140915%_
           _%klass140913%_
           _%slot140914%_))))
    (define make-final-slot-mutator
      (lambda (_%klass140906%_ _%slot140907%_ _%field140908%_)
        (lambda (_%obj140910%_ _%val140911%_)
          (##direct-structure-set!
           _%obj140910%_
           _%val140911%_
           _%field140908%_
           _%klass140906%_
           _%slot140907%_))))
    (define make-struct-slot-accessor
      (lambda (_%klass140900%_ _%slot140901%_ _%field140902%_)
        (lambda (_%obj140904%_)
          (##structure-ref
           _%obj140904%_
           _%field140902%_
           _%klass140900%_
           _%slot140901%_))))
    (define make-struct-slot-mutator
      (lambda (_%klass140893%_ _%slot140894%_ _%field140895%_)
        (lambda (_%obj140897%_ _%val140898%_)
          (##structure-set!
           _%obj140897%_
           _%val140898%_
           _%field140895%_
           _%klass140893%_
           _%slot140894%_))))
    (define make-struct-slot-unchecked-accessor
      (lambda (_%klass140887%_ _%slot140888%_ _%field140889%_)
        (lambda (_%obj140891%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-ref
             _%obj140891%_
             _%field140889%_
             _%klass140887%_
             _%slot140888%_)))))
    (define make-struct-slot-unchecked-mutator
      (lambda (_%klass140880%_ _%slot140881%_ _%field140882%_)
        (lambda (_%obj140884%_ _%val140885%_)
          (let ()
            (declare (not safe))
            (##unchecked-structure-set!
             _%obj140884%_
             _%val140885%_
             _%field140882%_
             _%klass140880%_
             _%slot140881%_)))))
    (define make-struct-subclass-slot-accessor
      (lambda (_%klass140853%_ _%slot140854%_ _%field140855%_)
        (lambda (_%obj140857%_)
          (if (let* ((_%klass140859%_ _%klass140853%_)
                     (_%obj140862%_ _%obj140857%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass140859%_ 'class))
                    (let ((_%klass140867%_ _%klass140859%_))
                      (__class-instance? _%klass140867%_ _%obj140862%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass140859%_)
                      '#!void)))
              (unchecked-slot-ref _%obj140857%_ _%field140855%_)
              (not-an-instance__%
               _%obj140857%_
               _%klass140853%_
               _%slot140854%_)))))
    (define make-struct-subclass-slot-mutator
      (lambda (_%klass140825%_ _%slot140826%_ _%field140827%_)
        (lambda (_%obj140829%_ _%val140830%_)
          (if (let* ((_%klass140832%_ _%klass140825%_)
                     (_%obj140835%_ _%obj140829%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass140832%_ 'class))
                    (let ((_%klass140840%_ _%klass140832%_))
                      (__class-instance? _%klass140840%_ _%obj140835%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass140832%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj140829%_
               _%field140827%_
               _%val140830%_)
              (not-an-instance__%
               _%obj140829%_
               _%klass140825%_
               _%slot140826%_)))))
    (define make-class-cached-slot-accessor
      (lambda (_%klass140776%_ _%slot140777%_ _%field140778%_)
        (lambda (_%obj140780%_)
          (if (let* ((_%klass140782%_ _%klass140776%_)
                     (_%obj140785%_ _%obj140780%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass140782%_ 'class))
                    (let ((_%klass140790%_ _%klass140782%_))
                      (__direct-instance? _%klass140790%_ _%obj140785%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass140782%_)
                      '#!void)))
              (unchecked-field-ref _%obj140780%_ _%field140778%_)
              (if (let* ((_%klass140804%_ _%klass140776%_)
                         (_%obj140807%_ _%obj140780%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass140804%_ 'class))
                        (let ((_%klass140812%_ _%klass140804%_))
                          (__class-instance? _%klass140812%_ _%obj140807%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass140804%_)
                          '#!void)))
                  (unchecked-slot-ref _%obj140780%_ _%slot140777%_)
                  (not-an-instance__%
                   _%obj140780%_
                   _%klass140776%_
                   _%slot140777%_))))))
    (define make-class-cached-slot-mutator
      (lambda (_%klass140726%_ _%slot140727%_ _%field140728%_)
        (lambda (_%obj140730%_ _%val140731%_)
          (if (let* ((_%klass140733%_ _%klass140726%_)
                     (_%obj140736%_ _%obj140730%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass140733%_ 'class))
                    (let ((_%klass140741%_ _%klass140733%_))
                      (__direct-instance? _%klass140741%_ _%obj140736%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass140733%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj140730%_
               _%field140728%_
               _%val140731%_)
              (if (let* ((_%klass140755%_ _%klass140726%_)
                         (_%obj140758%_ _%obj140730%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass140755%_ 'class))
                        (let ((_%klass140763%_ _%klass140755%_))
                          (__class-instance? _%klass140763%_ _%obj140758%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass140755%_)
                          '#!void)))
                  (unchecked-slot-set!
                   _%obj140730%_
                   _%slot140727%_
                   _%val140731%_)
                  (not-an-instance__%
                   _%obj140730%_
                   _%klass140726%_
                   _%slot140727%_))))))
    (define make-class-cached-slot-unchecked-accessor
      (lambda (_%klass140699%_ _%slot140700%_ _%field140701%_)
        (lambda (_%obj140703%_)
          (if (let* ((_%klass140705%_ _%klass140699%_)
                     (_%obj140708%_ _%obj140703%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass140705%_ 'class))
                    (let ((_%klass140713%_ _%klass140705%_))
                      (__direct-instance? _%klass140713%_ _%obj140708%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass140705%_)
                      '#!void)))
              (unchecked-field-ref _%obj140703%_ _%field140701%_)
              (unchecked-slot-ref _%obj140703%_ _%slot140700%_)))))
    (define make-class-cached-slot-unchecked-mutator
      (lambda (_%klass140671%_ _%slot140672%_ _%field140673%_)
        (lambda (_%obj140675%_ _%val140676%_)
          (if (let* ((_%klass140678%_ _%klass140671%_)
                     (_%obj140681%_ _%obj140675%_))
                (if (let ()
                      (declare (not safe))
                      (##structure-instance-of? _%klass140678%_ 'class))
                    (let ((_%klass140686%_ _%klass140678%_))
                      (__direct-instance? _%klass140686%_ _%obj140681%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/mop
                       'contract:
                       'class-type?
                       'value:
                       _%klass140678%_)
                      '#!void)))
              (unchecked-field-set!
               _%obj140675%_
               _%field140673%_
               _%val140676%_)
              (unchecked-slot-set!
               _%obj140675%_
               _%slot140672%_
               _%val140676%_)))))
    (define __class-slot-offset
      (lambda (_%klass140650%_ _%slot140651%_)
        (let* ((_%klass140654%_ _%klass140650%_)
               (_%slot140662%_ _%slot140651%_)
               (__tmp146325
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass140654%_ '8 '#f '#f))))
          (declare (not safe))
          (symbolic-table-ref __tmp146325 _%slot140662%_ '#f))))
    (define class-slot-offset
      (lambda (_%klass140625%_ _%slot140626%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140625%_ 'class))
            (let ((_%klass140630%_ _%klass140625%_))
              (if (let () (declare (not safe)) (symbolic? _%slot140626%_))
                  (let ((_%slot140640%_ _%slot140626%_))
                    (__class-slot-offset _%klass140630%_ _%slot140640%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@734.43-734.47"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot140626%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@734.26-734.31"
               'contract:
               'class-type?
               'value:
               _%klass140625%_)
              '#!void))))
    (define __class-slot-ref
      (lambda (_%klass140550%_ _%obj140551%_ _%slot140552%_)
        (let* ((_%klass140555%_ _%klass140550%_)
               (_%slot140563%_ _%slot140552%_))
          (if (let* ((_%klass140572%_ _%klass140555%_)
                     (_%obj140575%_ _%obj140551%_)
                     (_%klass140580%_ _%klass140572%_))
                (__class-instance? _%klass140580%_ _%obj140575%_))
              (let ((_%off140623%_
                     (let* ((_%klass140594%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj140551%_)))
                            (_%slot140597%_ _%slot140563%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass140594%_ 'class))
                           (let ((_%klass140602%_ _%klass140594%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot140597%_))
                                 (let ((_%slot140613%_ _%slot140597%_))
                                   (__class-slot-offset
                                    _%klass140602%_
                                    _%slot140613%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot140597%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass140594%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-ref
                 _%obj140551%_
                 _%off140623%_
                 _%klass140555%_
                 _%slot140563%_))
              (not-an-instance__0 _%obj140551%_ _%klass140555%_)))))
    (define class-slot-ref
      (lambda (_%klass140524%_ _%obj140525%_ _%slot140526%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140524%_ 'class))
            (let ((_%klass140530%_ _%klass140524%_))
              (if (let () (declare (not safe)) (symbolic? _%slot140526%_))
                  (let ((_%slot140540%_ _%slot140526%_))
                    (__class-slot-ref
                     _%klass140530%_
                     _%obj140525%_
                     _%slot140540%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@737.44-737.48"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot140526%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@737.23-737.28"
               'contract:
               'class-type?
               'value:
               _%klass140524%_)
              '#!void))))
    (define __class-slot-set!
      (lambda (_%klass140448%_ _%obj140449%_ _%slot140450%_ _%val140451%_)
        (let* ((_%klass140454%_ _%klass140448%_)
               (_%slot140462%_ _%slot140450%_))
          (if (let* ((_%klass140471%_ _%klass140454%_)
                     (_%obj140474%_ _%obj140449%_)
                     (_%klass140479%_ _%klass140471%_))
                (__class-instance? _%klass140479%_ _%obj140474%_))
              (let ((_%off140522%_
                     (let* ((_%klass140493%_
                             (let ()
                               (declare (not safe))
                               (##structure-type _%obj140449%_)))
                            (_%slot140496%_ _%slot140462%_))
                       (if (let ()
                             (declare (not safe))
                             (##structure-instance-of? _%klass140493%_ 'class))
                           (let ((_%klass140501%_ _%klass140493%_))
                             (if (let ()
                                   (declare (not safe))
                                   (symbolic? _%slot140496%_))
                                 (let ((_%slot140512%_ _%slot140496%_))
                                   (__class-slot-offset
                                    _%klass140501%_
                                    _%slot140512%_))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'symbolic?
                                    'value:
                                    _%slot140496%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'class-type?
                              'value:
                              _%klass140493%_)
                             '#!void)))))
                (declare (not safe))
                (##unchecked-structure-set!
                 _%obj140449%_
                 _%val140451%_
                 _%off140522%_
                 _%klass140454%_
                 _%slot140462%_))
              (not-an-instance__0 _%obj140449%_ _%klass140454%_)))))
    (define class-slot-set!
      (lambda (_%klass140421%_ _%obj140422%_ _%slot140423%_ _%val140424%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140421%_ 'class))
            (let ((_%klass140428%_ _%klass140421%_))
              (if (let () (declare (not safe)) (symbolic? _%slot140423%_))
                  (let ((_%slot140438%_ _%slot140423%_))
                    (__class-slot-set!
                     _%klass140428%_
                     _%obj140422%_
                     _%slot140438%_
                     _%val140424%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@743.45-743.49"
                     'contract:
                     'symbolic?
                     'value:
                     _%slot140423%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@743.24-743.29"
               'contract:
               'class-type?
               'value:
               _%klass140421%_)
              '#!void))))
    (define unchecked-field-ref
      (lambda (_%obj140418%_ _%off140419%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-ref _%obj140418%_ _%off140419%_ '#f '#f))))
    (define unchecked-field-set!
      (lambda (_%obj140414%_ _%off140415%_ _%val140416%_)
        (let ()
          (declare (not safe))
          (##unchecked-structure-set!
           _%obj140414%_
           _%val140416%_
           _%off140415%_
           '#f
           '#f))))
    (define unchecked-slot-ref
      (lambda (_%obj140411%_ _%slot140412%_)
        (unchecked-field-ref
         _%obj140411%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj140411%_))
          _%slot140412%_))))
    (define unchecked-slot-set!
      (lambda (_%obj140407%_ _%slot140408%_ _%val140409%_)
        (unchecked-field-set!
         _%obj140407%_
         (__class-slot-offset
          (let () (declare (not safe)) (##structure-type _%obj140407%_))
          _%slot140408%_)
         _%val140409%_)))
    (define __slot-error
      (lambda (_%obj140404%_ _%slot140405%_)
        (error '"Cannot find slot"
               'object:
               _%obj140404%_
               'slot:
               _%slot140405%_)))
    (define __slot-ref__%
      (lambda (_%obj140328%_ _%slot140329%_ _%E140330%_)
        (let* ((_%slot140333%_ _%slot140329%_)
               (_%E140341%_ _%E140330%_)
               (_%klass140350%_ (class-of _%obj140328%_))
               (_%$e140386%_
                (let* ((_%klass140353%_ _%klass140350%_)
                       (_%slot140356%_ _%slot140333%_)
                       (_%klass140361%_ _%klass140353%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot140356%_))
                      (let ((_%slot140376%_ _%slot140356%_))
                        (__class-slot-offset _%klass140361%_ _%slot140376%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot140356%_)
                        '#!void)))))
          (if _%$e140386%_
              (unchecked-field-ref _%obj140328%_ _%$e140386%_)
              (let ()
                (declare (not safe))
                (_%E140341%_ _%obj140328%_ _%slot140333%_))))))
    (define __slot-ref__0
      (lambda (_%obj140395%_ _%slot140396%_)
        (let ((_%E140398%_ __slot-error))
          (__slot-ref__% _%obj140395%_ _%slot140396%_ _%E140398%_))))
    (define __slot-ref
      (lambda _g146326_
        (let ((_g146327_ (let () (declare (not safe)) (##length _g146326_))))
          (cond ((let () (declare (not safe)) (##fx= _g146327_ 2))
                 (apply __slot-ref__0 _g146326_))
                ((let () (declare (not safe)) (##fx= _g146327_ 3))
                 (apply __slot-ref__% _g146326_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-ref
                  _g146326_))))))
    (define slot-ref__%
      (lambda (_%obj140289%_ _%slot140290%_ _%E140291%_)
        (if (symbol? _%slot140290%_)
            (let ((_%slot140295%_ _%slot140290%_))
              (if (procedure? _%E140291%_)
                  (let ((_%E140305%_ _%E140291%_))
                    (__slot-ref__% _%obj140289%_ _%slot140295%_ _%E140305%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@769.38-769.39"
                     'contract:
                     'procedure?
                     'value:
                     _%E140291%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@769.21-769.25"
               'contract:
               'symbol?
               'value:
               _%slot140290%_)
              '#!void))))
    (define slot-ref__0
      (lambda (_%obj140318%_ _%slot140319%_)
        (let ((_%E140321%_ __slot-error))
          (slot-ref__% _%obj140318%_ _%slot140319%_ _%E140321%_))))
    (define slot-ref
      (lambda _g146328_
        (let ((_g146329_ (let () (declare (not safe)) (##length _g146328_))))
          (cond ((let () (declare (not safe)) (##fx= _g146329_ 2))
                 (apply slot-ref__0 _g146328_))
                ((let () (declare (not safe)) (##fx= _g146329_ 3))
                 (apply slot-ref__% _g146328_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-ref
                  _g146328_))))))
    (define __slot-set!__%
      (lambda (_%obj140209%_ _%slot140210%_ _%val140211%_ _%E140212%_)
        (let* ((_%slot140215%_ _%slot140210%_)
               (_%E140223%_ _%E140212%_)
               (_%klass140232%_ (class-of _%obj140209%_))
               (_%$e140268%_
                (let* ((_%klass140235%_ _%klass140232%_)
                       (_%slot140238%_ _%slot140215%_)
                       (_%klass140243%_ _%klass140235%_))
                  (if (let () (declare (not safe)) (symbolic? _%slot140238%_))
                      (let ((_%slot140258%_ _%slot140238%_))
                        (__class-slot-offset _%klass140243%_ _%slot140258%_))
                      (begin
                        (raise-contract-violation-error
                         '"contract violation"
                         'context:
                         'gerbil/runtime/mop
                         'contract:
                         'symbolic?
                         'value:
                         _%slot140238%_)
                        '#!void)))))
          (if _%$e140268%_
              (unchecked-field-set! _%obj140209%_ _%$e140268%_ _%val140211%_)
              (let ()
                (declare (not safe))
                (_%E140223%_ _%obj140209%_ _%slot140215%_))))))
    (define __slot-set!__0
      (lambda (_%obj140277%_ _%slot140278%_ _%val140279%_)
        (let ((_%E140281%_ __slot-error))
          (__slot-set!__%
           _%obj140277%_
           _%slot140278%_
           _%val140279%_
           _%E140281%_))))
    (define __slot-set!
      (lambda _g146330_
        (let ((_g146331_ (let () (declare (not safe)) (##length _g146330_))))
          (cond ((let () (declare (not safe)) (##fx= _g146331_ 3))
                 (apply __slot-set!__0 _g146330_))
                ((let () (declare (not safe)) (##fx= _g146331_ 4))
                 (apply __slot-set!__% _g146330_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __slot-set!
                  _g146330_))))))
    (define slot-set!__%
      (lambda (_%obj140167%_ _%slot140168%_ _%val140169%_ _%E140170%_)
        (if (symbol? _%slot140168%_)
            (let ((_%slot140174%_ _%slot140168%_))
              (if (procedure? _%E140170%_)
                  (let ((_%E140184%_ _%E140170%_))
                    (__slot-set!__%
                     _%obj140167%_
                     _%slot140174%_
                     _%val140169%_
                     _%E140184%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@771.43-771.44"
                     'contract:
                     'procedure?
                     'value:
                     _%E140170%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@771.22-771.26"
               'contract:
               'symbol?
               'value:
               _%slot140168%_)
              '#!void))))
    (define slot-set!__0
      (lambda (_%obj140197%_ _%slot140198%_ _%val140199%_)
        (let ((_%E140201%_ __slot-error))
          (slot-set!__%
           _%obj140197%_
           _%slot140198%_
           _%val140199%_
           _%E140201%_))))
    (define slot-set!
      (lambda _g146332_
        (let ((_g146333_ (let () (declare (not safe)) (##length _g146332_))))
          (cond ((let () (declare (not safe)) (##fx= _g146333_ 3))
                 (apply slot-set!__0 _g146332_))
                ((let () (declare (not safe)) (##fx= _g146333_ 4))
                 (apply slot-set!__% _g146332_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  slot-set!
                  _g146332_))))))
    (define __subclass?
      (lambda (_%maybe-sub-class140138%_ _%maybe-super-class140139%_)
        (let* ((_%maybe-sub-class140142%_ _%maybe-sub-class140138%_)
               (_%maybe-super-class140150%_ _%maybe-super-class140139%_)
               (_%maybe-super-class-id140159%_
                (let ()
                  (declare (not safe))
                  (##type-id _%maybe-super-class140150%_)))
               (_%$e140161%_
                (eq? _%maybe-super-class-id140159%_
                     (let ()
                       (declare (not safe))
                       (##type-id _%maybe-sub-class140142%_)))))
          (if _%$e140161%_
              _%$e140161%_
              (let ((__tmp146335
                     (lambda (_%super-class140164%_)
                       (eq? (let ()
                              (declare (not safe))
                              (##type-id _%super-class140164%_))
                            _%maybe-super-class-id140159%_)))
                    (__tmp146334
                     (let ()
                       (declare (not safe))
                       (##unchecked-structure-ref
                        _%maybe-sub-class140142%_
                        '6
                        '#f
                        '#f))))
                (declare (not safe))
                (ormap__0 __tmp146335 __tmp146334))))))
    (define subclass?
      (lambda (_%maybe-sub-class140113%_ _%maybe-super-class140114%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%maybe-sub-class140113%_ 'class))
            (let ((_%maybe-sub-class140118%_ _%maybe-sub-class140113%_))
              (if (let ()
                    (declare (not safe))
                    (##structure-instance-of?
                     _%maybe-super-class140114%_
                     'class))
                  (let ((_%maybe-super-class140128%_
                         _%maybe-super-class140114%_))
                    (__subclass?
                     _%maybe-sub-class140118%_
                     _%maybe-super-class140128%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@777.45-777.62"
                     'contract:
                     'class-type?
                     'value:
                     _%maybe-super-class140114%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@777.18-777.33"
               'contract:
               'class-type?
               'value:
               _%maybe-sub-class140113%_)
              '#!void))))
    (define object?
      (lambda (_%o140110%_)
        (if (let () (declare (not safe)) (##structure? _%o140110%_))
            (let ((__tmp146336
                   (let ()
                     (declare (not safe))
                     (##structure-type _%o140110%_))))
              (declare (not safe))
              (##structure-instance-of? __tmp146336 'class))
            '#f)))
    (define __direct-instance?
      (lambda (_%klass140097%_ _%obj140098%_)
        (let* ((_%klass140101%_ _%klass140097%_)
               (__tmp146337
                (let () (declare (not safe)) (##type-id _%klass140101%_))))
          (declare (not safe))
          (##structure-direct-instance-of? _%obj140098%_ __tmp146337))))
    (define direct-instance?
      (lambda (_%klass140082%_ _%obj140083%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140082%_ 'class))
            (let ((_%klass140087%_ _%klass140082%_))
              (__direct-instance? _%klass140087%_ _%obj140083%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@791.25-791.30"
               'contract:
               'class-type?
               'value:
               _%klass140082%_)
              '#!void))))
    (define __struct-instance?
      (lambda (_%klass140069%_ _%obj140070%_)
        (let* ((_%klass140073%_ _%klass140069%_)
               (__tmp146338
                (let () (declare (not safe)) (##type-id _%klass140073%_))))
          (declare (not safe))
          (##structure-instance-of? _%obj140070%_ __tmp146338))))
    (define struct-instance?
      (lambda (_%klass140054%_ _%obj140055%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass140054%_ 'class))
            (let ((_%klass140059%_ _%klass140054%_))
              (__struct-instance? _%klass140059%_ _%obj140055%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@803.25-803.30"
               'contract:
               'class-type?
               'value:
               _%klass140054%_)
              '#!void))))
    (define __class-instance?
      (lambda (_%klass140006%_ _%obj140007%_)
        (let* ((_%klass140010%_ _%klass140006%_)
               (_%type140019%_ (class-of _%obj140007%_))
               (_%maybe-sub-class140021%_ _%type140019%_)
               (_%maybe-super-class140024%_ _%klass140010%_)
               (_%maybe-sub-class140029%_ _%maybe-sub-class140021%_)
               (_%maybe-super-class140044%_ _%maybe-super-class140024%_))
          (__subclass?
           _%maybe-sub-class140029%_
           _%maybe-super-class140044%_))))
    (define class-instance?
      (lambda (_%klass139991%_ _%obj139992%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139991%_ 'class))
            (let ((_%klass139996%_ _%klass139991%_))
              (__class-instance? _%klass139996%_ _%obj139992%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@815.24-815.29"
               'contract:
               'class-type?
               'value:
               _%klass139991%_)
              '#!void))))
    (define __make-object
      (lambda (_%klass139950%_ _%k139951%_)
        (let* ((_%klass139954%_ _%klass139950%_) (_%k139962%_ _%k139951%_))
          (if (let* ((_%klass139971%_ _%klass139954%_)
                     (_%klass139976%_ _%klass139971%_))
                (__class-type-system? _%klass139976%_))
              (begin
                (error '"cannot instantiate system class"
                       'class:
                       _%klass139954%_)
                '#!void)
              (let ((_%obj139989%_
                     (let ()
                       (declare (not safe))
                       (##make-structure _%klass139954%_ _%k139962%_))))
                (__object-fill! _%obj139989%_ '#f))))))
    (define make-object
      (lambda (_%klass139925%_ _%k139926%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139925%_ 'class))
            (let ((_%klass139930%_ _%klass139925%_))
              (if (fixnum? _%k139926%_)
                  (let ((_%k139940%_ _%k139926%_))
                    (__make-object _%klass139930%_ _%k139940%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@820.37-820.38"
                     'contract:
                     'fixnum?
                     'value:
                     _%k139926%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@820.20-820.25"
               'contract:
               'class-type?
               'value:
               _%klass139925%_)
              '#!void))))
    (define __object-class
      (lambda (_%obj139913%_)
        (let ((_%obj139916%_ _%obj139913%_))
          (declare (not safe))
          (##structure-type _%obj139916%_))))
    (define object-class
      (lambda (_%obj139899%_)
        (if (object? _%obj139899%_)
            (let ((_%obj139903%_ _%obj139899%_))
              (__object-class _%obj139903%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@840.21-840.24"
               'contract:
               'object?
               'value:
               _%obj139899%_)
              '#!void))))
    (define __object-fill!
      (lambda (_%obj139881%_ _%fill139882%_)
        (let ((_%obj139885%_ _%obj139881%_))
          (let _%loop139894%_ ((_%i139896%_
                                (let ((__tmp146339
                                       (let ()
                                         (declare (not safe))
                                         (##structure-length _%obj139885%_))))
                                  (declare (not safe))
                                  (##fx- __tmp146339 '1))))
            (if (let () (declare (not safe)) (##fx> _%i139896%_ '0))
                (begin
                  (let ()
                    (declare (not safe))
                    (##unchecked-structure-set!
                     _%obj139885%_
                     _%fill139882%_
                     _%i139896%_
                     '#f
                     '#f))
                  (_%loop139894%_
                   (let () (declare (not safe)) (##fx- _%i139896%_ '1))))
                _%obj139885%_)))))
    (define object-fill!
      (lambda (_%obj139866%_ _%fill139867%_)
        (if (object? _%obj139866%_)
            (let ((_%obj139871%_ _%obj139866%_))
              (__object-fill! _%obj139871%_ _%fill139867%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@845.21-845.24"
               'contract:
               'object?
               'value:
               _%obj139866%_)
              '#!void))))
    (define __new-instance
      (lambda (_%klass139822%_)
        (let* ((_%klass139825%_ _%klass139822%_)
               (_%klass139834%_ _%klass139825%_)
               (_%k139837%_
                (let ((__tmp146340
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass139825%_
                          '7
                          '#f
                          '#f))))
                  (declare (not safe))
                  (##vector-length __tmp146340)))
               (_%klass139842%_ _%klass139834%_)
               (_%k139856%_ _%k139837%_))
          (__make-object _%klass139842%_ _%k139856%_))))
    (define new-instance
      (lambda (_%klass139808%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139808%_ 'class))
            (let ((_%klass139812%_ _%klass139808%_))
              (__new-instance _%klass139812%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@856.21-856.26"
               'contract:
               'class-type?
               'value:
               _%klass139808%_)
              '#!void))))
    (define __make-instance
      (lambda (_%klass139667%_ . _%args139668%_)
        (let* ((_%klass139671%_ _%klass139667%_)
               (_%$e139680%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass139671%_ '10 '#f '#f))))
          (if _%$e139680%_
              (let ((_%obj139705%_
                     (let* ((_%klass139685%_ _%klass139671%_)
                            (_%klass139690%_ _%klass139685%_))
                       (__new-instance _%klass139690%_))))
                (___constructor-init!
                 _%klass139671%_
                 _%$e139680%_
                 _%obj139705%_
                 _%args139668%_)
                _%obj139705%_)
              (if (let* ((_%klass139707%_ _%klass139671%_)
                         (_%klass139712%_ _%klass139707%_))
                    (__class-type-metaclass? _%klass139712%_))
                  (let ((_%obj139739%_
                         (let* ((_%klass139723%_ _%klass139671%_)
                                (_%klass139728%_ _%klass139723%_))
                           (__new-instance _%klass139728%_))))
                    (__metaclass-instance-init!
                     _%klass139671%_
                     _%obj139739%_
                     _%args139668%_)
                    _%obj139739%_)
                  (if (let* ((_%klass139741%_ _%klass139671%_)
                             (_%klass139746%_ _%klass139741%_))
                        (__class-type-struct? _%klass139746%_))
                      (if (let ((__tmp146342
                                 (let* ((_%klass139775%_ _%klass139671%_)
                                        (_%klass139780%_ _%klass139775%_))
                                   (__class-type-field-count _%klass139780%_)))
                                (__tmp146341
                                 (let ()
                                   (declare (not safe))
                                   (##length _%args139668%_))))
                            (declare (not safe))
                            (##fx= __tmp146342 __tmp146341))
                          (apply ##structure _%klass139671%_ _%args139668%_)
                          (let ()
                            (error '"arguments don't match object size"
                                   'class:
                                   _%klass139671%_
                                   'slots:
                                   (let* ((_%klass139792%_ _%klass139671%_)
                                          (_%klass139797%_ _%klass139792%_))
                                     (__class-type-slot-list _%klass139797%_))
                                   'args:
                                   _%args139668%_)
                            '#!void))
                      (let ((_%obj139773%_
                             (let* ((_%klass139757%_ _%klass139671%_)
                                    (_%klass139762%_ _%klass139757%_))
                               (__new-instance _%klass139762%_))))
                        (___class-instance-init!
                         _%klass139671%_
                         _%obj139773%_
                         _%args139668%_)
                        _%obj139773%_)))))))
    (define make-instance
      (lambda (_%klass139652%_ . _%args139653%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139652%_ 'class))
            (let ((_%klass139657%_ _%klass139652%_))
              (declare (not safe))
              (##apply __make-instance _%klass139657%_ _%args139653%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@859.22-859.27"
               'contract:
               'class-type?
               'value:
               _%klass139652%_)
              '#!void))))
    (define make-class-instance make-instance)
    (define __struct-instance-init!
      (lambda (_%obj139639%_ . _%args139640%_)
        (let ((_%obj139643%_ _%obj139639%_))
          (if (let ((__tmp146344
                     (let () (declare (not safe)) (##length _%args139640%_)))
                    (__tmp146343
                     (let ()
                       (declare (not safe))
                       (##structure-length _%obj139643%_))))
                (declare (not safe))
                (##fx< __tmp146344 __tmp146343))
              (___struct-instance-init! _%obj139643%_ _%args139640%_)
              (error '"too many arguments for struct"
                     'object:
                     _%obj139643%_
                     'args:
                     _%args139640%_))
          '#!void)))
    (define struct-instance-init!
      (lambda (_%obj139624%_ . _%args139625%_)
        (if (object? _%obj139624%_)
            (let ((_%obj139629%_ _%obj139624%_))
              (declare (not safe))
              (##apply __struct-instance-init! _%obj139629%_ _%args139625%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@884.30-884.33"
               'contract:
               'object?
               'value:
               _%obj139624%_)
              '#!void))))
    (define ___struct-instance-init!
      (lambda (_%obj139583%_ _%args139584%_)
        (let _%lp139586%_ ((_%k139588%_ '1) (_%rest139589%_ _%args139584%_))
          (let* ((_%$%rest139590139598%_ _%rest139589%_)
                 (_%$%else139592139606%_ (lambda () _%obj139583%_))
                 (_%$%K139594139612%_
                  (lambda (_%rest139609%_ _%hd139610%_)
                    (unchecked-field-set!
                     _%obj139583%_
                     _%k139588%_
                     _%hd139610%_)
                    (_%lp139586%_
                     (let () (declare (not safe)) (##fx+ _%k139588%_ '1))
                     _%rest139609%_))))
            (if (pair? _%$%rest139590139598%_)
                (let ((_%$%hd139595139615%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest139590139598%_)))
                      (_%$%tl139596139617%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest139590139598%_))))
                  (let* ((_%hd139620%_ _%$%hd139595139615%_)
                         (_%rest139622%_ _%$%tl139596139617%_))
                    (_%$%K139594139612%_ _%rest139622%_ _%hd139620%_)))
                (_%$%else139592139606%_))))))
    (define __class-instance-init!
      (lambda (_%obj139570%_ . _%args139571%_)
        (let ((_%obj139574%_ _%obj139570%_))
          (___class-instance-init!
           (let () (declare (not safe)) (##structure-type _%obj139574%_))
           _%obj139574%_
           _%args139571%_)
          '#!void)))
    (define class-instance-init!
      (lambda (_%obj139555%_ . _%args139556%_)
        (if (object? _%obj139555%_)
            (let ((_%obj139560%_ _%obj139555%_))
              (declare (not safe))
              (##apply __class-instance-init! _%obj139560%_ _%args139556%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@924.29-924.32"
               'contract:
               'object?
               'value:
               _%obj139555%_)
              '#!void))))
    (define ___class-instance-init!
      (lambda (_%klass139497%_ _%obj139498%_ _%args139499%_)
        (let _%lp139501%_ ((_%rest139503%_ _%args139499%_))
          (let* ((_%$%rest139504139514%_ _%rest139503%_)
                 (_%$%else139506139522%_
                  (lambda ()
                    (if (null? _%rest139503%_)
                        _%obj139498%_
                        (error '"unexpected class initializer arguments"
                               'class:
                               _%klass139497%_
                               'rest:
                               _%rest139503%_))))
                 (_%$%K139508139536%_
                  (lambda (_%rest139525%_ _%val139526%_ _%key139527%_)
                    (if (keyword? _%key139527%_)
                        (let ((_%$e139530%_
                               (__class-slot-offset
                                _%klass139497%_
                                _%key139527%_)))
                          (if _%$e139530%_
                              (let ()
                                (unchecked-field-set!
                                 _%obj139498%_
                                 _%$e139530%_
                                 _%val139526%_)
                                (_%lp139501%_ _%rest139525%_))
                              (error '"unknown slot"
                                     'class:
                                     _%klass139497%_
                                     'slot:
                                     _%key139527%_)))
                        (error '"non keyword slot initializer"
                               'slot:
                               _%key139527%_)))))
            (if (pair? _%$%rest139504139514%_)
                (let ((_%$%hd139509139539%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%rest139504139514%_)))
                      (_%$%tl139510139541%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%rest139504139514%_))))
                  (let ((_%key139544%_ _%$%hd139509139539%_))
                    (if (pair? _%$%tl139510139541%_)
                        (let ((_%$%hd139511139546%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%tl139510139541%_)))
                              (_%$%tl139512139548%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%tl139510139541%_))))
                          (let* ((_%val139551%_ _%$%hd139511139546%_)
                                 (_%rest139553%_ _%$%tl139512139548%_))
                            (_%$%K139508139536%_
                             _%rest139553%_
                             _%val139551%_
                             _%key139544%_)))
                        (_%$%else139506139522%_))))
                (_%$%else139506139522%_))))))
    (define __metaclass-instance-init!
      (lambda (_%klass139493%_ _%obj139494%_ _%args139495%_)
        (apply call-method
               _%klass139493%_
               'instance-init!
               _%obj139494%_
               _%args139495%_)))
    (define __constructor-init!
      (lambda (_%klass139462%_
               _%kons-id139463%_
               _%obj139464%_
               .
               _%args139465%_)
        (let* ((_%klass139468%_ _%klass139462%_)
               (_%kons-id139476%_ _%kons-id139463%_)
               (_%obj139484%_ _%obj139464%_))
          (___constructor-init!
           _%klass139468%_
           _%kons-id139476%_
           _%obj139484%_
           _%args139465%_)
          '#!void)))
    (define constructor-init!
      (lambda (_%klass139425%_
               _%kons-id139426%_
               _%obj139427%_
               .
               _%args139428%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass139425%_ 'class))
            (let ((_%klass139432%_ _%klass139425%_))
              (if (symbol? _%kons-id139426%_)
                  (let ((_%kons-id139442%_ _%kons-id139426%_))
                    (if (object? _%obj139427%_)
                        (let ((_%obj139452%_ _%obj139427%_))
                          (declare (not safe))
                          (##apply __constructor-init!
                                   _%klass139432%_
                                   _%kons-id139442%_
                                   _%obj139452%_
                                   _%args139428%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/mop.ss\"@948.63-948.66"
                           'contract:
                           'object?
                           'value:
                           _%obj139427%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@948.43-948.50"
                     'contract:
                     'symbol?
                     'value:
                     _%kons-id139426%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@948.26-948.31"
               'contract:
               'class-type?
               'value:
               _%klass139425%_)
              '#!void))))
    (define ___constructor-init!
      (lambda (_%klass139414%_ _%kons-id139415%_ _%obj139416%_ _%args139417%_)
        (let ((_%$e139419%_
               (__find-method
                _%klass139414%_
                _%obj139416%_
                _%kons-id139415%_)))
          (if _%$e139419%_
              (let ()
                (apply _%$e139419%_ _%obj139416%_ _%args139417%_)
                _%obj139416%_)
              (error '"missing constructor"
                     'class:
                     _%klass139414%_
                     'method:
                     _%kons-id139415%_)))))
    (define __struct-copy
      (lambda (_%struct139402%_)
        (let ((_%struct139405%_ _%struct139402%_))
          (declare (not safe))
          (##structure-copy _%struct139405%_))))
    (define struct-copy
      (lambda (_%struct139388%_)
        (if (object? _%struct139388%_)
            (let ((_%struct139392%_ _%struct139388%_))
              (__struct-copy _%struct139392%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@962.20-962.26"
               'contract:
               'object?
               'value:
               _%struct139388%_)
              '#!void))))
    (define __struct->list
      (lambda (_%obj139369%_)
        (let* ((_%obj139372%_ _%obj139369%_)
               (_%len139381%_
                (let ()
                  (declare (not safe))
                  (##structure-length _%obj139372%_))))
          (let _%recur139383%_ ((_%i139385%_ '0))
            (if (let () (declare (not safe)) (##fx< _%i139385%_ _%len139381%_))
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref
                         _%obj139372%_
                         _%i139385%_
                         '#f
                         '#f))
                      (_%recur139383%_
                       (let () (declare (not safe)) (##fx+ _%i139385%_ '1))))
                '())))))
    (define struct->list
      (lambda (_%obj139355%_)
        (if (object? _%obj139355%_)
            (let ((_%obj139359%_ _%obj139355%_))
              (__struct->list _%obj139359%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@965.21-965.24"
               'contract:
               'object?
               'value:
               _%obj139355%_)
              '#!void))))
    (define __class->list
      (lambda (_%obj139307%_)
        (let* ((_%obj139310%_ _%obj139307%_)
               (_%klass139319%_
                (let () (declare (not safe)) (##structure-type _%obj139310%_)))
               (_%slot-vector139321%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass139319%_ '7 '#f '#f))))
          (let _%loop139323%_ ((_%index139325%_
                                (let ((__tmp146345
                                       (let ()
                                         (declare (not safe))
                                         (##vector-length
                                          _%slot-vector139321%_))))
                                  (declare (not safe))
                                  (##fx- __tmp146345 '1)))
                               (_%plist139326%_ '()))
            (if (let () (declare (not safe)) (##fx< _%index139325%_ '1))
                (cons _%klass139319%_ _%plist139326%_)
                (let ((_%slot139329%_
                       (let ()
                         (declare (not safe))
                         (##vector-ref
                          _%slot-vector139321%_
                          _%index139325%_))))
                  (_%loop139323%_
                   (let () (declare (not safe)) (##fx- _%index139325%_ '1))
                   (cons (let ((_%sym139331%_ _%slot139329%_))
                           (if (symbol? _%sym139331%_)
                               (let ((_%sym139336%_ _%sym139331%_))
                                 (declare (not safe))
                                 (__symbol->keyword _%sym139336%_))
                               (begin
                                 (raise-contract-violation-error
                                  '"contract violation"
                                  'context:
                                  'gerbil/runtime/mop
                                  'contract:
                                  'symbol?
                                  'value:
                                  _%sym139331%_)
                                 '#!void)))
                         (cons (unchecked-field-ref
                                _%obj139310%_
                                _%index139325%_)
                               _%plist139326%_)))))))))
    (define class->list
      (lambda (_%obj139293%_)
        (if (object? _%obj139293%_)
            (let ((_%obj139297%_ _%obj139293%_)) (__class->list _%obj139297%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@973.20-973.23"
               'contract:
               'object?
               'value:
               _%obj139293%_)
              '#!void))))
    (define __call-method
      (lambda (_%obj139243%_ _%id139244%_ . _%args139245%_)
        (let* ((_%id139248%_ _%id139244%_)
               (_%$e139279%_
                (let* ((_%obj139257%_ _%obj139243%_)
                       (_%id139260%_ _%id139248%_)
                       (_%id139265%_ _%id139260%_))
                  (__method-ref _%obj139257%_ _%id139265%_))))
          (if _%$e139279%_
              (let ((_%method139284%_ _%$e139279%_))
                (apply _%method139284%_ _%obj139243%_ _%args139245%_))
              (error '"cannot find method"
                     'object:
                     _%obj139243%_
                     'method:
                     _%id139248%_)))))
    (define call-method
      (lambda (_%obj139227%_ _%id139228%_ . _%args139229%_)
        (if (symbol? _%id139228%_)
            (let ((_%id139233%_ _%id139228%_))
              (declare (not safe))
              (##apply __call-method
                       _%obj139227%_
                       _%id139233%_
                       _%args139229%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@988.24-988.26"
               'contract:
               'symbol?
               'value:
               _%id139228%_)
              '#!void))))
    (define __method-ref
      (lambda (_%obj139178%_ _%id139179%_)
        (let* ((_%id139182%_ _%id139179%_)
               (_%klass139191%_ (class-of _%obj139178%_))
               (_%obj139194%_ _%obj139178%_)
               (_%id139197%_ _%id139182%_)
               (_%klass139202%_ _%klass139191%_)
               (_%id139217%_ _%id139197%_))
          (__find-method _%klass139202%_ _%obj139194%_ _%id139217%_))))
    (define method-ref
      (lambda (_%obj139163%_ _%id139164%_)
        (if (symbol? _%id139164%_)
            (let ((_%id139168%_ _%id139164%_))
              (__method-ref _%obj139163%_ _%id139168%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1015.23-1015.25"
               'contract:
               'symbol?
               'value:
               _%id139164%_)
              '#!void))))
    (define checked-method-ref
      (lambda (_%obj139135%_ _%id139136%_)
        (let ((_%$e139160%_
               (let* ((_%obj139139%_ _%obj139135%_)
                      (_%id139142%_ _%id139136%_))
                 (if (symbol? _%id139142%_)
                     (let ((_%id139147%_ _%id139142%_))
                       (__method-ref _%obj139139%_ _%id139147%_))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id139142%_)
                       '#!void)))))
          (if _%$e139160%_
              _%$e139160%_
              (begin
                (error '"missing method"
                       'object:
                       _%obj139135%_
                       'method:
                       _%id139136%_)
                '#!void)))))
    (define __bound-method-ref
      (lambda (_%obj139084%_ _%id139085%_)
        (let* ((_%id139088%_ _%id139085%_)
               (_%$e139119%_
                (let* ((_%obj139097%_ _%obj139084%_)
                       (_%id139100%_ _%id139088%_)
                       (_%id139105%_ _%id139100%_))
                  (__method-ref _%obj139097%_ _%id139105%_))))
          (if _%$e139119%_
              (let ((_%method139124%_ _%$e139119%_))
                (lambda _%args139132%_
                  (apply _%method139124%_ _%obj139084%_ _%args139132%_)))
              '#f))))
    (define bound-method-ref
      (lambda (_%obj139069%_ _%id139070%_)
        (if (symbol? _%id139070%_)
            (let ((_%id139074%_ _%id139070%_))
              (__bound-method-ref _%obj139069%_ _%id139074%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1023.29-1023.31"
               'contract:
               'symbol?
               'value:
               _%id139070%_)
              '#!void))))
    (define __checked-bound-method-ref
      (lambda (_%obj139052%_ _%id139053%_)
        (let* ((_%id139056%_ _%id139053%_)
               (_%method139065%_
                (checked-method-ref _%obj139052%_ _%id139056%_)))
          (lambda _%args139067%_
            (apply _%method139065%_ _%obj139052%_ _%args139067%_)))))
    (define checked-bound-method-ref
      (lambda (_%obj139037%_ _%id139038%_)
        (if (symbol? _%id139038%_)
            (let ((_%id139042%_ _%id139038%_))
              (__checked-bound-method-ref _%obj139037%_ _%id139042%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1032.37-1032.39"
               'contract:
               'symbol?
               'value:
               _%id139038%_)
              '#!void))))
    (define __find-method
      (lambda (_%klass138906%_ _%obj138907%_ _%id138908%_)
        (let* ((_%klass138911%_ _%klass138906%_) (_%id138919%_ _%id138908%_))
          (if (let* ((_%klass138928%_ _%klass138911%_)
                     (_%klass138933%_ _%klass138928%_))
                (__class-type-sealed? _%klass138933%_))
              (let ((_%tab138963%_
                     (let* ((_%klass138947%_ _%klass138911%_)
                            (_%klass138952%_ _%klass138947%_))
                       (__specialize-class _%klass138952%_))))
                (declare (not safe))
                (symbolic-table-ref _%tab138963%_ _%id138919%_ '#f))
              (let ((_%$e138998%_
                     (let* ((_%klass138965%_ _%klass138911%_)
                            (_%obj138968%_ _%obj138907%_)
                            (_%id138971%_ _%id138919%_)
                            (_%klass138976%_ _%klass138965%_)
                            (_%id138988%_ _%id138971%_))
                       (__direct-method-ref
                        _%klass138976%_
                        _%obj138968%_
                        _%id138988%_))))
                (if _%$e138998%_
                    _%$e138998%_
                    (let* ((_%klass139002%_ _%klass138911%_)
                           (_%obj139005%_ _%obj138907%_)
                           (_%id139008%_ _%id138919%_)
                           (_%klass139013%_ _%klass139002%_)
                           (_%id139027%_ _%id139008%_))
                      (__mixin-method-ref
                       _%klass139013%_
                       _%obj139005%_
                       _%id139027%_))))))))
    (define find-method
      (lambda (_%klass138880%_ _%obj138881%_ _%id138882%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138880%_ 'class))
            (let ((_%klass138886%_ _%klass138880%_))
              (if (symbol? _%id138882%_)
                  (let ((_%id138896%_ _%id138882%_))
                    (__find-method _%klass138886%_ _%obj138881%_ _%id138896%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1037.41-1037.43"
                     'contract:
                     'symbol?
                     'value:
                     _%id138882%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1037.20-1037.25"
               'contract:
               'class-type?
               'value:
               _%klass138880%_)
              '#!void))))
    (define __mixin-find-method
      (lambda (_%mixins138825%_ _%obj138826%_ _%id138827%_)
        (let* ((_%id138830%_ _%id138827%_)
               (__tmp146346
                (lambda (_%$%g138838138840%_)
                  (let* ((_%klass138843%_ _%$%g138838138840%_)
                         (_%obj138846%_ _%obj138826%_)
                         (_%id138849%_ _%id138830%_))
                    (if (let ()
                          (declare (not safe))
                          (##structure-instance-of? _%klass138843%_ 'class))
                        (let* ((_%klass138854%_ _%klass138843%_)
                               (_%id138870%_ _%id138849%_))
                          (__direct-method-ref
                           _%klass138854%_
                           _%obj138846%_
                           _%id138870%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           'gerbil/runtime/mop
                           'contract:
                           'class-type?
                           'value:
                           _%klass138843%_)
                          '#!void))))))
          (declare (not safe))
          (ormap__0 __tmp146346 _%mixins138825%_))))
    (define mixin-find-method
      (lambda (_%mixins138809%_ _%obj138810%_ _%id138811%_)
        (if (symbol? _%id138811%_)
            (let ((_%id138815%_ _%id138811%_))
              (__mixin-find-method
               _%mixins138809%_
               _%obj138810%_
               _%id138815%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1046.37-1046.39"
               'contract:
               'symbol?
               'value:
               _%id138811%_)
              '#!void))))
    (define __direct-method-ref
      (lambda (_%klass138702%_ _%obj138703%_ _%id138704%_)
        (let* ((_%klass138707%_ _%klass138702%_) (_%id138715%_ _%id138704%_))
          (letrec ((_%metaclass-resolve-method138724%_
                    (lambda ()
                      (let* ((_%obj138785%_ _%klass138707%_)
                             (_%id138788%_ 'direct-method-ref)
                             (_%args138791%_ (list _%obj138703%_ _%id138715%_))
                             (_%id138796%_ _%id138788%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj138785%_
                                 _%id138796%_
                                 _%args138791%_))))
                   (_%metaclass-resolve-method!138725%_
                    (lambda ()
                      (let ((_%method138782%_
                             (_%metaclass-resolve-method138724%_)))
                        (let ((__tmp146348
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass138707%_
                                  '11
                                  '#f
                                  '#f)))
                              (__tmp146347
                               (if _%method138782%_ 'resolved 'unknown)))
                          (declare (not safe))
                          (symbolic-table-set!
                           __tmp146348
                           _%id138715%_
                           __tmp146347))
                        _%method138782%_))))
            (let ((_%$e138727%_
                   (let ()
                     (declare (not safe))
                     (##unchecked-structure-ref _%klass138707%_ '11 '#f '#f))))
              (if _%$e138727%_
                  (let ((_%method138732%_
                         (let ()
                           (declare (not safe))
                           (symbolic-table-ref
                            _%$e138727%_
                            _%id138715%_
                            '#f))))
                    (if (procedure? _%method138732%_)
                        _%method138732%_
                        (if (let* ((_%klass138735%_ _%klass138707%_)
                                   (_%klass138740%_ _%klass138735%_))
                              (__class-type-metaclass? _%klass138740%_))
                            (let ((_%$e138758%_ _%method138732%_))
                              (if (eq? 'resolved _%$e138758%_)
                                  (_%metaclass-resolve-method138724%_)
                                  (if (eq? 'unknown _%$e138758%_)
                                      '#f
                                      (_%metaclass-resolve-method!138725%_))))
                            '#f)))
                  (if (let* ((_%klass138762%_ _%klass138707%_)
                             (_%klass138767%_ _%klass138762%_))
                        (__class-type-metaclass? _%klass138767%_))
                      (let ((_%tab138778%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass138707%_
                           _%tab138778%_
                           '11
                           '#f
                           '#f))
                        (_%metaclass-resolve-method!138725%_))
                      '#f)))))))
    (define direct-method-ref
      (lambda (_%klass138676%_ _%obj138677%_ _%id138678%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138676%_ 'class))
            (let ((_%klass138682%_ _%klass138676%_))
              (if (symbol? _%id138678%_)
                  (let ((_%id138692%_ _%id138678%_))
                    (__direct-method-ref
                     _%klass138682%_
                     _%obj138677%_
                     _%id138692%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1049.47-1049.49"
                     'contract:
                     'symbol?
                     'value:
                     _%id138678%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1049.26-1049.31"
               'contract:
               'class-type?
               'value:
               _%klass138676%_)
              '#!void))))
    (define __mixin-method-ref
      (lambda (_%klass138628%_ _%obj138629%_ _%id138630%_)
        (let* ((_%klass138633%_ _%klass138628%_)
               (_%id138641%_ _%id138630%_)
               (_%mixins138650%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass138633%_ '6 '#f '#f)))
               (_%obj138653%_ _%obj138629%_)
               (_%id138656%_ _%id138641%_)
               (_%id138661%_ _%id138656%_))
          (__mixin-find-method _%mixins138650%_ _%obj138653%_ _%id138661%_))))
    (define mixin-method-ref
      (lambda (_%klass138602%_ _%obj138603%_ _%id138604%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138602%_ 'class))
            (let ((_%klass138608%_ _%klass138602%_))
              (if (symbol? _%id138604%_)
                  (let ((_%id138618%_ _%id138604%_))
                    (__mixin-method-ref
                     _%klass138608%_
                     _%obj138603%_
                     _%id138618%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1079.46-1079.48"
                     'contract:
                     'symbol?
                     'value:
                     _%id138604%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1079.25-1079.30"
               'contract:
               'class-type?
               'value:
               _%klass138602%_)
              '#!void))))
    (define __bind-method!__%
      (lambda (_%klass138483%_ _%id138484%_ _%proc138485%_ _%rebind?138486%_)
        (let* ((_%id138489%_ _%id138484%_) (_%proc138497%_ _%proc138485%_))
          (letrec ((_%flush-caches!138506%_
                    (lambda (_%klass138560%_)
                      (if (let ()
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%klass138560%_
                             '12
                             '#f
                             '#f))
                          (begin
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-set!
                               _%klass138560%_
                               '#f
                               '12
                               '#f
                               '#f))
                            (if (let ((_%klass138562%_ _%klass138560%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%klass138562%_
                                         'class))
                                      (let ((_%klass138567%_ _%klass138562%_))
                                        (__class-type-sealed? _%klass138567%_))
                                      (begin
                                        (raise-contract-violation-error
                                         '"contract violation"
                                         'context:
                                         'gerbil/runtime/mop
                                         'contract:
                                         'class-type?
                                         'value:
                                         _%klass138562%_)
                                        '#!void)))
                                (let ((__tmp146349
                                       (let ((__tmp146351
                                              (let ()
                                                (declare (not safe))
                                                (##fxnot class-type-flag-sealed)))
                                             (__tmp146350
                                              (let ()
                                                (declare (not safe))
                                                (##type-flags
                                                 _%klass138560%_))))
                                         (declare (not safe))
                                         (##fxand __tmp146351 __tmp146350))))
                                  (declare (not safe))
                                  (##unchecked-structure-set!
                                   _%klass138560%_
                                   __tmp146349
                                   '3
                                   class::t
                                   bind-method!))
                                '#!void))
                          '#!void)
                      (if (and _%rebind?138486%_
                               (let ()
                                 (declare (not safe))
                                 (##unchecked-structure-ref
                                  _%klass138560%_
                                  '13
                                  '#f
                                  '#f)))
                          (let ()
                            (declare (not safe))
                            (##unchecked-structure-set!
                             _%klass138560%_
                             '#f
                             '13
                             '#f
                             '#f))
                          '#!void)
                      (let ((_%$e138578%_
                             (let ()
                               (declare (not safe))
                               (##unchecked-structure-ref
                                _%klass138560%_
                                '9
                                '#f
                                '#f))))
                        (if _%$e138578%_
                            (let ((_%$e138583%_
                                   (let ()
                                     (declare (not safe))
                                     (agetq__0 'subclasses: _%$e138578%_))))
                              (if _%$e138583%_
                                  (for-each
                                   _%flush-caches!138506%_
                                   _%$e138583%_)
                                  '#!void))
                            '#!void))))
                   (_%bind!138507%_
                    (lambda (_%ht138558%_)
                      (if (and (not _%rebind?138486%_)
                               (let ()
                                 (declare (not safe))
                                 (symbolic-table-ref
                                  _%ht138558%_
                                  _%id138489%_
                                  '#f)))
                          (error '"method already bound"
                                 'class:
                                 _%klass138483%_
                                 'method:
                                 _%id138489%_)
                          (begin
                            (let ()
                              (declare (not safe))
                              (symbolic-table-set!
                               _%ht138558%_
                               _%id138489%_
                               _%proc138497%_))
                            (_%flush-caches!138506%_ _%klass138483%_)
                            '#!void)))))
            (if (let ()
                  (declare (not safe))
                  (##structure-instance-of? _%klass138483%_ 'class))
                (let ((_%ht138510%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%klass138483%_
                          '11
                          '#f
                          '#f))))
                  (if _%ht138510%_
                      (_%bind!138507%_ _%ht138510%_)
                      (let ((_%ht138512%_
                             (let ()
                               (declare (not safe))
                               (make-symbolic-table__% '#f '0))))
                        (let ()
                          (declare (not safe))
                          (##unchecked-structure-set!
                           _%klass138483%_
                           _%ht138512%_
                           '11
                           '#f
                           '#f))
                        (_%bind!138507%_ _%ht138512%_))))
                (if (let () (declare (not safe)) (##type? _%klass138483%_))
                    (let* ((_%klass138515%_
                            (__shadow-class__0 _%klass138483%_))
                           (_%id138518%_ _%id138489%_)
                           (_%proc138521%_ _%proc138497%_)
                           (_%rebind?138524%_ _%rebind?138486%_)
                           (_%id138529%_ _%id138518%_)
                           (_%proc138547%_ _%proc138521%_))
                      (__bind-method!__%
                       _%klass138515%_
                       _%id138529%_
                       _%proc138547%_
                       _%rebind?138524%_))
                    (error '"bad class; expected class or builtin type"
                           _%klass138483%_)))))))
    (define __bind-method!__0
      (lambda (_%klass138591%_ _%id138592%_ _%proc138593%_)
        (let ((_%rebind?138595%_ '#f))
          (__bind-method!__%
           _%klass138591%_
           _%id138592%_
           _%proc138593%_
           _%rebind?138595%_))))
    (define __bind-method!
      (lambda _g146352_
        (let ((_g146353_ (let () (declare (not safe)) (##length _g146352_))))
          (cond ((let () (declare (not safe)) (##fx= _g146353_ 3))
                 (apply __bind-method!__0 _g146352_))
                ((let () (declare (not safe)) (##fx= _g146353_ 4))
                 (apply __bind-method!__% _g146352_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __bind-method!
                  _g146352_))))))
    (define bind-method!__%
      (lambda (_%klass138441%_ _%id138442%_ _%proc138443%_ _%rebind?138444%_)
        (if (symbol? _%id138442%_)
            (let ((_%id138448%_ _%id138442%_))
              (if (procedure? _%proc138443%_)
                  (let ((_%proc138458%_ _%proc138443%_))
                    (__bind-method!__%
                     _%klass138441%_
                     _%id138448%_
                     _%proc138458%_
                     _%rebind?138444%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1082.42-1082.46"
                     'contract:
                     'procedure?
                     'value:
                     _%proc138443%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1082.27-1082.29"
               'contract:
               'symbol?
               'value:
               _%id138442%_)
              '#!void))))
    (define bind-method!__0
      (lambda (_%klass138471%_ _%id138472%_ _%proc138473%_)
        (let ((_%rebind?138475%_ '#f))
          (bind-method!__%
           _%klass138471%_
           _%id138472%_
           _%proc138473%_
           _%rebind?138475%_))))
    (define bind-method!
      (lambda _g146354_
        (let ((_g146355_ (let () (declare (not safe)) (##length _g146354_))))
          (cond ((let () (declare (not safe)) (##fx= _g146355_ 3))
                 (apply bind-method!__0 _g146354_))
                ((let () (declare (not safe)) (##fx= _g146355_ 4))
                 (apply bind-method!__% _g146354_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  bind-method!
                  _g146354_))))))
    (define make-method-specializer-table__%
      (lambda (_%size-hint138422%_ _%seed138423%_)
        (let ()
          (declare (not safe))
          (make-raw-table__1
           _%size-hint138422%_
           procedure-hash
           eq?
           _%seed138423%_))))
    (define make-method-specializer-table__0
      (lambda ()
        (let* ((_%size-hint138429%_ '#f) (_%seed138431%_ '0))
          (make-method-specializer-table__%
           _%size-hint138429%_
           _%seed138431%_))))
    (define make-method-specializer-table__1
      (lambda (_%size-hint138433%_)
        (let ((_%seed138435%_ '0))
          (make-method-specializer-table__%
           _%size-hint138433%_
           _%seed138435%_))))
    (define make-method-specializer-table
      (lambda _g146356_
        (let ((_g146357_ (let () (declare (not safe)) (##length _g146356_))))
          (cond ((let () (declare (not safe)) (##fx= _g146357_ 0))
                 (apply make-method-specializer-table__0 _g146356_))
                ((let () (declare (not safe)) (##fx= _g146357_ 1))
                 (apply make-method-specializer-table__1 _g146356_))
                ((let () (declare (not safe)) (##fx= _g146357_ 2))
                 (apply make-method-specializer-table__% _g146356_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table
                  _g146356_))))))
    (define make-method-specializer-table/lock__%
      (lambda (_%size-hint138402%_ _%seed138404%_)
        (let ()
          (declare (not safe))
          (make-raw-table/lock__%
           _%size-hint138402%_
           procedure-hash
           eq?
           _%seed138404%_))))
    (define make-method-specializer-table/lock__0
      (lambda ()
        (let* ((_%size-hint138410%_ '#f) (_%seed138412%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint138410%_
           _%seed138412%_))))
    (define make-method-specializer-table/lock__1
      (lambda (_%size-hint138414%_)
        (let ((_%seed138416%_ '0))
          (make-method-specializer-table/lock__%
           _%size-hint138414%_
           _%seed138416%_))))
    (define make-method-specializer-table/lock
      (lambda _g146358_
        (let ((_g146359_ (let () (declare (not safe)) (##length _g146358_))))
          (cond ((let () (declare (not safe)) (##fx= _g146359_ 0))
                 (apply make-method-specializer-table/lock__0 _g146358_))
                ((let () (declare (not safe)) (##fx= _g146359_ 1))
                 (apply make-method-specializer-table/lock__1 _g146358_))
                ((let () (declare (not safe)) (##fx= _g146359_ 2))
                 (apply make-method-specializer-table/lock__% _g146358_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  make-method-specializer-table/lock
                  _g146358_))))))
    (define method-specializer-table-ref
      (lambda (_%tab138355%_ _%key138356%_ _%default138357%_)
        (let ((_%table138359%_
               (let () (declare (not safe)) (&raw-table-table _%tab138355%_)))
              (_%seed138360%_
               (let () (declare (not safe)) (&raw-table-seed _%tab138355%_))))
          (let* ((_%h138362%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key138356%_))
                         _%seed138360%_))
                 (_%size138365%_ (vector-length _%table138359%_))
                 (_%entries138368%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size138365%_ '2)))
                 (_%start138371%_
                  (let ((__tmp146360
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h138362%_ _%entries138368%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp146360 '1))))
            (let _%loop138375%_ ((_%probe138378%_ _%start138371%_)
                                 (_%i138380%_ '1)
                                 (_%deleted138382%_ '#f))
              (let ((_%k138385%_ (vector-ref _%table138359%_ _%probe138378%_)))
                (if (eq? _%k138385%_ (macro-unused-obj))
                    _%default138357%_
                    (if (eq? _%k138385%_ (macro-deleted-obj))
                        (_%loop138375%_
                         (let ((_%next-probe138390%_
                                (fx+ _%start138371%_
                                     _%i138380%_
                                     (fx* _%i138380%_ _%i138380%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe138390%_ _%size138365%_))
                         (let () (declare (not safe)) (##fx+ _%i138380%_ '1))
                         (let ((_%$e138393%_ _%deleted138382%_))
                           (if _%$e138393%_ _%$e138393%_ _%probe138378%_)))
                        (if (eq? _%key138356%_ _%k138385%_)
                            (vector-ref
                             _%table138359%_
                             (let ()
                               (declare (not safe))
                               (##fx+ _%probe138378%_ '1)))
                            (_%loop138375%_
                             (let ((_%next-probe138398%_
                                    (fx+ _%start138371%_
                                         _%i138380%_
                                         (fx* _%i138380%_ _%i138380%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe138398%_
                                _%size138365%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i138380%_ '1))
                             _%deleted138382%_))))))))))
    (define method-specializer-table-ref/lock
      (lambda (_%tab138326%_ _%key138327%_ _%default138328%_)
        (let ((_%lock138330%_
               (let () (declare (not safe)) (&raw-table-lock _%tab138326%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again138335%_ ((_%spin138338%_ '0))
              (if (let ((__tmp146361
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock138330%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp146361 '0))
                  (let ((__tmp146362 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock138330%_ '1 __tmp146362))
                  (if (let () (declare (not safe)) (##fx< _%spin138338%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again138335%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin138338%_ '1))))
                      (let ((_%owner138344%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock138330%_ '1))))
                        (if (eq? _%owner138344%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner138344%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again138335%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r138350%_
                 (method-specializer-table-ref
                  _%tab138326%_
                  _%key138327%_
                  _%default138328%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock138330%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock138330%_ '0 '0 '1))))
            _%$r138350%_))))
    (define __method-specializer-table-set!
      (lambda (_%tab138278%_ _%key138279%_ _%value138280%_)
        (let ((_%table138282%_
               (let () (declare (not safe)) (&raw-table-table _%tab138278%_)))
              (_%seed138283%_
               (let () (declare (not safe)) (&raw-table-seed _%tab138278%_))))
          (let* ((_%h138285%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key138279%_))
                         _%seed138283%_))
                 (_%size138288%_ (vector-length _%table138282%_))
                 (_%entries138291%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size138288%_ '2)))
                 (_%start138294%_
                  (let ((__tmp146363
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h138285%_ _%entries138291%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp146363 '1))))
            (let _%loop138298%_ ((_%probe138301%_ _%start138294%_)
                                 (_%i138303%_ '1)
                                 (_%deleted138305%_ '#f))
              (let ((_%k138308%_ (vector-ref _%table138282%_ _%probe138301%_)))
                (if (eq? _%k138308%_ (macro-unused-obj))
                    (if _%deleted138305%_
                        (begin
                          (vector-set!
                           _%table138282%_
                           _%deleted138305%_
                           _%key138279%_)
                          (vector-set!
                           _%table138282%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted138305%_ '1))
                           _%value138280%_)
                          (let ((__tmp146364
                                 (let ((__tmp146365
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab138278%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp146365 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab138278%_ __tmp146364)))
                        (begin
                          (vector-set!
                           _%table138282%_
                           _%probe138301%_
                           _%key138279%_)
                          (vector-set!
                           _%table138282%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe138301%_ '1))
                           _%value138280%_)
                          (let ()
                            (let ((__tmp146366
                                   (let ((__tmp146367
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab138278%_))))
                                     (declare (not safe))
                                     (##fx- __tmp146367 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab138278%_ __tmp146366))
                            (let ((__tmp146368
                                   (let ((__tmp146369
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab138278%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp146369 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab138278%_
                               __tmp146368)))))
                    (if (eq? _%k138308%_ (macro-deleted-obj))
                        (_%loop138298%_
                         (let ((_%next-probe138315%_
                                (fx+ _%start138294%_
                                     _%i138303%_
                                     (fx* _%i138303%_ _%i138303%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe138315%_ _%size138288%_))
                         (let () (declare (not safe)) (##fx+ _%i138303%_ '1))
                         (let ((_%$e138318%_ _%deleted138305%_))
                           (if _%$e138318%_ _%$e138318%_ _%probe138301%_)))
                        (if (eq? _%key138279%_ _%k138308%_)
                            (let ()
                              (vector-set!
                               _%table138282%_
                               _%probe138301%_
                               _%key138279%_)
                              (vector-set!
                               _%table138282%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe138301%_ '1))
                               _%value138280%_))
                            (_%loop138298%_
                             (let ((_%next-probe138323%_
                                    (fx+ _%start138294%_
                                         _%i138303%_
                                         (fx* _%i138303%_ _%i138303%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe138323%_
                                _%size138288%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i138303%_ '1))
                             _%deleted138305%_))))))))))
    (define method-specializer-table-set!
      (lambda (_%tab138274%_ _%key138275%_ _%value138276%_)
        (if (let ((__tmp146372
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab138274%_)))
                  (__tmp146370
                   (let ((__tmp146371
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab138274%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp146371 '4))))
              (declare (not safe))
              (##fx< __tmp146372 __tmp146370))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab138274%_))
            '#!void)
        (__method-specializer-table-set!
         _%tab138274%_
         _%key138275%_
         _%value138276%_)))
    (define method-specializer-table-set!/lock
      (lambda (_%tab138244%_ _%key138245%_ _%value138246%_)
        (let ((_%lock138249%_
               (let () (declare (not safe)) (&raw-table-lock _%tab138244%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again138254%_ ((_%spin138257%_ '0))
              (if (let ((__tmp146373
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock138249%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp146373 '0))
                  (let ((__tmp146374 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock138249%_ '1 __tmp146374))
                  (if (let () (declare (not safe)) (##fx< _%spin138257%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again138254%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin138257%_ '1))))
                      (let ((_%owner138263%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock138249%_ '1))))
                        (if (eq? _%owner138263%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner138263%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again138254%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r138269%_
                 (method-specializer-table-set!
                  _%tab138244%_
                  _%key138245%_
                  _%value138246%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock138249%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock138249%_ '0 '0 '1))))
            _%$r138269%_))))
    (define __method-specializer-table-update!
      (lambda (_%tab138195%_
               _%key138196%_
               _%method-specializer-table-update!138197%_
               _%default138198%_)
        (let ((_%table138200%_
               (let () (declare (not safe)) (&raw-table-table _%tab138195%_)))
              (_%seed138201%_
               (let () (declare (not safe)) (&raw-table-seed _%tab138195%_))))
          (let* ((_%h138203%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key138196%_))
                         _%seed138201%_))
                 (_%size138206%_ (vector-length _%table138200%_))
                 (_%entries138209%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size138206%_ '2)))
                 (_%start138212%_
                  (let ((__tmp146375
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h138203%_ _%entries138209%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp146375 '1))))
            (let _%loop138216%_ ((_%probe138219%_ _%start138212%_)
                                 (_%i138221%_ '1)
                                 (_%deleted138223%_ '#f))
              (let ((_%k138226%_ (vector-ref _%table138200%_ _%probe138219%_)))
                (if (eq? _%k138226%_ (macro-unused-obj))
                    (if _%deleted138223%_
                        (begin
                          (vector-set!
                           _%table138200%_
                           _%deleted138223%_
                           _%key138196%_)
                          (vector-set!
                           _%table138200%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%deleted138223%_ '1))
                           (_%method-specializer-table-update!138197%_
                            _%default138198%_))
                          (let ((__tmp146376
                                 (let ((__tmp146377
                                        (let ()
                                          (declare (not safe))
                                          (&raw-table-count _%tab138195%_))))
                                   (declare (not safe))
                                   (##fx+ __tmp146377 '1))))
                            (declare (not safe))
                            (&raw-table-count-set! _%tab138195%_ __tmp146376)))
                        (begin
                          (vector-set!
                           _%table138200%_
                           _%probe138219%_
                           _%key138196%_)
                          (vector-set!
                           _%table138200%_
                           (let ()
                             (declare (not safe))
                             (##fx+ _%probe138219%_ '1))
                           (_%method-specializer-table-update!138197%_
                            _%default138198%_))
                          (let ()
                            (let ((__tmp146378
                                   (let ((__tmp146379
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-free _%tab138195%_))))
                                     (declare (not safe))
                                     (##fx- __tmp146379 '1))))
                              (declare (not safe))
                              (&raw-table-free-set! _%tab138195%_ __tmp146378))
                            (let ((__tmp146380
                                   (let ((__tmp146381
                                          (let ()
                                            (declare (not safe))
                                            (&raw-table-count _%tab138195%_))))
                                     (declare (not safe))
                                     (##fx+ __tmp146381 '1))))
                              (declare (not safe))
                              (&raw-table-count-set!
                               _%tab138195%_
                               __tmp146380)))))
                    (if (eq? _%k138226%_ (macro-deleted-obj))
                        (_%loop138216%_
                         (let ((_%next-probe138233%_
                                (fx+ _%start138212%_
                                     _%i138221%_
                                     (fx* _%i138221%_ _%i138221%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe138233%_ _%size138206%_))
                         (let () (declare (not safe)) (##fx+ _%i138221%_ '1))
                         (let ((_%$e138236%_ _%deleted138223%_))
                           (if _%$e138236%_ _%$e138236%_ _%probe138219%_)))
                        (if (eq? _%key138196%_ _%k138226%_)
                            (let ()
                              (vector-set!
                               _%table138200%_
                               _%probe138219%_
                               _%key138196%_)
                              (vector-set!
                               _%table138200%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe138219%_ '1))
                               (_%method-specializer-table-update!138197%_
                                (vector-ref
                                 _%table138200%_
                                 (let ()
                                   (declare (not safe))
                                   (##fx+ _%probe138219%_ '1))))))
                            (_%loop138216%_
                             (let ((_%next-probe138241%_
                                    (fx+ _%start138212%_
                                         _%i138221%_
                                         (fx* _%i138221%_ _%i138221%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe138241%_
                                _%size138206%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i138221%_ '1))
                             _%deleted138223%_))))))))))
    (define method-specializer-table-update!
      (lambda (_%tab138190%_
               _%key138191%_
               _%method-specializer-table-update!138192%_
               _%default138193%_)
        (if (let ((__tmp146384
                   (let ()
                     (declare (not safe))
                     (&raw-table-free _%tab138190%_)))
                  (__tmp146382
                   (let ((__tmp146383
                          (vector-length
                           (let ()
                             (declare (not safe))
                             (&raw-table-table _%tab138190%_)))))
                     (declare (not safe))
                     (##fxquotient __tmp146383 '4))))
              (declare (not safe))
              (##fx< __tmp146384 __tmp146382))
            (let () (declare (not safe)) (__raw-table-rehash! _%tab138190%_))
            '#!void)
        (__method-specializer-table-update!
         _%tab138190%_
         _%key138191%_
         _%method-specializer-table-update!138192%_
         _%default138193%_)))
    (define method-specializer-table-update!/lock
      (lambda (_%tab138159%_
               _%key138160%_
               _%method-specializer-table-update!138161%_
               _%default138162%_)
        (let ((_%lock138165%_
               (let () (declare (not safe)) (&raw-table-lock _%tab138159%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again138170%_ ((_%spin138173%_ '0))
              (if (let ((__tmp146385
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock138165%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp146385 '0))
                  (let ((__tmp146386 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock138165%_ '1 __tmp146386))
                  (if (let () (declare (not safe)) (##fx< _%spin138173%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again138170%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin138173%_ '1))))
                      (let ((_%owner138179%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock138165%_ '1))))
                        (if (eq? _%owner138179%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner138179%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again138170%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r138185%_
                 (_%method-specializer-table-update!138161%_
                  _%tab138159%_
                  _%key138160%_
                  _%method-specializer-table-update!138161%_
                  _%default138162%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock138165%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock138165%_ '0 '0 '1))))
            _%$r138185%_))))
    (define method-specializer-table-delete!
      (lambda (_%tab138116%_ _%key138117%_)
        (let ((_%table138119%_
               (let () (declare (not safe)) (&raw-table-table _%tab138116%_)))
              (_%seed138121%_
               (let () (declare (not safe)) (&raw-table-seed _%tab138116%_))))
          (let* ((_%h138124%_
                  (fxxor (let ()
                           (declare (not safe))
                           (procedure-hash _%key138117%_))
                         _%seed138121%_))
                 (_%size138127%_ (vector-length _%table138119%_))
                 (_%entries138130%_
                  (let ()
                    (declare (not safe))
                    (##fxquotient _%size138127%_ '2)))
                 (_%start138133%_
                  (let ((__tmp146387
                         (let ()
                           (declare (not safe))
                           (##fxmodulo _%h138124%_ _%entries138130%_))))
                    (declare (not safe))
                    (##fxarithmetic-shift-left __tmp146387 '1))))
            (let _%loop138137%_ ((_%probe138140%_ _%start138133%_)
                                 (_%i138142%_ '1))
              (let ((_%k138145%_ (vector-ref _%table138119%_ _%probe138140%_)))
                (if (eq? _%k138145%_ (macro-unused-obj))
                    '#!void
                    (if (eq? _%k138145%_ (macro-deleted-obj))
                        (_%loop138137%_
                         (let ((_%next-probe138150%_
                                (fx+ _%start138133%_
                                     _%i138142%_
                                     (fx* _%i138142%_ _%i138142%_))))
                           (declare (not safe))
                           (##fxmodulo _%next-probe138150%_ _%size138127%_))
                         (let () (declare (not safe)) (##fx+ _%i138142%_ '1)))
                        (if (eq? _%key138117%_ _%k138145%_)
                            (let ()
                              (vector-set!
                               _%table138119%_
                               _%probe138140%_
                               (macro-deleted-obj))
                              (vector-set!
                               _%table138119%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%probe138140%_ '1))
                               (macro-absent-obj))
                              (let ((__tmp146388
                                     (let ((__tmp146389
                                            (let ()
                                              (declare (not safe))
                                              (&raw-table-count
                                               _%tab138116%_))))
                                       (declare (not safe))
                                       (##fx- __tmp146389 '1))))
                                (declare (not safe))
                                (&raw-table-count-set!
                                 _%tab138116%_
                                 __tmp146388)))
                            (_%loop138137%_
                             (let ((_%next-probe138156%_
                                    (fx+ _%start138133%_
                                         _%i138142%_
                                         (fx* _%i138142%_ _%i138142%_))))
                               (declare (not safe))
                               (##fxmodulo
                                _%next-probe138156%_
                                _%size138127%_))
                             (let ()
                               (declare (not safe))
                               (##fx+ _%i138142%_ '1))))))))))))
    (define method-specializer-table-delete!/lock
      (lambda (_%tab138086%_ _%key138088%_)
        (let ((_%lock138091%_
               (let () (declare (not safe)) (&raw-table-lock _%tab138086%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again138096%_ ((_%spin138099%_ '0))
              (if (let ((__tmp146390
                         (let ()
                           (declare (not safe))
                           (##vector-cas! _%lock138091%_ '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp146390 '0))
                  (let ((__tmp146391 (current-thread)))
                    (declare (not safe))
                    (##vector-set! _%lock138091%_ '1 __tmp146391))
                  (if (let () (declare (not safe)) (##fx< _%spin138099%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again138096%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin138099%_ '1))))
                      (let ((_%owner138105%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%lock138091%_ '1))))
                        (if (eq? _%owner138105%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner138105%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again138096%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$r138111%_
                 (method-specializer-table-delete!
                  _%tab138086%_
                  _%key138088%_)))
            (let ()
              (declare (not interrupts-enabled))
              (begin
                (let ()
                  (declare (not safe))
                  (##vector-set! _%lock138091%_ '1 '#f))
                (let ()
                  (declare (not safe))
                  (##vector-cas! _%lock138091%_ '0 '0 '1))))
            _%$r138111%_))))
    (define __method-specializers
      (make-method-specializer-table/lock__% '#f '0))
    (define bind-specializer!
      (lambda (_%method-proc138083%_ _%specializer138084%_)
        (method-specializer-table-set!/lock
         __method-specializers
         _%method-proc138083%_
         _%specializer138084%_)))
    (define __lookup-method-specializer
      (lambda (_%proc138081%_)
        (method-specializer-table-ref/lock
         __method-specializers
         _%proc138081%_
         '#f)))
    (define __specialize-class
      (lambda (_%klass138063%_)
        (let* ((_%klass138066%_ _%klass138063%_)
               (_%$e138075%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref _%klass138066%_ '12 '#f '#f))))
          (if _%$e138075%_
              _%$e138075%_
              (let ((_%method-table138079%_
                     (___specialize-class _%klass138066%_)))
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-set!
                   _%klass138066%_
                   _%method-table138079%_
                   '12
                   '#f
                   '#f))
                _%method-table138079%_)))))
    (define specialize-class
      (lambda (_%klass138049%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass138049%_ 'class))
            (let ((_%klass138053%_ _%klass138049%_))
              (__specialize-class _%klass138053%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1156.25-1156.30"
               'contract:
               'class-type?
               'value:
               _%klass138049%_)
              '#!void))))
    (define __specialize-method
      (lambda (_%klass138033%_
               _%method-table138034%_
               _%method138035%_
               _%proc138036%_)
        (let ((_%$e138038%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref
                  _%method-table138034%_
                  _%method138035%_
                  '#f))))
          (if _%$e138038%_
              _%$e138038%_
              (let ((_%$e138041%_
                     (__lookup-method-specializer _%proc138036%_)))
                (if _%$e138041%_
                    (let ((_%specialized-proc138046%_
                           (_%$e138041%_
                            _%klass138033%_
                            _%method-table138034%_)))
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table138034%_
                       _%method138035%_
                       _%specialized-proc138046%_))
                    (let ()
                      (declare (not safe))
                      (symbolic-table-set!
                       _%method-table138034%_
                       _%method138035%_
                       _%proc138036%_))))))))
    (define ___specialize-class
      (lambda (_%klass137900%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137900%_ 'class))
            (if (let* ((_%klass137903%_ _%klass137900%_)
                       (_%klass137908%_ _%klass137903%_))
                  (__class-type-metaclass? _%klass137908%_))
                (let* ((_%obj137920%_ _%klass137900%_)
                       (_%id137923%_ 'specialize-class)
                       (_%args137926%_ '())
                       (_%id137931%_ _%id137923%_))
                  (declare (not safe))
                  (##apply __call-method
                           _%obj137920%_
                           _%id137931%_
                           _%args137926%_))
                (if (let* ((_%pred137944%_ class-type-metaclass?)
                           (_%lst137947%_
                            (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%klass137900%_
                               '6
                               '#f
                               '#f)))
                           (_%pred137952%_ _%pred137944%_))
                      (declare (not safe))
                      (__find _%pred137952%_ _%lst137947%_))
                    (error '"cannot specialize class that extends metaclass without a metaclass"
                           _%klass137900%_)
                    (let ((_%method-table137965%_
                           (let ()
                             (declare (not safe))
                             (make-symbolic-table__% '#f '0))))
                      (let _%loop137967%_ ((_%rest137969%_
                                            (let* ((_%klass138016%_
                                                    _%klass137900%_)
                                                   (_%klass138021%_
                                                    _%klass138016%_))
                                              (__class-precedence-list
                                               _%klass138021%_))))
                        (let* ((_%$%rest137970137978%_ _%rest137969%_)
                               (_%$%else137972137986%_
                                (lambda () _%method-table137965%_))
                               (_%$%K137974138004%_
                                (lambda (_%rest137989%_ _%xklass137990%_)
                                  (let ((_%$%xmethod-table137991137993%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%xklass137990%_
                                            '11
                                            '#f
                                            '#f))))
                                    (if _%$%xmethod-table137991137993%_
                                        (let* ((_%xmethod-table137995%_
                                                _%$%xmethod-table137991137993%_)
                                               (__tmp146392
                                                (lambda (_%$%g137996137999%_
                                                         _%$%g137997138001%_)
                                                  (__specialize-method
                                                   _%klass137900%_
                                                   _%method-table137965%_
                                                   _%$%g137996137999%_
                                                   _%$%g137997138001%_))))
                                          (declare (not safe))
                                          (raw-table-for-each
                                           _%xmethod-table137995%_
                                           __tmp146392))
                                        '#f))
                                  (_%loop137967%_ _%rest137989%_))))
                          (if (pair? _%$%rest137970137978%_)
                              (let ((_%$%hd137975138007%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest137970137978%_)))
                                    (_%$%tl137976138009%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest137970137978%_))))
                                (let* ((_%xklass138012%_ _%$%hd137975138007%_)
                                       (_%rest138014%_ _%$%tl137976138009%_))
                                  (_%$%K137974138004%_
                                   _%rest138014%_
                                   _%xklass138012%_)))
                              (_%$%else137972137986%_)))))))
            (if (let () (declare (not safe)) (##type? _%klass137900%_))
                (__specialize-class (__shadow-class__0 _%klass137900%_))
                (error '"bad class; cannot specialize" _%klass137900%_)))))
    (define __seal-class!
      (lambda (_%klass137763%_)
        (let ((_%klass137766%_ _%klass137763%_))
          (if (let* ((_%klass137775%_ _%klass137766%_)
                     (_%klass137780%_ _%klass137775%_))
                (__class-type-sealed? _%klass137780%_))
              '#!void
              (begin
                (if (let* ((_%klass137793%_ _%klass137766%_)
                           (_%klass137798%_ _%klass137793%_))
                      (__class-type-metaclass? _%klass137798%_))
                    (let ()
                      (let* ((_%obj137809%_ _%klass137766%_)
                             (_%id137812%_ 'seal-class!)
                             (_%args137815%_ '())
                             (_%id137820%_ _%id137812%_))
                        (declare (not safe))
                        (##apply __call-method
                                 _%obj137809%_
                                 _%id137820%_
                                 _%args137815%_))
                      (let* ((_%klass137833%_ _%klass137766%_)
                             (_%klass137838%_ _%klass137833%_))
                        (__specialize-class _%klass137838%_)))
                    (if (let* ((_%pred137848%_ class-type-metaclass?)
                               (_%lst137851%_
                                (let ()
                                  (declare (not safe))
                                  (##unchecked-structure-ref
                                   _%klass137766%_
                                   '6
                                   '#f
                                   '#f)))
                               (_%pred137856%_ _%pred137848%_))
                          (declare (not safe))
                          (__find _%pred137856%_ _%lst137851%_))
                        (error '"cannot seal class that extends metaclass without a metaclass"
                               _%klass137766%_)
                        (let* ((_%klass137869%_ _%klass137766%_)
                               (_%klass137874%_ _%klass137869%_))
                          (__specialize-class _%klass137874%_))))
                (let* ((_%klass137885%_ _%klass137766%_)
                       (_%klass137890%_ _%klass137885%_))
                  (__class-type-seal! _%klass137890%_)))))))
    (define seal-class!
      (lambda (_%klass137749%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%klass137749%_ 'class))
            (let ((_%klass137753%_ _%klass137749%_))
              (__seal-class! _%klass137753%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1202.20-1202.25"
               'contract:
               'class-type?
               'value:
               _%klass137749%_)
              '#!void))))
    (define __next-method
      (lambda (_%subklass137637%_ _%obj137638%_ _%id137639%_)
        (let* ((_%subklass137642%_ _%subklass137637%_)
               (_%id137650%_ _%id137639%_))
          (letrec ((_%find-next-method137659%_
                    (lambda (_%klass137661%_)
                      (let _%lp137663%_ ((_%rest137665%_
                                          (let ((_%klass137734%_
                                                 _%klass137661%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (##structure-instance-of?
                                                   _%klass137734%_
                                                   'class))
                                                (let ((_%klass137739%_
                                                       _%klass137734%_))
                                                  (__class-precedence-list
                                                   _%klass137739%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/mop
                                                   'contract:
                                                   'class-type?
                                                   'value:
                                                   _%klass137734%_)
                                                  '#!void)))))
                        (let* ((_%$%rest137666137674%_ _%rest137665%_)
                               (_%$%else137668137682%_ (lambda () '#f))
                               (_%$%K137670137722%_
                                (lambda (_%rest137685%_ _%klass137686%_)
                                  (if (eq? (let ()
                                             (declare (not safe))
                                             (##type-id _%subklass137642%_))
                                           (let ()
                                             (declare (not safe))
                                             (##type-id _%klass137686%_)))
                                      (let* ((_%mixins137688%_ _%rest137685%_)
                                             (_%obj137691%_ _%obj137638%_)
                                             (_%id137694%_ _%id137650%_)
                                             (_%id137699%_ _%id137694%_))
                                        (__mixin-find-method
                                         _%mixins137688%_
                                         _%obj137691%_
                                         _%id137699%_))
                                      (_%lp137663%_ _%rest137685%_)))))
                          (if (pair? _%$%rest137666137674%_)
                              (let ((_%$%hd137671137725%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest137666137674%_)))
                                    (_%$%tl137672137727%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest137666137674%_))))
                                (let* ((_%klass137730%_ _%$%hd137671137725%_)
                                       (_%rest137732%_ _%$%tl137672137727%_))
                                  (_%$%K137670137722%_
                                   _%rest137732%_
                                   _%klass137730%_)))
                              (_%$%else137668137682%_)))))))
            (_%find-next-method137659%_ (class-of _%obj137638%_))))))
    (define next-method
      (lambda (_%subklass137611%_ _%obj137612%_ _%id137613%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass137611%_ 'class))
            (let ((_%subklass137617%_ _%subklass137611%_))
              (if (symbol? _%id137613%_)
                  (let ((_%id137627%_ _%id137613%_))
                    (__next-method
                     _%subklass137617%_
                     _%obj137612%_
                     _%id137627%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1224.44-1224.46"
                     'contract:
                     'symbol?
                     'value:
                     _%id137613%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1224.20-1224.28"
               'contract:
               'class-type?
               'value:
               _%subklass137611%_)
              '#!void))))
    (define __call-next-method
      (lambda (_%subklass137546%_ _%obj137547%_ _%id137548%_ . _%args137549%_)
        (let* ((_%subklass137552%_ _%subklass137546%_)
               (_%id137560%_ _%id137548%_)
               (_%$e137605%_
                (let* ((_%subklass137569%_ _%subklass137552%_)
                       (_%obj137572%_ _%obj137547%_)
                       (_%id137575%_ _%id137560%_)
                       (_%subklass137580%_ _%subklass137569%_)
                       (_%id137595%_ _%id137575%_))
                  (__next-method
                   _%subklass137580%_
                   _%obj137572%_
                   _%id137595%_))))
          (if _%$e137605%_
              (apply _%$e137605%_ _%obj137547%_ _%args137549%_)
              (error '"cannot find next method"
                     'object:
                     _%obj137547%_
                     'method:
                     _%id137560%_)))))
    (define call-next-method
      (lambda (_%subklass137519%_ _%obj137520%_ _%id137521%_ . _%args137522%_)
        (if (let ()
              (declare (not safe))
              (##structure-instance-of? _%subklass137519%_ 'class))
            (let ((_%subklass137526%_ _%subklass137519%_))
              (if (symbol? _%id137521%_)
                  (let ((_%id137536%_ _%id137521%_))
                    (declare (not safe))
                    (##apply __call-next-method
                             _%subklass137526%_
                             _%obj137520%_
                             _%id137536%_
                             _%args137522%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/mop.ss\"@1235.49-1235.51"
                     'contract:
                     'symbol?
                     'value:
                     _%id137521%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/mop.ss\"@1235.25-1235.33"
               'contract:
               'class-type?
               'value:
               _%subklass137519%_)
              '#!void))))
    (define __shadow-classes
      (let () (declare (not safe)) (make-symbolic-table__% '#f '0)))
    (define __shadow-classes-lock (vector '0 '#f))
    (define __shadow-class__%
      (lambda (_%type137298%_ _%properties137299%_)
        (letrec ((_%shadow-type-id137301%_
                  (lambda (_%type137507%_)
                    (let ((__tmp146393
                           (let ()
                             (declare (not safe))
                             (##type-name _%type137507%_))))
                      (declare (not safe))
                      (make-symbol__1 __tmp146393 '"::t"))))
                 (_%shadow-type-name137302%_
                  (lambda (_%type137505%_)
                    (let ()
                      (declare (not safe))
                      (##type-name _%type137505%_))))
                 (_%make-shadow-class137303%_
                  (lambda (_%type137387%_ _%precedence-list137388%_)
                    (let* ((_%super137390%_
                            (if (pair? _%precedence-list137388%_)
                                (cons (let ()
                                        (declare (not safe))
                                        (##car _%precedence-list137388%_))
                                      '())
                                '()))
                           (_%klass137502%_
                            (let* ((_%id137392%_
                                    (_%shadow-type-id137301%_ _%type137387%_))
                                   (_%name137395%_
                                    (let ()
                                      (declare (not safe))
                                      (##type-name _%type137387%_)))
                                   (_%direct-supers137398%_ _%super137390%_)
                                   (_%direct-slots137401%_ '())
                                   (_%properties137427%_
                                    (cons (cons 'struct: '#t)
                                          (cons (cons 'system: '#t)
                                                (cons (cons 'system-type:
                                                            _%type137387%_)
                                                      (append (if (let ((_%type137404%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                                 _%type137387%_))
                            (if (let ()
                                  (declare (not safe))
                                  (##type? _%type137404%_))
                                (let ((_%type137409%_ _%type137404%_))
                                  (__type-extensible? _%type137409%_))
                                (begin
                                  (raise-contract-violation-error
                                   '"contract violation"
                                   'context:
                                   'gerbil/runtime/mop
                                   'contract:
                                   '##type?
                                   'value:
                                   _%type137404%_)
                                  '#!void)))
                          '()
                          (cons (cons 'final: '#t) '()))
                      _%properties137299%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                   (_%constructor137430%_ '#f)
                                   (_%id137435%_ _%id137392%_))
                              (if (symbol? _%name137395%_)
                                  (let* ((_%name137446%_ _%name137395%_)
                                         (_%direct-supers137456%_
                                          _%direct-supers137398%_)
                                         (_%direct-slots137466%_
                                          _%direct-slots137401%_)
                                         (_%properties137476%_
                                          _%properties137427%_))
                                    (if (let ((_%$e137488%_ '#t))
                                          (and _%$e137488%_ _%$e137488%_))
                                        (let ((_%constructor137492%_
                                               _%constructor137430%_))
                                          (__make-class-type
                                           _%id137435%_
                                           _%name137446%_
                                           _%direct-supers137456%_
                                           _%direct-slots137466%_
                                           _%properties137476%_
                                           _%constructor137492%_))
                                        (begin
                                          (raise-contract-violation-error
                                           '"contract violation"
                                           'context:
                                           'gerbil/runtime/mop
                                           'contract:
                                           '(? (or not symbol?))
                                           'value:
                                           _%constructor137430%_)
                                          '#!void)))
                                  (begin
                                    (raise-contract-violation-error
                                     '"contract violation"
                                     'context:
                                     'gerbil/runtime/mop
                                     'contract:
                                     'symbol?
                                     'value:
                                     _%name137395%_)
                                    '#!void)))))
                      (let ((__tmp146394
                             (let ()
                               (declare (not safe))
                               (##type-id _%type137387%_))))
                        (declare (not safe))
                        (symbolic-table-set!
                         __shadow-classes
                         __tmp146394
                         _%klass137502%_))
                      _%klass137502%_))))
          (let ()
            (declare (not interrupts-enabled))
            (let _%again137307%_ ((_%spin137310%_ '0))
              (if (let ((__tmp146395
                         (let ()
                           (declare (not safe))
                           (##vector-cas! __shadow-classes-lock '0 '1 '0))))
                    (declare (not safe))
                    (##fx= __tmp146395 '0))
                  (let ((__tmp146396 (current-thread)))
                    (declare (not safe))
                    (##vector-set! __shadow-classes-lock '1 __tmp146396))
                  (if (let () (declare (not safe)) (##fx< _%spin137310%_ '10))
                      (let ()
                        (let () (declare (not safe)) (##thread-yield!))
                        (_%again137307%_
                         (let ()
                           (declare (not safe))
                           (##fx+ _%spin137310%_ '1))))
                      (let ((_%owner137316%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref __shadow-classes-lock '1))))
                        (if (eq? _%owner137316%_ (macro-current-thread))
                            (let ()
                              (declare (not safe))
                              (##thread-deadlock-action!))
                            (if (macro-thread-end-condvar _%owner137316%_)
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (##thread-yield!))
                                  (_%again137307%_ '0))
                                (let ()
                                  (declare (not safe))
                                  (##thread-deadlock-action!)))))))))
          (let ((_%$e137322%_
                 (let ((__tmp146397
                        (let ()
                          (declare (not safe))
                          (##type-id _%type137298%_))))
                   (declare (not safe))
                   (symbolic-table-ref __shadow-classes __tmp146397 '#f))))
            (if _%$e137322%_
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
                  _%$e137322%_)
                (let _%loop137330%_ ((_%super137332%_
                                      (let ()
                                        (declare (not safe))
                                        (##type-super _%type137298%_)))
                                     (_%hierarchy137333%_ '()))
                  (if (not _%super137332%_)
                      (let _%loop137336%_ ((_%rest137338%_ _%hierarchy137333%_)
                                           (_%precedence-list137339%_ '()))
                        (let* ((_%$%rest137340137348%_ _%rest137338%_)
                               (_%$%else137342137360%_
                                (lambda ()
                                  (let ((_%klass137356%_
                                         (_%make-shadow-class137303%_
                                          _%type137298%_
                                          _%precedence-list137339%_)))
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
                                    _%klass137356%_)))
                               (_%$%K137344137374%_
                                (lambda (_%rest137363%_ _%type137364%_)
                                  (let ((_%$e137366%_
                                         (let ((__tmp146398
                                                (let ()
                                                  (declare (not safe))
                                                  (##type-id _%type137364%_))))
                                           (declare (not safe))
                                           (symbolic-table-ref
                                            __shadow-classes
                                            __tmp146398
                                            '#f))))
                                    (if _%$e137366%_
                                        (_%loop137336%_
                                         _%rest137363%_
                                         (cons _%$e137366%_
                                               _%precedence-list137339%_))
                                        (let ((_%klass137372%_
                                               (_%make-shadow-class137303%_
                                                _%type137364%_
                                                _%precedence-list137339%_)))
                                          (_%loop137336%_
                                           _%rest137363%_
                                           (cons _%klass137372%_
                                                 _%precedence-list137339%_))))))))
                          (if (pair? _%$%rest137340137348%_)
                              (let ((_%$%hd137345137377%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%rest137340137348%_)))
                                    (_%$%tl137346137379%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%rest137340137348%_))))
                                (let* ((_%type137382%_ _%$%hd137345137377%_)
                                       (_%rest137384%_ _%$%tl137346137379%_))
                                  (_%$%K137344137374%_
                                   _%rest137384%_
                                   _%type137382%_)))
                              (_%$%else137342137360%_))))
                      (_%loop137330%_
                       (let ()
                         (declare (not safe))
                         (##type-super _%super137332%_))
                       (cons _%super137332%_ _%hierarchy137333%_)))))))))
    (define __shadow-class__0
      (lambda (_%type137512%_)
        (let ((_%properties137514%_ '()))
          (__shadow-class__% _%type137512%_ _%properties137514%_))))
    (define __shadow-class
      (lambda _g146399_
        (let ((_g146400_ (let () (declare (not safe)) (##length _g146399_))))
          (cond ((let () (declare (not safe)) (##fx= _g146400_ 1))
                 (apply __shadow-class__0 _g146399_))
                ((let () (declare (not safe)) (##fx= _g146400_ 2))
                 (apply __shadow-class__% _g146399_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __shadow-class
                  _g146399_))))))
    (define __type
      (let* ((_%tb137286%_
              (let ()
                (declare (not safe))
                (##c-code '"___RESULT = ___FIX(___TB);")))
             (_%$e137288%_ _%tb137286%_))
        (if (eq? '2 _%$e137288%_)
            '#(fixnum subtyped special pair)
            (if (eq? '3 _%$e137288%_)
                (let ((_%flonum-self-tagging-tags137291%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"___RESULT = ___FIX(___FLONUM_SELF_TAGGING_TAGS);")))
                      (_%fixnum-tag-bits137292%_
                       (let ()
                         (declare (not safe))
                         (##c-code
                          '"#ifdef ___USE_2_TAG_BITS_FOR_FIXNUMS\n___RESULT = ___FIX(2) ;\n#else\n___RESULT = ___FIX(3) ;\n#endif"))))
                  (let ((_%$e137294%_ _%flonum-self-tagging-tags137291%_))
                    (if (eq? '0 _%$e137294%_)
                        (if (let ()
                              (declare (not safe))
                              (##fx= _%fixnum-tag-bits137292%_ '2))
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
                        (if (eq? '1 _%$e137294%_)
                            (if (let ()
                                  (declare (not safe))
                                  (##fx= _%fixnum-tag-bits137292%_ '2))
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
                            (if (eq? '2 _%$e137294%_)
                                '#(fixnum
                                   subtyped
                                   stflonum
                                   haflonum
                                   special
                                   pair
                                   stflonum
                                   undefined)
                                (if (eq? '3 _%$e137294%_)
                                    '#(fixnum
                                       subtyped
                                       haflonum
                                       immedate-flonum
                                       special
                                       pair
                                       stflonum
                                       stflonum)
                                    (if (eq? '4 _%$e137294%_)
                                        '#(fixnum
                                           subtyped
                                           stflonum
                                           stflonum
                                           special
                                           pair
                                           stflonum
                                           stflonum)
                                        (error '"unexpected flonum self tagging tags"
                                               _%flonum-self-tagging-tags137291%_))))))))
                (error '"unexpected tag width" _%tb137286%_)))))
    (define __primitive-class
      (let ((__tmp146401 (vector-length __type)))
        (declare (not safe))
        (##make-vector __tmp146401 '#f)))
    (define __boxvalues-class
      (let () (declare (not safe)) (##make-vector '2 '#f)))
    (define __subtype-class
      (let () (declare (not safe)) (##make-vector '32 '#f)))
    (define __char-class '#f)
    (define __special-class
      (let () (declare (not safe)) (##make-vector '16 '#f)))
    (define __class-of
      (let* ((_%len137176%_ (vector-length __type))
             (_%cv137178%_
              (let () (declare (not safe)) (##make-vector _%len137176%_ '#f))))
        (let _%loop137181%_ ((_%i137183%_ '0))
          (if (let () (declare (not safe)) (##fx< _%i137183%_ _%len137176%_))
              (let* ((_%t137185%_
                      (let ()
                        (declare (not safe))
                        (##vector-ref __type _%i137183%_)))
                     (_%f137283%_
                      (if (eq? _%t137185%_ 'undefined)
                          (lambda (_%obj137188%_)
                            (error '"object type is undefined" _%obj137188%_))
                          (if (let ()
                                (declare (not safe))
                                (##memq _%t137185%_
                                        '(fixnum flonum
                                                 stflonum
                                                 haflonum
                                                 pair
                                                 vector)))
                              (lambda (_%obj137191%_)
                                (declare (not interrupts-enabled) (not safe))
                                (let ((_%$e137194%_
                                       (##vector-ref
                                        __primitive-class
                                        _%i137183%_)))
                                  (if _%$e137194%_
                                      _%$e137194%_
                                      (let ((_%klass137198%_
                                             (__system-class _%t137185%_)))
                                        (##vector-set!
                                         __primitive-class
                                         _%i137183%_
                                         _%klass137198%_)
                                        _%klass137198%_))))
                              (if (eq? _%t137185%_ 'subtyped)
                                  (lambda (_%obj137202%_)
                                    (declare
                                      (not interrupts-enabled)
                                      (not safe))
                                    (let ((_%st137205%_
                                           (##subtype _%obj137202%_)))
                                      (if (##fx= _%st137205%_
                                                 (macro-subtype-structure))
                                          (let ((_%klass137208%_
                                                 (##structure-type
                                                  _%obj137202%_)))
                                            (if (##structure-instance-of?
                                                 _%klass137208%_
                                                 'class)
                                                _%klass137208%_
                                                (__shadow-class__0
                                                 _%klass137208%_)))
                                          (if (##fx= _%st137205%_
                                                     (macro-subtype-boxvalues))
                                              (if (##fx= (##values-length
                                                          _%obj137202%_)
                                                         '1)
                                                  (let ((_%$e137211%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '0)))
                                                    (if _%$e137211%_
                                                        _%$e137211%_
                                                        (let ((_%klass137215%_
                                                               (__system-class
                                                                'box)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '0
                                                           _%klass137215%_)
                                                          _%klass137215%_)))
                                                  (let ((_%$e137218%_
                                                         (##vector-ref
                                                          __boxvalues-class
                                                          '1)))
                                                    (if _%$e137218%_
                                                        _%$e137218%_
                                                        (let ((_%klass137222%_
                                                               (__system-class
                                                                'values)))
                                                          (##vector-set!
                                                           __boxvalues-class
                                                           '1
                                                           _%klass137222%_)
                                                          _%klass137222%_))))
                                              (let ((_%$e137225%_
                                                     (##vector-ref
                                                      __subtype-class
                                                      _%st137205%_)))
                                                (if _%$e137225%_
                                                    _%$e137225%_
                                                    (let ((_%klass137242%_
                                                           (let ((_%$e137229%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (##vector-ref __subtype-id _%st137205%_)))
                     (if _%$e137229%_
                         (let ((_%$e137234%_
                                (##vector-ref __subtype-class _%st137205%_)))
                           (if _%$e137234%_
                               _%$e137234%_
                               (let ((_%klass137238%_
                                      (__system-class _%$e137229%_)))
                                 (##vector-set!
                                  __subtype-class
                                  _%st137205%_
                                  _%klass137238%_)
                                 _%klass137238%_)))
                         (error '"unknown class"
                                'object:
                                _%obj137202%_
                                'subtype:
                                _%st137205%_)))))
              (##vector-set! __subtype-class _%st137205%_ _%klass137242%_)
              _%klass137242%_)))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                  (if (eq? _%t137185%_ 'special)
                                      (lambda (_%obj137246%_)
                                        (declare
                                          (not interrupts-enabled)
                                          (not safe))
                                        (let ((_%x137249%_
                                               (##type-cast _%obj137246%_ '0)))
                                          (if (##fx> _%x137249%_ '0)
                                              (let ((_%$e137252%_
                                                     __char-class))
                                                (if _%$e137252%_
                                                    _%$e137252%_
                                                    (let ((_%klass137256%_
                                                           (__system-class
                                                            'char)))
                                                      (set! __char-class
                                                            _%klass137256%_)
                                                      _%klass137256%_)))
                                              (let* ((_%t137259%_
                                                      (##fx- _%x137249%_))
                                                     (_%$e137262%_
                                                      (##vector-ref
                                                       __special-class
                                                       _%t137259%_)))
                                                (if _%$e137262%_
                                                    _%$e137262%_
                                                    (let ((_%klass137280%_
                                                           (if (eq? _%obj137246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            '())
                       (__system-class 'null)
                       (if (eq? _%obj137246%_ '#f)
                           (__system-class 'false)
                           (if (eq? _%obj137246%_ '#t)
                               (__system-class 'true)
                               (if (eq? _%obj137246%_ '#!void)
                                   (__system-class 'void)
                                   (if (eq? _%obj137246%_ '#!eof)
                                       (__system-class 'eof)
                                       (if (eq? _%obj137246%_ '#!unbound)
                                           (__system-class 'unbound)
                                           (if (eq? _%obj137246%_ '#!unbound2)
                                               (__system-class 'unbound2)
                                               (if (eq? _%obj137246%_
                                                        '#!optional)
                                                   (__system-class 'optional)
                                                   (if (eq? _%obj137246%_
                                                            '#!rest)
                                                       (__system-class 'rest)
                                                       (if (eq? _%obj137246%_
                                                                '#!key)
                                                           (__system-class
                                                            'key)
                                                           (if (eq? _%obj137246%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (macro-unused-obj))
                       (__system-class 'unused)
                       (if (eq? _%obj137246%_ (macro-deleted-obj))
                           (__system-class 'deleted)
                           (if (eq? _%obj137246%_ (macro-absent-obj))
                               (__system-class 'absent)
                               (__system-class 'unknown))))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              (##vector-set! __special-class _%t137259%_ _%klass137280%_)
              _%klass137280%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (error '"unexpected object type"
                                             _%t137185%_)))))))
                (let ()
                  (declare (not safe))
                  (##vector-set! _%cv137178%_ _%i137183%_ _%f137283%_))
                (_%loop137181%_
                 (let () (declare (not safe)) (##fx+ _%i137183%_ '1))))
              _%cv137178%_))))
    (define type-of
      (lambda (_%obj137172%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (##vector-ref __type (##type _%obj137172%_)))))
    (define class-of
      (lambda (_%obj137163%_)
        (let ()
          (declare (not safe) (not interrupts-enabled))
          (let* ((_%t137167%_ (##type _%obj137163%_))
                 (_%f137169%_ (##vector-ref __class-of _%t137167%_)))
            (_%f137169%_ _%obj137163%_)))))
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
      (lambda (_%id137157%_)
        (let ((_%$e137159%_
               (let ()
                 (declare (not safe))
                 (symbolic-table-ref __system-classes _%id137157%_ '#f))))
          (if _%$e137159%_
              _%$e137159%_
              (error '"unknown system class" _%id137157%_)))))
    (define __make-system-class
      (lambda (_%id137059%_ _%super137060%_ _%properties137061%_)
        (let ((_%klass137155%_
               (let* ((_%id137063%_ _%id137059%_)
                      (_%name137066%_ _%id137059%_)
                      (_%direct-supers137069%_ _%super137060%_)
                      (_%direct-slots137072%_ '())
                      (_%properties137075%_
                       (cons '(system: . #t) _%properties137061%_))
                      (_%constructor137078%_ '#f))
                 (if (symbol? _%id137063%_)
                     (let ((_%id137083%_ _%id137063%_))
                       (if (symbol? _%name137066%_)
                           (let ((_%name137099%_ _%name137066%_))
                             (if (list? _%direct-supers137069%_)
                                 (let* ((_%direct-supers137109%_
                                         _%direct-supers137069%_)
                                        (_%direct-slots137119%_
                                         _%direct-slots137072%_)
                                        (_%properties137129%_
                                         _%properties137075%_))
                                   (if (let ((_%$e137141%_ '#t))
                                         (and _%$e137141%_ _%$e137141%_))
                                       (let ((_%constructor137145%_
                                              _%constructor137078%_))
                                         (__make-class-type
                                          _%id137083%_
                                          _%name137099%_
                                          _%direct-supers137109%_
                                          _%direct-slots137119%_
                                          _%properties137129%_
                                          _%constructor137145%_))
                                       (begin
                                         (raise-contract-violation-error
                                          '"contract violation"
                                          'context:
                                          'gerbil/runtime/mop
                                          'contract:
                                          '(? (or not symbol?))
                                          'value:
                                          _%constructor137078%_)
                                         '#!void)))
                                 (begin
                                   (raise-contract-violation-error
                                    '"contract violation"
                                    'context:
                                    'gerbil/runtime/mop
                                    'contract:
                                    'list?
                                    'value:
                                    _%direct-supers137069%_)
                                   '#!void)))
                           (begin
                             (raise-contract-violation-error
                              '"contract violation"
                              'context:
                              'gerbil/runtime/mop
                              'contract:
                              'symbol?
                              'value:
                              _%name137066%_)
                             '#!void)))
                     (begin
                       (raise-contract-violation-error
                        '"contract violation"
                        'context:
                        'gerbil/runtime/mop
                        'contract:
                        'symbol?
                        'value:
                        _%id137063%_)
                       '#!void)))))
          (let ()
            (declare (not safe))
            (symbolic-table-set!
             __system-classes
             _%id137059%_
             _%klass137155%_))
          _%klass137155%_)))))
