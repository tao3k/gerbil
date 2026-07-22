(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/thread::timestamp 1784461442)
  (begin
    (define __system_thread-group (make-thread-group 'system))
    (define system-thread-group (lambda () __system_thread-group))
    (define __make-system-thread
      (lambda (_%thunk173525%_ _%name173526%_)
        (let* ((_%thunk173529%_ _%thunk173525%_)
               (_%name173537%_ _%name173526%_))
          (make-thread
           (lambda () (thread-main _%thunk173529%_))
           _%name173537%_
           (system-thread-group)))))
    (define make-system-thread
      (lambda (_%thunk173500%_ _%name173501%_)
        (if (procedure? _%thunk173500%_)
            (let ((_%thunk173505%_ _%thunk173500%_))
              (if (symbol? _%name173501%_)
                  (let ((_%name173515%_ _%name173501%_))
                    (__make-system-thread _%thunk173505%_ _%name173515%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@18.48-18.52"
                     'contract:
                     'symbol?
                     'value:
                     _%name173501%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@18.27-18.32"
               'contract:
               'procedure?
               'value:
               _%thunk173500%_)
              '#!void))))
    (define __system-thread!
      (lambda (_%thunk173447%_ _%name173448%_)
        (let* ((_%thunk173451%_ _%thunk173447%_)
               (_%name173459%_ _%name173448%_))
          (thread-start!
           (let* ((_%thunk173468%_ _%thunk173451%_)
                  (_%name173471%_ _%name173459%_)
                  (_%thunk173476%_ _%thunk173468%_)
                  (_%name173490%_ _%name173471%_))
             (__make-system-thread _%thunk173476%_ _%name173490%_))))))
    (define system-thread!
      (lambda (_%thunk173422%_ _%name173423%_)
        (if (procedure? _%thunk173422%_)
            (let ((_%thunk173427%_ _%thunk173422%_))
              (if (symbol? _%name173423%_)
                  (let ((_%name173437%_ _%name173423%_))
                    (__system-thread! _%thunk173427%_ _%name173437%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@21.44-21.48"
                     'contract:
                     'symbol?
                     'value:
                     _%name173423%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@21.23-21.28"
               'contract:
               'procedure?
               'value:
               _%thunk173422%_)
              '#!void))))
    (define __system-actor!
      (lambda (_%thunk173335%_ _%name173336%_)
        (let* ((_%thunk173339%_ _%thunk173335%_)
               (_%name173347%_ _%name173336%_)
               (_%f173356%_ _%thunk173339%_)
               (_%args173359%_ '())
               (_%name173362%_ _%name173347%_)
               (_%tgroup173365%_ (system-thread-group))
               (_%f173370%_ _%f173356%_)
               (_%args173386%_ _%args173359%_))
          (if '#t
              (let ((_%name173396%_ _%name173362%_))
                (if (or (not _%tgroup173365%_) '#t)
                    (let ((_%tgroup173412%_ _%tgroup173365%_))
                      (__spawn-actor
                       _%f173370%_
                       _%args173386%_
                       _%name173396%_
                       _%tgroup173412%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       '(? (or not thread-group?))
                       'value:
                       _%tgroup173365%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'true
                 'value:
                 _%name173362%_)
                '#!void)))))
    (define system-actor!
      (lambda (_%thunk173310%_ _%name173311%_)
        (if (procedure? _%thunk173310%_)
            (let ((_%thunk173315%_ _%thunk173310%_))
              (if (symbol? _%name173311%_)
                  (let ((_%name173325%_ _%name173311%_))
                    (__system-actor! _%thunk173315%_ _%name173325%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@24.43-24.47"
                     'contract:
                     'symbol?
                     'value:
                     _%name173311%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@24.22-24.27"
               'contract:
               'procedure?
               'value:
               _%thunk173310%_)
              '#!void))))
    (define __spawn
      (lambda (_%f173231%_ . _%args173232%_)
        (let* ((_%f173235%_ _%f173231%_)
               (_%f173244%_ _%f173235%_)
               (_%args173247%_ _%args173232%_)
               (_%name173250%_ '#!void)
               (_%tgroup173253%_ '#f)
               (_%f173258%_ _%f173244%_)
               (_%args173274%_ _%args173247%_))
          (if '#t
              (let ((_%name173284%_ _%name173250%_))
                (if (let ((_%$e173296%_ '#t)) (and _%$e173296%_ _%$e173296%_))
                    (let ((_%tgroup173300%_ _%tgroup173253%_))
                      (__spawn-actor
                       _%f173258%_
                       _%args173274%_
                       _%name173284%_
                       _%tgroup173300%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       '(? (or not thread-group?))
                       'value:
                       _%tgroup173253%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'true
                 'value:
                 _%name173250%_)
                '#!void)))))
    (define spawn
      (lambda (_%f173216%_ . _%args173217%_)
        (if (procedure? _%f173216%_)
            (let ((_%f173221%_ _%f173216%_))
              (declare (not safe))
              (##apply __spawn _%f173221%_ _%args173217%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@28.14-28.15"
               'contract:
               'procedure?
               'value:
               _%f173216%_)
              '#!void))))
    (define __spawn/name
      (lambda (_%name173136%_ _%f173137%_ . _%args173138%_)
        (let* ((_%f173141%_ _%f173137%_)
               (_%f173150%_ _%f173141%_)
               (_%args173153%_ _%args173138%_)
               (_%name173156%_ _%name173136%_)
               (_%tgroup173159%_ '#f)
               (_%f173164%_ _%f173150%_)
               (_%args173180%_ _%args173153%_))
          (if '#t
              (let ((_%name173190%_ _%name173156%_))
                (if (let ((_%$e173202%_ '#t)) (and _%$e173202%_ _%$e173202%_))
                    (let ((_%tgroup173206%_ _%tgroup173159%_))
                      (__spawn-actor
                       _%f173164%_
                       _%args173180%_
                       _%name173190%_
                       _%tgroup173206%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       '(? (or not thread-group?))
                       'value:
                       _%tgroup173159%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'true
                 'value:
                 _%name173156%_)
                '#!void)))))
    (define spawn/name
      (lambda (_%name173120%_ _%f173121%_ . _%args173122%_)
        (if (procedure? _%f173121%_)
            (let ((_%f173126%_ _%f173121%_))
              (declare (not safe))
              (##apply __spawn/name _%name173120%_ _%f173126%_ _%args173122%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@33.24-33.25"
               'contract:
               'procedure?
               'value:
               _%f173121%_)
              '#!void))))
    (define __spawn/group
      (lambda (_%name173037%_ _%f173038%_ . _%args173039%_)
        (let* ((_%f173042%_ _%f173038%_)
               (_%tgroup173051%_ (make-thread-group _%name173037%_))
               (_%f173053%_ _%f173042%_)
               (_%args173056%_ _%args173039%_)
               (_%name173059%_ _%name173037%_)
               (_%tgroup173062%_ _%tgroup173051%_)
               (_%f173067%_ _%f173053%_)
               (_%args173084%_ _%args173056%_))
          (if '#t
              (let ((_%name173094%_ _%name173059%_))
                (if (or (not _%tgroup173062%_) '#t)
                    (let ((_%tgroup173110%_ _%tgroup173062%_))
                      (__spawn-actor
                       _%f173067%_
                       _%args173084%_
                       _%name173094%_
                       _%tgroup173110%_))
                    (begin
                      (raise-contract-violation-error
                       '"contract violation"
                       'context:
                       'gerbil/runtime/thread
                       'contract:
                       '(? (or not thread-group?))
                       'value:
                       _%tgroup173062%_)
                      '#!void)))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'true
                 'value:
                 _%name173059%_)
                '#!void)))))
    (define spawn/group
      (lambda (_%name173021%_ _%f173022%_ . _%args173023%_)
        (if (procedure? _%f173022%_)
            (let ((_%f173027%_ _%f173022%_))
              (declare (not safe))
              (##apply __spawn/group
                       _%name173021%_
                       _%f173027%_
                       _%args173023%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@38.25-38.26"
               'contract:
               'procedure?
               'value:
               _%f173022%_)
              '#!void))))
    (define __spawn-actor
      (lambda (_%f172935%_ _%args172936%_ _%name172937%_ _%tgroup172938%_)
        (let* ((_%f172941%_ _%f172935%_)
               (_%args172949%_ _%args172936%_)
               (_%name172957%_ _%name172937%_)
               (_%tgroup172965%_ _%tgroup172938%_)
               (_%thunk172975%_
                (if (null? _%args172949%_)
                    _%f172941%_
                    (lambda ()
                      (let ()
                        (declare (not safe))
                        (##apply _%f172941%_ _%args172949%_)))))
               (_%thunk173012%_
                (lambda ()
                  (let* ((_%thunk172978%_ _%thunk172975%_)
                         (_%error-port172981%_ (current-error-port))
                         (_%thunk172986%_ _%thunk172978%_)
                         (_%error-port173002%_ _%error-port172981%_))
                    (__with-exception-stack-trace__%
                     _%thunk172986%_
                     _%error-port173002%_))))
               (_%tgroup173017%_
                (let ((_%$e173014%_ _%tgroup172965%_))
                  (if _%$e173014%_ _%$e173014%_ (current-thread-group)))))
          (thread-start!
           (thread-init!
            (construct-actor-thread '#f '#f '0)
            (lambda () (thread-main _%thunk173012%_))
            _%name172957%_
            _%tgroup173017%_)))))
    (define spawn-actor
      (lambda (_%f172882%_ _%args172883%_ _%name172884%_ _%tgroup172885%_)
        (if (procedure? _%f172882%_)
            (let ((_%f172889%_ _%f172882%_))
              (if (list? _%args172883%_)
                  (let ((_%args172899%_ _%args172883%_))
                    (if '#t
                        (let ((_%name172909%_ _%name172884%_))
                          (if (or (not _%tgroup172885%_)
                                  (thread-group? _%tgroup172885%_))
                              (let ((_%tgroup172925%_ _%tgroup172885%_))
                                (__spawn-actor
                                 _%f172889%_
                                 _%args172899%_
                                 _%name172909%_
                                 _%tgroup172925%_))
                              (begin
                                (raise-contract-violation-error
                                 '"contract violation"
                                 'context:
                                 '"\"gerbil/runtime/thread.ss\"@46.20-46.26"
                                 'contract:
                                 '(? (or not thread-group?))
                                 'value:
                                 _%tgroup172885%_)
                                '#!void)))
                        (begin
                          (raise-contract-violation-error
                           '"contract violation"
                           'context:
                           '"\"gerbil/runtime/thread.ss\"@45.20-45.24"
                           'contract:
                           'true
                           'value:
                           _%name172884%_)
                          '#!void)))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@44.20-44.24"
                     'contract:
                     'list?
                     'value:
                     _%args172883%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@43.20-43.21"
               'contract:
               'procedure?
               'value:
               _%f172882%_)
              '#!void))))
    (define spawn-thread__%
      (lambda (_%thunk172859%_ _%name172860%_ _%tgroup172861%_)
        (thread-start!
         (make-thread
          (lambda () (thread-main _%thunk172859%_))
          _%name172860%_
          _%tgroup172861%_))))
    (define spawn-thread__0
      (lambda (_%thunk172867%_)
        (let* ((_%name172869%_ absent-obj) (_%tgroup172871%_ absent-obj))
          (spawn-thread__% _%thunk172867%_ _%name172869%_ _%tgroup172871%_))))
    (define spawn-thread__1
      (lambda (_%thunk172873%_ _%name172874%_)
        (let ((_%tgroup172876%_ absent-obj))
          (spawn-thread__% _%thunk172873%_ _%name172874%_ _%tgroup172876%_))))
    (define spawn-thread
      (lambda _g173860_
        (let ((_g173861_ (let () (declare (not safe)) (##length _g173860_))))
          (cond ((let () (declare (not safe)) (##fx= _g173861_ 1))
                 (apply spawn-thread__0 _g173860_))
                ((let () (declare (not safe)) (##fx= _g173861_ 2))
                 (apply spawn-thread__1 _g173860_))
                ((let () (declare (not safe)) (##fx= _g173861_ 3))
                 (apply spawn-thread__% _g173860_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  spawn-thread
                  _g173860_))))))
    (define thread-main
      (lambda (_%thunk172790%_)
        (let* ((_%handler172829%_
                (lambda (_%exn172792%_)
                  (let ((__tmp173862
                         (lambda (_%cont172794%_)
                           (if (procedure? __unhandled-actor-exception-hook)
                               (let* ((_%handler172796%_ void)
                                      (_%thunk172800%_
                                       (lambda ()
                                         (let ()
                                           (declare (not safe))
                                           (__unhandled-actor-exception-hook
                                            _%cont172794%_
                                            _%exn172792%_))))
                                      (_%handler172805%_ _%handler172796%_)
                                      (_%thunk172819%_ _%thunk172800%_))
                                 (declare (not safe))
                                 (__with-catch
                                  _%handler172805%_
                                  _%thunk172819%_))
                               '#!void)
                           (let ((__tmp173863
                                  (let ()
                                    (declare (not safe))
                                    (##continuation-last _%cont172794%_))))
                             (declare (not safe))
                             (##continuation-graft
                              __tmp173863
                              ##primordial-exception-handler
                              _%exn172792%_)))))
                    (declare (not safe))
                    (##continuation-capture __tmp173862))))
               (_%thunk172832%_ _%thunk172790%_)
               (_%handler172837%_ _%handler172829%_))
          (if (procedure? _%thunk172832%_)
              (let ((_%thunk172848%_ _%thunk172832%_))
                (declare (not safe))
                (__with-exception-handler _%handler172837%_ _%thunk172848%_))
              (begin
                (raise-contract-violation-error
                 '"contract violation"
                 'context:
                 'gerbil/runtime/thread
                 'contract:
                 'procedure?
                 'value:
                 _%thunk172832%_)
                '#!void)))))
    (define thread-local-ref__%
      (lambda (_%key172749%_ _%default172750%_)
        (let* ((_%tab172752%_ (thread-local-table))
               (_%h172754%_ _%tab172752%_)
               (_%key172757%_ _%key172749%_)
               (_%default172760%_ _%default172750%_)
               (_%h172764%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h172754%_)))
               (_%h172766%_ _%h172764%_))
          (declare (not safe))
          (__hash-ref__% _%h172766%_ _%key172757%_ _%default172760%_))))
    (define thread-local-ref__0
      (lambda (_%key172783%_)
        (let ((_%default172785%_ absent-obj))
          (thread-local-ref__% _%key172783%_ _%default172785%_))))
    (define thread-local-ref
      (lambda _g173864_
        (let ((_g173865_ (let () (declare (not safe)) (##length _g173864_))))
          (cond ((let () (declare (not safe)) (##fx= _g173865_ 1))
                 (apply thread-local-ref__0 _g173864_))
                ((let () (declare (not safe)) (##fx= _g173865_ 2))
                 (apply thread-local-ref__% _g173864_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  thread-local-ref
                  _g173864_))))))
    (define thread-local-get
      (lambda (_%key172746%_) (thread-local-ref__% _%key172746%_ '#f)))
    (define thread-local-set!
      (lambda (_%key172715%_ _%value172716%_)
        (let* ((_%tab172718%_ (thread-local-table))
               (_%h172720%_ _%tab172718%_)
               (_%key172723%_ _%key172715%_)
               (_%value172726%_ _%value172716%_)
               (_%h172730%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h172720%_)))
               (_%h172732%_ _%h172730%_))
          (declare (not safe))
          (__hash-put! _%h172732%_ _%key172723%_ _%value172726%_))))
    (define thread-local-delete!
      (lambda (_%key172689%_)
        (let* ((_%tab172691%_ (thread-local-table))
               (_%h172693%_ _%tab172691%_)
               (_%key172696%_ _%key172689%_)
               (_%h172700%_
                (let ()
                  (declare (not safe))
                  (cast HashTable::interface _%h172693%_)))
               (_%h172702%_ _%h172700%_))
          (declare (not safe))
          (__hash-remove! _%h172702%_ _%key172696%_))))
    (define thread-local-table
      (lambda ()
        (let ((_%thr172620%_ (current-thread)))
          (if (actor-thread? _%thr172620%_)
              (let ((_%$e172623%_ (actor-thread-locals _%thr172620%_)))
                (if _%$e172623%_
                    _%$e172623%_
                    (let ((_%tab172627%_
                           (let () (declare (not safe)) (make-hash-table-eq))))
                      (actor-thread-locals-set! _%thr172620%_ _%tab172627%_)
                      _%tab172627%_)))
              (if (eq? _%thr172620%_ ##primordial-thread)
                  __primordial-thread-locals
                  (let ()
                    (mutex-lock! __thread-locals-mutex)
                    (let ((_%$e172654%_
                           (let* ((_%h172631%_ __thread-locals)
                                  (_%key172634%_ _%thr172620%_)
                                  (_%h172638%_ _%h172631%_)
                                  (_%h172640%_ _%h172638%_))
                             (declare (not safe))
                             (__hash-get _%h172640%_ _%key172634%_))))
                      (if _%$e172654%_
                          (let ()
                            (mutex-unlock! __thread-locals-mutex)
                            _%$e172654%_)
                          (let ((_%tab172660%_
                                 (let ()
                                   (declare (not safe))
                                   (make-hash-table-eq))))
                            (let* ((_%h172662%_ __thread-locals)
                                   (_%key172665%_ _%thr172620%_)
                                   (_%value172668%_ _%tab172660%_)
                                   (_%h172672%_ _%h172662%_)
                                   (_%h172674%_ _%h172672%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h172674%_
                               _%key172665%_
                               _%value172668%_))
                            (mutex-unlock! __thread-locals-mutex)
                            _%tab172660%_)))))))))
    (define __primordial-thread-locals
      (let () (declare (not safe)) (make-hash-table-eq)))
    (define __thread-locals
      (let () (declare (not safe)) (make-hash-table-eq 'weak-keys: '#t)))
    (define __thread-locals-mutex (make-mutex 'thread-locals))
    (define __unhandled-actor-exception-hook '#f)
    (define unhandled-actor-exception-hook
      (lambda () __unhandled-actor-exception-hook))
    (define __unhandled-actor-exception-hook-set!
      (lambda (_%new-value172606%_)
        (let ((_%new-value172609%_ _%new-value172606%_))
          (set! __unhandled-actor-exception-hook _%new-value172609%_))))
    (define unhandled-actor-exception-hook-set!
      (lambda (_%new-value172585%_)
        (if (or (not _%new-value172585%_) (procedure? _%new-value172585%_))
            (let ((_%new-value172596%_ _%new-value172585%_))
              (__unhandled-actor-exception-hook-set! _%new-value172596%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/thread
               'contract:
               '(? (or not procedure?))
               'value:
               _%new-value172585%_)
              '#!void))))
    (define current-thread-group
      (lambda () (thread-thread-group (current-thread))))
    (define __with-lock
      (lambda (_%mx172492%_ _%proc172493%_)
        (let* ((_%mx172496%_ _%mx172492%_)
               (_%proc172504%_ _%proc172493%_)
               (_%handler172513%_ (current-exception-handler))
               (_%handler172552%_
                (lambda (_%e172515%_)
                  (let* ((_%handler172517%_ void)
                         (_%thunk172521%_
                          (lambda ()
                            (mutex-unlock! _%mx172496%_)
                            (let ()
                              (declare (not safe))
                              (_%handler172513%_ _%e172515%_))))
                         (_%handler172526%_ _%handler172517%_)
                         (_%thunk172542%_ _%thunk172521%_))
                    (declare (not safe))
                    (__with-catch _%handler172526%_ _%thunk172542%_))
                  (let ()
                    (declare (not safe))
                    (##thread-end-with-uncaught-exception! _%e172515%_))))
               (_%thunk172558%_
                (lambda ()
                  (mutex-lock! _%mx172496%_)
                  (let ((_%result172556%_
                         (let () (declare (not safe)) (_%proc172504%_))))
                    (mutex-unlock! _%mx172496%_)
                    _%result172556%_)))
               (_%handler172563%_ _%handler172552%_)
               (_%thunk172574%_ _%thunk172558%_))
          (declare (not safe))
          (__with-exception-handler _%handler172563%_ _%thunk172574%_))))
    (define with-lock
      (lambda (_%mx172467%_ _%proc172468%_)
        (if (mutex? _%mx172467%_)
            (let ((_%mx172472%_ _%mx172467%_))
              (if (procedure? _%proc172468%_)
                  (let ((_%proc172482%_ _%proc172468%_))
                    (__with-lock _%mx172472%_ _%proc172482%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@138.32-138.36"
                     'contract:
                     'procedure?
                     'value:
                     _%proc172468%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@138.18-138.20"
               'contract:
               'mutex?
               'value:
               _%mx172467%_)
              '#!void))))
    (define __with-dynamic-lock
      (lambda (_%mx172444%_ _%proc172445%_)
        (let* ((_%mx172448%_ _%mx172444%_) (_%proc172456%_ _%proc172445%_))
          (let ((__tmp173867 (lambda () (mutex-lock! _%mx172448%_)))
                (__tmp173866 (lambda () (mutex-unlock! _%mx172448%_))))
            (declare (not safe))
            (##dynamic-wind __tmp173867 _%proc172456%_ __tmp173866)))))
    (define with-dynamic-lock
      (lambda (_%mx172419%_ _%proc172420%_)
        (if (mutex? _%mx172419%_)
            (let ((_%mx172424%_ _%mx172419%_))
              (if (procedure? _%proc172420%_)
                  (let ((_%proc172434%_ _%proc172420%_))
                    (__with-dynamic-lock _%mx172424%_ _%proc172434%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@154.40-154.44"
                     'contract:
                     'procedure?
                     'value:
                     _%proc172420%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@154.26-154.28"
               'contract:
               'mutex?
               'value:
               _%mx172419%_)
              '#!void))))
    (define __with-exception-stack-trace__%
      (lambda (_%thunk172350%_ _%error-port172351%_)
        (let* ((_%thunk172354%_ _%thunk172350%_)
               (_%error-port172362%_ _%error-port172351%_)
               (_%handler172377%_
                (let ((_%E172371%_ (current-exception-handler)))
                  (lambda (_%exn172373%_)
                    (let ((__tmp173868
                           (lambda (_%cont172375%_)
                             (if (let ()
                                   (declare (not safe))
                                   (dump-stack-trace?))
                                 (dump-stack-trace!__%
                                  _%cont172375%_
                                  _%exn172373%_
                                  _%error-port172362%_)
                                 '#!void)
                             (let ()
                               (declare (not safe))
                               (_%E172371%_ _%exn172373%_)))))
                      (declare (not safe))
                      (##continuation-capture __tmp173868)))))
               (_%thunk172380%_ _%thunk172354%_)
               (_%handler172385%_ _%handler172377%_)
               (_%thunk172399%_ _%thunk172380%_))
          (declare (not safe))
          (__with-exception-handler _%handler172385%_ _%thunk172399%_))))
    (define __with-exception-stack-trace__0
      (lambda (_%thunk172412%_)
        (let ((_%error-port172414%_ (current-error-port)))
          (__with-exception-stack-trace__%
           _%thunk172412%_
           _%error-port172414%_))))
    (define __with-exception-stack-trace
      (lambda _g173869_
        (let ((_g173870_ (let () (declare (not safe)) (##length _g173869_))))
          (cond ((let () (declare (not safe)) (##fx= _g173870_ 1))
                 (apply __with-exception-stack-trace__0 _g173869_))
                ((let () (declare (not safe)) (##fx= _g173870_ 2))
                 (apply __with-exception-stack-trace__% _g173869_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __with-exception-stack-trace
                  _g173869_))))))
    (define with-exception-stack-trace__%
      (lambda (_%thunk172314%_ _%error-port172315%_)
        (if (procedure? _%thunk172314%_)
            (let ((_%thunk172319%_ _%thunk172314%_))
              (if (port? _%error-port172315%_)
                  (let ((_%error-port172329%_ _%error-port172315%_))
                    (__with-exception-stack-trace__%
                     _%thunk172319%_
                     _%error-port172329%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/thread.ss\"@162.35-162.45"
                     'contract:
                     'port?
                     'value:
                     _%error-port172315%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@161.35-161.40"
               'contract:
               'procedure?
               'value:
               _%thunk172314%_)
              '#!void))))
    (define with-exception-stack-trace__0
      (lambda (_%thunk172342%_)
        (let ((_%error-port172344%_ (current-error-port)))
          (with-exception-stack-trace__%
           _%thunk172342%_
           _%error-port172344%_))))
    (define with-exception-stack-trace
      (lambda _g173871_
        (let ((_g173872_ (let () (declare (not safe)) (##length _g173871_))))
          (cond ((let () (declare (not safe)) (##fx= _g173872_ 1))
                 (apply with-exception-stack-trace__0 _g173871_))
                ((let () (declare (not safe)) (##fx= _g173872_ 2))
                 (apply with-exception-stack-trace__% _g173871_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  with-exception-stack-trace
                  _g173871_))))))
    (define dump-stack-trace!__%
      (lambda (_%cont172295%_ _%exn172296%_ _%error-port172297%_)
        (let ((_%out172299%_ (open-output-string)))
          (let () (declare (not safe)) (fix-port-width! _%out172299%_))
          (display '"*** Unhandled exception in " _%out172299%_)
          (display (current-thread) _%out172299%_)
          (newline _%out172299%_)
          (let ()
            (declare (not safe))
            (display-exception__% _%exn172296%_ _%out172299%_))
          (if (let ()
                (declare (not safe))
                (class-instance? StackTrace::t _%exn172296%_))
              '#!void
              (begin
                (display '"Continuation backtrace: " _%out172299%_)
                (newline _%out172299%_)
                (display-continuation-backtrace _%cont172295%_ _%out172299%_)))
          (let ((__tmp173873 (get-output-string _%out172299%_)))
            (declare (not safe))
            (##write-string __tmp173873 _%error-port172297%_)))))
    (define dump-stack-trace!__0
      (lambda (_%cont172304%_ _%exn172305%_)
        (let ((_%error-port172307%_ (current-error-port)))
          (dump-stack-trace!__%
           _%cont172304%_
           _%exn172305%_
           _%error-port172307%_))))
    (define dump-stack-trace!
      (lambda _g173874_
        (let ((_g173875_ (let () (declare (not safe)) (##length _g173874_))))
          (cond ((let () (declare (not safe)) (##fx= _g173875_ 2))
                 (apply dump-stack-trace!__0 _g173874_))
                ((let () (declare (not safe)) (##fx= _g173875_ 3))
                 (apply dump-stack-trace!__% _g173874_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  dump-stack-trace!
                  _g173874_))))))
    (define __thread-dead?
      (lambda (_%thread172282%_)
        (let ((_%thread172285%_ _%thread172282%_))
          (not (macro-thread-end-condvar _%thread172285%_)))))
    (define thread-dead?
      (lambda (_%thread172268%_)
        (if (thread? _%thread172268%_)
            (let ((_%thread172272%_ _%thread172268%_))
              (__thread-dead? _%thread172272%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/thread.ss\"@188.21-188.27"
               'contract:
               'thread?
               'value:
               _%thread172268%_)
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
