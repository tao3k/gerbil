(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1784758124)
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
      (lambda _%paths179878%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths179878%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths179878%_)))
        (let ((__tmp179988
               (lambda (_%p179880%_)
                 (set! __load-path (cons _%p179880%_ __load-path))))
              (__tmp179987 (reverse! _%paths179878%_)))
          (declare (not safe))
          (##for-each __tmp179988 __tmp179987))))
    (define __set-load-path!
      (lambda (_%paths179866%_)
        (let ((_%paths179869%_ _%paths179866%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths179869%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths179869%_)))
          (set! __load-path _%paths179869%_))))
    (define set-load-path!
      (lambda (_%paths179852%_)
        (if (list? _%paths179852%_)
            (let ((_%paths179856%_ _%paths179852%_))
              (__set-load-path! _%paths179856%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths179852%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath179640%_)
        (let ((_%modpath179643%_ _%modpath179640%_))
          (mutex-lock! __load-mx)
          (let ((_%$e179675%_
                 (let* ((_%h179652%_ __modules)
                        (_%key179655%_ _%modpath179643%_)
                        (_%h179659%_ _%h179652%_)
                        (_%h179661%_ _%h179659%_))
                   (declare (not safe))
                   (__hash-get _%h179661%_ _%key179655%_))))
            (if _%$e179675%_
                (if (or (eq? 'builtin _%$e179675%_) (string? _%$e179675%_))
                    (let () (mutex-unlock! __load-mx) _%$e179675%_)
                    (if (eq? 'loading _%$e179675%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let* ((_%modpath179685%_ _%modpath179643%_)
                                 (_%modpath179690%_ _%modpath179685%_))
                            (__load-module _%modpath179690%_)))
                        (if (and (pair? _%$e179675%_)
                                 (eq? (let ()
                                        (declare (not safe))
                                        (##car _%$e179675%_))
                                      'error))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ((__tmp179989 (cadr _%$e179675%_)))
                                (declare (not safe))
                                (raise __tmp179989)))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ()
                                (declare (not safe))
                                (error '"inernal error; unexpected loading state"
                                       _%$e179675%_))))))
                (let ((_%$e179705%_ (__find-library-module _%modpath179643%_)))
                  (if _%$e179705%_
                      (let ()
                        (let* ((_%h179710%_ __modules)
                               (_%key179713%_ _%modpath179643%_)
                               (_%value179716%_ 'loading)
                               (_%h179720%_ _%h179710%_)
                               (_%h179722%_ _%h179720%_))
                          (declare (not safe))
                          (__hash-put!
                           _%h179722%_
                           _%key179713%_
                           _%value179716%_))
                        (mutex-unlock! __load-mx)
                        (let ((__tmp179991
                               (lambda (_%exn179736%_)
                                 (mutex-lock! __load-mx)
                                 (let* ((_%h179738%_ __modules)
                                        (_%key179741%_ _%modpath179643%_)
                                        (_%value179744%_
                                         (list 'error _%exn179736%_))
                                        (_%h179748%_ _%h179738%_)
                                        (_%h179750%_ _%h179748%_))
                                   (declare (not safe))
                                   (__hash-put!
                                    _%h179750%_
                                    _%key179741%_
                                    _%value179744%_))
                                 (condition-variable-broadcast! __load-cv)
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (raise _%exn179736%_))))
                              (__tmp179990
                               (lambda ()
                                 (let ((_%loaded-path179764%_
                                        (load _%$e179705%_)))
                                   (mutex-lock! __load-mx)
                                   (let* ((_%h179766%_ __modules)
                                          (_%key179769%_ _%modpath179643%_)
                                          (_%value179772%_
                                           _%loaded-path179764%_)
                                          (_%h179776%_ _%h179766%_)
                                          (_%h179778%_ _%h179776%_))
                                     (declare (not safe))
                                     (__hash-put!
                                      _%h179778%_
                                      _%key179769%_
                                      _%value179772%_))
                                   (if (let* ((_%h179792%_ __load-order)
                                              (_%key179795%_ _%modpath179643%_)
                                              (_%h179799%_ _%h179792%_)
                                              (_%h179801%_ _%h179799%_))
                                         (declare (not safe))
                                         (__hash-get
                                          _%h179801%_
                                          _%key179795%_))
                                       '#!void
                                       (begin
                                         (let* ((_%h179812%_ __load-order)
                                                (_%key179815%_
                                                 _%modpath179643%_)
                                                (_%value179818%_
                                                 __load-order-next)
                                                (_%h179822%_ _%h179812%_)
                                                (_%h179824%_ _%h179822%_))
                                           (declare (not safe))
                                           (__hash-put!
                                            _%h179824%_
                                            _%key179815%_
                                            _%value179818%_))
                                         (set! __load-order-next
                                               (let* ((_%x179836%_
                                                       __load-order-next)
                                                      (_%x179841%_
                                                       _%x179836%_))
                                                 (declare (not safe))
                                                 (__1+ _%x179841%_)))))
                                   (condition-variable-broadcast! __load-cv)
                                   (mutex-unlock! __load-mx)
                                   _%loaded-path179764%_))))
                          (declare (not safe))
                          (__with-catch __tmp179991 __tmp179990)))
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath179643%_))))))))))
    (define load-module
      (lambda (_%modpath179626%_)
        (if (string? _%modpath179626%_)
            (let ((_%modpath179630%_ _%modpath179626%_))
              (__load-module _%modpath179630%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath179626%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath179484%_)
        (let ((_%modpath179487%_ _%modpath179484%_))
          (mutex-lock! __load-mx)
          (let ((_%$e179519%_
                 (let* ((_%h179496%_ __modules)
                        (_%key179499%_ _%modpath179487%_)
                        (_%h179503%_ _%h179496%_)
                        (_%h179505%_ _%h179503%_))
                   (declare (not safe))
                   (__hash-get _%h179505%_ _%key179499%_))))
            (if _%$e179519%_
                (if (eq? _%$e179519%_ 'builtin)
                    (let ()
                      (mutex-unlock! __load-mx)
                      (let ()
                        (declare (not safe))
                        (error '"cannot reload builtin module"
                               _%modpath179487%_)))
                    (if (eq? 'loading _%$e179519%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let ()
                            (declare (not safe))
                            (error '"module is still loading")))
                        (if (string? _%$e179519%_)
                            (let ((_%latest-path179527%_
                                   (__find-library-module _%modpath179487%_)))
                              (if (or (equal? (path-extension _%$e179519%_)
                                              '".scm")
                                      (not (equal? _%$e179519%_
                                                   _%latest-path179527%_)))
                                  (begin
                                    (let* ((_%h179532%_ __modules)
                                           (_%key179535%_ _%modpath179487%_)
                                           (_%h179539%_ _%h179532%_)
                                           (_%h179541%_ _%h179539%_))
                                      (declare (not safe))
                                      (__hash-remove!
                                       _%h179541%_
                                       _%key179535%_))
                                    (mutex-unlock! __load-mx)
                                    (let* ((_%modpath179556%_
                                            _%modpath179487%_)
                                           (_%modpath179561%_
                                            _%modpath179556%_))
                                      (__load-module _%modpath179561%_)))
                                  (mutex-unlock! __load-mx)))
                            (if (and (pair? _%$e179519%_)
                                     (eq? (let ()
                                            (declare (not safe))
                                            (##car _%$e179519%_))
                                          'error))
                                (let ()
                                  (let* ((_%h179572%_ __modules)
                                         (_%key179575%_ _%modpath179487%_)
                                         (_%h179579%_ _%h179572%_)
                                         (_%h179581%_ _%h179579%_))
                                    (declare (not safe))
                                    (__hash-remove! _%h179581%_ _%key179575%_))
                                  (mutex-unlock! __load-mx)
                                  (let* ((_%modpath179593%_ _%modpath179487%_)
                                         (_%modpath179598%_ _%modpath179593%_))
                                    (__load-module _%modpath179598%_)))
                                (let ()
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (error '"inernal error; unexpected loading state"
                                           _%$e179519%_)))))))
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath179610%_ _%modpath179487%_)
                         (_%modpath179615%_ _%modpath179610%_))
                    (__load-module _%modpath179615%_))))))))
    (define reload-module!
      (lambda (_%modpath179470%_)
        (if (string? _%modpath179470%_)
            (let ((_%modpath179474%_ _%modpath179470%_))
              (__reload-module! _%modpath179474%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath179470%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath179404%_)
        (letrec ((_%find-compiled-file179406%_
                  (lambda (_%npath179459%_)
                    (let ((_%basepath179461%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath179459%_ '".o"))))
                      (let _%lp179463%_ ((_%current179465%_ '#f)
                                         (_%n179466%_ '1))
                        (let ((_%next179468%_
                               (let ((__tmp179992
                                      (number->string _%n179466%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath179461%_
                                  __tmp179992))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next179468%_))
                              (_%lp179463%_
                               _%next179468%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n179466%_ '1)))
                              _%current179465%_))))))
                 (_%find-source-file179407%_
                  (lambda (_%npath179455%_)
                    (let ((_%spath179457%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath179455%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath179457%_))
                          _%spath179457%_
                          '#f)))))
          (let _%lp179409%_ ((_%rest179411%_ (load-path)))
            (let* ((_%$%rest179412179420%_ _%rest179411%_)
                   (_%$%else179414179428%_ (lambda () '#f))
                   (_%$%K179416179443%_
                    (lambda (_%rest179431%_ _%dir179432%_)
                      (let* ((_%npath179434%_
                              (path-expand
                               _%modpath179404%_
                               (path-expand _%dir179432%_)))
                             (_%$e179436%_
                              (_%find-compiled-file179406%_ _%npath179434%_)))
                        (if _%$e179436%_
                            (path-normalize _%$e179436%_)
                            (let ((_%$e179439%_
                                   (_%find-source-file179407%_
                                    _%npath179434%_)))
                              (if _%$e179439%_
                                  (path-normalize _%$e179439%_)
                                  (_%lp179409%_ _%rest179431%_))))))))
              (if (pair? _%$%rest179412179420%_)
                  (let ((_%$%hd179417179446%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest179412179420%_)))
                        (_%$%tl179418179448%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest179412179420%_))))
                    (let* ((_%dir179451%_ _%$%hd179417179446%_)
                           (_%rest179453%_ _%$%tl179418179448%_))
                      (_%$%K179416179443%_ _%rest179453%_ _%dir179451%_)))
                  (_%$%else179414179428%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result179402%_
                 (let* ((_%h179384%_ __modules)
                        (_%h179388%_ _%h179384%_)
                        (_%h179390%_ _%h179388%_))
                   (declare (not safe))
                   (__hash->list _%h179390%_))))
            (mutex-unlock! __load-mx)
            _%result179402%_))))
    (define __module-load-order
      (lambda (_%modpath179320%_)
        (let ((_%modpath179323%_ _%modpath179320%_))
          (mutex-lock! __load-mx)
          (let ((_%ord179380%_
                 (if (eq? (let* ((_%h179332%_ __modules)
                                 (_%key179335%_ _%modpath179323%_)
                                 (_%h179339%_ _%h179332%_)
                                 (_%h179341%_ _%h179339%_))
                            (declare (not safe))
                            (__hash-get _%h179341%_ _%key179335%_))
                          'builtin)
                     '0
                     (let ((_%$e179376%_
                            (let* ((_%h179356%_ __load-order)
                                   (_%key179359%_ _%modpath179323%_)
                                   (_%h179363%_ _%h179356%_)
                                   (_%h179365%_ _%h179363%_))
                              (declare (not safe))
                              (__hash-get _%h179365%_ _%key179359%_))))
                       (if _%$e179376%_ _%$e179376%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord179380%_)
                _%ord179380%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath179323%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath179306%_)
        (if (string? _%modpath179306%_)
            (let ((_%modpath179310%_ _%modpath179306%_))
              (__module-load-order _%modpath179310%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath179306%_)
              '#!void))))))
