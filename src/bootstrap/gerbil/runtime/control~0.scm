(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/control::timestamp 1789552471)
  (begin
    (define __make-promise
      (lambda (_%thunk128033%_)
        (let ((_%thunk128036%_ _%thunk128033%_))
          (declare (not safe))
          (##make-delay-promise _%thunk128036%_))))
    (define make-promise
      (lambda (_%thunk128019%_)
        (if (procedure? _%thunk128019%_)
            (let ((_%thunk128023%_ _%thunk128019%_))
              (__make-promise _%thunk128023%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@11.21-11.26"
               'contract:
               'procedure?
               'value:
               _%thunk128019%_)
              '#!void))))
    (define __make-atomic-promise
      (lambda (_%thunk127963%_)
        (let ((_%thunk127966%_ _%thunk127963%_))
          (let ((_%mx127993%_ (make-mutex 'promise))
                (_%inner127994%_
                 (let* ((_%thunk127975%_ _%thunk127966%_)
                        (_%thunk127980%_ _%thunk127975%_))
                   (__make-promise _%thunk127980%_))))
            (let* ((_%thunk128003%_
                    (lambda ()
                      (let ((_%once127997%_ (vector '0)))
                        (let ((__tmp128150
                               (lambda ()
                                 (declare (not interrupts-enabled))
                                 (begin
                                   (if (let ((__tmp128151
                                              (let ()
                                                (declare (not safe))
                                                (##vector-cas!
                                                 _%once127997%_
                                                 '0
                                                 '1
                                                 '0))))
                                         (declare (not safe))
                                         (##fx= __tmp128151 '0))
                                       '#!void
                                       (error '"Cannot reenter atomic block"))
                                   (mutex-lock! _%mx127993%_))))
                              (__tmp128149
                               (lambda ()
                                 (let ()
                                   (declare (not safe))
                                   (##force-out-of-line _%inner127994%_))))
                              (__tmp128148
                               (lambda () (mutex-unlock! _%mx127993%_))))
                          (declare (not safe))
                          (##dynamic-wind
                           __tmp128150
                           __tmp128149
                           __tmp128148)))))
                   (_%thunk128008%_ _%thunk128003%_))
              (__make-promise _%thunk128008%_))))))
    (define make-atomic-promise
      (lambda (_%thunk127949%_)
        (if (procedure? _%thunk127949%_)
            (let ((_%thunk127953%_ _%thunk127949%_))
              (__make-atomic-promise _%thunk127953%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@15.28-15.33"
               'contract:
               'procedure?
               'value:
               _%thunk127949%_)
              '#!void))))
    (define call-with-parameters__0
      (lambda (_%thunk127901%_)
        (if (procedure? _%thunk127901%_)
            (let ((_%thunk127905%_ _%thunk127901%_))
              (declare (not safe))
              (_%thunk127905%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@32.6-32.11"
               'contract:
               'procedure?
               'value:
               _%thunk127901%_)
              '#!void))))
    (define call-with-parameters__1
      (lambda (_%thunk127915%_ _%param127916%_ _%val127917%_)
        (if (procedure? _%thunk127915%_)
            (let ((_%thunk127921%_ _%thunk127915%_))
              (declare (not safe))
              (##parameterize1 _%param127916%_ _%val127917%_ _%thunk127921%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@33.6-33.11"
               'contract:
               'procedure?
               'value:
               _%thunk127915%_)
              '#!void))))
    (define call-with-parameters__2
      (lambda (_%thunk127931%_ _%param127932%_ _%val127933%_ . _%rest127934%_)
        (if (procedure? _%thunk127931%_)
            (let ((_%thunk127938%_ _%thunk127931%_))
              (call-with-parameters__1
               (lambda ()
                 (apply call-with-parameters _%thunk127938%_ _%rest127934%_))
               _%param127932%_
               _%val127933%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@35.6-35.11"
               'contract:
               'procedure?
               'value:
               _%thunk127931%_)
              '#!void))))
    (define call-with-parameters
      (lambda _g128152_
        (let ((_g128153_ (let () (declare (not safe)) (##length _g128152_))))
          (cond ((let () (declare (not safe)) (##fx= _g128153_ 1))
                 (apply call-with-parameters__0 _g128152_))
                ((let () (declare (not safe)) (##fx= _g128153_ 3))
                 (apply call-with-parameters__1 _g128152_))
                ((let () (declare (not safe)) (##fx>= _g128153_ 3))
                 (apply call-with-parameters__2 _g128152_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  call-with-parameters
                  _g128152_))))))
    (define __with-unwind-protect
      (lambda (_%K127876%_ _%fini127877%_)
        (let* ((_%K127880%_ _%K127876%_)
               (_%fini127888%_ _%fini127877%_)
               (_%once127897%_ (vector '0))
               (__tmp128154
                (lambda ()
                  (declare (not interrupts-enabled))
                  (if (let ((__tmp128155
                             (let ()
                               (declare (not safe))
                               (##vector-cas! _%once127897%_ '0 '1 '0))))
                        (declare (not safe))
                        (##fx= __tmp128155 '0))
                      '#!void
                      (error '"Cannot re-enter unwind protected block")))))
          (declare (not safe))
          (##dynamic-wind __tmp128154 _%K127880%_ _%fini127888%_))))
    (define with-unwind-protect
      (lambda (_%K127851%_ _%fini127852%_)
        (if (procedure? _%K127851%_)
            (let ((_%K127856%_ _%K127851%_))
              (if (procedure? _%fini127852%_)
                  (let ((_%fini127866%_ _%fini127852%_))
                    (__with-unwind-protect _%K127856%_ _%fini127866%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@40.45-40.49"
                     'contract:
                     'procedure?
                     'value:
                     _%fini127852%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@40.28-40.29"
               'contract:
               'procedure?
               'value:
               _%K127851%_)
              '#!void))))
    (define __with-unwind-protect!
      (lambda (_%K127820%_ _%fini127821%_)
        (let* ((_%K127824%_ _%K127820%_)
               (_%fini127832%_ _%fini127821%_)
               (_%unwinding127841%_ '#f)
               (_%E127843%_ (current-exception-handler)))
          (with-exception-handler
           (lambda (_%e127845%_)
             (let ((__tmp128156
                    (lambda ()
                      (if _%unwinding127841%_
                          '#!void
                          (begin
                            (set! _%unwinding127841%_ '#t)
                            (let () (declare (not safe)) (_%fini127832%_))))
                      (let ()
                        (declare (not safe))
                        (_%E127843%_ _%e127845%_)))))
               (declare (not safe))
               (##with-exception-handler _%E127843%_ __tmp128156)))
           (lambda ()
             (let ((_%result127849%_
                    (let () (declare (not safe)) (_%K127824%_))))
               (if _%unwinding127841%_
                   '#!void
                   (begin
                     (set! _%unwinding127841%_ '#t)
                     (let () (declare (not safe)) (_%fini127832%_))))
               _%result127849%_))))))
    (define with-unwind-protect!
      (lambda (_%K127795%_ _%fini127796%_)
        (if (procedure? _%K127795%_)
            (let ((_%K127800%_ _%K127795%_))
              (if (procedure? _%fini127796%_)
                  (let ((_%fini127810%_ _%fini127796%_))
                    (__with-unwind-protect! _%K127800%_ _%fini127810%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/control.ss\"@53.46-53.50"
                     'contract:
                     'procedure?
                     'value:
                     _%fini127796%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/control.ss\"@53.29-53.30"
               'contract:
               'procedure?
               'value:
               _%K127795%_)
              '#!void))))
    (define keyword-dispatch
      (lambda (_%kwt127688%_ _%K127689%_ . _%all-args127690%_)
        (if _%kwt127688%_
            (if (vector? _%kwt127688%_)
                '#!void
                (error '"keyword-dispatch: expected vector" _%kwt127688%_))
            '#!void)
        (if (procedure? _%K127689%_)
            '#!void
            (error '"keyword-dispatch: expected procedure" _%K127689%_))
        (let ((_%keys127692%_
               (let () (declare (not safe)) (make-symbolic-table__% '#f '0))))
          (let _%lp127694%_ ((_%rest127696%_ _%all-args127690%_)
                             (_%args127697%_ '#f)
                             (_%tail127698%_ '#f))
            (let* ((_%$%rest127699127707%_ _%rest127696%_)
                   (_%$%else127701127715%_
                    (lambda ()
                      (if _%args127697%_
                          (begin
                            (let ()
                              (declare (not safe))
                              (##set-cdr! _%tail127698%_ '()))
                            (let ((__tmp128157
                                   (cons _%keys127692%_ _%args127697%_)))
                              (declare (not safe))
                              (##apply _%K127689%_ __tmp128157)))
                          (_%K127689%_ _%keys127692%_))))
                   (_%$%K127703127783%_
                    (lambda (_%hd-rest127718%_ _%hd127719%_)
                      (if (keyword? _%hd127719%_)
                          (let* ((_%$%hd-rest127721127728%_ _%hd-rest127718%_)
                                 (_%$%E127723127732%_
                                  (lambda ()
                                    (error '"No clause matching"
                                           _%$%hd-rest127721127728%_
                                           '([val . rest]))
                                    '#!void))
                                 (_%$%K127724127740%_
                                  (lambda (_%rest127735%_ _%val127736%_)
                                    (if _%kwt127688%_
                                        (let ((_%pos127738%_
                                               (let ((__tmp128159
                                                      (let ()
                                                        (declare (not safe))
                                                        (##keyword-hash
                                                         _%hd127719%_)))
                                                     (__tmp128158
                                                      (let ()
                                                        (declare (not safe))
                                                        (##vector-length
                                                         _%kwt127688%_))))
                                                 (declare (not safe))
                                                 (##fxmodulo
                                                  __tmp128159
                                                  __tmp128158))))
                                          (if (eq? _%hd127719%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##vector-ref
                                                      _%kwt127688%_
                                                      _%pos127738%_)))
                                              '#!void
                                              (error '"Unexpected keyword argument"
                                                     _%K127689%_
                                                     _%hd127719%_)))
                                        '#!void)
                                    (if (eq? (let ()
                                               (declare (not safe))
                                               (symbolic-table-ref
                                                _%keys127692%_
                                                _%hd127719%_
                                                absent-value))
                                             absent-value)
                                        '#!void
                                        (error '"Duplicate keyword argument"
                                               _%K127689%_
                                               _%hd127719%_))
                                    (let ()
                                      (declare (not safe))
                                      (symbolic-table-set!
                                       _%keys127692%_
                                       _%hd127719%_
                                       _%val127736%_))
                                    (_%lp127694%_
                                     _%rest127735%_
                                     _%args127697%_
                                     _%tail127698%_))))
                            (if (pair? _%$%hd-rest127721127728%_)
                                (let ((_%$%hd127725127743%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%hd-rest127721127728%_)))
                                      (_%$%tl127726127745%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%hd-rest127721127728%_))))
                                  (let* ((_%val127748%_ _%$%hd127725127743%_)
                                         (_%rest127750%_ _%$%tl127726127745%_))
                                    (_%$%K127724127740%_
                                     _%rest127750%_
                                     _%val127748%_)))
                                (_%$%E127723127732%_)))
                          (if (eq? _%hd127719%_ '#!key)
                              (let* ((_%$%hd-rest127752127759%_
                                      _%hd-rest127718%_)
                                     (_%$%E127754127763%_
                                      (lambda ()
                                        (error '"No clause matching"
                                               _%$%hd-rest127752127759%_
                                               '([val . rest]))
                                        '#!void))
                                     (_%$%K127755127769%_
                                      (lambda (_%rest127766%_ _%val127767%_)
                                        (if _%args127697%_
                                            (begin
                                              (let ()
                                                (declare (not safe))
                                                (##set-cdr!
                                                 _%tail127698%_
                                                 _%hd-rest127718%_))
                                              (_%lp127694%_
                                               _%rest127766%_
                                               _%args127697%_
                                               _%hd-rest127718%_))
                                            (_%lp127694%_
                                             _%rest127766%_
                                             _%hd-rest127718%_
                                             _%hd-rest127718%_)))))
                                (if (pair? _%$%hd-rest127752127759%_)
                                    (let ((_%$%hd127756127772%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%hd-rest127752127759%_)))
                                          (_%$%tl127757127774%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%hd-rest127752127759%_))))
                                      (let* ((_%val127777%_
                                              _%$%hd127756127772%_)
                                             (_%rest127779%_
                                              _%$%tl127757127774%_))
                                        (_%$%K127755127769%_
                                         _%rest127779%_
                                         _%val127777%_)))
                                    (_%$%E127754127763%_)))
                              (if (eq? _%hd127719%_ '#!rest)
                                  (if _%args127697%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail127698%_
                                           _%hd-rest127718%_))
                                        (let ((__tmp128160
                                               (cons _%keys127692%_
                                                     _%args127697%_)))
                                          (declare (not safe))
                                          (##apply _%K127689%_ __tmp128160)))
                                      (let ((__tmp128161
                                             (cons _%keys127692%_
                                                   _%hd-rest127718%_)))
                                        (declare (not safe))
                                        (##apply _%K127689%_ __tmp128161)))
                                  (if _%args127697%_
                                      (begin
                                        (let ()
                                          (declare (not safe))
                                          (##set-cdr!
                                           _%tail127698%_
                                           _%rest127696%_))
                                        (_%lp127694%_
                                         _%hd-rest127718%_
                                         _%args127697%_
                                         _%rest127696%_))
                                      (_%lp127694%_
                                       _%hd-rest127718%_
                                       _%rest127696%_
                                       _%rest127696%_))))))))
              (if (pair? _%$%rest127699127707%_)
                  (let ((_%$%hd127704127786%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest127699127707%_)))
                        (_%$%tl127705127788%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest127699127707%_))))
                    (let* ((_%hd127791%_ _%$%hd127704127786%_)
                           (_%hd-rest127793%_ _%$%tl127705127788%_))
                      (_%$%K127703127783%_ _%hd-rest127793%_ _%hd127791%_)))
                  (_%$%else127701127715%_)))))))
    (define keyword-rest
      (lambda (_%kwt127680%_ . _%drop127681%_)
        (let ((_%rest127683%_ '()))
          (let ((__tmp128162
                 (lambda (_%k127685%_ _%v127686%_)
                   (if (let ()
                         (declare (not safe))
                         (##memq _%k127685%_ _%drop127681%_))
                       '#!void
                       (set! _%rest127683%_
                             (cons _%k127685%_
                                   (cons _%v127686%_ _%rest127683%_)))))))
            (declare (not safe))
            (raw-table-for-each _%kwt127680%_ __tmp128162))
          _%rest127683%_)))))
