(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1789839222)
  (begin
    (define __make-promise
      (lambda (_%thunk128195%_)
        (let ((_%thunk128198%_ _%thunk128195%_))
          (declare (not safe))
          (##make-delay-promise _%thunk128198%_))))
    (define make-promise
      (lambda (_%thunk128181%_)
        (if (procedure? _%thunk128181%_)
            (let ((_%thunk128185%_ _%thunk128181%_))
              (__make-promise _%thunk128185%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk128181%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk128125%_)
        (let ((_%thunk128128%_ _%thunk128125%_))
          (let ((_%mx128155%_ (make-mutex 'promise))
                (_%inner128156%_
                 (let* ((_%thunk128137%_ _%thunk128128%_)
                        (_%thunk128142%_ _%thunk128137%_))
                   (__make-promise _%thunk128142%_))))
            (let* ((_%thunk128165%_
                    (lambda ()
                      (let ((_%once128159%_ (vector '0)))
                        (let ((__tmp128312
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp128313
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once128159%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp128313 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx128155%_))))
                              (__tmp128311
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner128156%_))))
                              (__tmp128310
                               (lambda () (mutex-unlock! _%mx128155%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp128312
                           __tmp128311
                           __tmp128310)))))
                   (_%thunk128170%_ _%thunk128165%_))
              (__make-promise _%thunk128170%_))))))
    (define make-atomic-promise
      (lambda (_%thunk128111%_)
        (if (procedure? _%thunk128111%_)
            (let ((_%thunk128115%_ _%thunk128111%_))
              (__make-atomic-promise _%thunk128115%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk128111%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk128063%_)
        (if (procedure? _%thunk128063%_)
            (let ((_%thunk128067%_ _%thunk128063%_))
              (declare (not safe))
              (_%thunk128067%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk128063%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk128077%_ _%param128078%_ _%val128079%_)
        (if (procedure? _%thunk128077%_)
            (let ((_%thunk128083%_ _%thunk128077%_))
              (declare (not safe))
              (##parameterize1 _%param128078%_ _%val128079%_ _%thunk128083%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk128077%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk128093%_ _%param128094%_ _%val128095%_ . _%rest128096%_)
        (if (procedure? _%thunk128093%_)
            (let ((_%thunk128100%_ _%thunk128093%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk128100%_ _%rest128096%_))
               _%param128094%_
               _%val128095%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk128093%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g128314_
        (let ((_g128315_ (let () (declare (not safe)) (##length _g128314_))))
          (cond ((let () (declare (not safe)) (##fx= _g128315_ 1))
                 (apply call-with-parameters__0 _g128314_))
                ((let () (declare (not safe)) (##fx= _g128315_ 3))
                 (apply call-with-parameters__1 _g128314_))
                ((let () (declare (not safe)) (##fx>= _g128315_ 3))
                 (apply call-with-parameters__2 _g128314_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g128314_))))))
    (define __with-unwind-protect
      (lambda (_%K128038%_ _%fini128039%_)
        (let* ((_%K128042%_ _%K128038%_)
               (_%fini128050%_ _%fini128039%_)
               (_%once128059%_ (vector '0))
               (__tmp128316
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp128317
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once128059%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp128317 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp128316 _%K128042%_ _%fini128050%_))))
    (define with-unwind-protect
      (lambda (_%K128013%_ _%fini128014%_)
        (if (procedure? _%K128013%_)
            (let ((_%K128018%_ _%K128013%_))
              (if (procedure? _%fini128014%_)
                  (let ((_%fini128028%_ _%fini128014%_))
                    (__with-unwind-protect _%K128018%_ _%fini128028%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini128014%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K128013%_)
              '#!void))))
    (define __with-unwind-protect!
      (lambda (_%K127982%_ _%fini127983%_)
        (let* ((_%K127986%_ _%K127982%_)
               (_%fini127994%_ _%fini127983%_)
               (_%unwinding128003%_ '#f)
               (_%E128005%_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_%e128007%_)
             (let ((__tmp128318
                    (lambda ()
                      (if _%unwinding128003%_
                          '#!void
                          (begin
                            (set! _%unwinding128003%_ '#t)
                            (let () (declare (not safe)) (_%fini127994%_))))
                      (let ()
                        (declare (not safe))
                        (_%E128005%_ _%e128007%_)))))
               (declare (not safe))
               (##with-exception-handler _%E128005%_ __tmp128318)))
           (lambda ()
             (let ((_%result128011%_
                    (let () (declare (not safe)) (_%K127986%_))))
               (if _%unwinding128003%_
                   '#!void
                   (begin
                     (set! _%unwinding128003%_ '#t)
                     (let () (declare (not safe)) (_%fini127994%_))))
               _%result128011%_))))))
    (define with-unwind-protect!
      (lambda (_%K127957%_ _%fini127958%_)
        (if (procedure? _%K127957%_)
            (let ((_%K127962%_ _%K127957%_))
              (if (procedure? _%fini127958%_)
                  (let ((_%fini127972%_ _%fini127958%_))
                    (__with-unwind-protect! _%K127962%_ _%fini127972%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@53.46-53.50"
                     'contract:
                     'procedure?
                     'value:
                     _%fini127958%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@53.29-53.30"
               'contract:
               'procedure?
               'value:
               _%K127957%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt127850%_ _%K127851%_ . _%all-args127852%_)
        (if _%kwt127850%_
            (if (vector? _%kwt127850%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt127850%_))
            '#!void)
        (if (procedure? _%K127851%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K127851%_))
        (let ((_%keys127854%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp127856%_ ((_%rest127858%_ _%all-args127852%_)
                             (_%args127859%_ '#f)
                             (_%tail127860%_ '#f))
            (let* ((_%$%rest127861127869%_ _%rest127858%_)
                   (_%$%else127863127877%_
                    (lambda ()
                      (if _%args127859%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail127860%_ '()))
                            (let ((__tmp128319
                                   (cons _%keys127854%_ _%args127859%_)))
                              (declare (not safe))
                              (##apply _%K127851%_ __tmp128319)))
                          (_%K127851%_ _%keys127854%_))))
                   (_%$%K127865127945%_
                    (lambda (_%hd-rest127880%_ _%hd127881%_)
                      (if (keyword? _%hd127881%_)
                          (let* ((_%$%hd-rest127883127890%_ _%hd-rest127880%_)
                                 (_%$%E127885127894%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%$%hd-rest127883127890%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%$%K127886127902%_
                                  (lambda (_%rest127897%_ _%val127898%_)
                                    (if _%kwt127850%_
                                        (let ((_%pos127900%_
                                               (let ((__tmp128321
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd127881%_)))
                                                     (__tmp128320
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt127850%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp128321
                                                  __tmp128320))))
                                          (if (eq? _%hd127881%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt127850%_
                                                      _%pos127900%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K127851%_
                                                     _%hd127881%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys127854%_
                                                _%hd127881%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K127851%_
                                               _%hd127881%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys127854%_
                                       _%hd127881%_
                                       _%val127898%_))
                                    (_%lp127856%_
                                     _%rest127897%_
                                     _%args127859%_
                                     _%tail127860%_))))
                            (if (pair? _%$%hd-rest127883127890%_)
                                (let ((_%$%hd127887127905%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd-rest127883127890%_)))
                                      (_%$%tl127888127907%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd-rest127883127890%_))))
                                  (let* ((_%val127910%_ _%$%hd127887127905%_)
                                         (_%rest127912%_ _%$%tl127888127907%_))
                                    (_%$%K127886127902%_
                                     _%rest127912%_
                                     _%val127910%_)))
                                (_%$%E127885127894%_)))
                          (if (eq? _%hd127881%_ '#!key)
                              (let* ((_%$%hd-rest127914127921%_
                                      _%hd-rest127880%_)
                                     (_%$%E127916127925%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%hd-rest127914127921%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%$%K127917127931%_
                                      (lambda (_%rest127928%_ _%val127929%_)
                                        (if _%args127859%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail127860%_
                                                 _%hd-rest127880%_))
                                              (_%lp127856%_
                                               _%rest127928%_
                                               _%args127859%_
                                               _%hd-rest127880%_))
                                            (_%lp127856%_
                                             _%rest127928%_
                                             _%hd-rest127880%_
                                             _%hd-rest127880%_)))))
                                (if (pair? _%$%hd-rest127914127921%_)
                                    (let ((_%$%hd127918127934%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd-rest127914127921%_)))
                                          (_%$%tl127919127936%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd-rest127914127921%_))))
                                      (let* ((_%val127939%_
                                              _%$%hd127918127934%_)
                                             (_%rest127941%_
                                              _%$%tl127919127936%_))
                                        (_%$%K127917127931%_
                                         _%rest127941%_
                                         _%val127939%_)))
                                    (_%$%E127916127925%_)))
                              (if (eq? _%hd127881%_ '#!rest)
                                  (if _%args127859%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail127860%_
                                           _%hd-rest127880%_))
                                        (let ((__tmp128322
                                               (cons _%keys127854%_
                                                     _%args127859%_)))
                                          (declare (not safe))
                                          (##apply _%K127851%_ __tmp128322)))
                                      (let ((__tmp128323
                                             (cons _%keys127854%_
                                                   _%hd-rest127880%_)))
                                        (declare (not safe))
                                        (##apply _%K127851%_ __tmp128323)))
                                  (if _%args127859%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail127860%_
                                           _%rest127858%_))
                                        (_%lp127856%_
                                         _%hd-rest127880%_
                                         _%args127859%_
                                         _%rest127858%_))
                                      (_%lp127856%_
                                       _%hd-rest127880%_
                                       _%rest127858%_
                                       _%rest127858%_))))))))
              (if (pair? _%$%rest127861127869%_)
                  (let ((_%$%hd127866127948%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest127861127869%_)))
                        (_%$%tl127867127950%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest127861127869%_))))
                    (let* ((_%hd127953%_ _%$%hd127866127948%_)
                           (_%hd-rest127955%_ _%$%tl127867127950%_))
                      (_%$%K127865127945%_ _%hd-rest127955%_ _%hd127953%_)))
                  (_%$%else127863127877%_)))))))
    (define keyword-rest
      (lambda (_%kwt127842%_ . _%drop127843%_)
        (let ((_%rest127845%_ '()))
          (let ((__tmp128324
                 (lambda (_%k127847%_ _%v127848%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k127847%_ _%drop127843%_))
                       '#!void
                       (set! _%rest127845%_
                             (cons _%k127847%_
                                   (cons _%v127848%_ _%rest127845%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt127842%_ __tmp128324))
          _%rest127845%_)))))
