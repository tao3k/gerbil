(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1784758124)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+180389%_ __*readtable*))
          (let* ((_%core180391%_ (gx#import-module ':gerbil/core))
                 (_%pre180393%_ (gx#make-prelude-context _%core180391%_)))
            (gx#current-expander-module-prelude _%pre180393%_)
            (gx#core-bind-root-syntax! ':<core> _%pre180393%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp180400
                 (lambda (_%port180396%_)
                   (input-port-readtable-set!
                    _%port180396%_
                    _%+readtable+180389%_)))
                (__tmp180399 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp180400 __tmp180399))
          (let ((__tmp180402
                 (lambda (_%port180398%_)
                   (output-port-readtable-set!
                    _%port180398%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port180398%_)
                     '#t))))
                (__tmp180401 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp180402 __tmp180401)))))
    (define __gxi-init-interactive! (lambda (_%cmdline180386%_) '#!void))
    (define load-scheme
      (lambda (_%path180381%_)
        (let ((__tmp180403
               (lambda ()
                 (let ((__tmp180404 (lambda _%args180384%_ '#f)))
                   (declare (not safe))
                   (##load _%path180381%_ __tmp180404 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp180403
           __scheme-source
           _%path180381%_))))
    (define __expand-source
      (lambda (_%src180363%_)
        (letrec ((_%expand180365%_
                  (lambda (_%src180379%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src180379%_)))))
                 (_%no-expand180366%_
                  (lambda (_%src180372%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src180372%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src180372%_))
                            (let ((_%code180376%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src180372%_))))
                              (if (pair? _%code180376%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code180376%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code180376%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e180368%_ (_%no-expand180366%_ _%src180363%_)))
            (if _%$e180368%_ _%$e180368%_ (_%expand180365%_ _%src180363%_))))))
    (define __macro-descr
      (lambda (_%src180349%_ _%def-syntax?180350%_)
        (letrec ((_%fail!180352%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src180349%_))))
                 (_%make-descr180353%_
                  (lambda (_%size180357%_)
                    (let ((_%expander180360%_
                           (let ((__tmp180405
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src180349%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp180405
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander180360%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?180350%_
                             _%size180357%_
                             _%expander180360%_
                             _%src180349%_))
                          (_%fail!180352%_))))))
          (if _%def-syntax?180350%_
              (_%make-descr180353%_ '-1)
              (let ((_%code180355%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src180349%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code180355%_))
                         (let ((__tmp180406
                                (let ((__tmp180407
                                       (let ((__tmp180408
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code180355%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp180408
                                          _%src180349%_))))
                                  (declare (not safe))
                                  (##source-code __tmp180407))))
                           (declare (not safe))
                           (##memq __tmp180406 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src180349%_ _%src180349%_ '-3))
                      (_%make-descr180353%_
                       (let ((__tmp180409
                              (let ((__tmp180410
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code180355%_))))
                                (declare (not safe))
                                (##sourcify __tmp180410 _%src180349%_))))
                         (declare (not safe))
                         (##form-size __tmp180409))))
                    (_%fail!180352%_)))))))
    (define __source->syntax
      (lambda (_%src180338%_)
        (let _%recur180340%_ ((_%e180342%_ _%src180338%_))
          (if (let () (declare (not safe)) (##source? _%e180342%_))
              (let ((__tmp180412
                     (_%recur180340%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e180342%_))))
                    (__tmp180411
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e180342%_))))
                (declare (not safe))
                (##structure AST::t __tmp180412 __tmp180411))
              (if (pair? _%e180342%_)
                  (cons (_%recur180340%_
                         (let () (declare (not safe)) (##car _%e180342%_)))
                        (_%recur180340%_
                         (let () (declare (not safe)) (##cdr _%e180342%_))))
                  (if (vector? _%e180342%_)
                      (vector-map _%recur180340%_ _%e180342%_)
                      (if (box? _%e180342%_)
                          (box (_%recur180340%_ (unbox _%e180342%_)))
                          _%e180342%_)))))))
    (define __compile-top-source
      (lambda (_%stx180336%_)
        (cons '__noexpand: (__compile-top _%stx180336%_))))
    (define __compile-top
      (lambda (_%stx180334%_)
        (let ((__tmp180413 (gx#core-compile-top-syntax _%stx180334%_)))
          (declare (not safe))
          (__compile __tmp180413))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in180167%_)
        (letrec ((_%import1180169%_
                  (lambda (_%in180319%_ _%phi180320%_)
                    (if (gx#module-import? _%in180319%_)
                        (let ((_%iphi180323%_
                               (fx+ _%phi180320%_
                                    (gx#module-import-phi _%in180319%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi180323%_))
                              (_%eval1180170%_
                               (gx#module-export-context
                                (gx#module-import-source _%in180319%_)))
                              '#!void))
                        (if (gx#module-context? _%in180319%_)
                            (if (fxzero? _%phi180320%_)
                                (_%eval1180170%_ _%in180319%_)
                                '#!void)
                            (if (gx#import-set? _%in180319%_)
                                (let ((_%iphi180327%_
                                       (fx+ _%phi180320%_
                                            (gx#import-set-phi _%in180319%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi180327%_))
                                      (_%eval1180170%_
                                       (gx#import-set-source _%in180319%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi180327%_))
                                          (for-each
                                           (lambda (_%in180331%_)
                                             (_%import1180169%_
                                              _%in180331%_
                                              _%iphi180327%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in180319%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in180319%_)))))))
                 (_%eval1180170%_
                  (lambda (_%ctx180174%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e180199%_
                           (let* ((_%h180176%_ __modstate)
                                  (_%key180179%_ _%ctx180174%_)
                                  (_%h180183%_ _%h180176%_)
                                  (_%h180185%_ _%h180183%_))
                             (declare (not safe))
                             (__hash-get _%h180185%_ _%key180179%_))))
                      (if _%$e180199%_
                          (let ((_%$e180204%_ (car _%$e180199%_)))
                            (if (eq? 'forcing _%$e180204%_)
                                (begin
                                  (mutex-unlock! __modstate-mx __modstate-cv)
                                  (_%eval1180170%_ _%ctx180174%_))
                                (if (eq? 'ready _%$e180204%_)
                                    (begin
                                      (mutex-unlock! __modstate-mx)
                                      (cadr _%$e180199%_))
                                    (if (eq? 'error _%$e180204%_)
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ((__tmp180414
                                                 (cadr _%$e180199%_)))
                                            (declare (not safe))
                                            (raise __tmp180414)))
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ()
                                            (declare (not safe))
                                            (error '"internal error; unexpected module state"
                                                   _%$e180199%_)))))))
                          (let ()
                            (let* ((_%h180208%_ __modstate)
                                   (_%key180211%_ _%ctx180174%_)
                                   (_%value180214%_ '(forcing))
                                   (_%h180218%_ _%h180208%_)
                                   (_%h180220%_ _%h180218%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h180220%_
                               _%key180211%_
                               _%value180214%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler180261%_
                                    (lambda (_%exn180234%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h180236%_ __modstate)
                                             (_%key180239%_ _%ctx180174%_)
                                             (_%value180242%_
                                              (list 'error _%exn180234%_))
                                             (_%h180246%_ _%h180236%_)
                                             (_%h180248%_ _%h180246%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h180248%_
                                         _%key180239%_
                                         _%value180242%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn180234%_))))
                                   (_%thunk180294%_
                                    (lambda ()
                                      (let ((_%result180265%_
                                             (__eval-module _%ctx180174%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h180267%_ __modstate)
                                               (_%key180270%_ _%ctx180174%_)
                                               (_%value180273%_
                                                (list 'ready _%result180265%_))
                                               (_%h180277%_ _%h180267%_)
                                               (_%h180279%_ _%h180277%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h180279%_
                                           _%key180270%_
                                           _%value180273%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result180265%_)))
                                   (_%handler180299%_ _%handler180261%_)
                                   (_%thunk180309%_ _%thunk180294%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler180299%_
                               _%thunk180309%_))))))))
          (if (pair? _%in180167%_)
              (let ((__tmp180415
                     (lambda (_%in180172%_)
                       (_%import1180169%_ _%in180172%_ '0))))
                (declare (not safe))
                (##for-each __tmp180415 _%in180167%_))
              (_%import1180169%_ _%in180167%_ '0)))))
    (define __eval-module
      (lambda (_%obj180165%_) (gx#core-eval-module _%obj180165%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head180161%_
                      (let ((_%$e180158%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e180158%_ _%$e180158%_ '10)))
                     (__tmp180416
                      (lambda (_%cont180163%_)
                        (display-continuation-backtrace
                         _%cont180163%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head180161%_))))
                (declare (not safe))
                (##continuation-capture __tmp180416)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules180015%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home180017%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir180019%_ (path-expand '"lib" _%home180017%_))
                     (_%userpath180021%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath180023%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir180019%_ '())
                          (cons _%userpath180021%_
                                (cons _%libdir180019%_ '()))))
                     (_%loadpath180086%_
                      (let ((_%$e180025%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e180025%_
                            (let ((__tmp180417
                                   (let ((__tmp180419
                                          (lambda (_%x180030%_)
                                            (not (let ((_%str180032%_
                                                        _%x180030%_))
                                                   (if (string? _%str180032%_)
                                                       (let ((_%str180037%_
                                                              _%str180032%_))
                                                         (declare (not safe))
                                                         (__string-empty?
                                                          _%str180037%_))
                                                       (begin
                                                         (raise-contract-violation-error
                                                          '"contract violation"
                                                          'context:
                                                          'gerbil/runtime/init
                                                          'contract:
                                                          'string?
                                                          'value:
                                                          _%str180032%_)
                                                         '#!void))))))
                                         (__tmp180418
                                          (let* ((_%str180056%_ _%$e180025%_)
                                                 (_%char180059%_ '#\:))
                                            (if (string? _%str180056%_)
                                                (let* ((_%str180064%_
                                                        _%str180056%_)
                                                       (_%char180075%_
                                                        _%char180059%_))
                                                  (declare (not safe))
                                                  (__string-split
                                                   _%str180064%_
                                                   _%char180075%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/init
                                                   'contract:
                                                   'string?
                                                   'value:
                                                   _%str180056%_)
                                                  '#!void)))))
                                     (declare (not safe))
                                     (##filter __tmp180419 __tmp180418))))
                              (declare (not safe))
                              (##append __tmp180417 _%loadpath180023%_))
                            _%loadpath180023%_)))
                     (_%paths180089%_ _%loadpath180086%_)
                     (_%paths180094%_ _%paths180089%_))
                (declare (not safe))
                (__set-load-path! _%paths180094%_))
              (for-each
               (lambda (_%mod180106%_)
                 (let* ((_%h180108%_ __modules)
                        (_%key180111%_ _%mod180106%_)
                        (_%value180114%_ 'builtin)
                        (_%h180118%_ _%h180108%_)
                        (_%h180120%_ _%h180118%_))
                   (declare (not safe))
                   (__hash-put! _%h180120%_ _%key180111%_ _%value180114%_))
                 (let* ((_%h180133%_ __modules)
                        (_%key180136%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod180106%_ '"~0")))
                        (_%value180139%_ 'builtin)
                        (_%h180143%_ _%h180133%_)
                        (_%h180145%_ _%h180143%_))
                   (declare (not safe))
                   (__hash-put! _%h180145%_ _%key180136%_ _%value180139%_)))
               _%builtin-modules180015%_)
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
