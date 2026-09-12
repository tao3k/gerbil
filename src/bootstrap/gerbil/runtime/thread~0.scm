(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1789188907)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk173729%_ _%name173730%_)
        (let* ((_%thunk173733%_ _%thunk173729%_)
               (_%name173741%_ _%name173730%_))
          (make-thread
           (lambda () (thread-main _%thunk173733%_))
           _%name173741%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk173704%_ _%name173705%_)
        (if (procedure? _%thunk173704%_)
            (let ((_%thunk173709%_ _%thunk173704%_))
              (if (symbol? _%name173705%_)
                  (let ((_%name173719%_ _%name173705%_))
                    (__make-system-thread _%thunk173709%_ _%name173719%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name173705%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk173704%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk173651%_ _%name173652%_)
        (let* ((_%thunk173655%_ _%thunk173651%_)
               (_%name173663%_ _%name173652%_))
          (thread-start!
           (let* ((_%thunk173672%_ _%thunk173655%_)
                  (_%name173675%_ _%name173663%_)
                  (_%thunk173680%_ _%thunk173672%_)
                  (_%name173694%_ _%name173675%_))
             (__make-system-thread _%thunk173680%_ _%name173694%_))))))
    (define system-thread!
      (lambda (_%thunk173626%_ _%name173627%_)
        (if (procedure? _%thunk173626%_)
            (let ((_%thunk173631%_ _%thunk173626%_))
              (if (symbol? _%name173627%_)
                  (let ((_%name173641%_ _%name173627%_))
                    (__system-thread! _%thunk173631%_ _%name173641%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name173627%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk173626%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk173539%_ _%name173540%_)
        (let* ((_%thunk173543%_ _%thunk173539%_)
               (_%name173551%_ _%name173540%_)
               (_%f173560%_ _%thunk173543%_)
               (_%args173563%_ '())
               (_%name173566%_ _%name173551%_)
               (_%tgroup173569%_ (system-thread-group))
               (_%f173574%_ _%f173560%_)
               (_%args173590%_ _%args173563%_))
          (if '#t
              (let ((_%name173600%_ _%name173566%_))
                (if (or (not _%tgroup173569%_) '#t)
                    (let ((_%tgroup173616%_ _%tgroup173569%_))
                      (__spawn-actor
                       _%f173574%_
                       _%args173590%_
                       _%name173600%_
                       _%tgroup173616%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       '(? (or not thread-group?))
                       'value:
                       _%tgroup173569%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'true
                 'value:
                 _%name173566%_)
                '#!void)))))
    (define system-actor!
      (lambda (_%thunk173514%_ _%name173515%_)
        (if (procedure? _%thunk173514%_)
            (let ((_%thunk173519%_ _%thunk173514%_))
              (if (symbol? _%name173515%_)
                  (let ((_%name173529%_ _%name173515%_))
                    (__system-actor! _%thunk173519%_ _%name173529%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name173515%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk173514%_)
              '#!void))))
    (define __spawn
      (lambda (_%f173435%_ . _%args173436%_)
        (let* ((_%f173439%_ _%f173435%_)
               (_%f173448%_ _%f173439%_)
               (_%args173451%_ _%args173436%_)
               (_%name173454%_ '#!void)
               (_%tgroup173457%_ '#f)
               (_%f173462%_ _%f173448%_)
               (_%args173478%_ _%args173451%_))
          (if '#t
              (let ((_%name173488%_ _%name173454%_))
                (if (let ((_%$e173500%_ '#t)) (and _%$e173500%_ _%$e173500%_))
                    (let ((_%tgroup173504%_ _%tgroup173457%_))
                      (__spawn-actor
                       _%f173462%_
                       _%args173478%_
                       _%name173488%_
                       _%tgroup173504%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       '(? (or not thread-group?))
                       'value:
                       _%tgroup173457%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'true
                 'value:
                 _%name173454%_)
                '#!void)))))
    (define spawn
      (lambda (_%f173420%_ . _%args173421%_)
        (if (procedure? _%f173420%_)
            (let ((_%f173425%_ _%f173420%_))
              (declare (not safe))
              (##apply __spawn _%f173425%_ _%args173421%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f173420%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name173340%_ _%f173341%_ . _%args173342%_)
        (let* ((_%f173345%_ _%f173341%_)
               (_%f173354%_ _%f173345%_)
               (_%args173357%_ _%args173342%_)
               (_%name173360%_ _%name173340%_)
               (_%tgroup173363%_ '#f)
               (_%f173368%_ _%f173354%_)
               (_%args173384%_ _%args173357%_))
          (if '#t
              (let ((_%name173394%_ _%name173360%_))
                (if (let ((_%$e173406%_ '#t)) (and _%$e173406%_ _%$e173406%_))
                    (let ((_%tgroup173410%_ _%tgroup173363%_))
                      (__spawn-actor
                       _%f173368%_
                       _%args173384%_
                       _%name173394%_
                       _%tgroup173410%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       '(? (or not thread-group?))
                       'value:
                       _%tgroup173363%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'true
                 'value:
                 _%name173360%_)
                '#!void)))))
    (define spawn/name
      (lambda (_%name173324%_ _%f173325%_ . _%args173326%_)
        (if (procedure? _%f173325%_)
            (let ((_%f173330%_ _%f173325%_))
              (declare (not safe))
              (##apply __spawn/name _%name173324%_ _%f173330%_ _%args173326%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f173325%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name173241%_ _%f173242%_ . _%args173243%_)
        (let* ((_%f173246%_ _%f173242%_)
               (_%tgroup173255%_ (make-thread-group _%name173241%_))
               (_%f173257%_ _%f173246%_)
               (_%args173260%_ _%args173243%_)
               (_%name173263%_ _%name173241%_)
               (_%tgroup173266%_ _%tgroup173255%_)
               (_%f173271%_ _%f173257%_)
               (_%args173288%_ _%args173260%_))
          (if '#t
              (let ((_%name173298%_ _%name173263%_))
                (if (or (not _%tgroup173266%_) '#t)
                    (let ((_%tgroup173314%_ _%tgroup173266%_))
                      (__spawn-actor
                       _%f173271%_
                       _%args173288%_
                       _%name173298%_
                       _%tgroup173314%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       '(? (or not thread-group?))
                       'value:
                       _%tgroup173266%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'true
                 'value:
                 _%name173263%_)
                '#!void)))))
    (define spawn/group
      (lambda (_%name173225%_ _%f173226%_ . _%args173227%_)
        (if (procedure? _%f173226%_)
            (let ((_%f173231%_ _%f173226%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name173225%_
                       _%f173231%_
                       _%args173227%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f173226%_)
              '#!void))))
    (define __spawn-actor
      (lambda (_%f173139%_ _%args173140%_ _%name173141%_ _%tgroup173142%_)
        (let* ((_%f173145%_ _%f173139%_)
               (_%args173153%_ _%args173140%_)
               (_%name173161%_ _%name173141%_)
               (_%tgroup173169%_ _%tgroup173142%_)
               (_%thunk173179%_
                (if (null? _%args173153%_)
                    _%f173145%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (##apply _%f173145%_ _%args173153%_)))))
               (_%thunk173216%_
                (lambda ()
                  (let* ((_%thunk173182%_ _%thunk173179%_)
                         (_%error-port173185%_ (current-error-port))
                         (_%thunk173190%_ _%thunk173182%_)
                         (_%error-port173206%_ _%error-port173185%_))
                    (__with-exception-stack-trace__%
                     _%thunk173190%_
                     _%error-port173206%_))))
               (_%tgroup173221%_
                (let ((_%$e173218%_ _%tgroup173169%_))
                  (if _%$e173218%_ _%$e173218%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f)
            (lambda () (thread-main _%thunk173216%_))
            _%name173161%_
            _%tgroup173221%_)))))
    (define spawn-actor
      (lambda (_%f173086%_ _%args173087%_ _%name173088%_ _%tgroup173089%_)
        (if (procedure? _%f173086%_)
            (let ((_%f173093%_ _%f173086%_))
              (if (list? _%args173087%_)
                  (let ((_%args173103%_ _%args173087%_))
                    (if '#t
                        (let ((_%name173113%_ _%name173088%_))
                          (if (or (not _%tgroup173089%_)
                                  (thread-group? _%tgroup173089%_))
                              (let ((_%tgroup173129%_ _%tgroup173089%_))
                                (__spawn-actor
                                 _%f173093%_
                                 _%args173103%_
                                 _%name173113%_
                                 _%tgroup173129%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/thread.ss\"@46.20-46.26"
                                 'contract:
                                 '(? (or not thread-group?))
                                 'value:
                                 _%tgroup173089%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/thread.ss\"@45.20-45.24"
                           'contract:
                           'true
                           'value:
                           _%name173088%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@44.20-44.24"
                     'contract:
                     'list?
                     'value:
                     _%args173087%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@43.20-43.21"
               'contract:
               'procedure?
               'value:
               _%f173086%_)
              '#!void))))
    (define spawn-thread__%
      (lambda (_%thunk173063%_ _%name173064%_ _%tgroup173065%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk173063%_))
          _%name173064%_
          _%tgroup173065%_))))
    (define spawn-thread__0
      (lambda (_%thunk173071%_)
        (let* ((_%name173073%_ absent-obj) (_%tgroup173075%_ absent-obj))
          (spawn-thread__% _%thunk173071%_ _%name173073%_ _%tgroup173075%_))))
    (define spawn-thread__1
      (lambda (_%thunk173077%_ _%name173078%_)
        (let ((_%tgroup173080%_ absent-obj))
          (spawn-thread__% _%thunk173077%_ _%name173078%_ _%tgroup173080%_))))
    (define spawn-thread
      (lambda _g174064_
        (let ((_g174065_ (let () (declare (not safe)) (##length _g174064_))))
          (cond ((let () (declare (not safe)) (##fx= _g174065_ 1))
                 (apply spawn-thread__0 _g174064_))
                ((let () (declare (not safe)) (##fx= _g174065_ 2))
                 (apply spawn-thread__1 _g174064_))
                ((let () (declare (not safe)) (##fx= _g174065_ 3))
                 (apply spawn-thread__% _g174064_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g174064_))))))
    (define thread-main
      (lambda (_%thunk172994%_)
        (let* ((_%handler173033%_
                (lambda (_%exn172996%_)
                  (let ((__tmp174066
                         (lambda (_%cont172998%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler173000%_ void)
                                      (_%thunk173004%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont172998%_
                                            _%exn172996%_))))
                                      (_%handler173009%_ _%handler173000%_)
                                      (_%thunk173023%_ _%thunk173004%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler173009%_
                                  _%thunk173023%_))
                               '#!void)
                           (let ((__tmp174067
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont172998%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp174067
                              ##primordial-exception-handler
                              _%exn172996%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp174066))))
               (_%thunk173036%_ _%thunk172994%_)
               (_%handler173041%_ _%handler173033%_))
          (if (procedure? _%thunk173036%_)
              (let ((_%thunk173052%_ _%thunk173036%_))
                (declare (not safe))
                (__with-exception-handler _%handler173041%_ _%thunk173052%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk173036%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key172953%_ _%default172954%_)
        (let* ((_%tab172956%_ (thread-local-table))
               (_%h172958%_ _%tab172956%_)
               (_%key172961%_ _%key172953%_)
               (_%default172964%_ _%default172954%_)
               (_%h172968%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h172958%_)))
               (_%h172970%_ _%h172968%_))
          (declare (not safe))
          (__hash-ref__% _%h172970%_ _%key172961%_ _%default172964%_))))
    (define thread-local-ref__0
      (lambda (_%key172987%_)
        (let ((_%default172989%_ absent-obj))
          (thread-local-ref__% _%key172987%_ _%default172989%_))))
    (define thread-local-ref
      (lambda _g174068_
        (let ((_g174069_ (let () (declare (not safe)) (##length _g174068_))))
          (cond ((let () (declare (not safe)) (##fx= _g174069_ 1))
                 (apply thread-local-ref__0 _g174068_))
                ((let () (declare (not safe)) (##fx= _g174069_ 2))
                 (apply thread-local-ref__% _g174068_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g174068_))))))
    (define thread-local-get
      (lambda (_%key172950%_) (thread-local-ref__% _%key172950%_ '#f)))
    (define thread-local-set!
      (lambda (_%key172919%_ _%value172920%_)
        (let* ((_%tab172922%_ (thread-local-table))
               (_%h172924%_ _%tab172922%_)
               (_%key172927%_ _%key172919%_)
               (_%value172930%_ _%value172920%_)
               (_%h172934%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h172924%_)))
               (_%h172936%_ _%h172934%_))
          (declare (not safe))
          (__hash-put! _%h172936%_ _%key172927%_ _%value172930%_))))
    (define thread-local-delete!
      (lambda (_%key172893%_)
        (let* ((_%tab172895%_ (thread-local-table))
               (_%h172897%_ _%tab172895%_)
               (_%key172900%_ _%key172893%_)
               (_%h172904%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h172897%_)))
               (_%h172906%_ _%h172904%_))
          (declare (not safe))
          (__hash-remove! _%h172906%_ _%key172900%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr172824%_ (current-thread)))
          (if (actor-thread? _%thr172824%_)
              (let ((_%$e172827%_ (actor-thread-locals _%thr172824%_)))
                (if _%$e172827%_
                    _%$e172827%_
                    (let ((_%tab172831%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr172824%_ _%tab172831%_)
                      _%tab172831%_)))
              (if (eq? _%thr172824%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e172858%_
                           (let* ((_%h172835%_ __thread-locals)
                                  (_%key172838%_ _%thr172824%_)
                                  (_%h172842%_ _%h172835%_)
                                  (_%h172844%_ _%h172842%_))
                             (declare (not safe))
                             (__hash-get _%h172844%_ _%key172838%_))))
                      (if _%$e172858%_
                          (let ()
                            (mutex-unlock! __thread-locals-mutex)
                            _%$e172858%_)
                          (let ((_%tab172864%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h172866%_ __thread-locals)
                                   (_%key172869%_ _%thr172824%_)
                                   (_%value172872%_ _%tab172864%_)
                                   (_%h172876%_ _%h172866%_)
                                   (_%h172878%_ _%h172876%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h172878%_
                               _%key172869%_
                               _%value172872%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab172864%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value172810%_)
        (let ((_%new-value172813%_ _%new-value172810%_))
          (set! __unhandled-actor-exception-hook _%new-value172813%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value172789%_)
        (if (or (not _%new-value172789%_) (procedure? _%new-value172789%_))
            (let ((_%new-value172800%_ _%new-value172789%_))
              (__unhandled-actor-exception-hook-set! _%new-value172800%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value172789%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx172696%_ _%proc172697%_)
        (let* ((_%mx172700%_ _%mx172696%_)
               (_%proc172708%_ _%proc172697%_)
               (_%handler172717%_ (current-exception-handler))
               (_%handler172756%_
                (lambda (_%e172719%_)
                  (let* ((_%handler172721%_ void)
                         (_%thunk172725%_
                          (lambda ()
                            (mutex-unlock! _%mx172700%_)
                            (let ()
                              (declare (not safe))
                              (_%handler172717%_ _%e172719%_))))
                         (_%handler172730%_ _%handler172721%_)
                         (_%thunk172746%_ _%thunk172725%_))
                    (declare (not safe))
                    (__with-catch _%handler172730%_ _%thunk172746%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e172719%_))))
               (_%thunk172762%_
                (lambda ()
                  (mutex-lock! _%mx172700%_)
                  (let ((_%result172760%_
                         (let () (declare (not safe)) (_%proc172708%_))))
                    (mutex-unlock! _%mx172700%_)
                    _%result172760%_)))
               (_%handler172767%_ _%handler172756%_)
               (_%thunk172778%_ _%thunk172762%_))
          (declare (not safe))
          (__with-exception-handler _%handler172767%_ _%thunk172778%_))))
    (define with-lock
      (lambda (_%mx172671%_ _%proc172672%_)
        (if (mutex? _%mx172671%_)
            (let ((_%mx172676%_ _%mx172671%_))
              (if (procedure? _%proc172672%_)
                  (let ((_%proc172686%_ _%proc172672%_))
                    (__with-lock _%mx172676%_ _%proc172686%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@138.32-138.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc172672%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@138.18-138.20"
               'contract:
               'mutex?
               'value:
               _%mx172671%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx172648%_ _%proc172649%_)
        (let* ((_%mx172652%_ _%mx172648%_) (_%proc172660%_ _%proc172649%_))
          (let ((__tmp174071 (lambda () (mutex-lock! _%mx172652%_)))
                (__tmp174070 (lambda () (mutex-unlock! _%mx172652%_))))
            (declare (not safe))
            (##dynamic-wind __tmp174071 _%proc172660%_ __tmp174070)))))
    (define with-dynamic-lock
      (lambda (_%mx172623%_ _%proc172624%_)
        (if (mutex? _%mx172623%_)
            (let ((_%mx172628%_ _%mx172623%_))
              (if (procedure? _%proc172624%_)
                  (let ((_%proc172638%_ _%proc172624%_))
                    (__with-dynamic-lock _%mx172628%_ _%proc172638%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@154.40-154.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc172624%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@154.26-154.28"
               'contract:
               'mutex?
               'value:
               _%mx172623%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk172554%_ _%error-port172555%_)
        (let* ((_%thunk172558%_ _%thunk172554%_)
               (_%error-port172566%_ _%error-port172555%_)
               (_%handler172581%_
                (let ((_%E172575%_ (current-exception-handler)))
                  (lambda (_%exn172577%_)
                    (let ((__tmp174072
                           (lambda (_%cont172579%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont172579%_
                                  _%exn172577%_
                                  _%error-port172566%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E172575%_ _%exn172577%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp174072)))))
               (_%thunk172584%_ _%thunk172558%_)
               (_%handler172589%_ _%handler172581%_)
               (_%thunk172603%_ _%thunk172584%_))
          (declare (not safe))
          (__with-exception-handler _%handler172589%_ _%thunk172603%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk172616%_)
        (let ((_%error-port172618%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk172616%_
           _%error-port172618%_))))
    (define __with-exception-stack-trace
      (lambda _g174073_
        (let ((_g174074_ (let () (declare (not safe)) (##length _g174073_))))
          (cond ((let () (declare (not safe)) (##fx= _g174074_ 1))
                 (apply __with-exception-stack-trace__0 _g174073_))
                ((let () (declare (not safe)) (##fx= _g174074_ 2))
                 (apply __with-exception-stack-trace__% _g174073_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g174073_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk172518%_ _%error-port172519%_)
        (if (procedure? _%thunk172518%_)
            (let ((_%thunk172523%_ _%thunk172518%_))
              (if (port? _%error-port172519%_)
                  (let ((_%error-port172533%_ _%error-port172519%_))
                    (__with-exception-stack-trace__%
                     _%thunk172523%_
                     _%error-port172533%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@162.35-162.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port172519%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@161.35-161.40"
               'contract:
               'procedure?
               'value:
               _%thunk172518%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk172546%_)
        (let ((_%error-port172548%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk172546%_
           _%error-port172548%_))))
    (define with-exception-stack-trace
      (lambda _g174075_
        (let ((_g174076_ (let () (declare (not safe)) (##length _g174075_))))
          (cond ((let () (declare (not safe)) (##fx= _g174076_ 1))
                 (apply with-exception-stack-trace__0 _g174075_))
                ((let () (declare (not safe)) (##fx= _g174076_ 2))
                 (apply with-exception-stack-trace__% _g174075_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g174075_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont172499%_ _%exn172500%_ _%error-port172501%_)
        (let ((_%out172503%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out172503%_))
          (display '"*** Unhandled exception in " _%out172503%_)
          (display (current-thread) _%out172503%_)
          (newline _%out172503%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn172500%_ _%out172503%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn172500%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out172503%_)
                (newline _%out172503%_)
                (display-continuation-backtrace _%cont172499%_ _%out172503%_)))
          (let ((__tmp174077 (get-output-string _%out172503%_)))
            (declare (not safe))
            (##write-string __tmp174077 _%error-port172501%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont172508%_ _%exn172509%_)
        (let ((_%error-port172511%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont172508%_
           _%exn172509%_
           _%error-port172511%_))))
    (define dump-stack-trace!
      (lambda _g174078_
        (let ((_g174079_ (let () (declare (not safe)) (##length _g174078_))))
          (cond ((let () (declare (not safe)) (##fx= _g174079_ 2))
                 (apply dump-stack-trace!__0 _g174078_))
                ((let () (declare (not safe)) (##fx= _g174079_ 3))
                 (apply dump-stack-trace!__% _g174078_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g174078_))))))
    (define __thread-dead?
      (lambda (_%thread172486%_)
        (let ((_%thread172489%_ _%thread172486%_))
          (not (macro-thread-end-condvar _%thread172489%_)))))
    (define thread-dead?
      (lambda (_%thread172472%_)
        (if (thread? _%thread172472%_)
            (let ((_%thread172476%_ _%thread172472%_))
              (__thread-dead? _%thread172476%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@188.21-188.27"
               'contract:
               'thread?
               'value:
               _%thread172472%_)
              '#!void))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     actor::t
     state
     locals)))
