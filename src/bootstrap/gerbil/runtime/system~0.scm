(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1789552471)
  (begin
    (define gerbil-version-string (lambda () '"v0.19-dev-137-gb737a346"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value128972%_)
        (let ((_%new-value128975%_ _%new-value128972%_))
          (set! __build-manifest _%new-value128975%_))))
    (define build-manifest-set!
      (lambda (_%new-value128957%_)
        (if (list? _%new-value128957%_)
            (let ((_%new-value128962%_ _%new-value128957%_))
              (__build-manifest-set! _%new-value128962%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value128957%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest128880%_ _%port128881%_)
        (let* ((_%manifest128884%_ _%manifest128880%_)
               (_%port128892%_ _%port128881%_))
          (let ((_%p128905%_
                 (lambda (_%$%g128900128902%_)
                   (display _%$%g128900128902%_ _%port128892%_)))
                (_%l128906%_
                 (let () (declare (not safe)) (##length _%manifest128884%_)))
                (_%i128907%_ '0))
            (let ((__tmp129089
                   (lambda (_%layer128909%_)
                     (if (zero? _%i128907%_)
                         '#!void
                         (if (= _%i128907%_ '1)
                             (_%p128905%_ '" on ")
                             (_%p128905%_ '", ")))
                     (let* ((_%$%layer128913128920%_ _%layer128909%_)
                            (_%$%E128915128924%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%layer128913128920%_
                                      '([name . version]))
                               '#!void))
                            (_%$%K128916128930%_
                             (lambda (_%version128927%_ _%name128928%_)
                               (_%p128905%_ _%name128928%_)
                               (_%p128905%_ '" ")
                               (_%p128905%_ _%version128927%_))))
                       (if (pair? _%$%layer128913128920%_)
                           (let ((_%$%hd128917128933%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%layer128913128920%_)))
                                 (_%$%tl128918128935%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%layer128913128920%_))))
                             (let* ((_%name128938%_ _%$%hd128917128933%_)
                                    (_%version128940%_ _%$%tl128918128935%_))
                               (_%$%K128916128930%_
                                _%version128940%_
                                _%name128938%_)))
                           (_%$%E128915128924%_)))
                     (set! _%i128907%_ (+ _%i128907%_ '1)))))
              (declare (not safe))
              (##for-each __tmp129089 _%manifest128884%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest128946%_ __build-manifest)
               (_%port128948%_ (current-output-port)))
          (__display-build-manifest__% _%manifest128946%_ _%port128948%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest128950%_)
        (let ((_%port128952%_ (current-output-port)))
          (__display-build-manifest__% _%manifest128950%_ _%port128952%_))))
    (define __display-build-manifest
      (lambda _g129090_
        (let ((_g129091_ (let () (declare (not safe)) (##length _g129090_))))
          (cond ((let () (declare (not safe)) (##fx= _g129091_ 0))
                 (apply __display-build-manifest__0 _g129090_))
                ((let () (declare (not safe)) (##fx= _g129091_ 1))
                 (apply __display-build-manifest__1 _g129090_))
                ((let () (declare (not safe)) (##fx= _g129091_ 2))
                 (apply __display-build-manifest__% _g129090_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g129090_))))))
    (define display-build-manifest__%
      (lambda (_%manifest128839%_ _%port128840%_)
        (if (list? _%manifest128839%_)
            (let ((_%manifest128844%_ _%manifest128839%_))
              (if (port? _%port128840%_)
                  (let ((_%port128854%_ _%port128840%_))
                    (__display-build-manifest__%
                     _%manifest128844%_
                     _%port128854%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port128840%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest128839%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest128868%_ __build-manifest)
               (_%port128870%_ (current-output-port)))
          (__display-build-manifest__% _%manifest128868%_ _%port128870%_))))
    (define display-build-manifest__1
      (lambda (_%manifest128872%_)
        (let ((_%port128874%_ (current-output-port)))
          (display-build-manifest__% _%manifest128872%_ _%port128874%_))))
    (define display-build-manifest
      (lambda _g129092_
        (let ((_g129093_ (let () (declare (not safe)) (##length _g129092_))))
          (cond ((let () (declare (not safe)) (##fx= _g129093_ 0))
                 (apply display-build-manifest__0 _g129092_))
                ((let () (declare (not safe)) (##fx= _g129093_ 1))
                 (apply display-build-manifest__1 _g129092_))
                ((let () (declare (not safe)) (##fx= _g129093_ 2))
                 (apply display-build-manifest__% _g129092_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g129092_))))))
    (define build-manifest/layer
      (lambda (_%layer128834%_)
        (let ((_%l128836%_ (assoc _%layer128834%_ __build-manifest)))
          (if _%l128836%_ (cons _%l128836%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest128778%_)
        (let ((_%manifest128781%_ _%manifest128778%_))
          (call-with-output-string
           '()
           (lambda (_%p128790%_)
             (let* ((_%manifest128792%_ _%manifest128781%_)
                    (_%port128795%_ _%p128790%_)
                    (_%manifest128800%_ _%manifest128792%_))
               (if (port? _%port128795%_)
                   (let ((_%port128815%_ _%port128795%_))
                     (__display-build-manifest__%
                      _%manifest128800%_
                      _%port128815%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port128795%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest128829%_ __build-manifest))
          (__build-manifest-string__% _%manifest128829%_))))
    (define __build-manifest-string
      (lambda _g129094_
        (let ((_g129095_ (let () (declare (not safe)) (##length _g129094_))))
          (cond ((let () (declare (not safe)) (##fx= _g129095_ 0))
                 (apply __build-manifest-string__0 _g129094_))
                ((let () (declare (not safe)) (##fx= _g129095_ 1))
                 (apply __build-manifest-string__% _g129094_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g129094_))))))
    (define build-manifest-string__%
      (lambda (_%manifest128755%_)
        (if (list? _%manifest128755%_)
            (let ((_%manifest128759%_ _%manifest128755%_))
              (__build-manifest-string__% _%manifest128759%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest128755%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest128773%_ __build-manifest))
          (__build-manifest-string__% _%manifest128773%_))))
    (define build-manifest-string
      (lambda _g129096_
        (let ((_g129097_ (let () (declare (not safe)) (##length _g129096_))))
          (cond ((let () (declare (not safe)) (##fx= _g129097_ 0))
                 (apply build-manifest-string__0 _g129096_))
                ((let () (declare (not safe)) (##fx= _g129097_ 1))
                 (apply build-manifest-string__% _g129096_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g129096_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest128737%_ gerbil-system-manifest)
               (_%manifest128742%_ _%manifest128737%_))
          (__build-manifest-string__% _%manifest128742%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value128722%_)
        (let ((_%new-value128725%_ _%new-value128722%_))
          (set! __gerbil-greeting _%new-value128725%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value128707%_)
        (if (string? _%new-value128707%_)
            (let ((_%new-value128712%_ _%new-value128707%_))
              (__gerbil-greeting-set! _%new-value128712%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value128707%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e128703%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e128703%_ _%$e128703%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e128699%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e128699%_ _%$e128699%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp129098
             (lambda ()
               (if (let ((__tmp129099
                          (let* ((_%str128668%_ (configure-command-string))
                                 (_%char128671%_ '#\')
                                 (_%str128676%_ _%str128668%_)
                                 (_%char128688%_ _%char128671%_))
                            (declare (not safe))
                            (__string-split _%str128676%_ _%char128688%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp129099))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp129098)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
