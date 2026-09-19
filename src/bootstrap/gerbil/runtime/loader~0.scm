(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/loader::timestamp 1789839225)
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
      (lambda _%paths182053%_
        (if (let () (declare (not safe)) (andmap__0 string? _%paths182053%_))
            '#!void
            (let ()
              (declare (not safe))
              (error '"bad load path; expected list of paths"
                     _%paths182053%_)))
        (let ((__tmp182163
               (lambda (_%p182055%_)
                 (set! __load-path (cons _%p182055%_ __load-path))))
              (__tmp182162 (reverse! _%paths182053%_)))
          (declare (not safe))
          (##for-each __tmp182163 __tmp182162))))
    (define __set-load-path!
      (lambda (_%paths182041%_)
        (let ((_%paths182044%_ _%paths182041%_))
          (if (let () (declare (not safe)) (andmap__0 string? _%paths182044%_))
              '#!void
              (let ()
                (declare (not safe))
                (error '"bad load path; expected list of paths"
                       _%paths182044%_)))
          (set! __load-path _%paths182044%_))))
    (define set-load-path!
      (lambda (_%paths182027%_)
        (if (list? _%paths182027%_)
            (let ((_%paths182031%_ _%paths182027%_))
              (__set-load-path! _%paths182031%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@27.23-27.28"
               'contract:
               'list?
               'value:
               _%paths182027%_)
              '#!void))))
    (define __load-module
      (lambda (_%modpath181815%_)
        (let ((_%modpath181818%_ _%modpath181815%_))
          (mutex-lock! __load-mx)
          (let ((_%$e181850%_
                 (let* ((_%h181827%_ __modules)
                        (_%key181830%_ _%modpath181818%_)
                        (_%h181834%_ _%h181827%_)
                        (_%h181836%_ _%h181834%_))
                   (declare (not safe))
                   (__hash-get _%h181836%_ _%key181830%_))))
            (if _%$e181850%_
                (if (or (eq? 'builtin _%$e181850%_) (string? _%$e181850%_))
                    (let () (mutex-unlock! __load-mx) _%$e181850%_)
                    (if (eq? 'loading _%$e181850%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let* ((_%modpath181860%_ _%modpath181818%_)
                                 (_%modpath181865%_ _%modpath181860%_))
                            (__load-module _%modpath181865%_)))
                        (if (and (pair? _%$e181850%_)
                                 (eq? (let ()
                                        (declare (not safe))
                                        (##car _%$e181850%_))
                                      'error))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ((__tmp182164 (cadr _%$e181850%_)))
                                (declare (not safe))
                                (raise __tmp182164)))
                            (let ()
                              (mutex-unlock! __load-mx)
                              (let ()
                                (declare (not safe))
                                (error '"inernal error; unexpected loading state"
                                       _%$e181850%_))))))
                (let ((_%$e181880%_ (__find-library-module _%modpath181818%_)))
                  (if _%$e181880%_
                      (let ()
                        (let* ((_%h181885%_ __modules)
                               (_%key181888%_ _%modpath181818%_)
                               (_%value181891%_ 'loading)
                               (_%h181895%_ _%h181885%_)
                               (_%h181897%_ _%h181895%_))
                          (declare (not safe))
                          (__hash-put!
                           _%h181897%_
                           _%key181888%_
                           _%value181891%_))
                        (mutex-unlock! __load-mx)
                        (let ((__tmp182166
                               (lambda (_%exn181911%_)
                                 (mutex-lock! __load-mx)
                                 (let* ((_%h181913%_ __modules)
                                        (_%key181916%_ _%modpath181818%_)
                                        (_%value181919%_
                                         (list 'error _%exn181911%_))
                                        (_%h181923%_ _%h181913%_)
                                        (_%h181925%_ _%h181923%_))
                                   (declare (not safe))
                                   (__hash-put!
                                    _%h181925%_
                                    _%key181916%_
                                    _%value181919%_))
                                 (condition-variable-broadcast! __load-cv)
                                 (mutex-unlock! __load-mx)
                                 (let ()
                                   (declare (not safe))
                                   (raise _%exn181911%_))))
                              (__tmp182165
                               (lambda ()
                                 (let ((_%loaded-path181939%_
                                        (load _%$e181880%_)))
                                   (mutex-lock! __load-mx)
                                   (let* ((_%h181941%_ __modules)
                                          (_%key181944%_ _%modpath181818%_)
                                          (_%value181947%_
                                           _%loaded-path181939%_)
                                          (_%h181951%_ _%h181941%_)
                                          (_%h181953%_ _%h181951%_))
                                     (declare (not safe))
                                     (__hash-put!
                                      _%h181953%_
                                      _%key181944%_
                                      _%value181947%_))
                                   (if (let* ((_%h181967%_ __load-order)
                                              (_%key181970%_ _%modpath181818%_)
                                              (_%h181974%_ _%h181967%_)
                                              (_%h181976%_ _%h181974%_))
                                         (declare (not safe))
                                         (__hash-get
                                          _%h181976%_
                                          _%key181970%_))
                                       '#!void
                                       (begin
                                         (let* ((_%h181987%_ __load-order)
                                                (_%key181990%_
                                                 _%modpath181818%_)
                                                (_%value181993%_
                                                 __load-order-next)
                                                (_%h181997%_ _%h181987%_)
                                                (_%h181999%_ _%h181997%_))
                                           (declare (not safe))
                                           (__hash-put!
                                            _%h181999%_
                                            _%key181990%_
                                            _%value181993%_))
                                         (set! __load-order-next
                                               (let* ((_%x182011%_
                                                       __load-order-next)
                                                      (_%x182016%_
                                                       _%x182011%_))
                                                 (declare (not safe))
                                                 (__1+ _%x182016%_)))))
                                   (condition-variable-broadcast! __load-cv)
                                   (mutex-unlock! __load-mx)
                                   _%loaded-path181939%_))))
                          (declare (not safe))
                          (__with-catch __tmp182166 __tmp182165)))
                      (let ()
                        (mutex-unlock! __load-mx)
                        (let ()
                          (declare (not safe))
                          (error '"module not found"
                                 _%modpath181818%_))))))))))
    (define load-module
      (lambda (_%modpath181801%_)
        (if (string? _%modpath181801%_)
            (let ((_%modpath181805%_ _%modpath181801%_))
              (__load-module _%modpath181805%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@32.20-32.27"
               'contract:
               'string?
               'value:
               _%modpath181801%_)
              '#!void))))
    (define __reload-module!
      (lambda (_%modpath181659%_)
        (let ((_%modpath181662%_ _%modpath181659%_))
          (mutex-lock! __load-mx)
          (let ((_%$e181694%_
                 (let* ((_%h181671%_ __modules)
                        (_%key181674%_ _%modpath181662%_)
                        (_%h181678%_ _%h181671%_)
                        (_%h181680%_ _%h181678%_))
                   (declare (not safe))
                   (__hash-get _%h181680%_ _%key181674%_))))
            (if _%$e181694%_
                (if (eq? _%$e181694%_ 'builtin)
                    (let ()
                      (mutex-unlock! __load-mx)
                      (let ()
                        (declare (not safe))
                        (error '"cannot reload builtin module"
                               _%modpath181662%_)))
                    (if (eq? 'loading _%$e181694%_)
                        (let ()
                          (mutex-unlock! __load-mx __load-cv)
                          (let ()
                            (declare (not safe))
                            (error '"module is still loading")))
                        (if (string? _%$e181694%_)
                            (let ((_%latest-path181702%_
                                   (__find-library-module _%modpath181662%_)))
                              (if (or (equal? (path-extension _%$e181694%_)
                                              '".scm")
                                      (not (equal? _%$e181694%_
                                                   _%latest-path181702%_)))
                                  (begin
                                    (let* ((_%h181707%_ __modules)
                                           (_%key181710%_ _%modpath181662%_)
                                           (_%h181714%_ _%h181707%_)
                                           (_%h181716%_ _%h181714%_))
                                      (declare (not safe))
                                      (__hash-remove!
                                       _%h181716%_
                                       _%key181710%_))
                                    (mutex-unlock! __load-mx)
                                    (let* ((_%modpath181731%_
                                            _%modpath181662%_)
                                           (_%modpath181736%_
                                            _%modpath181731%_))
                                      (__load-module _%modpath181736%_)))
                                  (mutex-unlock! __load-mx)))
                            (if (and (pair? _%$e181694%_)
                                     (eq? (let ()
                                            (declare (not safe))
                                            (##car _%$e181694%_))
                                          'error))
                                (let ()
                                  (let* ((_%h181747%_ __modules)
                                         (_%key181750%_ _%modpath181662%_)
                                         (_%h181754%_ _%h181747%_)
                                         (_%h181756%_ _%h181754%_))
                                    (declare (not safe))
                                    (__hash-remove! _%h181756%_ _%key181750%_))
                                  (mutex-unlock! __load-mx)
                                  (let* ((_%modpath181768%_ _%modpath181662%_)
                                         (_%modpath181773%_ _%modpath181768%_))
                                    (__load-module _%modpath181773%_)))
                                (let ()
                                  (mutex-unlock! __load-mx)
                                  (let ()
                                    (declare (not safe))
                                    (error '"inernal error; unexpected loading state"
                                           _%$e181694%_)))))))
                (let ()
                  (mutex-unlock! __load-mx)
                  (let* ((_%modpath181785%_ _%modpath181662%_)
                         (_%modpath181790%_ _%modpath181785%_))
                    (__load-module _%modpath181790%_))))))))
    (define reload-module!
      (lambda (_%modpath181645%_)
        (if (string? _%modpath181645%_)
            (let ((_%modpath181649%_ _%modpath181645%_))
              (__reload-module! _%modpath181649%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@75.23-75.30"
               'contract:
               'string?
               'value:
               _%modpath181645%_)
              '#!void))))
    (define __find-library-module
      (lambda (_%modpath181579%_)
        (letrec ((_%find-compiled-file181581%_
                  (lambda (_%npath181634%_)
                    (let ((_%basepath181636%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath181634%_ '".o"))))
                      (let _%lp181638%_ ((_%current181640%_ '#f)
                                         (_%n181641%_ '1))
                        (let ((_%next181643%_
                               (let ((__tmp182167
                                      (number->string _%n181641%_)))
                                 (declare (not safe))
                                 (##string-append
                                  _%basepath181636%_
                                  __tmp182167))))
                          (if (let ()
                                (declare (not safe))
                                (##file-exists? _%next181643%_))
                              (_%lp181638%_
                               _%next181643%_
                               (let ()
                                 (declare (not safe))
                                 (##fx+ _%n181641%_ '1)))
                              _%current181640%_))))))
                 (_%find-source-file181582%_
                  (lambda (_%npath181630%_)
                    (let ((_%spath181632%_
                           (let ()
                             (declare (not safe))
                             (##string-append _%npath181630%_ '".scm"))))
                      (if (let ()
                            (declare (not safe))
                            (##file-exists? _%spath181632%_))
                          _%spath181632%_
                          '#f)))))
          (let _%lp181584%_ ((_%rest181586%_ (load-path)))
            (let* ((_%$%rest181587181595%_ _%rest181586%_)
                   (_%$%else181589181603%_ (lambda () '#f))
                   (_%$%K181591181618%_
                    (lambda (_%rest181606%_ _%dir181607%_)
                      (let* ((_%npath181609%_
                              (path-expand
                               _%modpath181579%_
                               (path-expand _%dir181607%_)))
                             (_%$e181611%_
                              (_%find-compiled-file181581%_ _%npath181609%_)))
                        (if _%$e181611%_
                            (path-normalize _%$e181611%_)
                            (let ((_%$e181614%_
                                   (_%find-source-file181582%_
                                    _%npath181609%_)))
                              (if _%$e181614%_
                                  (path-normalize _%$e181614%_)
                                  (_%lp181584%_ _%rest181606%_))))))))
              (if (pair? _%$%rest181587181595%_)
                  (let ((_%$%hd181592181621%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest181587181595%_)))
                        (_%$%tl181593181623%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest181587181595%_))))
                    (let* ((_%dir181626%_ _%$%hd181592181621%_)
                           (_%rest181628%_ _%$%tl181593181623%_))
                      (_%$%K181591181618%_ _%rest181628%_ _%dir181626%_)))
                  (_%$%else181589181603%_)))))))
    (define list-modules
      (lambda ()
        (let ()
          (mutex-lock! __load-mx)
          (let ((_%result181577%_
                 (let* ((_%h181559%_ __modules)
                        (_%h181563%_ _%h181559%_)
                        (_%h181565%_ _%h181563%_))
                   (declare (not safe))
                   (__hash->list _%h181565%_))))
            (mutex-unlock! __load-mx)
            _%result181577%_))))
    (define __module-load-order
      (lambda (_%modpath181495%_)
        (let ((_%modpath181498%_ _%modpath181495%_))
          (mutex-lock! __load-mx)
          (let ((_%ord181555%_
                 (if (eq? (let* ((_%h181507%_ __modules)
                                 (_%key181510%_ _%modpath181498%_)
                                 (_%h181514%_ _%h181507%_)
                                 (_%h181516%_ _%h181514%_))
                            (declare (not safe))
                            (__hash-get _%h181516%_ _%key181510%_))
                          'builtin)
                     '0
                     (let ((_%$e181551%_
                            (let* ((_%h181531%_ __load-order)
                                   (_%key181534%_ _%modpath181498%_)
                                   (_%h181538%_ _%h181531%_)
                                   (_%h181540%_ _%h181538%_))
                              (declare (not safe))
                              (__hash-get _%h181540%_ _%key181534%_))))
                       (if _%$e181551%_ _%$e181551%_ '#f)))))
            (mutex-unlock! __load-mx)
            (if (exact-integer? _%ord181555%_)
                _%ord181555%_
                (begin
                  (let ()
                    (declare (not safe))
                    (error '"unknown module load order"
                           'module:
                           _%modpath181498%_))
                  '#!void))))))
    (define module-load-order
      (lambda (_%modpath181481%_)
        (if (string? _%modpath181481%_)
            (let ((_%modpath181485%_ _%modpath181481%_))
              (__module-load-order _%modpath181485%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/loader.ss\"@137.26-137.33"
               'contract:
               'string?
               'value:
               _%modpath181481%_)
              '#!void))))))
