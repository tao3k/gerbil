(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1789371528)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+182402%_ __*readtable*))
          (let* ((_%core182404%_ (gx#import-module ':gerbil/core))
                 (_%pre182406%_ (gx#make-prelude-context _%core182404%_)))
            (gx#current-expander-module-prelude _%pre182406%_)
            (gx#core-bind-root-syntax! ':<core> _%pre182406%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp182413
                 (lambda (_%port182409%_)
                   (input-port-readtable-set!
                    _%port182409%_
                    _%+readtable+182402%_)))
                (__tmp182412 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp182413 __tmp182412))
          (let ((__tmp182415
                 (lambda (_%port182411%_)
                   (output-port-readtable-set!
                    _%port182411%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port182411%_)
                     '#t))))
                (__tmp182414 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp182415 __tmp182414)))))
    (define __gxi-init-interactive! (lambda (_%cmdline182399%_) '#!void))
    (define load-scheme
      (lambda (_%path182394%_)
        (let ((__tmp182416
               (lambda ()
                 (let ((__tmp182417 (lambda _%args182397%_ '#f)))
                   (declare (not safe))
                   (##load _%path182394%_ __tmp182417 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp182416
           __scheme-source
           _%path182394%_))))
    (define __expand-source
      (lambda (_%src182376%_)
        (letrec ((_%expand182378%_
                  (lambda (_%src182392%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src182392%_)))))
                 (_%no-expand182379%_
                  (lambda (_%src182385%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src182385%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src182385%_))
                            (let ((_%code182389%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src182385%_))))
                              (if (pair? _%code182389%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code182389%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code182389%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e182381%_ (_%no-expand182379%_ _%src182376%_)))
            (if _%$e182381%_ _%$e182381%_ (_%expand182378%_ _%src182376%_))))))
    (define __macro-descr
      (lambda (_%src182362%_ _%def-syntax?182363%_)
        (letrec ((_%fail!182365%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src182362%_))))
                 (_%make-descr182366%_
                  (lambda (_%size182370%_)
                    (let ((_%expander182373%_
                           (let ((__tmp182418
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src182362%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp182418
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander182373%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?182363%_
                             _%size182370%_
                             _%expander182373%_
                             _%src182362%_))
                          (_%fail!182365%_))))))
          (if _%def-syntax?182363%_
              (_%make-descr182366%_ '-1)
              (let ((_%code182368%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src182362%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code182368%_))
                         (let ((__tmp182419
                                (let ((__tmp182420
                                       (let ((__tmp182421
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code182368%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp182421
                                          _%src182362%_))))
                                  (declare (not safe))
                                  (##source-code __tmp182420))))
                           (declare (not safe))
                           (##memq __tmp182419 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src182362%_ _%src182362%_ '-3))
                      (_%make-descr182366%_
                       (let ((__tmp182422
                              (let ((__tmp182423
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code182368%_))))
                                (declare (not safe))
                                (##sourcify __tmp182423 _%src182362%_))))
                         (declare (not safe))
                         (##form-size __tmp182422))))
                    (_%fail!182365%_)))))))
    (define __source->syntax
      (lambda (_%src182351%_)
        (let _%recur182353%_ ((_%e182355%_ _%src182351%_))
          (if (let () (declare (not safe)) (##source? _%e182355%_))
              (let ((__tmp182425
                     (_%recur182353%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e182355%_))))
                    (__tmp182424
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e182355%_))))
                (declare (not safe))
                (##structure AST::t __tmp182425 __tmp182424))
              (if (pair? _%e182355%_)
                  (cons (_%recur182353%_
                         (let () (declare (not safe)) (##car _%e182355%_)))
                        (_%recur182353%_
                         (let () (declare (not safe)) (##cdr _%e182355%_))))
                  (if (vector? _%e182355%_)
                      (vector-map _%recur182353%_ _%e182355%_)
                      (if (box? _%e182355%_)
                          (box (_%recur182353%_ (unbox _%e182355%_)))
                          _%e182355%_)))))))
    (define __compile-top-source
      (lambda (_%stx182349%_)
        (cons '__noexpand: (__compile-top _%stx182349%_))))
    (define __compile-top
      (lambda (_%stx182347%_)
        (let ((__tmp182426 (gx#core-compile-top-syntax _%stx182347%_)))
          (declare (not safe))
          (__compile __tmp182426))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in182180%_)
        (letrec ((_%import1182182%_
                  (lambda (_%in182332%_ _%phi182333%_)
                    (if (gx#module-import? _%in182332%_)
                        (let ((_%iphi182336%_
                               (fx+ _%phi182333%_
                                    (gx#module-import-phi _%in182332%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi182336%_))
                              (_%eval1182183%_
                               (gx#module-export-context
                                (gx#module-import-source _%in182332%_)))
                              '#!void))
                        (if (gx#module-context? _%in182332%_)
                            (if (fxzero? _%phi182333%_)
                                (_%eval1182183%_ _%in182332%_)
                                '#!void)
                            (if (gx#import-set? _%in182332%_)
                                (let ((_%iphi182340%_
                                       (fx+ _%phi182333%_
                                            (gx#import-set-phi _%in182332%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi182340%_))
                                      (_%eval1182183%_
                                       (gx#import-set-source _%in182332%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi182340%_))
                                          (for-each
                                           (lambda (_%in182344%_)
                                             (_%import1182182%_
                                              _%in182344%_
                                              _%iphi182340%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in182332%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in182332%_)))))))
                 (_%eval1182183%_
                  (lambda (_%ctx182187%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e182212%_
                           (let* ((_%h182189%_ __modstate)
                                  (_%key182192%_ _%ctx182187%_)
                                  (_%h182196%_ _%h182189%_)
                                  (_%h182198%_ _%h182196%_))
                             (declare (not safe))
                             (__hash-get _%h182198%_ _%key182192%_))))
                      (if _%$e182212%_
                          (let ((_%$e182217%_ (car _%$e182212%_)))
                            (if (eq? 'forcing _%$e182217%_)
                                (begin
                                  (mutex-unlock! __modstate-mx __modstate-cv)
                                  (_%eval1182183%_ _%ctx182187%_))
                                (if (eq? 'ready _%$e182217%_)
                                    (begin
                                      (mutex-unlock! __modstate-mx)
                                      (cadr _%$e182212%_))
                                    (if (eq? 'error _%$e182217%_)
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ((__tmp182427
                                                 (cadr _%$e182212%_)))
                                            (declare (not safe))
                                            (raise __tmp182427)))
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ()
                                            (declare (not safe))
                                            (error '"internal error; unexpected module state"
                                                   _%$e182212%_)))))))
                          (let ()
                            (let* ((_%h182221%_ __modstate)
                                   (_%key182224%_ _%ctx182187%_)
                                   (_%value182227%_ '(forcing))
                                   (_%h182231%_ _%h182221%_)
                                   (_%h182233%_ _%h182231%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h182233%_
                               _%key182224%_
                               _%value182227%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler182274%_
                                    (lambda (_%exn182247%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h182249%_ __modstate)
                                             (_%key182252%_ _%ctx182187%_)
                                             (_%value182255%_
                                              (list 'error _%exn182247%_))
                                             (_%h182259%_ _%h182249%_)
                                             (_%h182261%_ _%h182259%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h182261%_
                                         _%key182252%_
                                         _%value182255%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn182247%_))))
                                   (_%thunk182307%_
                                    (lambda ()
                                      (let ((_%result182278%_
                                             (__eval-module _%ctx182187%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h182280%_ __modstate)
                                               (_%key182283%_ _%ctx182187%_)
                                               (_%value182286%_
                                                (list 'ready _%result182278%_))
                                               (_%h182290%_ _%h182280%_)
                                               (_%h182292%_ _%h182290%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h182292%_
                                           _%key182283%_
                                           _%value182286%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result182278%_)))
                                   (_%handler182312%_ _%handler182274%_)
                                   (_%thunk182322%_ _%thunk182307%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler182312%_
                               _%thunk182322%_))))))))
          (if (pair? _%in182180%_)
              (let ((__tmp182428
                     (lambda (_%in182185%_)
                       (_%import1182182%_ _%in182185%_ '0))))
                (declare (not safe))
                (##for-each __tmp182428 _%in182180%_))
              (_%import1182182%_ _%in182180%_ '0)))))
    (define __eval-module
      (lambda (_%obj182178%_) (gx#core-eval-module _%obj182178%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head182174%_
                      (let ((_%$e182171%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e182171%_ _%$e182171%_ '10)))
                     (__tmp182429
                      (lambda (_%cont182176%_)
                        (display-continuation-backtrace
                         _%cont182176%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head182174%_))))
                (declare (not safe))
                (##continuation-capture __tmp182429)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules182028%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home182030%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir182032%_ (path-expand '"lib" _%home182030%_))
                     (_%userpath182034%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath182036%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir182032%_ '())
                          (cons _%userpath182034%_
                                (cons _%libdir182032%_ '()))))
                     (_%loadpath182099%_
                      (let ((_%$e182038%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e182038%_
                            (let ((__tmp182430
                                   (let ((__tmp182432
                                          (lambda (_%x182043%_)
                                            (not (let ((_%str182045%_
                                                        _%x182043%_))
                                                   (if (string? _%str182045%_)
                                                       (let ((_%str182050%_
                                                              _%str182045%_))
                                                         (declare (not safe))
                                                         (__string-empty?
                                                          _%str182050%_))
                                                       (begin
                                                         (raise-contract-violation-error
                                                          '"contract violation"
                                                          'context:
                                                          'gerbil/runtime/init
                                                          'contract:
                                                          'string?
                                                          'value:
                                                          _%str182045%_)
                                                         '#!void))))))
                                         (__tmp182431
                                          (let* ((_%str182069%_ _%$e182038%_)
                                                 (_%char182072%_ '#\:))
                                            (if (string? _%str182069%_)
                                                (let* ((_%str182077%_
                                                        _%str182069%_)
                                                       (_%char182088%_
                                                        _%char182072%_))
                                                  (declare (not safe))
                                                  (__string-split
                                                   _%str182077%_
                                                   _%char182088%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/init
                                                   'contract:
                                                   'string?
                                                   'value:
                                                   _%str182069%_)
                                                  '#!void)))))
                                     (declare (not safe))
                                     (##filter __tmp182432 __tmp182431))))
                              (declare (not safe))
                              (##append __tmp182430 _%loadpath182036%_))
                            _%loadpath182036%_)))
                     (_%paths182102%_ _%loadpath182099%_)
                     (_%paths182107%_ _%paths182102%_))
                (declare (not safe))
                (__set-load-path! _%paths182107%_))
              (for-each
               (lambda (_%mod182119%_)
                 (let* ((_%h182121%_ __modules)
                        (_%key182124%_ _%mod182119%_)
                        (_%value182127%_ 'builtin)
                        (_%h182131%_ _%h182121%_)
                        (_%h182133%_ _%h182131%_))
                   (declare (not safe))
                   (__hash-put! _%h182133%_ _%key182124%_ _%value182127%_))
                 (let* ((_%h182146%_ __modules)
                        (_%key182149%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod182119%_ '"~0")))
                        (_%value182152%_ 'builtin)
                        (_%h182156%_ _%h182146%_)
                        (_%h182158%_ _%h182156%_))
                   (declare (not safe))
                   (__hash-put! _%h182158%_ _%key182149%_ _%value182152%_)))
               _%builtin-modules182028%_)
              (current-user-interrupt-handler __interrupt-handler)
              (current-readtable __*readtable*)
              (random-source-randomize! default-random-source)
              (set! __runtime-initialized '#t)))))
    (define __expander-loaded '#f)
    (define __runtime-initialized '#f)
    (define gerbil-load-expander!
      (lambda ()
        (if __runtime-initialized
            '#!void
            (let ()
              (declare (not safe))
              (error '"runtime has not been initialized")))
        (if __expander-loaded
            '#!void
            (begin (__load-gxi) (set! __expander-loaded '#t)))))))
