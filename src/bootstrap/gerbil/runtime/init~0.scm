(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1784461443)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+180168%_ __*readtable*))
          (let* ((_%core180170%_ (gx#import-module ':gerbil/core))
                 (_%pre180172%_ (gx#make-prelude-context _%core180170%_)))
            (gx#current-expander-module-prelude _%pre180172%_)
            (gx#core-bind-root-syntax! ':<core> _%pre180172%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp180179
                 (lambda (_%port180175%_)
                   (input-port-readtable-set!
                    _%port180175%_
                    _%+readtable+180168%_)))
                (__tmp180178 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp180179 __tmp180178))
          (let ((__tmp180181
                 (lambda (_%port180177%_)
                   (output-port-readtable-set!
                    _%port180177%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port180177%_)
                     '#t))))
                (__tmp180180 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp180181 __tmp180180)))))
    (define __gxi-init-interactive! (lambda (_%cmdline180165%_) '#!void))
    (define load-scheme
      (lambda (_%path180160%_)
        (let ((__tmp180182
               (lambda ()
                 (let ((__tmp180183 (lambda _%args180163%_ '#f)))
                   (declare (not safe))
                   (##load _%path180160%_ __tmp180183 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp180182
           __scheme-source
           _%path180160%_))))
    (define __expand-source
      (lambda (_%src180142%_)
        (letrec ((_%expand180144%_
                  (lambda (_%src180158%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src180158%_)))))
                 (_%no-expand180145%_
                  (lambda (_%src180151%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src180151%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src180151%_))
                            (let ((_%code180155%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src180151%_))))
                              (if (pair? _%code180155%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code180155%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code180155%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e180147%_ (_%no-expand180145%_ _%src180142%_)))
            (if _%$e180147%_ _%$e180147%_ (_%expand180144%_ _%src180142%_))))))
    (define __macro-descr
      (lambda (_%src180128%_ _%def-syntax?180129%_)
        (letrec ((_%fail!180131%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src180128%_))))
                 (_%make-descr180132%_
                  (lambda (_%size180136%_)
                    (let ((_%expander180139%_
                           (let ((__tmp180184
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src180128%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp180184
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander180139%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?180129%_
                             _%size180136%_
                             _%expander180139%_
                             _%src180128%_))
                          (_%fail!180131%_))))))
          (if _%def-syntax?180129%_
              (_%make-descr180132%_ '-1)
              (let ((_%code180134%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src180128%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code180134%_))
                         (let ((__tmp180185
                                (let ((__tmp180186
                                       (let ((__tmp180187
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code180134%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp180187
                                          _%src180128%_))))
                                  (declare (not safe))
                                  (##source-code __tmp180186))))
                           (declare (not safe))
                           (##memq __tmp180185 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src180128%_ _%src180128%_ '-3))
                      (_%make-descr180132%_
                       (let ((__tmp180188
                              (let ((__tmp180189
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code180134%_))))
                                (declare (not safe))
                                (##sourcify __tmp180189 _%src180128%_))))
                         (declare (not safe))
                         (##form-size __tmp180188))))
                    (_%fail!180131%_)))))))
    (define __source->syntax
      (lambda (_%src180117%_)
        (let _%recur180119%_ ((_%e180121%_ _%src180117%_))
          (if (let () (declare (not safe)) (##source? _%e180121%_))
              (let ((__tmp180191
                     (_%recur180119%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e180121%_))))
                    (__tmp180190
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e180121%_))))
                (declare (not safe))
                (##structure AST::t __tmp180191 __tmp180190))
              (if (pair? _%e180121%_)
                  (cons (_%recur180119%_
                         (let () (declare (not safe)) (##car _%e180121%_)))
                        (_%recur180119%_
                         (let () (declare (not safe)) (##cdr _%e180121%_))))
                  (if (vector? _%e180121%_)
                      (vector-map _%recur180119%_ _%e180121%_)
                      (if (box? _%e180121%_)
                          (box (_%recur180119%_ (unbox _%e180121%_)))
                          _%e180121%_)))))))
    (define __compile-top-source
      (lambda (_%stx180115%_)
        (cons '__noexpand: (__compile-top _%stx180115%_))))
    (define __compile-top
      (lambda (_%stx180113%_)
        (let ((__tmp180192 (gx#core-compile-top-syntax _%stx180113%_)))
          (declare (not safe))
          (__compile __tmp180192))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in179946%_)
        (letrec ((_%import1179948%_
                  (lambda (_%in180098%_ _%phi180099%_)
                    (if (gx#module-import? _%in180098%_)
                        (let ((_%iphi180102%_
                               (fx+ _%phi180099%_
                                    (gx#module-import-phi _%in180098%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi180102%_))
                              (_%eval1179949%_
                               (gx#module-export-context
                                (gx#module-import-source _%in180098%_)))
                              '#!void))
                        (if (gx#module-context? _%in180098%_)
                            (if (fxzero? _%phi180099%_)
                                (_%eval1179949%_ _%in180098%_)
                                '#!void)
                            (if (gx#import-set? _%in180098%_)
                                (let ((_%iphi180106%_
                                       (fx+ _%phi180099%_
                                            (gx#import-set-phi _%in180098%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi180106%_))
                                      (_%eval1179949%_
                                       (gx#import-set-source _%in180098%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi180106%_))
                                          (for-each
                                           (lambda (_%in180110%_)
                                             (_%import1179948%_
                                              _%in180110%_
                                              _%iphi180106%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in180098%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in180098%_)))))))
                 (_%eval1179949%_
                  (lambda (_%ctx179953%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e179978%_
                           (let* ((_%h179955%_ __modstate)
                                  (_%key179958%_ _%ctx179953%_)
                                  (_%h179962%_ _%h179955%_)
                                  (_%h179964%_ _%h179962%_))
                             (declare (not safe))
                             (__hash-get _%h179964%_ _%key179958%_))))
                      (if _%$e179978%_
                          (let ((_%$e179983%_ (car _%$e179978%_)))
                            (if (eq? 'forcing _%$e179983%_)
                                (begin
                                  (mutex-unlock! __modstate-mx __modstate-cv)
                                  (_%eval1179949%_ _%ctx179953%_))
                                (if (eq? 'ready _%$e179983%_)
                                    (begin
                                      (mutex-unlock! __modstate-mx)
                                      (cadr _%$e179978%_))
                                    (if (eq? 'error _%$e179983%_)
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ((__tmp180193
                                                 (cadr _%$e179978%_)))
                                            (declare (not safe))
                                            (raise __tmp180193)))
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ()
                                            (declare (not safe))
                                            (error '"internal error; unexpected module state"
                                                   _%$e179978%_)))))))
                          (let ()
                            (let* ((_%h179987%_ __modstate)
                                   (_%key179990%_ _%ctx179953%_)
                                   (_%value179993%_ '(forcing))
                                   (_%h179997%_ _%h179987%_)
                                   (_%h179999%_ _%h179997%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h179999%_
                               _%key179990%_
                               _%value179993%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler180040%_
                                    (lambda (_%exn180013%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h180015%_ __modstate)
                                             (_%key180018%_ _%ctx179953%_)
                                             (_%value180021%_
                                              (list 'error _%exn180013%_))
                                             (_%h180025%_ _%h180015%_)
                                             (_%h180027%_ _%h180025%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h180027%_
                                         _%key180018%_
                                         _%value180021%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn180013%_))))
                                   (_%thunk180073%_
                                    (lambda ()
                                      (let ((_%result180044%_
                                             (__eval-module _%ctx179953%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h180046%_ __modstate)
                                               (_%key180049%_ _%ctx179953%_)
                                               (_%value180052%_
                                                (list 'ready _%result180044%_))
                                               (_%h180056%_ _%h180046%_)
                                               (_%h180058%_ _%h180056%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h180058%_
                                           _%key180049%_
                                           _%value180052%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result180044%_)))
                                   (_%handler180078%_ _%handler180040%_)
                                   (_%thunk180088%_ _%thunk180073%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler180078%_
                               _%thunk180088%_))))))))
          (if (pair? _%in179946%_)
              (let ((__tmp180194
                     (lambda (_%in179951%_)
                       (_%import1179948%_ _%in179951%_ '0))))
                (declare (not safe))
                (##for-each __tmp180194 _%in179946%_))
              (_%import1179948%_ _%in179946%_ '0)))))
    (define __eval-module
      (lambda (_%obj179944%_) (gx#core-eval-module _%obj179944%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head179940%_
                      (let ((_%$e179937%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e179937%_ _%$e179937%_ '10)))
                     (__tmp180195
                      (lambda (_%cont179942%_)
                        (display-continuation-backtrace
                         _%cont179942%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head179940%_))))
                (declare (not safe))
                (##continuation-capture __tmp180195)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules179794%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home179796%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir179798%_ (path-expand '"lib" _%home179796%_))
                     (_%userpath179800%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath179802%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir179798%_ '())
                          (cons _%userpath179800%_
                                (cons _%libdir179798%_ '()))))
                     (_%loadpath179865%_
                      (let ((_%$e179804%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e179804%_
                            (let ((__tmp180196
                                   (let ((__tmp180198
                                          (lambda (_%x179809%_)
                                            (not (let ((_%str179811%_
                                                        _%x179809%_))
                                                   (if (string? _%str179811%_)
                                                       (let ((_%str179816%_
                                                              _%str179811%_))
                                                         (declare (not safe))
                                                         (__string-empty?
                                                          _%str179816%_))
                                                       (begin
                                                         (raise-contract-violation-error
                                                          '"contract violation"
                                                          'context:
                                                          'gerbil/runtime/init
                                                          'contract:
                                                          'string?
                                                          'value:
                                                          _%str179811%_)
                                                         '#!void))))))
                                         (__tmp180197
                                          (let* ((_%str179835%_ _%$e179804%_)
                                                 (_%char179838%_ '#\:))
                                            (if (string? _%str179835%_)
                                                (let* ((_%str179843%_
                                                        _%str179835%_)
                                                       (_%char179854%_
                                                        _%char179838%_))
                                                  (declare (not safe))
                                                  (__string-split
                                                   _%str179843%_
                                                   _%char179854%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/init
                                                   'contract:
                                                   'string?
                                                   'value:
                                                   _%str179835%_)
                                                  '#!void)))))
                                     (declare (not safe))
                                     (##filter __tmp180198 __tmp180197))))
                              (declare (not safe))
                              (##append __tmp180196 _%loadpath179802%_))
                            _%loadpath179802%_)))
                     (_%paths179868%_ _%loadpath179865%_)
                     (_%paths179873%_ _%paths179868%_))
                (declare (not safe))
                (__set-load-path! _%paths179873%_))
              (for-each
               (lambda (_%mod179885%_)
                 (let* ((_%h179887%_ __modules)
                        (_%key179890%_ _%mod179885%_)
                        (_%value179893%_ 'builtin)
                        (_%h179897%_ _%h179887%_)
                        (_%h179899%_ _%h179897%_))
                   (declare (not safe))
                   (__hash-put! _%h179899%_ _%key179890%_ _%value179893%_))
                 (let* ((_%h179912%_ __modules)
                        (_%key179915%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod179885%_ '"~0")))
                        (_%value179918%_ 'builtin)
                        (_%h179922%_ _%h179912%_)
                        (_%h179924%_ _%h179922%_))
                   (declare (not safe))
                   (__hash-put! _%h179924%_ _%key179915%_ _%value179918%_)))
               _%builtin-modules179794%_)
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
