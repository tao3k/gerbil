(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1789188907)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+180372%_ __*readtable*))
          (let* ((_%core180374%_ (gx#import-module ':gerbil/core))
                 (_%pre180376%_ (gx#make-prelude-context _%core180374%_)))
            (gx#current-expander-module-prelude _%pre180376%_)
            (gx#core-bind-root-syntax! ':<core> _%pre180376%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp180383
                 (lambda (_%port180379%_)
                   (input-port-readtable-set!
                    _%port180379%_
                    _%+readtable+180372%_)))
                (__tmp180382 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp180383 __tmp180382))
          (let ((__tmp180385
                 (lambda (_%port180381%_)
                   (output-port-readtable-set!
                    _%port180381%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port180381%_)
                     '#t))))
                (__tmp180384 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp180385 __tmp180384)))))
    (define __gxi-init-interactive! (lambda (_%cmdline180369%_) '#!void))
    (define load-scheme
      (lambda (_%path180364%_)
        (let ((__tmp180386
               (lambda ()
                 (let ((__tmp180387 (lambda _%args180367%_ '#f)))
                   (declare (not safe))
                   (##load _%path180364%_ __tmp180387 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp180386
           __scheme-source
           _%path180364%_))))
    (define __expand-source
      (lambda (_%src180346%_)
        (letrec ((_%expand180348%_
                  (lambda (_%src180362%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src180362%_)))))
                 (_%no-expand180349%_
                  (lambda (_%src180355%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src180355%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src180355%_))
                            (let ((_%code180359%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src180355%_))))
                              (if (pair? _%code180359%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code180359%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code180359%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e180351%_ (_%no-expand180349%_ _%src180346%_)))
            (if _%$e180351%_ _%$e180351%_ (_%expand180348%_ _%src180346%_))))))
    (define __macro-descr
      (lambda (_%src180332%_ _%def-syntax?180333%_)
        (letrec ((_%fail!180335%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src180332%_))))
                 (_%make-descr180336%_
                  (lambda (_%size180340%_)
                    (let ((_%expander180343%_
                           (let ((__tmp180388
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src180332%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp180388
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander180343%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?180333%_
                             _%size180340%_
                             _%expander180343%_
                             _%src180332%_))
                          (_%fail!180335%_))))))
          (if _%def-syntax?180333%_
              (_%make-descr180336%_ '-1)
              (let ((_%code180338%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src180332%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code180338%_))
                         (let ((__tmp180389
                                (let ((__tmp180390
                                       (let ((__tmp180391
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code180338%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp180391
                                          _%src180332%_))))
                                  (declare (not safe))
                                  (##source-code __tmp180390))))
                           (declare (not safe))
                           (##memq __tmp180389 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src180332%_ _%src180332%_ '-3))
                      (_%make-descr180336%_
                       (let ((__tmp180392
                              (let ((__tmp180393
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code180338%_))))
                                (declare (not safe))
                                (##sourcify __tmp180393 _%src180332%_))))
                         (declare (not safe))
                         (##form-size __tmp180392))))
                    (_%fail!180335%_)))))))
    (define __source->syntax
      (lambda (_%src180321%_)
        (let _%recur180323%_ ((_%e180325%_ _%src180321%_))
          (if (let () (declare (not safe)) (##source? _%e180325%_))
              (let ((__tmp180395
                     (_%recur180323%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e180325%_))))
                    (__tmp180394
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e180325%_))))
                (declare (not safe))
                (##structure AST::t __tmp180395 __tmp180394))
              (if (pair? _%e180325%_)
                  (cons (_%recur180323%_
                         (let () (declare (not safe)) (##car _%e180325%_)))
                        (_%recur180323%_
                         (let () (declare (not safe)) (##cdr _%e180325%_))))
                  (if (vector? _%e180325%_)
                      (vector-map _%recur180323%_ _%e180325%_)
                      (if (box? _%e180325%_)
                          (box (_%recur180323%_ (unbox _%e180325%_)))
                          _%e180325%_)))))))
    (define __compile-top-source
      (lambda (_%stx180319%_)
        (cons '__noexpand: (__compile-top _%stx180319%_))))
    (define __compile-top
      (lambda (_%stx180317%_)
        (let ((__tmp180396 (gx#core-compile-top-syntax _%stx180317%_)))
          (declare (not safe))
          (__compile __tmp180396))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in180150%_)
        (letrec ((_%import1180152%_
                  (lambda (_%in180302%_ _%phi180303%_)
                    (if (gx#module-import? _%in180302%_)
                        (let ((_%iphi180306%_
                               (fx+ _%phi180303%_
                                    (gx#module-import-phi _%in180302%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi180306%_))
                              (_%eval1180153%_
                               (gx#module-export-context
                                (gx#module-import-source _%in180302%_)))
                              '#!void))
                        (if (gx#module-context? _%in180302%_)
                            (if (fxzero? _%phi180303%_)
                                (_%eval1180153%_ _%in180302%_)
                                '#!void)
                            (if (gx#import-set? _%in180302%_)
                                (let ((_%iphi180310%_
                                       (fx+ _%phi180303%_
                                            (gx#import-set-phi _%in180302%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi180310%_))
                                      (_%eval1180153%_
                                       (gx#import-set-source _%in180302%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi180310%_))
                                          (for-each
                                           (lambda (_%in180314%_)
                                             (_%import1180152%_
                                              _%in180314%_
                                              _%iphi180310%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in180302%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in180302%_)))))))
                 (_%eval1180153%_
                  (lambda (_%ctx180157%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e180182%_
                           (let* ((_%h180159%_ __modstate)
                                  (_%key180162%_ _%ctx180157%_)
                                  (_%h180166%_ _%h180159%_)
                                  (_%h180168%_ _%h180166%_))
                             (declare (not safe))
                             (__hash-get _%h180168%_ _%key180162%_))))
                      (if _%$e180182%_
                          (let ((_%$e180187%_ (car _%$e180182%_)))
                            (if (eq? 'forcing _%$e180187%_)
                                (begin
                                  (mutex-unlock! __modstate-mx __modstate-cv)
                                  (_%eval1180153%_ _%ctx180157%_))
                                (if (eq? 'ready _%$e180187%_)
                                    (begin
                                      (mutex-unlock! __modstate-mx)
                                      (cadr _%$e180182%_))
                                    (if (eq? 'error _%$e180187%_)
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ((__tmp180397
                                                 (cadr _%$e180182%_)))
                                            (declare (not safe))
                                            (raise __tmp180397)))
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ()
                                            (declare (not safe))
                                            (error '"internal error; unexpected module state"
                                                   _%$e180182%_)))))))
                          (let ()
                            (let* ((_%h180191%_ __modstate)
                                   (_%key180194%_ _%ctx180157%_)
                                   (_%value180197%_ '(forcing))
                                   (_%h180201%_ _%h180191%_)
                                   (_%h180203%_ _%h180201%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h180203%_
                               _%key180194%_
                               _%value180197%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler180244%_
                                    (lambda (_%exn180217%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h180219%_ __modstate)
                                             (_%key180222%_ _%ctx180157%_)
                                             (_%value180225%_
                                              (list 'error _%exn180217%_))
                                             (_%h180229%_ _%h180219%_)
                                             (_%h180231%_ _%h180229%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h180231%_
                                         _%key180222%_
                                         _%value180225%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn180217%_))))
                                   (_%thunk180277%_
                                    (lambda ()
                                      (let ((_%result180248%_
                                             (__eval-module _%ctx180157%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h180250%_ __modstate)
                                               (_%key180253%_ _%ctx180157%_)
                                               (_%value180256%_
                                                (list 'ready _%result180248%_))
                                               (_%h180260%_ _%h180250%_)
                                               (_%h180262%_ _%h180260%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h180262%_
                                           _%key180253%_
                                           _%value180256%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result180248%_)))
                                   (_%handler180282%_ _%handler180244%_)
                                   (_%thunk180292%_ _%thunk180277%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler180282%_
                               _%thunk180292%_))))))))
          (if (pair? _%in180150%_)
              (let ((__tmp180398
                     (lambda (_%in180155%_)
                       (_%import1180152%_ _%in180155%_ '0))))
                (declare (not safe))
                (##for-each __tmp180398 _%in180150%_))
              (_%import1180152%_ _%in180150%_ '0)))))
    (define __eval-module
      (lambda (_%obj180148%_) (gx#core-eval-module _%obj180148%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head180144%_
                      (let ((_%$e180141%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e180141%_ _%$e180141%_ '10)))
                     (__tmp180399
                      (lambda (_%cont180146%_)
                        (display-continuation-backtrace
                         _%cont180146%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head180144%_))))
                (declare (not safe))
                (##continuation-capture __tmp180399)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules179998%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home180000%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir180002%_ (path-expand '"lib" _%home180000%_))
                     (_%userpath180004%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath180006%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir180002%_ '())
                          (cons _%userpath180004%_
                                (cons _%libdir180002%_ '()))))
                     (_%loadpath180069%_
                      (let ((_%$e180008%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e180008%_
                            (let ((__tmp180400
                                   (let ((__tmp180402
                                          (lambda (_%x180013%_)
                                            (not (let ((_%str180015%_
                                                        _%x180013%_))
                                                   (if (string? _%str180015%_)
                                                       (let ((_%str180020%_
                                                              _%str180015%_))
                                                         (declare (not safe))
                                                         (__string-empty?
                                                          _%str180020%_))
                                                       (begin
                                                         (raise-contract-violation-error
                                                          '"contract violation"
                                                          'context:
                                                          'gerbil/runtime/init
                                                          'contract:
                                                          'string?
                                                          'value:
                                                          _%str180015%_)
                                                         '#!void))))))
                                         (__tmp180401
                                          (let* ((_%str180039%_ _%$e180008%_)
                                                 (_%char180042%_ '#\:))
                                            (if (string? _%str180039%_)
                                                (let* ((_%str180047%_
                                                        _%str180039%_)
                                                       (_%char180058%_
                                                        _%char180042%_))
                                                  (declare (not safe))
                                                  (__string-split
                                                   _%str180047%_
                                                   _%char180058%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/init
                                                   'contract:
                                                   'string?
                                                   'value:
                                                   _%str180039%_)
                                                  '#!void)))))
                                     (declare (not safe))
                                     (##filter __tmp180402 __tmp180401))))
                              (declare (not safe))
                              (##append __tmp180400 _%loadpath180006%_))
                            _%loadpath180006%_)))
                     (_%paths180072%_ _%loadpath180069%_)
                     (_%paths180077%_ _%paths180072%_))
                (declare (not safe))
                (__set-load-path! _%paths180077%_))
              (for-each
               (lambda (_%mod180089%_)
                 (let* ((_%h180091%_ __modules)
                        (_%key180094%_ _%mod180089%_)
                        (_%value180097%_ 'builtin)
                        (_%h180101%_ _%h180091%_)
                        (_%h180103%_ _%h180101%_))
                   (declare (not safe))
                   (__hash-put! _%h180103%_ _%key180094%_ _%value180097%_))
                 (let* ((_%h180116%_ __modules)
                        (_%key180119%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod180089%_ '"~0")))
                        (_%value180122%_ 'builtin)
                        (_%h180126%_ _%h180116%_)
                        (_%h180128%_ _%h180126%_))
                   (declare (not safe))
                   (__hash-put! _%h180128%_ _%key180119%_ _%value180122%_)))
               _%builtin-modules179998%_)
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
