(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1784461443)
  (begin
    (define __modules
      (let ()
        (declare (not safe))
        (make-hash-table__%
         '#f
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value)))
    (define __load-mx (make-mutex 'loader))
    (define __load-cv (make-condition-variable 'loader))
    (define __load-path '())
    (define __load-order
      (let ()
        (declare (not safe))
        (make-hash-table__%
         '#f
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value
         absent-value)))
    (define __load-order-next '1)
    (define load-path (lambda () __load-path))
    (define add-load-path!
      (lambda _%paths179657%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths179657%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths179657%_)))
        (let ((__tmp179767
               (lambda (_%p179659%_)
                 (set! __load-path (cons _%p179659%_ __load-path))))
              (__tmp179766 (reverse! _%paths179657%_)))
          (declare (not safe))
          (##for-each __tmp179767 __tmp179766))))
    (define __set-load-path!
      (lambda (_%paths179645%_)
        (let ((_%paths179648%_ _%paths179645%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths179648%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths179648%_)))
          (set! __load-path _%paths179648%_))))
    (define set-load-path!
      (lambda (_%paths179631%_)
        (if (list? _%paths179631%_)
            (let ((_%paths179635%_ _%paths179631%_))
              (__set-load-path! _%paths179635%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths179631%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath179419%_)
        (let ((_%modpath179422%_ _%modpath179419%_))
          (mutex-lock! __load-mx)
          (let ((_%$e179454%_
                 (let* ((_%h179431%_ __modules)
                        (_%key179434%_ _%modpath179422%_)
                        (_%h179438%_ _%h179431%_)
                        (_%h179440%_ _%h179438%_))
                   (declare (not safe))
                   (__hash-get _%h179440%_ _%key179434%_))))
            (if _%$e179454%_
                (if (or (eq? 'builtin _%$e179454%_) (string? _%$e179454%_))
                    (let () (mutex-unlock! __load-mx) _%$e179454%_)
                    (if (eq? 'loading _%$e179454%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let* ((_%modpath179464%_ _%modpath179422%_)
                                 (_%modpath179469%_ _%modpath179464%_))
                            (__load-module _%modpath179469%_)))
                        (if (and (pair? _%$e179454%_)
                                 (eq? (let ()
                                        (declare (not safe))
                                        (##car _%$e179454%_))
                                      'error))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ((__tmp179768 (cadr _%$e179454%_)))
                                (declare (not safe))
                                (raise __tmp179768)))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ()
                                (declare (not safe))
                                (error '"inernal error; unexpected loading state"
                                       _%$e179454%_))))))
                (let ((_%$e179484%_ (__find-library-module _%modpath179422%_)))
                  (if _%$e179484%_
                      (let ()
                        (let* ((_%h179489%_ __modules)
                               (_%key179492%_ _%modpath179422%_)
                               (_%value179495%_ 'loading)
                               (_%h179499%_ _%h179489%_)
                               (_%h179501%_ _%h179499%_))
                          (declare (not safe))
                          (__hash-put!
                           _%h179501%_
                           _%key179492%_
                           _%value179495%_))
                        (mutex-unlock! __load-mx)
                        (let ((__tmp179770
                               (lambda (_%exn179515%_)
                                 (mutex-lock! __load-mx)
                                 (let* ((_%h179517%_ __modules)
                                        (_%key179520%_ _%modpath179422%_)
                                        (_%value179523%_
                                         (list 'error _%exn179515%_))
                                        (_%h179527%_ _%h179517%_)
                                        (_%h179529%_ _%h179527%_))
                                   (declare (not safe))
                                   (__hash-put!
                                    _%h179529%_
                                    _%key179520%_
                                    _%value179523%_))
                                 (condition-variable-broadcast! __load-cv)
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (raise _%exn179515%_))))
                              (__tmp179769
                               (lambda ()
                                 (let ((_%loaded-path179543%_
                                        (load _%$e179484%_)))
                                   (mutex-lock! __load-mx)
                                   (let* ((_%h179545%_ __modules)
                                          (_%key179548%_ _%modpath179422%_)
                                          (_%value179551%_
                                           _%loaded-path179543%_)
                                          (_%h179555%_ _%h179545%_)
                                          (_%h179557%_ _%h179555%_))
                                     (declare (not safe))
                                     (__hash-put!
                                      _%h179557%_
                                      _%key179548%_
                                      _%value179551%_))
                                   (if (let* ((_%h179571%_ __load-order)
                                              (_%key179574%_ _%modpath179422%_)
                                              (_%h179578%_ _%h179571%_)
                                              (_%h179580%_ _%h179578%_))
                                         (declare (not safe))
                                         (__hash-get
                                          _%h179580%_
                                          _%key179574%_))
                                       '#!void
                                       (begin
                                         (let* ((_%h179591%_ __load-order)
                                                (_%key179594%_
                                                 _%modpath179422%_)
                                                (_%value179597%_
                                                 __load-order-next)
                                                (_%h179601%_ _%h179591%_)
                                                (_%h179603%_ _%h179601%_))
                                           (declare (not safe))
                                           (__hash-put!
                                            _%h179603%_
                                            _%key179594%_
                                            _%value179597%_))
                                         (set! __load-order-next
                                               (let* ((_%x179615%_
                                                       __load-order-next)
                                                      (_%x179620%_
                                                       _%x179615%_))
                                                 (declare (not safe))
                                                 (__1+ _%x179620%_)))))
                                   (condition-variable-broadcast! __load-cv)
                                   (mutex-unlock! __load-mx)
                                   _%loaded-path179543%_))))
                          (declare (not safe))
                          (__with-catch __tmp179770 __tmp179769)))
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath179422%_))))))))))
    (define load-module
      (lambda (_%modpath179405%_)
        (if (string? _%modpath179405%_)
            (let ((_%modpath179409%_ _%modpath179405%_))
              (__load-module _%modpath179409%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath179405%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath179263%_)
        (let ((_%modpath179266%_ _%modpath179263%_))
          (mutex-lock! __load-mx)
          (let ((_%$e179298%_
                 (let* ((_%h179275%_ __modules)
                        (_%key179278%_ _%modpath179266%_)
                        (_%h179282%_ _%h179275%_)
                        (_%h179284%_ _%h179282%_))
                   (declare (not safe))
                   (__hash-get _%h179284%_ _%key179278%_))))
            (if _%$e179298%_
                (if (eq? _%$e179298%_ 'builtin)
                    (let ()
                      (mutex-unlock! __load-mx)
                      (let ()
                        (declare (not safe))
                        (error '"cannot reload builtin module"
                               _%modpath179266%_)))
                    (if (eq? 'loading _%$e179298%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let ()
                            (declare (not safe))
                            (error '"module is still loading")))
                        (if (string? _%$e179298%_)
                            (let ((_%latest-path179306%_
                                   (__find-library-module _%modpath179266%_)))
                              (if (or (equal? (path-extension _%$e179298%_)
                                              '".scm")
                                      (not (equal? _%$e179298%_
                                                   _%latest-path179306%_)))
                                  (begin
                                    (let* ((_%h179311%_ __modules)
                                           (_%key179314%_ _%modpath179266%_)
                                           (_%h179318%_ _%h179311%_)
                                           (_%h179320%_ _%h179318%_))
                                      (declare (not safe))
                                      (__hash-remove!
                                       _%h179320%_
                                       _%key179314%_))
                                    (mutex-unlock! __load-mx)
                                    (let* ((_%modpath179335%_
                                            _%modpath179266%_)
                                           (_%modpath179340%_
                                            _%modpath179335%_))
                                      (__load-module _%modpath179340%_)))
                                  (mutex-unlock! __load-mx)))
                            (if (and (pair? _%$e179298%_)
                                     (eq? (let ()
                                            (declare (not safe))
                                            (##car _%$e179298%_))
                                          'error))
                                (let ()
                                  (let* ((_%h179351%_ __modules)
                                         (_%key179354%_ _%modpath179266%_)
                                         (_%h179358%_ _%h179351%_)
                                         (_%h179360%_ _%h179358%_))
                                    (declare (not safe))
                                    (__hash-remove! _%h179360%_ _%key179354%_))
                                  (mutex-unlock! __load-mx)
                                  (let* ((_%modpath179372%_ _%modpath179266%_)
                                         (_%modpath179377%_ _%modpath179372%_))
                                    (__load-module _%modpath179377%_)))
                                (let ()
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (error '"inernal error; unexpected loading state"
                                           _%$e179298%_)))))))
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath179389%_ _%modpath179266%_)
                         (_%modpath179394%_ _%modpath179389%_))
                    (__load-module _%modpath179394%_))))))))
    (define reload-module!
      (lambda (_%modpath179249%_)
        (if (string? _%modpath179249%_)
            (let ((_%modpath179253%_ _%modpath179249%_))
              (__reload-module! _%modpath179253%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath179249%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath179183%_)
        (letrec ((_%find-compiled-file179185%_
                  (lambda (_%npath179238%_)
                    (let ((_%basepath179240%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath179238%_ '".o"))))
                      (let _%lp179242%_ ((_%current179244%_ '#f)
                                         (_%n179245%_ '1))
                        (let ((_%next179247%_
                               (let ((__tmp179771
                                      (number->string _%n179245%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath179240%_
                                  __tmp179771))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next179247%_))
                              (_%lp179242%_
                               _%next179247%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n179245%_ '1)))
                              _%current179244%_))))))
                 (_%find-source-file179186%_
                  (lambda (_%npath179234%_)
                    (let ((_%spath179236%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath179234%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath179236%_))
                          _%spath179236%_
                          '#f)))))
          (let _%lp179188%_ ((_%rest179190%_ (load-path)))
            (let* ((_%$%rest179191179199%_ _%rest179190%_)
                   (_%$%else179193179207%_ (lambda () '#f))
                   (_%$%K179195179222%_
                    (lambda (_%rest179210%_ _%dir179211%_)
                      (let* ((_%npath179213%_
                              (path-expand
                               _%modpath179183%_
                               (path-expand _%dir179211%_)))
                             (_%$e179215%_
                              (_%find-compiled-file179185%_ _%npath179213%_)))
                        (if _%$e179215%_
                            (path-normalize _%$e179215%_)
                            (let ((_%$e179218%_
                                   (_%find-source-file179186%_
                                    _%npath179213%_)))
                              (if _%$e179218%_
                                  (path-normalize _%$e179218%_)
                                  (_%lp179188%_ _%rest179210%_))))))))
              (if (pair? _%$%rest179191179199%_)
                  (let ((_%$%hd179196179225%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest179191179199%_)))
                        (_%$%tl179197179227%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest179191179199%_))))
                    (let* ((_%dir179230%_ _%$%hd179196179225%_)
                           (_%rest179232%_ _%$%tl179197179227%_))
                      (_%$%K179195179222%_ _%rest179232%_ _%dir179230%_)))
                  (_%$%else179193179207%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result179181%_
                 (let* ((_%h179163%_ __modules)
                        (_%h179167%_ _%h179163%_)
                        (_%h179169%_ _%h179167%_))
                   (declare (not safe))
                   (__hash->list _%h179169%_))))
            (mutex-unlock! __load-mx)
            _%result179181%_))))
    (define __module-load-order
      (lambda (_%modpath179099%_)
        (let ((_%modpath179102%_ _%modpath179099%_))
          (mutex-lock! __load-mx)
          (let ((_%ord179159%_
                 (if (eq? (let* ((_%h179111%_ __modules)
                                 (_%key179114%_ _%modpath179102%_)
                                 (_%h179118%_ _%h179111%_)
                                 (_%h179120%_ _%h179118%_))
                            (declare (not safe))
                            (__hash-get _%h179120%_ _%key179114%_))
                          'builtin)
                     '0
                     (let ((_%$e179155%_
                            (let* ((_%h179135%_ __load-order)
                                   (_%key179138%_ _%modpath179102%_)
                                   (_%h179142%_ _%h179135%_)
                                   (_%h179144%_ _%h179142%_))
                              (declare (not safe))
                              (__hash-get _%h179144%_ _%key179138%_))))
                       (if _%$e179155%_ _%$e179155%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord179159%_)
                _%ord179159%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath179102%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath179085%_)
        (if (string? _%modpath179085%_)
            (let ((_%modpath179089%_ _%modpath179085%_))
              (__module-load-order _%modpath179089%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath179085%_)
              '#!void))))))
