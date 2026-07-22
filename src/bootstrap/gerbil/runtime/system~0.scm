(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/system::timestamp 1784461440)
  (begin
    (define gerbil-version-string (lambda () '"v0.18.2-153-gb04c656c"))
    (define gerbil-system-manifest
      (cons (cons '"Gerbil" (gerbil-version-string))
            (cons (cons '"Gambit" (system-version-string)) '())))
    (define __build-manifest gerbil-system-manifest)
    (define build-manifest (lambda () __build-manifest))
    (define __build-manifest-set!
      (lambda (_%new-value126945%_)
        (let ((_%new-value126948%_ _%new-value126945%_))
          (set! __build-manifest _%new-value126948%_))))
    (define build-manifest-set!
      (lambda (_%new-value126930%_)
        (if (list? _%new-value126930%_)
            (let ((_%new-value126935%_ _%new-value126930%_))
              (__build-manifest-set! _%new-value126935%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'list?
               'value:
               _%new-value126930%_)
              '#!void))))
    (define __display-build-manifest__%
      (lambda (_%manifest126853%_ _%port126854%_)
        (let* ((_%manifest126857%_ _%manifest126853%_)
               (_%port126865%_ _%port126854%_))
          (let ((_%p126878%_
                 (lambda (_%$%g126873126875%_)
                   (display _%$%g126873126875%_ _%port126865%_)))
                (_%l126879%_
                 (let () (declare (not safe)) (##length _%manifest126857%_)))
                (_%i126880%_ '0))
            (let ((__tmp127062
                   (lambda (_%layer126882%_)
                     (if (zero? _%i126880%_)
                         '#!void
                         (if (= _%i126880%_ '1)
                             (_%p126878%_ '" on ")
                             (_%p126878%_ '", ")))
                     (let* ((_%$%layer126886126893%_ _%layer126882%_)
                            (_%$%E126888126897%_
                             (lambda ()
                               (error '"No clause matching"
                                      _%$%layer126886126893%_
                                      '([name . version]))
                               '#!void))
                            (_%$%K126889126903%_
                             (lambda (_%version126900%_ _%name126901%_)
                               (_%p126878%_ _%name126901%_)
                               (_%p126878%_ '" ")
                               (_%p126878%_ _%version126900%_))))
                       (if (pair? _%$%layer126886126893%_)
                           (let ((_%$%hd126890126906%_
                                  (let ()
                                    (declare (not safe))
                                    (##car _%$%layer126886126893%_)))
                                 (_%$%tl126891126908%_
                                  (let ()
                                    (declare (not safe))
                                    (##cdr _%$%layer126886126893%_))))
                             (let* ((_%name126911%_ _%$%hd126890126906%_)
                                    (_%version126913%_ _%$%tl126891126908%_))
                               (_%$%K126889126903%_
                                _%version126913%_
                                _%name126911%_)))
                           (_%$%E126888126897%_)))
                     (set! _%i126880%_ (+ _%i126880%_ '1)))))
              (declare (not safe))
              (##for-each __tmp127062 _%manifest126857%_))))))
    (define __display-build-manifest__0
      (lambda ()
        (let* ((_%manifest126919%_ __build-manifest)
               (_%port126921%_ (current-output-port)))
          (__display-build-manifest__% _%manifest126919%_ _%port126921%_))))
    (define __display-build-manifest__1
      (lambda (_%manifest126923%_)
        (let ((_%port126925%_ (current-output-port)))
          (__display-build-manifest__% _%manifest126923%_ _%port126925%_))))
    (define __display-build-manifest
      (lambda _g127063_
        (let ((_g127064_ (let () (declare (not safe)) (##length _g127063_))))
          (cond ((let () (declare (not safe)) (##fx= _g127064_ 0))
                 (apply __display-build-manifest__0 _g127063_))
                ((let () (declare (not safe)) (##fx= _g127064_ 1))
                 (apply __display-build-manifest__1 _g127063_))
                ((let () (declare (not safe)) (##fx= _g127064_ 2))
                 (apply __display-build-manifest__% _g127063_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __display-build-manifest
                  _g127063_))))))
    (define display-build-manifest__%
      (lambda (_%manifest126812%_ _%port126813%_)
        (if (list? _%manifest126812%_)
            (let ((_%manifest126817%_ _%manifest126812%_))
              (if (port? _%port126813%_)
                  (let ((_%port126827%_ _%port126813%_))
                    (__display-build-manifest__%
                     _%manifest126817%_
                     _%port126827%_))
                  (begin
                    (raise-contract-violation-error
                     '"contract violation"
                     'context:
                     '"\"gerbil/runtime/system.ss\"@19.31-19.35"
                     'contract:
                     'port?
                     'value:
                     _%port126813%_)
                    '#!void)))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@18.31-18.39"
               'contract:
               'list?
               'value:
               _%manifest126812%_)
              '#!void))))
    (define display-build-manifest__0
      (lambda ()
        (let* ((_%manifest126841%_ __build-manifest)
               (_%port126843%_ (current-output-port)))
          (__display-build-manifest__% _%manifest126841%_ _%port126843%_))))
    (define display-build-manifest__1
      (lambda (_%manifest126845%_)
        (let ((_%port126847%_ (current-output-port)))
          (display-build-manifest__% _%manifest126845%_ _%port126847%_))))
    (define display-build-manifest
      (lambda _g127065_
        (let ((_g127066_ (let () (declare (not safe)) (##length _g127065_))))
          (cond ((let () (declare (not safe)) (##fx= _g127066_ 0))
                 (apply display-build-manifest__0 _g127065_))
                ((let () (declare (not safe)) (##fx= _g127066_ 1))
                 (apply display-build-manifest__1 _g127065_))
                ((let () (declare (not safe)) (##fx= _g127066_ 2))
                 (apply display-build-manifest__% _g127065_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  display-build-manifest
                  _g127065_))))))
    (define build-manifest/layer
      (lambda (_%layer126807%_)
        (let ((_%l126809%_ (assoc _%layer126807%_ __build-manifest)))
          (if _%l126809%_ (cons _%l126809%_ '()) '()))))
    (define build-manifest/head (lambda () (cons (car __build-manifest) '())))
    (define __build-manifest-string__%
      (lambda (_%manifest126751%_)
        (let ((_%manifest126754%_ _%manifest126751%_))
          (call-with-output-string
           '()
           (lambda (_%p126763%_)
             (let* ((_%manifest126765%_ _%manifest126754%_)
                    (_%port126768%_ _%p126763%_)
                    (_%manifest126773%_ _%manifest126765%_))
               (if (port? _%port126768%_)
                   (let ((_%port126788%_ _%port126768%_))
                     (__display-build-manifest__%
                      _%manifest126773%_
                      _%port126788%_))
                   (begin
                     (raise-contract-violation-error
                      '"contract violation"
                      'context:
                      'gerbil/runtime/system
                      'contract:
                      'port?
                      'value:
                      _%port126768%_)
                     '#!void))))))))
    (define __build-manifest-string__0
      (lambda ()
        (let ((_%manifest126802%_ __build-manifest))
          (__build-manifest-string__% _%manifest126802%_))))
    (define __build-manifest-string
      (lambda _g127067_
        (let ((_g127068_ (let () (declare (not safe)) (##length _g127067_))))
          (cond ((let () (declare (not safe)) (##fx= _g127068_ 0))
                 (apply __build-manifest-string__0 _g127067_))
                ((let () (declare (not safe)) (##fx= _g127068_ 1))
                 (apply __build-manifest-string__% _g127067_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  __build-manifest-string
                  _g127067_))))))
    (define build-manifest-string__%
      (lambda (_%manifest126728%_)
        (if (list? _%manifest126728%_)
            (let ((_%manifest126732%_ _%manifest126728%_))
              (__build-manifest-string__% _%manifest126732%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               '"\"gerbil/runtime/system.ss\"@40.30-40.38"
               'contract:
               'list?
               'value:
               _%manifest126728%_)
              '#!void))))
    (define build-manifest-string__0
      (lambda ()
        (let ((_%manifest126746%_ __build-manifest))
          (__build-manifest-string__% _%manifest126746%_))))
    (define build-manifest-string
      (lambda _g127069_
        (let ((_g127070_ (let () (declare (not safe)) (##length _g127069_))))
          (cond ((let () (declare (not safe)) (##fx= _g127070_ 0))
                 (apply build-manifest-string__0 _g127069_))
                ((let () (declare (not safe)) (##fx= _g127070_ 1))
                 (apply build-manifest-string__% _g127069_))
                (else
                 (##raise-wrong-number-of-arguments-exception
                  build-manifest-string
                  _g127069_))))))
    (define gerbil-system-version-string
      (lambda ()
        (let* ((_%manifest126710%_ gerbil-system-manifest)
               (_%manifest126715%_ _%manifest126710%_))
          (__build-manifest-string__% _%manifest126715%_))))
    (define __gerbil-greeting (gerbil-system-version-string))
    (define gerbil-greeting (lambda () __gerbil-greeting))
    (define __gerbil-greeting-set!
      (lambda (_%new-value126695%_)
        (let ((_%new-value126698%_ _%new-value126695%_))
          (set! __gerbil-greeting _%new-value126698%_))))
    (define gerbil-greeting-set!
      (lambda (_%new-value126680%_)
        (if (string? _%new-value126680%_)
            (let ((_%new-value126685%_ _%new-value126680%_))
              (__gerbil-greeting-set! _%new-value126685%_))
            (begin
              (raise-contract-violation-error
               '"contract violation"
               'context:
               'gerbil/runtime/system
               'contract:
               'string?
               'value:
               _%new-value126680%_)
              '#!void))))
    (define gerbil-system (lambda () 'gerbil-gambit))
    (define gerbil-home
      (lambda ()
        (let ((_%$e126676%_
               (let () (declare (not safe)) (##getenv '"GERBIL_HOME" '#f))))
          (if _%$e126676%_ _%$e126676%_ (path-expand '"~~")))))
    (define gerbil-path
      (lambda ()
        (let ((_%$e126672%_
               (let () (declare (not safe)) (##getenv '"GERBIL_PATH" '#f))))
          (if _%$e126672%_ _%$e126672%_ (path-expand '"~/.gerbil")))))
    (define __smp?
      (let ((__tmp127071
             (lambda ()
               (if (let ((__tmp127072
                          (let* ((_%str126641%_ (configure-command-string))
                                 (_%char126644%_ '#\')
                                 (_%str126649%_ _%str126641%_)
                                 (_%char126661%_ _%char126644%_))
                            (declare (not safe))
                            (__string-split _%str126649%_ _%char126661%_))))
                     (declare (not safe))
                     (##member '"--enable-smp" __tmp127072))
                   '#t
                   '#f))))
        (declare (not safe))
        (__make-atomic-promise __tmp127071)))
    (define gerbil-runtime-smp? (lambda () (force __smp?)))
    (define __DEBUG
      (let () (declare (not safe)) (##getenv '"GERBIL_DEBUG" '#f)))))
