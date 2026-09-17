(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1789552477)
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
      (lambda _%paths181891%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths181891%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths181891%_)))
        (let ((__tmp182001
               (lambda (_%p181893%_)
                 (set! __load-path (cons _%p181893%_ __load-path))))
              (__tmp182000 (reverse! _%paths181891%_)))
          (declare (not safe))
          (##for-each __tmp182001 __tmp182000))))
    (define __set-load-path!
      (lambda (_%paths181879%_)
        (let ((_%paths181882%_ _%paths181879%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths181882%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths181882%_)))
          (set! __load-path _%paths181882%_))))
    (define set-load-path!
      (lambda (_%paths181865%_)
        (if (list? _%paths181865%_)
            (let ((_%paths181869%_ _%paths181865%_))
              (__set-load-path! _%paths181869%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths181865%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath181653%_)
        (let ((_%modpath181656%_ _%modpath181653%_))
          (mutex-lock! __load-mx)
          (let ((_%$e181688%_
                 (let* ((_%h181665%_ __modules)
                        (_%key181668%_ _%modpath181656%_)
                        (_%h181672%_ _%h181665%_)
                        (_%h181674%_ _%h181672%_))
                   (declare (not safe))
                   (__hash-get _%h181674%_ _%key181668%_))))
            (if _%$e181688%_
                (if (or (eq? 'builtin _%$e181688%_) (string? _%$e181688%_))
                    (let () (mutex-unlock! __load-mx) _%$e181688%_)
                    (if (eq? 'loading _%$e181688%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let* ((_%modpath181698%_ _%modpath181656%_)
                                 (_%modpath181703%_ _%modpath181698%_))
                            (__load-module _%modpath181703%_)))
                        (if (and (pair? _%$e181688%_)
                                 (eq? (let ()
                                        (declare (not safe))
                                        (##car _%$e181688%_))
                                      'error))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ((__tmp182002 (cadr _%$e181688%_)))
                                (declare (not safe))
                                (raise __tmp182002)))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ()
                                (declare (not safe))
                                (error '"inernal error; unexpected loading state"
                                       _%$e181688%_))))))
                (let ((_%$e181718%_ (__find-library-module _%modpath181656%_)))
                  (if _%$e181718%_
                      (let ()
                        (let* ((_%h181723%_ __modules)
                               (_%key181726%_ _%modpath181656%_)
                               (_%value181729%_ 'loading)
                               (_%h181733%_ _%h181723%_)
                               (_%h181735%_ _%h181733%_))
                          (declare (not safe))
                          (__hash-put!
                           _%h181735%_
                           _%key181726%_
                           _%value181729%_))
                        (mutex-unlock! __load-mx)
                        (let ((__tmp182004
                               (lambda (_%exn181749%_)
                                 (mutex-lock! __load-mx)
                                 (let* ((_%h181751%_ __modules)
                                        (_%key181754%_ _%modpath181656%_)
                                        (_%value181757%_
                                         (list 'error _%exn181749%_))
                                        (_%h181761%_ _%h181751%_)
                                        (_%h181763%_ _%h181761%_))
                                   (declare (not safe))
                                   (__hash-put!
                                    _%h181763%_
                                    _%key181754%_
                                    _%value181757%_))
                                 (condition-variable-broadcast! __load-cv)
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (raise _%exn181749%_))))
                              (__tmp182003
                               (lambda ()
                                 (let ((_%loaded-path181777%_
                                        (load _%$e181718%_)))
                                   (mutex-lock! __load-mx)
                                   (let* ((_%h181779%_ __modules)
                                          (_%key181782%_ _%modpath181656%_)
                                          (_%value181785%_
                                           _%loaded-path181777%_)
                                          (_%h181789%_ _%h181779%_)
                                          (_%h181791%_ _%h181789%_))
                                     (declare (not safe))
                                     (__hash-put!
                                      _%h181791%_
                                      _%key181782%_
                                      _%value181785%_))
                                   (if (let* ((_%h181805%_ __load-order)
                                              (_%key181808%_ _%modpath181656%_)
                                              (_%h181812%_ _%h181805%_)
                                              (_%h181814%_ _%h181812%_))
                                         (declare (not safe))
                                         (__hash-get
                                          _%h181814%_
                                          _%key181808%_))
                                       '#!void
                                       (begin
                                         (let* ((_%h181825%_ __load-order)
                                                (_%key181828%_
                                                 _%modpath181656%_)
                                                (_%value181831%_
                                                 __load-order-next)
                                                (_%h181835%_ _%h181825%_)
                                                (_%h181837%_ _%h181835%_))
                                           (declare (not safe))
                                           (__hash-put!
                                            _%h181837%_
                                            _%key181828%_
                                            _%value181831%_))
                                         (set! __load-order-next
                                               (let* ((_%x181849%_
                                                       __load-order-next)
                                                      (_%x181854%_
                                                       _%x181849%_))
                                                 (declare (not safe))
                                                 (__1+ _%x181854%_)))))
                                   (condition-variable-broadcast! __load-cv)
                                   (mutex-unlock! __load-mx)
                                   _%loaded-path181777%_))))
                          (declare (not safe))
                          (__with-catch __tmp182004 __tmp182003)))
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath181656%_))))))))))
    (define load-module
      (lambda (_%modpath181639%_)
        (if (string? _%modpath181639%_)
            (let ((_%modpath181643%_ _%modpath181639%_))
              (__load-module _%modpath181643%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath181639%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath181497%_)
        (let ((_%modpath181500%_ _%modpath181497%_))
          (mutex-lock! __load-mx)
          (let ((_%$e181532%_
                 (let* ((_%h181509%_ __modules)
                        (_%key181512%_ _%modpath181500%_)
                        (_%h181516%_ _%h181509%_)
                        (_%h181518%_ _%h181516%_))
                   (declare (not safe))
                   (__hash-get _%h181518%_ _%key181512%_))))
            (if _%$e181532%_
                (if (eq? _%$e181532%_ 'builtin)
                    (let ()
                      (mutex-unlock! __load-mx)
                      (let ()
                        (declare (not safe))
                        (error '"cannot reload builtin module"
                               _%modpath181500%_)))
                    (if (eq? 'loading _%$e181532%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let ()
                            (declare (not safe))
                            (error '"module is still loading")))
                        (if (string? _%$e181532%_)
                            (let ((_%latest-path181540%_
                                   (__find-library-module _%modpath181500%_)))
                              (if (or (equal? (path-extension _%$e181532%_)
                                              '".scm")
                                      (not (equal? _%$e181532%_
                                                   _%latest-path181540%_)))
                                  (begin
                                    (let* ((_%h181545%_ __modules)
                                           (_%key181548%_ _%modpath181500%_)
                                           (_%h181552%_ _%h181545%_)
                                           (_%h181554%_ _%h181552%_))
                                      (declare (not safe))
                                      (__hash-remove!
                                       _%h181554%_
                                       _%key181548%_))
                                    (mutex-unlock! __load-mx)
                                    (let* ((_%modpath181569%_
                                            _%modpath181500%_)
                                           (_%modpath181574%_
                                            _%modpath181569%_))
                                      (__load-module _%modpath181574%_)))
                                  (mutex-unlock! __load-mx)))
                            (if (and (pair? _%$e181532%_)
                                     (eq? (let ()
                                            (declare (not safe))
                                            (##car _%$e181532%_))
                                          'error))
                                (let ()
                                  (let* ((_%h181585%_ __modules)
                                         (_%key181588%_ _%modpath181500%_)
                                         (_%h181592%_ _%h181585%_)
                                         (_%h181594%_ _%h181592%_))
                                    (declare (not safe))
                                    (__hash-remove! _%h181594%_ _%key181588%_))
                                  (mutex-unlock! __load-mx)
                                  (let* ((_%modpath181606%_ _%modpath181500%_)
                                         (_%modpath181611%_ _%modpath181606%_))
                                    (__load-module _%modpath181611%_)))
                                (let ()
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (error '"inernal error; unexpected loading state"
                                           _%$e181532%_)))))))
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath181623%_ _%modpath181500%_)
                         (_%modpath181628%_ _%modpath181623%_))
                    (__load-module _%modpath181628%_))))))))
    (define reload-module!
      (lambda (_%modpath181483%_)
        (if (string? _%modpath181483%_)
            (let ((_%modpath181487%_ _%modpath181483%_))
              (__reload-module! _%modpath181487%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath181483%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath181417%_)
        (letrec ((_%find-compiled-file181419%_
                  (lambda (_%npath181472%_)
                    (let ((_%basepath181474%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath181472%_ '".o"))))
                      (let _%lp181476%_ ((_%current181478%_ '#f)
                                         (_%n181479%_ '1))
                        (let ((_%next181481%_
                               (let ((__tmp182005
                                      (number->string _%n181479%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath181474%_
                                  __tmp182005))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next181481%_))
                              (_%lp181476%_
                               _%next181481%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n181479%_ '1)))
                              _%current181478%_))))))
                 (_%find-source-file181420%_
                  (lambda (_%npath181468%_)
                    (let ((_%spath181470%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath181468%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath181470%_))
                          _%spath181470%_
                          '#f)))))
          (let _%lp181422%_ ((_%rest181424%_ (load-path)))
            (let* ((_%$%rest181425181433%_ _%rest181424%_)
                   (_%$%else181427181441%_ (lambda () '#f))
                   (_%$%K181429181456%_
                    (lambda (_%rest181444%_ _%dir181445%_)
                      (let* ((_%npath181447%_
                              (path-expand
                               _%modpath181417%_
                               (path-expand _%dir181445%_)))
                             (_%$e181449%_
                              (_%find-compiled-file181419%_ _%npath181447%_)))
                        (if _%$e181449%_
                            (path-normalize _%$e181449%_)
                            (let ((_%$e181452%_
                                   (_%find-source-file181420%_
                                    _%npath181447%_)))
                              (if _%$e181452%_
                                  (path-normalize _%$e181452%_)
                                  (_%lp181422%_ _%rest181444%_))))))))
              (if (pair? _%$%rest181425181433%_)
                  (let ((_%$%hd181430181459%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest181425181433%_)))
                        (_%$%tl181431181461%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest181425181433%_))))
                    (let* ((_%dir181464%_ _%$%hd181430181459%_)
                           (_%rest181466%_ _%$%tl181431181461%_))
                      (_%$%K181429181456%_ _%rest181466%_ _%dir181464%_)))
                  (_%$%else181427181441%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result181415%_
                 (let* ((_%h181397%_ __modules)
                        (_%h181401%_ _%h181397%_)
                        (_%h181403%_ _%h181401%_))
                   (declare (not safe))
                   (__hash->list _%h181403%_))))
            (mutex-unlock! __load-mx)
            _%result181415%_))))
    (define __module-load-order
      (lambda (_%modpath181333%_)
        (let ((_%modpath181336%_ _%modpath181333%_))
          (mutex-lock! __load-mx)
          (let ((_%ord181393%_
                 (if (eq? (let* ((_%h181345%_ __modules)
                                 (_%key181348%_ _%modpath181336%_)
                                 (_%h181352%_ _%h181345%_)
                                 (_%h181354%_ _%h181352%_))
                            (declare (not safe))
                            (__hash-get _%h181354%_ _%key181348%_))
                          'builtin)
                     '0
                     (let ((_%$e181389%_
                            (let* ((_%h181369%_ __load-order)
                                   (_%key181372%_ _%modpath181336%_)
                                   (_%h181376%_ _%h181369%_)
                                   (_%h181378%_ _%h181376%_))
                              (declare (not safe))
                              (__hash-get _%h181378%_ _%key181372%_))))
                       (if _%$e181389%_ _%$e181389%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord181393%_)
                _%ord181393%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath181336%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath181319%_)
        (if (string? _%modpath181319%_)
            (let ((_%modpath181323%_ _%modpath181319%_))
              (__module-load-order _%modpath181323%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath181319%_)
              '#!void))))))
