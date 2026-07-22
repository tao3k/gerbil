(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1784461440)
  (begin
    (define __make-promise
      (lambda (_%thunk126038%_)
        (let ((_%thunk126041%_ _%thunk126038%_))
          (declare (not safe))
          (##make-delay-promise _%thunk126041%_))))
    (define make-promise
      (lambda (_%thunk126024%_)
        (if (procedure? _%thunk126024%_)
            (let ((_%thunk126028%_ _%thunk126024%_))
              (__make-promise _%thunk126028%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk126024%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk125968%_)
        (let ((_%thunk125971%_ _%thunk125968%_))
          (let ((_%mx125998%_ (make-mutex 'promise))
                (_%inner125999%_
                 (let* ((_%thunk125980%_ _%thunk125971%_)
                        (_%thunk125985%_ _%thunk125980%_))
                   (__make-promise _%thunk125985%_))))
            (let* ((_%thunk126008%_
                    (lambda ()
                      (let ((_%once126002%_ (vector '0)))
                        (let ((__tmp126129
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp126130
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once126002%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp126130 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx125998%_))))
                              (__tmp126128
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner125999%_))))
                              (__tmp126127
                               (lambda () (mutex-unlock! _%mx125998%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp126129
                           __tmp126128
                           __tmp126127)))))
                   (_%thunk126013%_ _%thunk126008%_))
              (__make-promise _%thunk126013%_))))))
    (define make-atomic-promise
      (lambda (_%thunk125954%_)
        (if (procedure? _%thunk125954%_)
            (let ((_%thunk125958%_ _%thunk125954%_))
              (__make-atomic-promise _%thunk125958%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk125954%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk125906%_)
        (if (procedure? _%thunk125906%_)
            (let ((_%thunk125910%_ _%thunk125906%_))
              (declare (not safe))
              (_%thunk125910%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk125906%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk125920%_ _%param125921%_ _%val125922%_)
        (if (procedure? _%thunk125920%_)
            (let ((_%thunk125926%_ _%thunk125920%_))
              (declare (not safe))
              (##parameterize1 _%param125921%_ _%val125922%_ _%thunk125926%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk125920%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk125936%_ _%param125937%_ _%val125938%_ . _%rest125939%_)
        (if (procedure? _%thunk125936%_)
            (let ((_%thunk125943%_ _%thunk125936%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk125943%_ _%rest125939%_))
               _%param125937%_
               _%val125938%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk125936%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g126131_
        (let ((_g126132_ (let () (declare (not safe)) (##length _g126131_))))
          (cond ((let () (declare (not safe)) (##fx= _g126132_ 1))
                 (apply call-with-parameters__0 _g126131_))
                ((let () (declare (not safe)) (##fx= _g126132_ 3))
                 (apply call-with-parameters__1 _g126131_))
                ((let () (declare (not safe)) (##fx>= _g126132_ 3))
                 (apply call-with-parameters__2 _g126131_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g126131_))))))
    (define __with-unwind-protect
      (lambda (_%K125881%_ _%fini125882%_)
        (let* ((_%K125885%_ _%K125881%_)
               (_%fini125893%_ _%fini125882%_)
               (_%once125902%_ (vector '0))
               (__tmp126133
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp126134
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once125902%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp126134 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp126133 _%K125885%_ _%fini125893%_))))
    (define with-unwind-protect
      (lambda (_%K125856%_ _%fini125857%_)
        (if (procedure? _%K125856%_)
            (let ((_%K125861%_ _%K125856%_))
              (if (procedure? _%fini125857%_)
                  (let ((_%fini125871%_ _%fini125857%_))
                    (__with-unwind-protect _%K125861%_ _%fini125871%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini125857%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K125856%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt125749%_ _%K125750%_ . _%all-args125751%_)
        (if _%kwt125749%_
            (if (vector? _%kwt125749%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt125749%_))
            '#!void)
        (if (procedure? _%K125750%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K125750%_))
        (let ((_%keys125753%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp125755%_ ((_%rest125757%_ _%all-args125751%_)
                             (_%args125758%_ '#f)
                             (_%tail125759%_ '#f))
            (let* ((_%$%rest125760125768%_ _%rest125757%_)
                   (_%$%else125762125776%_
                    (lambda ()
                      (if _%args125758%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail125759%_ '()))
                            (let ((__tmp126135
                                   (cons _%keys125753%_ _%args125758%_)))
                              (declare (not safe))
                              (##apply _%K125750%_ __tmp126135)))
                          (_%K125750%_ _%keys125753%_))))
                   (_%$%K125764125844%_
                    (lambda (_%hd-rest125779%_ _%hd125780%_)
                      (if (keyword? _%hd125780%_)
                          (let* ((_%$%hd-rest125782125789%_ _%hd-rest125779%_)
                                 (_%$%E125784125793%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%$%hd-rest125782125789%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%$%K125785125801%_
                                  (lambda (_%rest125796%_ _%val125797%_)
                                    (if _%kwt125749%_
                                        (let ((_%pos125799%_
                                               (let ((__tmp126137
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd125780%_)))
                                                     (__tmp126136
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt125749%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp126137
                                                  __tmp126136))))
                                          (if (eq? _%hd125780%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt125749%_
                                                      _%pos125799%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K125750%_
                                                     _%hd125780%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys125753%_
                                                _%hd125780%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K125750%_
                                               _%hd125780%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys125753%_
                                       _%hd125780%_
                                       _%val125797%_))
                                    (_%lp125755%_
                                     _%rest125796%_
                                     _%args125758%_
                                     _%tail125759%_))))
                            (if (pair? _%$%hd-rest125782125789%_)
                                (let ((_%$%hd125786125804%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd-rest125782125789%_)))
                                      (_%$%tl125787125806%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd-rest125782125789%_))))
                                  (let* ((_%val125809%_ _%$%hd125786125804%_)
                                         (_%rest125811%_ _%$%tl125787125806%_))
                                    (_%$%K125785125801%_
                                     _%rest125811%_
                                     _%val125809%_)))
                                (_%$%E125784125793%_)))
                          (if (eq? _%hd125780%_ '#!key)
                              (let* ((_%$%hd-rest125813125820%_
                                      _%hd-rest125779%_)
                                     (_%$%E125815125824%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%hd-rest125813125820%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%$%K125816125830%_
                                      (lambda (_%rest125827%_ _%val125828%_)
                                        (if _%args125758%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail125759%_
                                                 _%hd-rest125779%_))
                                              (_%lp125755%_
                                               _%rest125827%_
                                               _%args125758%_
                                               _%hd-rest125779%_))
                                            (_%lp125755%_
                                             _%rest125827%_
                                             _%hd-rest125779%_
                                             _%hd-rest125779%_)))))
                                (if (pair? _%$%hd-rest125813125820%_)
                                    (let ((_%$%hd125817125833%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd-rest125813125820%_)))
                                          (_%$%tl125818125835%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd-rest125813125820%_))))
                                      (let* ((_%val125838%_
                                              _%$%hd125817125833%_)
                                             (_%rest125840%_
                                              _%$%tl125818125835%_))
                                        (_%$%K125816125830%_
                                         _%rest125840%_
                                         _%val125838%_)))
                                    (_%$%E125815125824%_)))
                              (if (eq? _%hd125780%_ '#!rest)
                                  (if _%args125758%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail125759%_
                                           _%hd-rest125779%_))
                                        (let ((__tmp126138
                                               (cons _%keys125753%_
                                                     _%args125758%_)))
                                          (declare (not safe))
                                          (##apply _%K125750%_ __tmp126138)))
                                      (let ((__tmp126139
                                             (cons _%keys125753%_
                                                   _%hd-rest125779%_)))
                                        (declare (not safe))
                                        (##apply _%K125750%_ __tmp126139)))
                                  (if _%args125758%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail125759%_
                                           _%rest125757%_))
                                        (_%lp125755%_
                                         _%hd-rest125779%_
                                         _%args125758%_
                                         _%rest125757%_))
                                      (_%lp125755%_
                                       _%hd-rest125779%_
                                       _%rest125757%_
                                       _%rest125757%_))))))))
              (if (pair? _%$%rest125760125768%_)
                  (let ((_%$%hd125765125847%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest125760125768%_)))
                        (_%$%tl125766125849%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest125760125768%_))))
                    (let* ((_%hd125852%_ _%$%hd125765125847%_)
                           (_%hd-rest125854%_ _%$%tl125766125849%_))
                      (_%$%K125764125844%_ _%hd-rest125854%_ _%hd125852%_)))
                  (_%$%else125762125776%_)))))))
    (define keyword-rest
      (lambda (_%kwt125741%_ . _%drop125742%_)
        (let ((_%rest125744%_ '()))
          (let ((__tmp126140
                 (lambda (_%k125746%_ _%v125747%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k125746%_ _%drop125742%_))
                       '#!void
                       (set! _%rest125744%_
                             (cons _%k125746%_
                                   (cons _%v125747%_ _%rest125744%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt125741%_ __tmp126140))
          _%rest125744%_)))))
