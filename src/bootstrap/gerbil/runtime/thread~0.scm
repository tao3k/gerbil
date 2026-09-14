(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1789371527)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk175757%_ _%name175758%_)
        (let* ((_%thunk175761%_ _%thunk175757%_)
               (_%name175769%_ _%name175758%_))
          (make-thread
           (lambda () (thread-main _%thunk175761%_))
           _%name175769%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk175732%_ _%name175733%_)
        (if (procedure? _%thunk175732%_)
            (let ((_%thunk175737%_ _%thunk175732%_))
              (if (symbol? _%name175733%_)
                  (let ((_%name175747%_ _%name175733%_))
                    (__make-system-thread _%thunk175737%_ _%name175747%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name175733%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk175732%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk175679%_ _%name175680%_)
        (let* ((_%thunk175683%_ _%thunk175679%_)
               (_%name175691%_ _%name175680%_))
          (thread-start!
           (let* ((_%thunk175700%_ _%thunk175683%_)
                  (_%name175703%_ _%name175691%_)
                  (_%thunk175708%_ _%thunk175700%_)
                  (_%name175722%_ _%name175703%_))
             (__make-system-thread _%thunk175708%_ _%name175722%_))))))
    (define system-thread!
      (lambda (_%thunk175654%_ _%name175655%_)
        (if (procedure? _%thunk175654%_)
            (let ((_%thunk175659%_ _%thunk175654%_))
              (if (symbol? _%name175655%_)
                  (let ((_%name175669%_ _%name175655%_))
                    (__system-thread! _%thunk175659%_ _%name175669%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name175655%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk175654%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk175567%_ _%name175568%_)
        (let* ((_%thunk175571%_ _%thunk175567%_)
               (_%name175579%_ _%name175568%_)
               (_%f175588%_ _%thunk175571%_)
               (_%args175591%_ '())
               (_%name175594%_ _%name175579%_)
               (_%tgroup175597%_ (system-thread-group))
               (_%f175602%_ _%f175588%_)
               (_%args175618%_ _%args175591%_)
               (_%name175628%_ _%name175594%_))
          (if (or (not _%tgroup175597%_) '#t)
              (let ((_%tgroup175644%_ _%tgroup175597%_))
                (__spawn-actor
                 _%f175602%_
                 _%args175618%_
                 _%name175628%_
                 _%tgroup175644%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 '(? (or not thread-group?))
                 'value:
                 _%tgroup175597%_)
                '#!void)))))
    (define system-actor!
      (lambda (_%thunk175542%_ _%name175543%_)
        (if (procedure? _%thunk175542%_)
            (let ((_%thunk175547%_ _%thunk175542%_))
              (if (symbol? _%name175543%_)
                  (let ((_%name175557%_ _%name175543%_))
                    (__system-actor! _%thunk175547%_ _%name175557%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name175543%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk175542%_)
              '#!void))))
    (define __spawn
      (lambda (_%f175463%_ . _%args175464%_)
        (let* ((_%f175467%_ _%f175463%_)
               (_%f175476%_ _%f175467%_)
               (_%args175479%_ _%args175464%_)
               (_%name175482%_ '#!void)
               (_%tgroup175485%_ '#f)
               (_%f175490%_ _%f175476%_)
               (_%args175506%_ _%args175479%_)
               (_%name175516%_ _%name175482%_))
          (if (let ((_%$e175528%_ '#t)) (and _%$e175528%_ _%$e175528%_))
              (let ((_%tgroup175532%_ _%tgroup175485%_))
                (__spawn-actor
                 _%f175490%_
                 _%args175506%_
                 _%name175516%_
                 _%tgroup175532%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 '(? (or not thread-group?))
                 'value:
                 _%tgroup175485%_)
                '#!void)))))
    (define spawn
      (lambda (_%f175448%_ . _%args175449%_)
        (if (procedure? _%f175448%_)
            (let ((_%f175453%_ _%f175448%_))
              (declare (not safe))
              (##apply __spawn _%f175453%_ _%args175449%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f175448%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name175368%_ _%f175369%_ . _%args175370%_)
        (let* ((_%f175373%_ _%f175369%_)
               (_%f175382%_ _%f175373%_)
               (_%args175385%_ _%args175370%_)
               (_%name175388%_ _%name175368%_)
               (_%tgroup175391%_ '#f)
               (_%f175396%_ _%f175382%_)
               (_%args175412%_ _%args175385%_)
               (_%name175422%_ _%name175388%_))
          (if (let ((_%$e175434%_ '#t)) (and _%$e175434%_ _%$e175434%_))
              (let ((_%tgroup175438%_ _%tgroup175391%_))
                (__spawn-actor
                 _%f175396%_
                 _%args175412%_
                 _%name175422%_
                 _%tgroup175438%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 '(? (or not thread-group?))
                 'value:
                 _%tgroup175391%_)
                '#!void)))))
    (define spawn/name
      (lambda (_%name175352%_ _%f175353%_ . _%args175354%_)
        (if (procedure? _%f175353%_)
            (let ((_%f175358%_ _%f175353%_))
              (declare (not safe))
              (##apply __spawn/name _%name175352%_ _%f175358%_ _%args175354%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f175353%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name175269%_ _%f175270%_ . _%args175271%_)
        (let* ((_%f175274%_ _%f175270%_)
               (_%tgroup175283%_ (make-thread-group _%name175269%_))
               (_%f175285%_ _%f175274%_)
               (_%args175288%_ _%args175271%_)
               (_%name175291%_ _%name175269%_)
               (_%tgroup175294%_ _%tgroup175283%_)
               (_%f175299%_ _%f175285%_)
               (_%args175316%_ _%args175288%_)
               (_%name175326%_ _%name175291%_))
          (if (or (not _%tgroup175294%_) '#t)
              (let ((_%tgroup175342%_ _%tgroup175294%_))
                (__spawn-actor
                 _%f175299%_
                 _%args175316%_
                 _%name175326%_
                 _%tgroup175342%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 '(? (or not thread-group?))
                 'value:
                 _%tgroup175294%_)
                '#!void)))))
    (define spawn/group
      (lambda (_%name175253%_ _%f175254%_ . _%args175255%_)
        (if (procedure? _%f175254%_)
            (let ((_%f175259%_ _%f175254%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name175253%_
                       _%f175259%_
                       _%args175255%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f175254%_)
              '#!void))))
    (define __spawn-actor
      (lambda (_%f175167%_ _%args175168%_ _%name175169%_ _%tgroup175170%_)
        (let* ((_%f175173%_ _%f175167%_)
               (_%args175181%_ _%args175168%_)
               (_%name175189%_ _%name175169%_)
               (_%tgroup175197%_ _%tgroup175170%_)
               (_%thunk175207%_
                (if (null? _%args175181%_)
                    _%f175173%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (##apply _%f175173%_ _%args175181%_)))))
               (_%thunk175244%_
                (lambda ()
                  (let* ((_%thunk175210%_ _%thunk175207%_)
                         (_%error-port175213%_ (current-error-port))
                         (_%thunk175218%_ _%thunk175210%_)
                         (_%error-port175234%_ _%error-port175213%_))
                    (__with-exception-stack-trace__%
                     _%thunk175218%_
                     _%error-port175234%_))))
               (_%tgroup175249%_
                (let ((_%$e175246%_ _%tgroup175197%_))
                  (if _%$e175246%_ _%$e175246%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f)
            (lambda () (thread-main _%thunk175244%_))
            _%name175189%_
            _%tgroup175249%_)))))
    (define spawn-actor
      (lambda (_%f175114%_ _%args175115%_ _%name175116%_ _%tgroup175117%_)
        (if (procedure? _%f175114%_)
            (let ((_%f175121%_ _%f175114%_))
              (if (list? _%args175115%_)
                  (let* ((_%args175131%_ _%args175115%_)
                         (_%name175141%_ _%name175116%_))
                    (if (or (not _%tgroup175117%_)
                            (thread-group? _%tgroup175117%_))
                        (let ((_%tgroup175157%_ _%tgroup175117%_))
                          (__spawn-actor
                           _%f175121%_
                           _%args175131%_
                           _%name175141%_
                           _%tgroup175157%_))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/thread.ss\"@46.20-46.26"
                           'contract:
                           '(? (or not thread-group?))
                           'value:
                           _%tgroup175117%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@44.20-44.24"
                     'contract:
                     'list?
                     'value:
                     _%args175115%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@43.20-43.21"
               'contract:
               'procedure?
               'value:
               _%f175114%_)
              '#!void))))
    (define spawn-thread__%
      (lambda (_%thunk175091%_ _%name175092%_ _%tgroup175093%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk175091%_))
          _%name175092%_
          _%tgroup175093%_))))
    (define spawn-thread__0
      (lambda (_%thunk175099%_)
        (let* ((_%name175101%_ absent-obj) (_%tgroup175103%_ absent-obj))
          (spawn-thread__% _%thunk175099%_ _%name175101%_ _%tgroup175103%_))))
    (define spawn-thread__1
      (lambda (_%thunk175105%_ _%name175106%_)
        (let ((_%tgroup175108%_ absent-obj))
          (spawn-thread__% _%thunk175105%_ _%name175106%_ _%tgroup175108%_))))
    (define spawn-thread
      (lambda _g176092_
        (let ((_g176093_ (let () (declare (not safe)) (##length _g176092_))))
          (cond ((let () (declare (not safe)) (##fx= _g176093_ 1))
                 (apply spawn-thread__0 _g176092_))
                ((let () (declare (not safe)) (##fx= _g176093_ 2))
                 (apply spawn-thread__1 _g176092_))
                ((let () (declare (not safe)) (##fx= _g176093_ 3))
                 (apply spawn-thread__% _g176092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g176092_))))))
    (define thread-main
      (lambda (_%thunk175022%_)
        (let* ((_%handler175061%_
                (lambda (_%exn175024%_)
                  (let ((__tmp176094
                         (lambda (_%cont175026%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler175028%_ void)
                                      (_%thunk175032%_
                                       (lambda ()
                                         (__unhandled-actor-exception-hook
                                          _%cont175026%_
                                          _%exn175024%_)))
                                      (_%handler175037%_ _%handler175028%_)
                                      (_%thunk175051%_ _%thunk175032%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler175037%_
                                  _%thunk175051%_))
                               '#!void)
                           (let ((__tmp176095
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont175026%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp176095
                              ##primordial-exception-handler
                              _%exn175024%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp176094))))
               (_%thunk175064%_ _%thunk175022%_)
               (_%handler175069%_ _%handler175061%_))
          (if (procedure? _%thunk175064%_)
              (let ((_%thunk175080%_ _%thunk175064%_))
                (declare (not safe))
                (__with-exception-handler _%handler175069%_ _%thunk175080%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk175064%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key174981%_ _%default174982%_)
        (let* ((_%tab174984%_ (thread-local-table))
               (_%h174986%_ _%tab174984%_)
               (_%key174989%_ _%key174981%_)
               (_%default174992%_ _%default174982%_)
               (_%h174996%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h174986%_)))
               (_%h174998%_ _%h174996%_))
          (declare (not safe))
          (__hash-ref__% _%h174998%_ _%key174989%_ _%default174992%_))))
    (define thread-local-ref__0
      (lambda (_%key175015%_)
        (let ((_%default175017%_ absent-obj))
          (thread-local-ref__% _%key175015%_ _%default175017%_))))
    (define thread-local-ref
      (lambda _g176096_
        (let ((_g176097_ (let () (declare (not safe)) (##length _g176096_))))
          (cond ((let () (declare (not safe)) (##fx= _g176097_ 1))
                 (apply thread-local-ref__0 _g176096_))
                ((let () (declare (not safe)) (##fx= _g176097_ 2))
                 (apply thread-local-ref__% _g176096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g176096_))))))
    (define thread-local-get
      (lambda (_%key174978%_) (thread-local-ref__% _%key174978%_ '#f)))
    (define thread-local-set!
      (lambda (_%key174947%_ _%value174948%_)
        (let* ((_%tab174950%_ (thread-local-table))
               (_%h174952%_ _%tab174950%_)
               (_%key174955%_ _%key174947%_)
               (_%value174958%_ _%value174948%_)
               (_%h174962%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h174952%_)))
               (_%h174964%_ _%h174962%_))
          (declare (not safe))
          (__hash-put! _%h174964%_ _%key174955%_ _%value174958%_))))
    (define thread-local-delete!
      (lambda (_%key174921%_)
        (let* ((_%tab174923%_ (thread-local-table))
               (_%h174925%_ _%tab174923%_)
               (_%key174928%_ _%key174921%_)
               (_%h174932%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h174925%_)))
               (_%h174934%_ _%h174932%_))
          (declare (not safe))
          (__hash-remove! _%h174934%_ _%key174928%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr174852%_ (current-thread)))
          (if (actor-thread? _%thr174852%_)
              (let ((_%$e174855%_ (actor-thread-locals _%thr174852%_)))
                (if _%$e174855%_
                    _%$e174855%_
                    (let ((_%tab174859%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr174852%_ _%tab174859%_)
                      _%tab174859%_)))
              (if (eq? _%thr174852%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e174886%_
                           (let* ((_%h174863%_ __thread-locals)
                                  (_%key174866%_ _%thr174852%_)
                                  (_%h174870%_ _%h174863%_)
                                  (_%h174872%_ _%h174870%_))
                             (declare (not safe))
                             (__hash-get _%h174872%_ _%key174866%_))))
                      (if _%$e174886%_
                          (let ()
                            (mutex-unlock! __thread-locals-mutex)
                            _%$e174886%_)
                          (let ((_%tab174892%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h174894%_ __thread-locals)
                                   (_%key174897%_ _%thr174852%_)
                                   (_%value174900%_ _%tab174892%_)
                                   (_%h174904%_ _%h174894%_)
                                   (_%h174906%_ _%h174904%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h174906%_
                               _%key174897%_
                               _%value174900%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab174892%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value174838%_)
        (let ((_%new-value174841%_ _%new-value174838%_))
          (set! __unhandled-actor-exception-hook _%new-value174841%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value174817%_)
        (if (or (not _%new-value174817%_) (procedure? _%new-value174817%_))
            (let ((_%new-value174828%_ _%new-value174817%_))
              (__unhandled-actor-exception-hook-set! _%new-value174828%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value174817%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx174724%_ _%proc174725%_)
        (let* ((_%mx174728%_ _%mx174724%_)
               (_%proc174736%_ _%proc174725%_)
               (_%handler174745%_ (current-exception-handler))
               (_%handler174784%_
                (lambda (_%e174747%_)
                  (let* ((_%handler174749%_ void)
                         (_%thunk174753%_
                          (lambda ()
                            (mutex-unlock! _%mx174728%_)
                            (let ()
                              (declare (not safe))
                              (_%handler174745%_ _%e174747%_))))
                         (_%handler174758%_ _%handler174749%_)
                         (_%thunk174774%_ _%thunk174753%_))
                    (declare (not safe))
                    (__with-catch _%handler174758%_ _%thunk174774%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e174747%_))))
               (_%thunk174790%_
                (lambda ()
                  (mutex-lock! _%mx174728%_)
                  (let ((_%result174788%_
                         (let () (declare (not safe)) (_%proc174736%_))))
                    (mutex-unlock! _%mx174728%_)
                    _%result174788%_)))
               (_%handler174795%_ _%handler174784%_)
               (_%thunk174806%_ _%thunk174790%_))
          (declare (not safe))
          (__with-exception-handler _%handler174795%_ _%thunk174806%_))))
    (define with-lock
      (lambda (_%mx174699%_ _%proc174700%_)
        (if (mutex? _%mx174699%_)
            (let ((_%mx174704%_ _%mx174699%_))
              (if (procedure? _%proc174700%_)
                  (let ((_%proc174714%_ _%proc174700%_))
                    (__with-lock _%mx174704%_ _%proc174714%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@138.32-138.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc174700%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@138.18-138.20"
               'contract:
               'mutex?
               'value:
               _%mx174699%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx174676%_ _%proc174677%_)
        (let* ((_%mx174680%_ _%mx174676%_) (_%proc174688%_ _%proc174677%_))
          (let ((__tmp176099 (lambda () (mutex-lock! _%mx174680%_)))
                (__tmp176098 (lambda () (mutex-unlock! _%mx174680%_))))
            (declare (not safe))
            (##dynamic-wind __tmp176099 _%proc174688%_ __tmp176098)))))
    (define with-dynamic-lock
      (lambda (_%mx174651%_ _%proc174652%_)
        (if (mutex? _%mx174651%_)
            (let ((_%mx174656%_ _%mx174651%_))
              (if (procedure? _%proc174652%_)
                  (let ((_%proc174666%_ _%proc174652%_))
                    (__with-dynamic-lock _%mx174656%_ _%proc174666%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@154.40-154.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc174652%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@154.26-154.28"
               'contract:
               'mutex?
               'value:
               _%mx174651%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk174582%_ _%error-port174583%_)
        (let* ((_%thunk174586%_ _%thunk174582%_)
               (_%error-port174594%_ _%error-port174583%_)
               (_%handler174609%_
                (let ((_%E174603%_ (current-exception-handler)))
                  (lambda (_%exn174605%_)
                    (let ((__tmp176100
                           (lambda (_%cont174607%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont174607%_
                                  _%exn174605%_
                                  _%error-port174594%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E174603%_ _%exn174605%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp176100)))))
               (_%thunk174612%_ _%thunk174586%_)
               (_%handler174617%_ _%handler174609%_)
               (_%thunk174631%_ _%thunk174612%_))
          (declare (not safe))
          (__with-exception-handler _%handler174617%_ _%thunk174631%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk174644%_)
        (let ((_%error-port174646%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk174644%_
           _%error-port174646%_))))
    (define __with-exception-stack-trace
      (lambda _g176101_
        (let ((_g176102_ (let () (declare (not safe)) (##length _g176101_))))
          (cond ((let () (declare (not safe)) (##fx= _g176102_ 1))
                 (apply __with-exception-stack-trace__0 _g176101_))
                ((let () (declare (not safe)) (##fx= _g176102_ 2))
                 (apply __with-exception-stack-trace__% _g176101_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g176101_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk174546%_ _%error-port174547%_)
        (if (procedure? _%thunk174546%_)
            (let ((_%thunk174551%_ _%thunk174546%_))
              (if (port? _%error-port174547%_)
                  (let ((_%error-port174561%_ _%error-port174547%_))
                    (__with-exception-stack-trace__%
                     _%thunk174551%_
                     _%error-port174561%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@162.35-162.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port174547%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@161.35-161.40"
               'contract:
               'procedure?
               'value:
               _%thunk174546%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk174574%_)
        (let ((_%error-port174576%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk174574%_
           _%error-port174576%_))))
    (define with-exception-stack-trace
      (lambda _g176103_
        (let ((_g176104_ (let () (declare (not safe)) (##length _g176103_))))
          (cond ((let () (declare (not safe)) (##fx= _g176104_ 1))
                 (apply with-exception-stack-trace__0 _g176103_))
                ((let () (declare (not safe)) (##fx= _g176104_ 2))
                 (apply with-exception-stack-trace__% _g176103_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g176103_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont174527%_ _%exn174528%_ _%error-port174529%_)
        (let ((_%out174531%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out174531%_))
          (display '"*** Unhandled exception in " _%out174531%_)
          (display (current-thread) _%out174531%_)
          (newline _%out174531%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn174528%_ _%out174531%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn174528%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out174531%_)
                (newline _%out174531%_)
                (display-continuation-backtrace _%cont174527%_ _%out174531%_)))
          (let ((__tmp176105 (get-output-string _%out174531%_)))
            (declare (not safe))
            (##write-string __tmp176105 _%error-port174529%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont174536%_ _%exn174537%_)
        (let ((_%error-port174539%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont174536%_
           _%exn174537%_
           _%error-port174539%_))))
    (define dump-stack-trace!
      (lambda _g176106_
        (let ((_g176107_ (let () (declare (not safe)) (##length _g176106_))))
          (cond ((let () (declare (not safe)) (##fx= _g176107_ 2))
                 (apply dump-stack-trace!__0 _g176106_))
                ((let () (declare (not safe)) (##fx= _g176107_ 3))
                 (apply dump-stack-trace!__% _g176106_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g176106_))))))
    (define __thread-dead?
      (lambda (_%thread174514%_)
        (let ((_%thread174517%_ _%thread174514%_))
          (not (macro-thread-end-condvar _%thread174517%_)))))
    (define thread-dead?
      (lambda (_%thread174500%_)
        (if (thread? _%thread174500%_)
            (let ((_%thread174504%_ _%thread174500%_))
              (__thread-dead? _%thread174504%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@188.21-188.27"
               'contract:
               'thread?
               'value:
               _%thread174500%_)
              '#!void))))
    (define-type-of-thread
     actor-thread
     constructor:
     construct-actor-thread
     id:
     actor::t
     state
     locals)))
