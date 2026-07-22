(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1784758123)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk173746%_ _%name173747%_)
        (let* ((_%thunk173750%_ _%thunk173746%_)
               (_%name173758%_ _%name173747%_))
          (make-thread
           (lambda () (thread-main _%thunk173750%_))
           _%name173758%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk173721%_ _%name173722%_)
        (if (procedure? _%thunk173721%_)
            (let ((_%thunk173726%_ _%thunk173721%_))
              (if (symbol? _%name173722%_)
                  (let ((_%name173736%_ _%name173722%_))
                    (__make-system-thread _%thunk173726%_ _%name173736%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name173722%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk173721%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk173668%_ _%name173669%_)
        (let* ((_%thunk173672%_ _%thunk173668%_)
               (_%name173680%_ _%name173669%_))
          (thread-start!
           (let* ((_%thunk173689%_ _%thunk173672%_)
                  (_%name173692%_ _%name173680%_)
                  (_%thunk173697%_ _%thunk173689%_)
                  (_%name173711%_ _%name173692%_))
             (__make-system-thread _%thunk173697%_ _%name173711%_))))))
    (define system-thread!
      (lambda (_%thunk173643%_ _%name173644%_)
        (if (procedure? _%thunk173643%_)
            (let ((_%thunk173648%_ _%thunk173643%_))
              (if (symbol? _%name173644%_)
                  (let ((_%name173658%_ _%name173644%_))
                    (__system-thread! _%thunk173648%_ _%name173658%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name173644%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk173643%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk173556%_ _%name173557%_)
        (let* ((_%thunk173560%_ _%thunk173556%_)
               (_%name173568%_ _%name173557%_)
               (_%f173577%_ _%thunk173560%_)
               (_%args173580%_ '())
               (_%name173583%_ _%name173568%_)
               (_%tgroup173586%_ (system-thread-group))
               (_%f173591%_ _%f173577%_)
               (_%args173607%_ _%args173580%_))
          (if '#t
              (let ((_%name173617%_ _%name173583%_))
                (if (or (not _%tgroup173586%_) '#t)
                    (let ((_%tgroup173633%_ _%tgroup173586%_))
                      (__spawn-actor
                       _%f173591%_
                       _%args173607%_
                       _%name173617%_
                       _%tgroup173633%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       '(? (or not thread-group?))
                       'value:
                       _%tgroup173586%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'true
                 'value:
                 _%name173583%_)
                '#!void)))))
    (define system-actor!
      (lambda (_%thunk173531%_ _%name173532%_)
        (if (procedure? _%thunk173531%_)
            (let ((_%thunk173536%_ _%thunk173531%_))
              (if (symbol? _%name173532%_)
                  (let ((_%name173546%_ _%name173532%_))
                    (__system-actor! _%thunk173536%_ _%name173546%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name173532%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk173531%_)
              '#!void))))
    (define __spawn
      (lambda (_%f173452%_ . _%args173453%_)
        (let* ((_%f173456%_ _%f173452%_)
               (_%f173465%_ _%f173456%_)
               (_%args173468%_ _%args173453%_)
               (_%name173471%_ '#!void)
               (_%tgroup173474%_ '#f)
               (_%f173479%_ _%f173465%_)
               (_%args173495%_ _%args173468%_))
          (if '#t
              (let ((_%name173505%_ _%name173471%_))
                (if (let ((_%$e173517%_ '#t)) (and _%$e173517%_ _%$e173517%_))
                    (let ((_%tgroup173521%_ _%tgroup173474%_))
                      (__spawn-actor
                       _%f173479%_
                       _%args173495%_
                       _%name173505%_
                       _%tgroup173521%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       '(? (or not thread-group?))
                       'value:
                       _%tgroup173474%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'true
                 'value:
                 _%name173471%_)
                '#!void)))))
    (define spawn
      (lambda (_%f173437%_ . _%args173438%_)
        (if (procedure? _%f173437%_)
            (let ((_%f173442%_ _%f173437%_))
              (declare (not safe))
              (##apply __spawn _%f173442%_ _%args173438%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f173437%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name173357%_ _%f173358%_ . _%args173359%_)
        (let* ((_%f173362%_ _%f173358%_)
               (_%f173371%_ _%f173362%_)
               (_%args173374%_ _%args173359%_)
               (_%name173377%_ _%name173357%_)
               (_%tgroup173380%_ '#f)
               (_%f173385%_ _%f173371%_)
               (_%args173401%_ _%args173374%_))
          (if '#t
              (let ((_%name173411%_ _%name173377%_))
                (if (let ((_%$e173423%_ '#t)) (and _%$e173423%_ _%$e173423%_))
                    (let ((_%tgroup173427%_ _%tgroup173380%_))
                      (__spawn-actor
                       _%f173385%_
                       _%args173401%_
                       _%name173411%_
                       _%tgroup173427%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       '(? (or not thread-group?))
                       'value:
                       _%tgroup173380%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'true
                 'value:
                 _%name173377%_)
                '#!void)))))
    (define spawn/name
      (lambda (_%name173341%_ _%f173342%_ . _%args173343%_)
        (if (procedure? _%f173342%_)
            (let ((_%f173347%_ _%f173342%_))
              (declare (not safe))
              (##apply __spawn/name _%name173341%_ _%f173347%_ _%args173343%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f173342%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name173258%_ _%f173259%_ . _%args173260%_)
        (let* ((_%f173263%_ _%f173259%_)
               (_%tgroup173272%_ (make-thread-group _%name173258%_))
               (_%f173274%_ _%f173263%_)
               (_%args173277%_ _%args173260%_)
               (_%name173280%_ _%name173258%_)
               (_%tgroup173283%_ _%tgroup173272%_)
               (_%f173288%_ _%f173274%_)
               (_%args173305%_ _%args173277%_))
          (if '#t
              (let ((_%name173315%_ _%name173280%_))
                (if (or (not _%tgroup173283%_) '#t)
                    (let ((_%tgroup173331%_ _%tgroup173283%_))
                      (__spawn-actor
                       _%f173288%_
                       _%args173305%_
                       _%name173315%_
                       _%tgroup173331%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       '(? (or not thread-group?))
                       'value:
                       _%tgroup173283%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'true
                 'value:
                 _%name173280%_)
                '#!void)))))
    (define spawn/group
      (lambda (_%name173242%_ _%f173243%_ . _%args173244%_)
        (if (procedure? _%f173243%_)
            (let ((_%f173248%_ _%f173243%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name173242%_
                       _%f173248%_
                       _%args173244%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f173243%_)
              '#!void))))
    (define __spawn-actor
      (lambda (_%f173156%_ _%args173157%_ _%name173158%_ _%tgroup173159%_)
        (let* ((_%f173162%_ _%f173156%_)
               (_%args173170%_ _%args173157%_)
               (_%name173178%_ _%name173158%_)
               (_%tgroup173186%_ _%tgroup173159%_)
               (_%thunk173196%_
                (if (null? _%args173170%_)
                    _%f173162%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (##apply _%f173162%_ _%args173170%_)))))
               (_%thunk173233%_
                (lambda ()
                  (let* ((_%thunk173199%_ _%thunk173196%_)
                         (_%error-port173202%_ (current-error-port))
                         (_%thunk173207%_ _%thunk173199%_)
                         (_%error-port173223%_ _%error-port173202%_))
                    (__with-exception-stack-trace__%
                     _%thunk173207%_
                     _%error-port173223%_))))
               (_%tgroup173238%_
                (let ((_%$e173235%_ _%tgroup173186%_))
                  (if _%$e173235%_ _%$e173235%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk173233%_))
            _%name173178%_
            _%tgroup173238%_)))))
    (define spawn-actor
      (lambda (_%f173103%_ _%args173104%_ _%name173105%_ _%tgroup173106%_)
        (if (procedure? _%f173103%_)
            (let ((_%f173110%_ _%f173103%_))
              (if (list? _%args173104%_)
                  (let ((_%args173120%_ _%args173104%_))
                    (if '#t
                        (let ((_%name173130%_ _%name173105%_))
                          (if (or (not _%tgroup173106%_)
                                  (thread-group? _%tgroup173106%_))
                              (let ((_%tgroup173146%_ _%tgroup173106%_))
                                (__spawn-actor
                                 _%f173110%_
                                 _%args173120%_
                                 _%name173130%_
                                 _%tgroup173146%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/thread.ss\"@46.20-46.26"
                                 'contract:
                                 '(? (or not thread-group?))
                                 'value:
                                 _%tgroup173106%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/thread.ss\"@45.20-45.24"
                           'contract:
                           'true
                           'value:
                           _%name173105%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@44.20-44.24"
                     'contract:
                     'list?
                     'value:
                     _%args173104%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@43.20-43.21"
               'contract:
               'procedure?
               'value:
               _%f173103%_)
              '#!void))))
    (define spawn-thread__%
      (lambda (_%thunk173080%_ _%name173081%_ _%tgroup173082%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk173080%_))
          _%name173081%_
          _%tgroup173082%_))))
    (define spawn-thread__0
      (lambda (_%thunk173088%_)
        (let* ((_%name173090%_ absent-obj) (_%tgroup173092%_ absent-obj))
          (spawn-thread__% _%thunk173088%_ _%name173090%_ _%tgroup173092%_))))
    (define spawn-thread__1
      (lambda (_%thunk173094%_ _%name173095%_)
        (let ((_%tgroup173097%_ absent-obj))
          (spawn-thread__% _%thunk173094%_ _%name173095%_ _%tgroup173097%_))))
    (define spawn-thread
      (lambda _g174081_
        (let ((_g174082_ (let () (declare (not safe)) (##length _g174081_))))
          (cond ((let () (declare (not safe)) (##fx= _g174082_ 1))
                 (apply spawn-thread__0 _g174081_))
                ((let () (declare (not safe)) (##fx= _g174082_ 2))
                 (apply spawn-thread__1 _g174081_))
                ((let () (declare (not safe)) (##fx= _g174082_ 3))
                 (apply spawn-thread__% _g174081_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g174081_))))))
    (define thread-main
      (lambda (_%thunk173011%_)
        (let* ((_%handler173050%_
                (lambda (_%exn173013%_)
                  (let ((__tmp174083
                         (lambda (_%cont173015%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler173017%_ void)
                                      (_%thunk173021%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont173015%_
                                            _%exn173013%_))))
                                      (_%handler173026%_ _%handler173017%_)
                                      (_%thunk173040%_ _%thunk173021%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler173026%_
                                  _%thunk173040%_))
                               '#!void)
                           (let ((__tmp174084
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont173015%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp174084
                              ##primordial-exception-handler
                              _%exn173013%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp174083))))
               (_%thunk173053%_ _%thunk173011%_)
               (_%handler173058%_ _%handler173050%_))
          (if (procedure? _%thunk173053%_)
              (let ((_%thunk173069%_ _%thunk173053%_))
                (declare (not safe))
                (__with-exception-handler _%handler173058%_ _%thunk173069%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk173053%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key172970%_ _%default172971%_)
        (let* ((_%tab172973%_ (thread-local-table))
               (_%h172975%_ _%tab172973%_)
               (_%key172978%_ _%key172970%_)
               (_%default172981%_ _%default172971%_)
               (_%h172985%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h172975%_)))
               (_%h172987%_ _%h172985%_))
          (declare (not safe))
          (__hash-ref__% _%h172987%_ _%key172978%_ _%default172981%_))))
    (define thread-local-ref__0
      (lambda (_%key173004%_)
        (let ((_%default173006%_ absent-obj))
          (thread-local-ref__% _%key173004%_ _%default173006%_))))
    (define thread-local-ref
      (lambda _g174085_
        (let ((_g174086_ (let () (declare (not safe)) (##length _g174085_))))
          (cond ((let () (declare (not safe)) (##fx= _g174086_ 1))
                 (apply thread-local-ref__0 _g174085_))
                ((let () (declare (not safe)) (##fx= _g174086_ 2))
                 (apply thread-local-ref__% _g174085_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g174085_))))))
    (define thread-local-get
      (lambda (_%key172967%_) (thread-local-ref__% _%key172967%_ '#f)))
    (define thread-local-set!
      (lambda (_%key172936%_ _%value172937%_)
        (let* ((_%tab172939%_ (thread-local-table))
               (_%h172941%_ _%tab172939%_)
               (_%key172944%_ _%key172936%_)
               (_%value172947%_ _%value172937%_)
               (_%h172951%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h172941%_)))
               (_%h172953%_ _%h172951%_))
          (declare (not safe))
          (__hash-put! _%h172953%_ _%key172944%_ _%value172947%_))))
    (define thread-local-delete!
      (lambda (_%key172910%_)
        (let* ((_%tab172912%_ (thread-local-table))
               (_%h172914%_ _%tab172912%_)
               (_%key172917%_ _%key172910%_)
               (_%h172921%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h172914%_)))
               (_%h172923%_ _%h172921%_))
          (declare (not safe))
          (__hash-remove! _%h172923%_ _%key172917%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr172841%_ (current-thread)))
          (if (actor-thread? _%thr172841%_)
              (let ((_%$e172844%_ (actor-thread-locals _%thr172841%_)))
                (if _%$e172844%_
                    _%$e172844%_
                    (let ((_%tab172848%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr172841%_ _%tab172848%_)
                      _%tab172848%_)))
              (if (eq? _%thr172841%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e172875%_
                           (let* ((_%h172852%_ __thread-locals)
                                  (_%key172855%_ _%thr172841%_)
                                  (_%h172859%_ _%h172852%_)
                                  (_%h172861%_ _%h172859%_))
                             (declare (not safe))
                             (__hash-get _%h172861%_ _%key172855%_))))
                      (if _%$e172875%_
                          (let ()
                            (mutex-unlock! __thread-locals-mutex)
                            _%$e172875%_)
                          (let ((_%tab172881%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h172883%_ __thread-locals)
                                   (_%key172886%_ _%thr172841%_)
                                   (_%value172889%_ _%tab172881%_)
                                   (_%h172893%_ _%h172883%_)
                                   (_%h172895%_ _%h172893%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h172895%_
                               _%key172886%_
                               _%value172889%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab172881%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value172827%_)
        (let ((_%new-value172830%_ _%new-value172827%_))
          (set! __unhandled-actor-exception-hook _%new-value172830%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value172806%_)
        (if (or (not _%new-value172806%_) (procedure? _%new-value172806%_))
            (let ((_%new-value172817%_ _%new-value172806%_))
              (__unhandled-actor-exception-hook-set! _%new-value172817%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value172806%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx172713%_ _%proc172714%_)
        (let* ((_%mx172717%_ _%mx172713%_)
               (_%proc172725%_ _%proc172714%_)
               (_%handler172734%_ (current-exception-handler))
               (_%handler172773%_
                (lambda (_%e172736%_)
                  (let* ((_%handler172738%_ void)
                         (_%thunk172742%_
                          (lambda ()
                            (mutex-unlock! _%mx172717%_)
                            (let ()
                              (declare (not safe))
                              (_%handler172734%_ _%e172736%_))))
                         (_%handler172747%_ _%handler172738%_)
                         (_%thunk172763%_ _%thunk172742%_))
                    (declare (not safe))
                    (__with-catch _%handler172747%_ _%thunk172763%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e172736%_))))
               (_%thunk172779%_
                (lambda ()
                  (mutex-lock! _%mx172717%_)
                  (let ((_%result172777%_
                         (let () (declare (not safe)) (_%proc172725%_))))
                    (mutex-unlock! _%mx172717%_)
                    _%result172777%_)))
               (_%handler172784%_ _%handler172773%_)
               (_%thunk172795%_ _%thunk172779%_))
          (declare (not safe))
          (__with-exception-handler _%handler172784%_ _%thunk172795%_))))
    (define with-lock
      (lambda (_%mx172688%_ _%proc172689%_)
        (if (mutex? _%mx172688%_)
            (let ((_%mx172693%_ _%mx172688%_))
              (if (procedure? _%proc172689%_)
                  (let ((_%proc172703%_ _%proc172689%_))
                    (__with-lock _%mx172693%_ _%proc172703%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@138.32-138.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc172689%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@138.18-138.20"
               'contract:
               'mutex?
               'value:
               _%mx172688%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx172665%_ _%proc172666%_)
        (let* ((_%mx172669%_ _%mx172665%_) (_%proc172677%_ _%proc172666%_))
          (let ((__tmp174088 (lambda () (mutex-lock! _%mx172669%_)))
                (__tmp174087 (lambda () (mutex-unlock! _%mx172669%_))))
            (declare (not safe))
            (##dynamic-wind __tmp174088 _%proc172677%_ __tmp174087)))))
    (define with-dynamic-lock
      (lambda (_%mx172640%_ _%proc172641%_)
        (if (mutex? _%mx172640%_)
            (let ((_%mx172645%_ _%mx172640%_))
              (if (procedure? _%proc172641%_)
                  (let ((_%proc172655%_ _%proc172641%_))
                    (__with-dynamic-lock _%mx172645%_ _%proc172655%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@154.40-154.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc172641%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@154.26-154.28"
               'contract:
               'mutex?
               'value:
               _%mx172640%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk172571%_ _%error-port172572%_)
        (let* ((_%thunk172575%_ _%thunk172571%_)
               (_%error-port172583%_ _%error-port172572%_)
               (_%handler172598%_
                (let ((_%E172592%_ (current-exception-handler)))
                  (lambda (_%exn172594%_)
                    (let ((__tmp174089
                           (lambda (_%cont172596%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont172596%_
                                  _%exn172594%_
                                  _%error-port172583%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E172592%_ _%exn172594%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp174089)))))
               (_%thunk172601%_ _%thunk172575%_)
               (_%handler172606%_ _%handler172598%_)
               (_%thunk172620%_ _%thunk172601%_))
          (declare (not safe))
          (__with-exception-handler _%handler172606%_ _%thunk172620%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk172633%_)
        (let ((_%error-port172635%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk172633%_
           _%error-port172635%_))))
    (define __with-exception-stack-trace
      (lambda _g174090_
        (let ((_g174091_ (let () (declare (not safe)) (##length _g174090_))))
          (cond ((let () (declare (not safe)) (##fx= _g174091_ 1))
                 (apply __with-exception-stack-trace__0 _g174090_))
                ((let () (declare (not safe)) (##fx= _g174091_ 2))
                 (apply __with-exception-stack-trace__% _g174090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g174090_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk172535%_ _%error-port172536%_)
        (if (procedure? _%thunk172535%_)
            (let ((_%thunk172540%_ _%thunk172535%_))
              (if (port? _%error-port172536%_)
                  (let ((_%error-port172550%_ _%error-port172536%_))
                    (__with-exception-stack-trace__%
                     _%thunk172540%_
                     _%error-port172550%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@162.35-162.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port172536%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@161.35-161.40"
               'contract:
               'procedure?
               'value:
               _%thunk172535%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk172563%_)
        (let ((_%error-port172565%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk172563%_
           _%error-port172565%_))))
    (define with-exception-stack-trace
      (lambda _g174092_
        (let ((_g174093_ (let () (declare (not safe)) (##length _g174092_))))
          (cond ((let () (declare (not safe)) (##fx= _g174093_ 1))
                 (apply with-exception-stack-trace__0 _g174092_))
                ((let () (declare (not safe)) (##fx= _g174093_ 2))
                 (apply with-exception-stack-trace__% _g174092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g174092_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont172516%_ _%exn172517%_ _%error-port172518%_)
        (let ((_%out172520%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out172520%_))
          (display '"*** Unhandled exception in " _%out172520%_)
          (display (current-thread) _%out172520%_)
          (newline _%out172520%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn172517%_ _%out172520%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn172517%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out172520%_)
                (newline _%out172520%_)
                (display-continuation-backtrace _%cont172516%_ _%out172520%_)))
          (let ((__tmp174094 (get-output-string _%out172520%_)))
            (declare (not safe))
            (##write-string __tmp174094 _%error-port172518%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont172525%_ _%exn172526%_)
        (let ((_%error-port172528%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont172525%_
           _%exn172526%_
           _%error-port172528%_))))
    (define dump-stack-trace!
      (lambda _g174095_
        (let ((_g174096_ (let () (declare (not safe)) (##length _g174095_))))
          (cond ((let () (declare (not safe)) (##fx= _g174096_ 2))
                 (apply dump-stack-trace!__0 _g174095_))
                ((let () (declare (not safe)) (##fx= _g174096_ 3))
                 (apply dump-stack-trace!__% _g174095_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g174095_))))))
    (define __thread-dead?
      (lambda (_%thread172503%_)
        (let ((_%thread172506%_ _%thread172503%_))
          (not (macro-thread-end-condvar _%thread172506%_)))))
    (define thread-dead?
      (lambda (_%thread172489%_)
        (if (thread? _%thread172489%_)
            (let ((_%thread172493%_ _%thread172489%_))
              (__thread-dead? _%thread172493%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@188.21-188.27"
               'contract:
               'thread?
               'value:
               _%thread172489%_)
              '#!void))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     actor::t
     state
     locals
     nonce)))
