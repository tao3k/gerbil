(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1789839224)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk175919%_ _%name175920%_)
        (let* ((_%thunk175923%_ _%thunk175919%_)
               (_%name175931%_ _%name175920%_))
          (make-thread
           (lambda () (thread-main _%thunk175923%_))
           _%name175931%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk175894%_ _%name175895%_)
        (if (procedure? _%thunk175894%_)
            (let ((_%thunk175899%_ _%thunk175894%_))
              (if (symbol? _%name175895%_)
                  (let ((_%name175909%_ _%name175895%_))
                    (__make-system-thread _%thunk175899%_ _%name175909%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name175895%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk175894%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk175841%_ _%name175842%_)
        (let* ((_%thunk175845%_ _%thunk175841%_)
               (_%name175853%_ _%name175842%_))
          (thread-start!
           (let* ((_%thunk175862%_ _%thunk175845%_)
                  (_%name175865%_ _%name175853%_)
                  (_%thunk175870%_ _%thunk175862%_)
                  (_%name175884%_ _%name175865%_))
             (__make-system-thread _%thunk175870%_ _%name175884%_))))))
    (define system-thread!
      (lambda (_%thunk175816%_ _%name175817%_)
        (if (procedure? _%thunk175816%_)
            (let ((_%thunk175821%_ _%thunk175816%_))
              (if (symbol? _%name175817%_)
                  (let ((_%name175831%_ _%name175817%_))
                    (__system-thread! _%thunk175821%_ _%name175831%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name175817%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk175816%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk175729%_ _%name175730%_)
        (let* ((_%thunk175733%_ _%thunk175729%_)
               (_%name175741%_ _%name175730%_)
               (_%f175750%_ _%thunk175733%_)
               (_%args175753%_ '())
               (_%name175756%_ _%name175741%_)
               (_%tgroup175759%_ (system-thread-group))
               (_%f175764%_ _%f175750%_)
               (_%args175780%_ _%args175753%_)
               (_%name175790%_ _%name175756%_))
          (if (or (not _%tgroup175759%_) '#t)
              (let ((_%tgroup175806%_ _%tgroup175759%_))
                (__spawn-actor
                 _%f175764%_
                 _%args175780%_
                 _%name175790%_
                 _%tgroup175806%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 '(? (or not thread-group?))
                 'value:
                 _%tgroup175759%_)
                '#!void)))))
    (define system-actor!
      (lambda (_%thunk175704%_ _%name175705%_)
        (if (procedure? _%thunk175704%_)
            (let ((_%thunk175709%_ _%thunk175704%_))
              (if (symbol? _%name175705%_)
                  (let ((_%name175719%_ _%name175705%_))
                    (__system-actor! _%thunk175709%_ _%name175719%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name175705%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk175704%_)
              '#!void))))
    (define __spawn
      (lambda (_%f175625%_ . _%args175626%_)
        (let* ((_%f175629%_ _%f175625%_)
               (_%f175638%_ _%f175629%_)
               (_%args175641%_ _%args175626%_)
               (_%name175644%_ '#!void)
               (_%tgroup175647%_ '#f)
               (_%f175652%_ _%f175638%_)
               (_%args175668%_ _%args175641%_)
               (_%name175678%_ _%name175644%_))
          (if (let ((_%$e175690%_ '#t)) (and _%$e175690%_ _%$e175690%_))
              (let ((_%tgroup175694%_ _%tgroup175647%_))
                (__spawn-actor
                 _%f175652%_
                 _%args175668%_
                 _%name175678%_
                 _%tgroup175694%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 '(? (or not thread-group?))
                 'value:
                 _%tgroup175647%_)
                '#!void)))))
    (define spawn
      (lambda (_%f175610%_ . _%args175611%_)
        (if (procedure? _%f175610%_)
            (let ((_%f175615%_ _%f175610%_))
              (declare (not safe))
              (##apply __spawn _%f175615%_ _%args175611%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f175610%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name175530%_ _%f175531%_ . _%args175532%_)
        (let* ((_%f175535%_ _%f175531%_)
               (_%f175544%_ _%f175535%_)
               (_%args175547%_ _%args175532%_)
               (_%name175550%_ _%name175530%_)
               (_%tgroup175553%_ '#f)
               (_%f175558%_ _%f175544%_)
               (_%args175574%_ _%args175547%_)
               (_%name175584%_ _%name175550%_))
          (if (let ((_%$e175596%_ '#t)) (and _%$e175596%_ _%$e175596%_))
              (let ((_%tgroup175600%_ _%tgroup175553%_))
                (__spawn-actor
                 _%f175558%_
                 _%args175574%_
                 _%name175584%_
                 _%tgroup175600%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 '(? (or not thread-group?))
                 'value:
                 _%tgroup175553%_)
                '#!void)))))
    (define spawn/name
      (lambda (_%name175514%_ _%f175515%_ . _%args175516%_)
        (if (procedure? _%f175515%_)
            (let ((_%f175520%_ _%f175515%_))
              (declare (not safe))
              (##apply __spawn/name _%name175514%_ _%f175520%_ _%args175516%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f175515%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name175431%_ _%f175432%_ . _%args175433%_)
        (let* ((_%f175436%_ _%f175432%_)
               (_%tgroup175445%_ (make-thread-group _%name175431%_))
               (_%f175447%_ _%f175436%_)
               (_%args175450%_ _%args175433%_)
               (_%name175453%_ _%name175431%_)
               (_%tgroup175456%_ _%tgroup175445%_)
               (_%f175461%_ _%f175447%_)
               (_%args175478%_ _%args175450%_)
               (_%name175488%_ _%name175453%_))
          (if (or (not _%tgroup175456%_) '#t)
              (let ((_%tgroup175504%_ _%tgroup175456%_))
                (__spawn-actor
                 _%f175461%_
                 _%args175478%_
                 _%name175488%_
                 _%tgroup175504%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 '(? (or not thread-group?))
                 'value:
                 _%tgroup175456%_)
                '#!void)))))
    (define spawn/group
      (lambda (_%name175415%_ _%f175416%_ . _%args175417%_)
        (if (procedure? _%f175416%_)
            (let ((_%f175421%_ _%f175416%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name175415%_
                       _%f175421%_
                       _%args175417%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f175416%_)
              '#!void))))
    (define __spawn-actor
      (lambda (_%f175329%_ _%args175330%_ _%name175331%_ _%tgroup175332%_)
        (let* ((_%f175335%_ _%f175329%_)
               (_%args175343%_ _%args175330%_)
               (_%name175351%_ _%name175331%_)
               (_%tgroup175359%_ _%tgroup175332%_)
               (_%thunk175369%_
                (if (null? _%args175343%_)
                    _%f175335%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (##apply _%f175335%_ _%args175343%_)))))
               (_%thunk175406%_
                (lambda ()
                  (let* ((_%thunk175372%_ _%thunk175369%_)
                         (_%error-port175375%_ (current-error-port))
                         (_%thunk175380%_ _%thunk175372%_)
                         (_%error-port175396%_ _%error-port175375%_))
                    (__with-exception-stack-trace__%
                     _%thunk175380%_
                     _%error-port175396%_))))
               (_%tgroup175411%_
                (let ((_%$e175408%_ _%tgroup175359%_))
                  (if _%$e175408%_ _%$e175408%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f)
            (lambda () (thread-main _%thunk175406%_))
            _%name175351%_
            _%tgroup175411%_)))))
    (define spawn-actor
      (lambda (_%f175276%_ _%args175277%_ _%name175278%_ _%tgroup175279%_)
        (if (procedure? _%f175276%_)
            (let ((_%f175283%_ _%f175276%_))
              (if (list? _%args175277%_)
                  (let* ((_%args175293%_ _%args175277%_)
                         (_%name175303%_ _%name175278%_))
                    (if (or (not _%tgroup175279%_)
                            (thread-group? _%tgroup175279%_))
                        (let ((_%tgroup175319%_ _%tgroup175279%_))
                          (__spawn-actor
                           _%f175283%_
                           _%args175293%_
                           _%name175303%_
                           _%tgroup175319%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/thread.ss\"@46.20-46.26"
                           'contract:
                           '(? (or not thread-group?))
                           'value:
                           _%tgroup175279%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@44.20-44.24"
                     'contract:
                     'list?
                     'value:
                     _%args175277%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@43.20-43.21"
               'contract:
               'procedure?
               'value:
               _%f175276%_)
              '#!void))))
    (define spawn-thread__%
      (lambda (_%thunk175253%_ _%name175254%_ _%tgroup175255%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk175253%_))
          _%name175254%_
          _%tgroup175255%_))))
    (define spawn-thread__0
      (lambda (_%thunk175261%_)
        (let* ((_%name175263%_ absent-obj) (_%tgroup175265%_ absent-obj))
          (spawn-thread__% _%thunk175261%_ _%name175263%_ _%tgroup175265%_))))
    (define spawn-thread__1
      (lambda (_%thunk175267%_ _%name175268%_)
        (let ((_%tgroup175270%_ absent-obj))
          (spawn-thread__% _%thunk175267%_ _%name175268%_ _%tgroup175270%_))))
    (define spawn-thread
      (lambda _g176254_
        (let ((_g176255_ (let () (declare (not safe)) (##length _g176254_))))
          (cond ((let () (declare (not safe)) (##fx= _g176255_ 1))
                 (apply spawn-thread__0 _g176254_))
                ((let () (declare (not safe)) (##fx= _g176255_ 2))
                 (apply spawn-thread__1 _g176254_))
                ((let () (declare (not safe)) (##fx= _g176255_ 3))
                 (apply spawn-thread__% _g176254_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g176254_))))))
    (define thread-main
      (lambda (_%thunk175184%_)
        (let* ((_%handler175223%_
                (lambda (_%exn175186%_)
                  (let ((__tmp176256
                         (lambda (_%cont175188%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler175190%_ void)
                                      (_%thunk175194%_
                                       (lambda ()
                                         (__unhandled-actor-exception-hook
                                          _%cont175188%_
                                          _%exn175186%_)))
                                      (_%handler175199%_ _%handler175190%_)
                                      (_%thunk175213%_ _%thunk175194%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler175199%_
                                  _%thunk175213%_))
                               '#!void)
                           (let ((__tmp176257
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont175188%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp176257
                              ##primordial-exception-handler
                              _%exn175186%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp176256))))
               (_%thunk175226%_ _%thunk175184%_)
               (_%handler175231%_ _%handler175223%_))
          (if (procedure? _%thunk175226%_)
              (let ((_%thunk175242%_ _%thunk175226%_))
                (declare (not safe))
                (__with-exception-handler _%handler175231%_ _%thunk175242%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk175226%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key175143%_ _%default175144%_)
        (let* ((_%tab175146%_ (thread-local-table))
               (_%h175148%_ _%tab175146%_)
               (_%key175151%_ _%key175143%_)
               (_%default175154%_ _%default175144%_)
               (_%h175158%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h175148%_)))
               (_%h175160%_ _%h175158%_))
          (declare (not safe))
          (__hash-ref__% _%h175160%_ _%key175151%_ _%default175154%_))))
    (define thread-local-ref__0
      (lambda (_%key175177%_)
        (let ((_%default175179%_ absent-obj))
          (thread-local-ref__% _%key175177%_ _%default175179%_))))
    (define thread-local-ref
      (lambda _g176258_
        (let ((_g176259_ (let () (declare (not safe)) (##length _g176258_))))
          (cond ((let () (declare (not safe)) (##fx= _g176259_ 1))
                 (apply thread-local-ref__0 _g176258_))
                ((let () (declare (not safe)) (##fx= _g176259_ 2))
                 (apply thread-local-ref__% _g176258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g176258_))))))
    (define thread-local-get
      (lambda (_%key175140%_) (thread-local-ref__% _%key175140%_ '#f)))
    (define thread-local-set!
      (lambda (_%key175109%_ _%value175110%_)
        (let* ((_%tab175112%_ (thread-local-table))
               (_%h175114%_ _%tab175112%_)
               (_%key175117%_ _%key175109%_)
               (_%value175120%_ _%value175110%_)
               (_%h175124%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h175114%_)))
               (_%h175126%_ _%h175124%_))
          (declare (not safe))
          (__hash-put! _%h175126%_ _%key175117%_ _%value175120%_))))
    (define thread-local-delete!
      (lambda (_%key175083%_)
        (let* ((_%tab175085%_ (thread-local-table))
               (_%h175087%_ _%tab175085%_)
               (_%key175090%_ _%key175083%_)
               (_%h175094%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h175087%_)))
               (_%h175096%_ _%h175094%_))
          (declare (not safe))
          (__hash-remove! _%h175096%_ _%key175090%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr175014%_ (current-thread)))
          (if (actor-thread? _%thr175014%_)
              (let ((_%$e175017%_ (actor-thread-locals _%thr175014%_)))
                (if _%$e175017%_
                    _%$e175017%_
                    (let ((_%tab175021%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr175014%_ _%tab175021%_)
                      _%tab175021%_)))
              (if (eq? _%thr175014%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e175048%_
                           (let* ((_%h175025%_ __thread-locals)
                                  (_%key175028%_ _%thr175014%_)
                                  (_%h175032%_ _%h175025%_)
                                  (_%h175034%_ _%h175032%_))
                             (declare (not safe))
                             (__hash-get _%h175034%_ _%key175028%_))))
                      (if _%$e175048%_
                          (let ()
                            (mutex-unlock! __thread-locals-mutex)
                            _%$e175048%_)
                          (let ((_%tab175054%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h175056%_ __thread-locals)
                                   (_%key175059%_ _%thr175014%_)
                                   (_%value175062%_ _%tab175054%_)
                                   (_%h175066%_ _%h175056%_)
                                   (_%h175068%_ _%h175066%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h175068%_
                               _%key175059%_
                               _%value175062%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab175054%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value175000%_)
        (let ((_%new-value175003%_ _%new-value175000%_))
          (set! __unhandled-actor-exception-hook _%new-value175003%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value174979%_)
        (if (or (not _%new-value174979%_) (procedure? _%new-value174979%_))
            (let ((_%new-value174990%_ _%new-value174979%_))
              (__unhandled-actor-exception-hook-set! _%new-value174990%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value174979%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx174886%_ _%proc174887%_)
        (let* ((_%mx174890%_ _%mx174886%_)
               (_%proc174898%_ _%proc174887%_)
               (_%handler174907%_ (current-exception-handler))
               (_%handler174946%_
                (lambda (_%e174909%_)
                  (let* ((_%handler174911%_ void)
                         (_%thunk174915%_
                          (lambda ()
                            (mutex-unlock! _%mx174890%_)
                            (let ()
                              (declare (not safe))
                              (_%handler174907%_ _%e174909%_))))
                         (_%handler174920%_ _%handler174911%_)
                         (_%thunk174936%_ _%thunk174915%_))
                    (declare (not safe))
                    (__with-catch _%handler174920%_ _%thunk174936%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e174909%_))))
               (_%thunk174952%_
                (lambda ()
                  (mutex-lock! _%mx174890%_)
                  (let ((_%result174950%_
                         (let () (declare (not safe)) (_%proc174898%_))))
                    (mutex-unlock! _%mx174890%_)
                    _%result174950%_)))
               (_%handler174957%_ _%handler174946%_)
               (_%thunk174968%_ _%thunk174952%_))
          (declare (not safe))
          (__with-exception-handler _%handler174957%_ _%thunk174968%_))))
    (define with-lock
      (lambda (_%mx174861%_ _%proc174862%_)
        (if (mutex? _%mx174861%_)
            (let ((_%mx174866%_ _%mx174861%_))
              (if (procedure? _%proc174862%_)
                  (let ((_%proc174876%_ _%proc174862%_))
                    (__with-lock _%mx174866%_ _%proc174876%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@138.32-138.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc174862%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@138.18-138.20"
               'contract:
               'mutex?
               'value:
               _%mx174861%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx174838%_ _%proc174839%_)
        (let* ((_%mx174842%_ _%mx174838%_) (_%proc174850%_ _%proc174839%_))
          (let ((__tmp176261 (lambda () (mutex-lock! _%mx174842%_)))
                (__tmp176260 (lambda () (mutex-unlock! _%mx174842%_))))
            (declare (not safe))
            (##dynamic-wind __tmp176261 _%proc174850%_ __tmp176260)))))
    (define with-dynamic-lock
      (lambda (_%mx174813%_ _%proc174814%_)
        (if (mutex? _%mx174813%_)
            (let ((_%mx174818%_ _%mx174813%_))
              (if (procedure? _%proc174814%_)
                  (let ((_%proc174828%_ _%proc174814%_))
                    (__with-dynamic-lock _%mx174818%_ _%proc174828%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@154.40-154.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc174814%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@154.26-154.28"
               'contract:
               'mutex?
               'value:
               _%mx174813%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk174744%_ _%error-port174745%_)
        (let* ((_%thunk174748%_ _%thunk174744%_)
               (_%error-port174756%_ _%error-port174745%_)
               (_%handler174771%_
                (let ((_%E174765%_ (current-exception-handler)))
                  (lambda (_%exn174767%_)
                    (let ((__tmp176262
                           (lambda (_%cont174769%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont174769%_
                                  _%exn174767%_
                                  _%error-port174756%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E174765%_ _%exn174767%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp176262)))))
               (_%thunk174774%_ _%thunk174748%_)
               (_%handler174779%_ _%handler174771%_)
               (_%thunk174793%_ _%thunk174774%_))
          (declare (not safe))
          (__with-exception-handler _%handler174779%_ _%thunk174793%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk174806%_)
        (let ((_%error-port174808%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk174806%_
           _%error-port174808%_))))
    (define __with-exception-stack-trace
      (lambda _g176263_
        (let ((_g176264_ (let () (declare (not safe)) (##length _g176263_))))
          (cond ((let () (declare (not safe)) (##fx= _g176264_ 1))
                 (apply __with-exception-stack-trace__0 _g176263_))
                ((let () (declare (not safe)) (##fx= _g176264_ 2))
                 (apply __with-exception-stack-trace__% _g176263_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g176263_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk174708%_ _%error-port174709%_)
        (if (procedure? _%thunk174708%_)
            (let ((_%thunk174713%_ _%thunk174708%_))
              (if (port? _%error-port174709%_)
                  (let ((_%error-port174723%_ _%error-port174709%_))
                    (__with-exception-stack-trace__%
                     _%thunk174713%_
                     _%error-port174723%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@162.35-162.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port174709%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@161.35-161.40"
               'contract:
               'procedure?
               'value:
               _%thunk174708%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk174736%_)
        (let ((_%error-port174738%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk174736%_
           _%error-port174738%_))))
    (define with-exception-stack-trace
      (lambda _g176265_
        (let ((_g176266_ (let () (declare (not safe)) (##length _g176265_))))
          (cond ((let () (declare (not safe)) (##fx= _g176266_ 1))
                 (apply with-exception-stack-trace__0 _g176265_))
                ((let () (declare (not safe)) (##fx= _g176266_ 2))
                 (apply with-exception-stack-trace__% _g176265_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g176265_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont174689%_ _%exn174690%_ _%error-port174691%_)
        (let ((_%out174693%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out174693%_))
          (display '"*** Unhandled exception in " _%out174693%_)
          (display (current-thread) _%out174693%_)
          (newline _%out174693%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn174690%_ _%out174693%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn174690%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out174693%_)
                (newline _%out174693%_)
                (display-continuation-backtrace _%cont174689%_ _%out174693%_)))
          (let ((__tmp176267 (get-output-string _%out174693%_)))
            (declare (not safe))
            (##write-string __tmp176267 _%error-port174691%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont174698%_ _%exn174699%_)
        (let ((_%error-port174701%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont174698%_
           _%exn174699%_
           _%error-port174701%_))))
    (define dump-stack-trace!
      (lambda _g176268_
        (let ((_g176269_ (let () (declare (not safe)) (##length _g176268_))))
          (cond ((let () (declare (not safe)) (##fx= _g176269_ 2))
                 (apply dump-stack-trace!__0 _g176268_))
                ((let () (declare (not safe)) (##fx= _g176269_ 3))
                 (apply dump-stack-trace!__% _g176268_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g176268_))))))
    (define __thread-dead?
      (lambda (_%thread174676%_)
        (let ((_%thread174679%_ _%thread174676%_))
          (not (macro-thread-end-condvar _%thread174679%_)))))
    (define thread-dead?
      (lambda (_%thread174662%_)
        (if (thread? _%thread174662%_)
            (let ((_%thread174666%_ _%thread174662%_))
              (__thread-dead? _%thread174666%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@188.21-188.27"
               'contract:
               'thread?
               'value:
               _%thread174662%_)
              '#!void))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     actor::t
     state
     locals)))
