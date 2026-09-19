(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1789839222)
  (begin
    (define gerbil-version-string (lambda () '"v0.19-dev-178-gdf2c5ee8"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value129134%_)
        (let ((_%new-value129137%_ _%new-value129134%_))
          (set! __build-manifest _%new-value129137%_))))
    (define build-manifest-set!
      (lambda (_%new-value129119%_)
        (if (list? _%new-value129119%_)
            (let ((_%new-value129124%_ _%new-value129119%_))
              (__build-manifest-set! _%new-value129124%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value129119%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest129042%_ _%port129043%_)
        (let* ((_%manifest129046%_ _%manifest129042%_)
               (_%port129054%_ _%port129043%_))
          (let ((_%p129067%_
                 (lambda (_%$%g129062129064%_)
                   (display _%$%g129062129064%_ _%port129054%_)))
                (_%l129068%_
                 (let () (declare (not safe)) (##length _%manifest129046%_)))
                (_%i129069%_ '0))
            (let ((__tmp129251
                   (lambda (_%layer129071%_)
                     (if (zero? _%i129069%_)
                         '#!void
                         (if (= _%i129069%_ '1)
                             (_%p129067%_ '" on ")
                             (_%p129067%_ '", ")))
                     (let* ((_%$%layer129075129082%_ _%layer129071%_)
                            (_%$%E129077129086%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%layer129075129082%_
                                      '([name . version]))
                               '#!void))
                            (_%$%K129078129092%_
                             (lambda (_%version129089%_ _%name129090%_)
                               (_%p129067%_ _%name129090%_)
                               (_%p129067%_ '" ")
                               (_%p129067%_ _%version129089%_))))
                       (if (pair? _%$%layer129075129082%_)
                           (let ((_%$%hd129079129095%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%layer129075129082%_)))
                                 (_%$%tl129080129097%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%layer129075129082%_))))
                             (let* ((_%name129100%_ _%$%hd129079129095%_)
                                    (_%version129102%_ _%$%tl129080129097%_))
                               (_%$%K129078129092%_
                                _%version129102%_
                                _%name129100%_)))
                           (_%$%E129077129086%_)))
                     (set! _%i129069%_ (+ _%i129069%_ '1)))))
              (declare (not safe))
              (##for-each __tmp129251 _%manifest129046%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest129108%_ __build-manifest)
               (_%port129110%_ (current-output-port)))
          (__display-build-manifest__% _%manifest129108%_ _%port129110%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest129112%_)
        (let ((_%port129114%_ (current-output-port)))
          (__display-build-manifest__% _%manifest129112%_ _%port129114%_))))
    (define __display-build-manifest
      (lambda _g129252_
        (let ((_g129253_ (let () (declare (not safe)) (##length _g129252_))))
          (cond ((let () (declare (not safe)) (##fx= _g129253_ 0))
                 (apply __display-build-manifest__0 _g129252_))
                ((let () (declare (not safe)) (##fx= _g129253_ 1))
                 (apply __display-build-manifest__1 _g129252_))
                ((let () (declare (not safe)) (##fx= _g129253_ 2))
                 (apply __display-build-manifest__% _g129252_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g129252_))))))
    (define display-build-manifest__%
      (lambda (_%manifest129001%_ _%port129002%_)
        (if (list? _%manifest129001%_)
            (let ((_%manifest129006%_ _%manifest129001%_))
              (if (port? _%port129002%_)
                  (let ((_%port129016%_ _%port129002%_))
                    (__display-build-manifest__%
                     _%manifest129006%_
                     _%port129016%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port129002%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest129001%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest129030%_ __build-manifest)
               (_%port129032%_ (current-output-port)))
          (__display-build-manifest__% _%manifest129030%_ _%port129032%_))))
    (define display-build-manifest__1
      (lambda (_%manifest129034%_)
        (let ((_%port129036%_ (current-output-port)))
          (display-build-manifest__% _%manifest129034%_ _%port129036%_))))
    (define display-build-manifest
      (lambda _g129254_
        (let ((_g129255_ (let () (declare (not safe)) (##length _g129254_))))
          (cond ((let () (declare (not safe)) (##fx= _g129255_ 0))
                 (apply display-build-manifest__0 _g129254_))
                ((let () (declare (not safe)) (##fx= _g129255_ 1))
                 (apply display-build-manifest__1 _g129254_))
                ((let () (declare (not safe)) (##fx= _g129255_ 2))
                 (apply display-build-manifest__% _g129254_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g129254_))))))
    (define build-manifest/layer
      (lambda (_%layer128996%_)
        (let ((_%l128998%_ (assoc _%layer128996%_ __build-manifest)))
          (if _%l128998%_ (cons _%l128998%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest128940%_)
        (let ((_%manifest128943%_ _%manifest128940%_))
          (call-with-output-string
           '()
           (lambda (_%p128952%_)
             (let* ((_%manifest128954%_ _%manifest128943%_)
                    (_%port128957%_ _%p128952%_)
                    (_%manifest128962%_ _%manifest128954%_))
               (if (port? _%port128957%_)
                   (let ((_%port128977%_ _%port128957%_))
                     (__display-build-manifest__%
                      _%manifest128962%_
                      _%port128977%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port128957%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest128991%_ __build-manifest))
          (__build-manifest-string__% _%manifest128991%_))))
    (define __build-manifest-string
      (lambda _g129256_
        (let ((_g129257_ (let () (declare (not safe)) (##length _g129256_))))
          (cond ((let () (declare (not safe)) (##fx= _g129257_ 0))
                 (apply __build-manifest-string__0 _g129256_))
                ((let () (declare (not safe)) (##fx= _g129257_ 1))
                 (apply __build-manifest-string__% _g129256_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g129256_))))))
    (define build-manifest-string__%
      (lambda (_%manifest128917%_)
        (if (list? _%manifest128917%_)
            (let ((_%manifest128921%_ _%manifest128917%_))
              (__build-manifest-string__% _%manifest128921%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest128917%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest128935%_ __build-manifest))
          (__build-manifest-string__% _%manifest128935%_))))
    (define build-manifest-string
      (lambda _g129258_
        (let ((_g129259_ (let () (declare (not safe)) (##length _g129258_))))
          (cond ((let () (declare (not safe)) (##fx= _g129259_ 0))
                 (apply build-manifest-string__0 _g129258_))
                ((let () (declare (not safe)) (##fx= _g129259_ 1))
                 (apply build-manifest-string__% _g129258_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g129258_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest128899%_ gerbil-system-manifest)
               (_%manifest128904%_ _%manifest128899%_))
          (__build-manifest-string__% _%manifest128904%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value128884%_)
        (let ((_%new-value128887%_ _%new-value128884%_))
          (set! __gerbil-greeting _%new-value128887%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value128869%_)
        (if (string? _%new-value128869%_)
            (let ((_%new-value128874%_ _%new-value128869%_))
              (__gerbil-greeting-set! _%new-value128874%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value128869%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e128865%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e128865%_ _%$e128865%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e128861%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e128861%_ _%$e128861%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp129260
             (lambda ()
               (if (let ((__tmp129261
                          (let* ((_%str128830%_ (configure-command-string))
                                 (_%char128833%_ '#\')
                                 (_%str128838%_ _%str128830%_)
                                 (_%char128850%_ _%char128833%_))
                            (declare (not safe))
                            (__string-split _%str128838%_ _%char128850%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp129261))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp129260)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
