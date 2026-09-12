(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1789188907)
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
      (lambda _%paths179861%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths179861%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths179861%_)))
        (let ((__tmp179971
               (lambda (_%p179863%_)
                 (set! __load-path (cons _%p179863%_ __load-path))))
              (__tmp179970 (reverse! _%paths179861%_)))
          (declare (not safe))
          (##for-each __tmp179971 __tmp179970))))
    (define __set-load-path!
      (lambda (_%paths179849%_)
        (let ((_%paths179852%_ _%paths179849%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths179852%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths179852%_)))
          (set! __load-path _%paths179852%_))))
    (define set-load-path!
      (lambda (_%paths179835%_)
        (if (list? _%paths179835%_)
            (let ((_%paths179839%_ _%paths179835%_))
              (__set-load-path! _%paths179839%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths179835%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath179623%_)
        (let ((_%modpath179626%_ _%modpath179623%_))
          (mutex-lock! __load-mx)
          (let ((_%$e179658%_
                 (let* ((_%h179635%_ __modules)
                        (_%key179638%_ _%modpath179626%_)
                        (_%h179642%_ _%h179635%_)
                        (_%h179644%_ _%h179642%_))
                   (declare (not safe))
                   (__hash-get _%h179644%_ _%key179638%_))))
            (if _%$e179658%_
                (if (or (eq? 'builtin _%$e179658%_) (string? _%$e179658%_))
                    (let () (mutex-unlock! __load-mx) _%$e179658%_)
                    (if (eq? 'loading _%$e179658%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let* ((_%modpath179668%_ _%modpath179626%_)
                                 (_%modpath179673%_ _%modpath179668%_))
                            (__load-module _%modpath179673%_)))
                        (if (and (pair? _%$e179658%_)
                                 (eq? (let ()
                                        (declare (not safe))
                                        (##car _%$e179658%_))
                                      'error))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ((__tmp179972 (cadr _%$e179658%_)))
                                (declare (not safe))
                                (raise __tmp179972)))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ()
                                (declare (not safe))
                                (error '"inernal error; unexpected loading state"
                                       _%$e179658%_))))))
                (let ((_%$e179688%_ (__find-library-module _%modpath179626%_)))
                  (if _%$e179688%_
                      (let ()
                        (let* ((_%h179693%_ __modules)
                               (_%key179696%_ _%modpath179626%_)
                               (_%value179699%_ 'loading)
                               (_%h179703%_ _%h179693%_)
                               (_%h179705%_ _%h179703%_))
                          (declare (not safe))
                          (__hash-put!
                           _%h179705%_
                           _%key179696%_
                           _%value179699%_))
                        (mutex-unlock! __load-mx)
                        (let ((__tmp179974
                               (lambda (_%exn179719%_)
                                 (mutex-lock! __load-mx)
                                 (let* ((_%h179721%_ __modules)
                                        (_%key179724%_ _%modpath179626%_)
                                        (_%value179727%_
                                         (list 'error _%exn179719%_))
                                        (_%h179731%_ _%h179721%_)
                                        (_%h179733%_ _%h179731%_))
                                   (declare (not safe))
                                   (__hash-put!
                                    _%h179733%_
                                    _%key179724%_
                                    _%value179727%_))
                                 (condition-variable-broadcast! __load-cv)
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (raise _%exn179719%_))))
                              (__tmp179973
                               (lambda ()
                                 (let ((_%loaded-path179747%_
                                        (load _%$e179688%_)))
                                   (mutex-lock! __load-mx)
                                   (let* ((_%h179749%_ __modules)
                                          (_%key179752%_ _%modpath179626%_)
                                          (_%value179755%_
                                           _%loaded-path179747%_)
                                          (_%h179759%_ _%h179749%_)
                                          (_%h179761%_ _%h179759%_))
                                     (declare (not safe))
                                     (__hash-put!
                                      _%h179761%_
                                      _%key179752%_
                                      _%value179755%_))
                                   (if (let* ((_%h179775%_ __load-order)
                                              (_%key179778%_ _%modpath179626%_)
                                              (_%h179782%_ _%h179775%_)
                                              (_%h179784%_ _%h179782%_))
                                         (declare (not safe))
                                         (__hash-get
                                          _%h179784%_
                                          _%key179778%_))
                                       '#!void
                                       (begin
                                         (let* ((_%h179795%_ __load-order)
                                                (_%key179798%_
                                                 _%modpath179626%_)
                                                (_%value179801%_
                                                 __load-order-next)
                                                (_%h179805%_ _%h179795%_)
                                                (_%h179807%_ _%h179805%_))
                                           (declare (not safe))
                                           (__hash-put!
                                            _%h179807%_
                                            _%key179798%_
                                            _%value179801%_))
                                         (set! __load-order-next
                                               (let* ((_%x179819%_
                                                       __load-order-next)
                                                      (_%x179824%_
                                                       _%x179819%_))
                                                 (declare (not safe))
                                                 (__1+ _%x179824%_)))))
                                   (condition-variable-broadcast! __load-cv)
                                   (mutex-unlock! __load-mx)
                                   _%loaded-path179747%_))))
                          (declare (not safe))
                          (__with-catch __tmp179974 __tmp179973)))
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath179626%_))))))))))
    (define load-module
      (lambda (_%modpath179609%_)
        (if (string? _%modpath179609%_)
            (let ((_%modpath179613%_ _%modpath179609%_))
              (__load-module _%modpath179613%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath179609%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath179467%_)
        (let ((_%modpath179470%_ _%modpath179467%_))
          (mutex-lock! __load-mx)
          (let ((_%$e179502%_
                 (let* ((_%h179479%_ __modules)
                        (_%key179482%_ _%modpath179470%_)
                        (_%h179486%_ _%h179479%_)
                        (_%h179488%_ _%h179486%_))
                   (declare (not safe))
                   (__hash-get _%h179488%_ _%key179482%_))))
            (if _%$e179502%_
                (if (eq? _%$e179502%_ 'builtin)
                    (let ()
                      (mutex-unlock! __load-mx)
                      (let ()
                        (declare (not safe))
                        (error '"cannot reload builtin module"
                               _%modpath179470%_)))
                    (if (eq? 'loading _%$e179502%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let ()
                            (declare (not safe))
                            (error '"module is still loading")))
                        (if (string? _%$e179502%_)
                            (let ((_%latest-path179510%_
                                   (__find-library-module _%modpath179470%_)))
                              (if (or (equal? (path-extension _%$e179502%_)
                                              '".scm")
                                      (not (equal? _%$e179502%_
                                                   _%latest-path179510%_)))
                                  (begin
                                    (let* ((_%h179515%_ __modules)
                                           (_%key179518%_ _%modpath179470%_)
                                           (_%h179522%_ _%h179515%_)
                                           (_%h179524%_ _%h179522%_))
                                      (declare (not safe))
                                      (__hash-remove!
                                       _%h179524%_
                                       _%key179518%_))
                                    (mutex-unlock! __load-mx)
                                    (let* ((_%modpath179539%_
                                            _%modpath179470%_)
                                           (_%modpath179544%_
                                            _%modpath179539%_))
                                      (__load-module _%modpath179544%_)))
                                  (mutex-unlock! __load-mx)))
                            (if (and (pair? _%$e179502%_)
                                     (eq? (let ()
                                            (declare (not safe))
                                            (##car _%$e179502%_))
                                          'error))
                                (let ()
                                  (let* ((_%h179555%_ __modules)
                                         (_%key179558%_ _%modpath179470%_)
                                         (_%h179562%_ _%h179555%_)
                                         (_%h179564%_ _%h179562%_))
                                    (declare (not safe))
                                    (__hash-remove! _%h179564%_ _%key179558%_))
                                  (mutex-unlock! __load-mx)
                                  (let* ((_%modpath179576%_ _%modpath179470%_)
                                         (_%modpath179581%_ _%modpath179576%_))
                                    (__load-module _%modpath179581%_)))
                                (let ()
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (error '"inernal error; unexpected loading state"
                                           _%$e179502%_)))))))
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath179593%_ _%modpath179470%_)
                         (_%modpath179598%_ _%modpath179593%_))
                    (__load-module _%modpath179598%_))))))))
    (define reload-module!
      (lambda (_%modpath179453%_)
        (if (string? _%modpath179453%_)
            (let ((_%modpath179457%_ _%modpath179453%_))
              (__reload-module! _%modpath179457%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath179453%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath179387%_)
        (letrec ((_%find-compiled-file179389%_
                  (lambda (_%npath179442%_)
                    (let ((_%basepath179444%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath179442%_ '".o"))))
                      (let _%lp179446%_ ((_%current179448%_ '#f)
                                         (_%n179449%_ '1))
                        (let ((_%next179451%_
                               (let ((__tmp179975
                                      (number->string _%n179449%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath179444%_
                                  __tmp179975))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next179451%_))
                              (_%lp179446%_
                               _%next179451%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n179449%_ '1)))
                              _%current179448%_))))))
                 (_%find-source-file179390%_
                  (lambda (_%npath179438%_)
                    (let ((_%spath179440%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath179438%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath179440%_))
                          _%spath179440%_
                          '#f)))))
          (let _%lp179392%_ ((_%rest179394%_ (load-path)))
            (let* ((_%$%rest179395179403%_ _%rest179394%_)
                   (_%$%else179397179411%_ (lambda () '#f))
                   (_%$%K179399179426%_
                    (lambda (_%rest179414%_ _%dir179415%_)
                      (let* ((_%npath179417%_
                              (path-expand
                               _%modpath179387%_
                               (path-expand _%dir179415%_)))
                             (_%$e179419%_
                              (_%find-compiled-file179389%_ _%npath179417%_)))
                        (if _%$e179419%_
                            (path-normalize _%$e179419%_)
                            (let ((_%$e179422%_
                                   (_%find-source-file179390%_
                                    _%npath179417%_)))
                              (if _%$e179422%_
                                  (path-normalize _%$e179422%_)
                                  (_%lp179392%_ _%rest179414%_))))))))
              (if (pair? _%$%rest179395179403%_)
                  (let ((_%$%hd179400179429%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest179395179403%_)))
                        (_%$%tl179401179431%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest179395179403%_))))
                    (let* ((_%dir179434%_ _%$%hd179400179429%_)
                           (_%rest179436%_ _%$%tl179401179431%_))
                      (_%$%K179399179426%_ _%rest179436%_ _%dir179434%_)))
                  (_%$%else179397179411%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result179385%_
                 (let* ((_%h179367%_ __modules)
                        (_%h179371%_ _%h179367%_)
                        (_%h179373%_ _%h179371%_))
                   (declare (not safe))
                   (__hash->list _%h179373%_))))
            (mutex-unlock! __load-mx)
            _%result179385%_))))
    (define __module-load-order
      (lambda (_%modpath179303%_)
        (let ((_%modpath179306%_ _%modpath179303%_))
          (mutex-lock! __load-mx)
          (let ((_%ord179363%_
                 (if (eq? (let* ((_%h179315%_ __modules)
                                 (_%key179318%_ _%modpath179306%_)
                                 (_%h179322%_ _%h179315%_)
                                 (_%h179324%_ _%h179322%_))
                            (declare (not safe))
                            (__hash-get _%h179324%_ _%key179318%_))
                          'builtin)
                     '0
                     (let ((_%$e179359%_
                            (let* ((_%h179339%_ __load-order)
                                   (_%key179342%_ _%modpath179306%_)
                                   (_%h179346%_ _%h179339%_)
                                   (_%h179348%_ _%h179346%_))
                              (declare (not safe))
                              (__hash-get _%h179348%_ _%key179342%_))))
                       (if _%$e179359%_ _%$e179359%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord179363%_)
                _%ord179363%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath179306%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath179289%_)
        (if (string? _%modpath179289%_)
            (let ((_%modpath179293%_ _%modpath179289%_))
              (__module-load-order _%modpath179293%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath179289%_)
              '#!void))))))
