(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/runtime/init::timestamp 1789839225)
  (begin
    (define __scheme-source (make-parameter '#f))
    (define __load-gxi
      (lambda ()
        (let () (declare (not safe)) (__current-compiler __compile-top))
        (let () (declare (not safe)) (__current-expander gx#core-expand))
        (set! __eval-module gx#core-eval-module)
        (letrec* ((_%+readtable+182564%_ __*readtable*))
          (let* ((_%core182566%_ (gx#import-module ':gerbil/core))
                 (_%pre182568%_ (gx#make-prelude-context _%core182566%_)))
            (gx#current-expander-module-prelude _%pre182568%_)
            (gx#core-bind-root-syntax! ':<core> _%pre182568%_ '#t)
            (gx#eval-syntax '(import :gerbil/core)))
          (gx#current-expander-compile __compile-top-source)
          (let () (declare (not safe)) (##expand-source-set! __expand-source))
          (let () (declare (not safe)) (##macro-descr-set! __macro-descr))
          (let () (declare (not safe)) (##main-readtable-set! __*readtable*))
          (let ((__tmp182575
                 (lambda (_%port182571%_)
                   (input-port-readtable-set!
                    _%port182571%_
                    _%+readtable+182564%_)))
                (__tmp182574 (list ##stdin-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp182575 __tmp182574))
          (let ((__tmp182577
                 (lambda (_%port182573%_)
                   (output-port-readtable-set!
                    _%port182573%_
                    (readtable-sharing-allowed?-set
                     (output-port-readtable _%port182573%_)
                     '#t))))
                (__tmp182576 (list ##stdout-port ##console-port)))
            (declare (not safe))
            (##for-each __tmp182577 __tmp182576)))))
    (define __gxi-init-interactive! (lambda (_%cmdline182561%_) '#!void))
    (define load-scheme
      (lambda (_%path182556%_)
        (let ((__tmp182578
               (lambda ()
                 (let ((__tmp182579 (lambda _%args182559%_ '#f)))
                   (declare (not safe))
                   (##load _%path182556%_ __tmp182579 '#t '#t '#f)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp182578
           __scheme-source
           _%path182556%_))))
    (define __expand-source
      (lambda (_%src182538%_)
        (letrec ((_%expand182540%_
                  (lambda (_%src182554%_)
                    (__compile-top
                     (gx#core-expand (__source->syntax _%src182554%_)))))
                 (_%no-expand182541%_
                  (lambda (_%src182547%_)
                    (if (let () (declare (not safe)) (__scheme-source))
                        _%src182547%_
                        (if (let ()
                              (declare (not safe))
                              (##source? _%src182547%_))
                            (let ((_%code182551%_
                                   (let ()
                                     (declare (not safe))
                                     (##source-code _%src182547%_))))
                              (if (pair? _%code182551%_)
                                  (if (eq? '__noexpand:
                                           (let ()
                                             (declare (not safe))
                                             (##car _%code182551%_)))
                                      (let ()
                                        (declare (not safe))
                                        (##cdr _%code182551%_))
                                      '#f)
                                  '#f))
                            '#f)))))
          (let ((_%$e182543%_ (_%no-expand182541%_ _%src182538%_)))
            (if _%$e182543%_ _%$e182543%_ (_%expand182540%_ _%src182538%_))))))
    (define __macro-descr
      (lambda (_%src182524%_ _%def-syntax?182525%_)
        (letrec ((_%fail!182527%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (##raise-expression-parsing-exception
                       'ill-formed-macro-transformer
                       _%src182524%_))))
                 (_%make-descr182528%_
                  (lambda (_%size182532%_)
                    (let ((_%expander182535%_
                           (let ((__tmp182580
                                  (lambda ()
                                    (let ()
                                      (declare (not safe))
                                      (##eval-top
                                       _%src182524%_
                                       ##interaction-cte)))))
                             (declare (not safe))
                             (call-with-parameters__1
                              __tmp182580
                              __scheme-source
                              'macro))))
                      (if (procedure? _%expander182535%_)
                          (let ()
                            (declare (not safe))
                            (##make-macro-descr
                             _%def-syntax?182525%_
                             _%size182532%_
                             _%expander182535%_
                             _%src182524%_))
                          (_%fail!182527%_))))))
          (if _%def-syntax?182525%_
              (_%make-descr182528%_ '-1)
              (let ((_%code182530%_
                     (let ()
                       (declare (not safe))
                       (##source-code _%src182524%_))))
                (if (and (let () (declare (not safe)) (##pair? _%code182530%_))
                         (let ((__tmp182581
                                (let ((__tmp182582
                                       (let ((__tmp182583
                                              (let ()
                                                (declare (not safe))
                                                (##car _%code182530%_))))
                                         (declare (not safe))
                                         (##sourcify
                                          __tmp182583
                                          _%src182524%_))))
                                  (declare (not safe))
                                  (##source-code __tmp182582))))
                           (declare (not safe))
                           (##memq __tmp182581 '(##lambda lambda))))
                    (begin
                      (let ()
                        (declare (not safe))
                        (##shape _%src182524%_ _%src182524%_ '-3))
                      (_%make-descr182528%_
                       (let ((__tmp182584
                              (let ((__tmp182585
                                     (let ()
                                       (declare (not safe))
                                       (##cadr _%code182530%_))))
                                (declare (not safe))
                                (##sourcify __tmp182585 _%src182524%_))))
                         (declare (not safe))
                         (##form-size __tmp182584))))
                    (_%fail!182527%_)))))))
    (define __source->syntax
      (lambda (_%src182513%_)
        (let _%recur182515%_ ((_%e182517%_ _%src182513%_))
          (if (let () (declare (not safe)) (##source? _%e182517%_))
              (let ((__tmp182587
                     (_%recur182515%_
                      (let ()
                        (declare (not safe))
                        (##source-code _%e182517%_))))
                    (__tmp182586
                     (let ()
                       (declare (not safe))
                       (##source-locat _%e182517%_))))
                (declare (not safe))
                (##structure AST::t __tmp182587 __tmp182586))
              (if (pair? _%e182517%_)
                  (cons (_%recur182515%_
                         (let () (declare (not safe)) (##car _%e182517%_)))
                        (_%recur182515%_
                         (let () (declare (not safe)) (##cdr _%e182517%_))))
                  (if (vector? _%e182517%_)
                      (vector-map _%recur182515%_ _%e182517%_)
                      (if (box? _%e182517%_)
                          (box (_%recur182515%_ (unbox _%e182517%_)))
                          _%e182517%_)))))))
    (define __compile-top-source
      (lambda (_%stx182511%_)
        (cons '__noexpand: (__compile-top _%stx182511%_))))
    (define __compile-top
      (lambda (_%stx182509%_)
        (let ((__tmp182588 (gx#core-compile-top-syntax _%stx182509%_)))
          (declare (not safe))
          (__compile __tmp182588))))
    (define __modstate (let () (declare (not safe)) (make-hash-table-eq)))
    (define __modstate-mx (make-mutex 'import))
    (define __modstate-cv (make-condition-variable 'import))
    (define __eval-import
      (lambda (_%in182342%_)
        (letrec ((_%import1182344%_
                  (lambda (_%in182494%_ _%phi182495%_)
                    (if (gx#module-import? _%in182494%_)
                        (let ((_%iphi182498%_
                               (fx+ _%phi182495%_
                                    (gx#module-import-phi _%in182494%_))))
                          (if (let ()
                                (declare (not safe))
                                (##fxzero? _%iphi182498%_))
                              (_%eval1182345%_
                               (gx#module-export-context
                                (gx#module-import-source _%in182494%_)))
                              '#!void))
                        (if (gx#module-context? _%in182494%_)
                            (if (fxzero? _%phi182495%_)
                                (_%eval1182345%_ _%in182494%_)
                                '#!void)
                            (if (gx#import-set? _%in182494%_)
                                (let ((_%iphi182502%_
                                       (fx+ _%phi182495%_
                                            (gx#import-set-phi _%in182494%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (##fxzero? _%iphi182502%_))
                                      (_%eval1182345%_
                                       (gx#import-set-source _%in182494%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##fxpositive? _%iphi182502%_))
                                          (for-each
                                           (lambda (_%in182506%_)
                                             (_%import1182344%_
                                              _%in182506%_
                                              _%iphi182502%_))
                                           (gx#module-context-import
                                            (gx#import-set-source
                                             _%in182494%_)))
                                          '#!void)))
                                (let ()
                                  (declare (not safe))
                                  (error '"Unexpected import"
                                         _%in182494%_)))))))
                 (_%eval1182345%_
                  (lambda (_%ctx182349%_)
                    (mutex-lock! __modstate-mx)
                    (let ((_%$e182374%_
                           (let* ((_%h182351%_ __modstate)
                                  (_%key182354%_ _%ctx182349%_)
                                  (_%h182358%_ _%h182351%_)
                                  (_%h182360%_ _%h182358%_))
                             (declare (not safe))
                             (__hash-get _%h182360%_ _%key182354%_))))
                      (if _%$e182374%_
                          (let ((_%$e182379%_ (car _%$e182374%_)))
                            (if (eq? 'forcing _%$e182379%_)
                                (begin
                                  (mutex-unlock! __modstate-mx __modstate-cv)
                                  (_%eval1182345%_ _%ctx182349%_))
                                (if (eq? 'ready _%$e182379%_)
                                    (begin
                                      (mutex-unlock! __modstate-mx)
                                      (cadr _%$e182374%_))
                                    (if (eq? 'error _%$e182379%_)
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ((__tmp182589
                                                 (cadr _%$e182374%_)))
                                            (declare (not safe))
                                            (raise __tmp182589)))
                                        (begin
                                          (mutex-unlock! __modstate-mx)
                                          (let ()
                                            (declare (not safe))
                                            (error '"internal error; unexpected module state"
                                                   _%$e182374%_)))))))
                          (let ()
                            (let* ((_%h182383%_ __modstate)
                                   (_%key182386%_ _%ctx182349%_)
                                   (_%value182389%_ '(forcing))
                                   (_%h182393%_ _%h182383%_)
                                   (_%h182395%_ _%h182393%_))
                              (declare (not safe))
                              (__hash-put!
                               _%h182395%_
                               _%key182386%_
                               _%value182389%_))
                            (mutex-unlock! __modstate-mx)
                            (let* ((_%handler182436%_
                                    (lambda (_%exn182409%_)
                                      (mutex-lock! __modstate-mx)
                                      (let* ((_%h182411%_ __modstate)
                                             (_%key182414%_ _%ctx182349%_)
                                             (_%value182417%_
                                              (list 'error _%exn182409%_))
                                             (_%h182421%_ _%h182411%_)
                                             (_%h182423%_ _%h182421%_))
                                        (declare (not safe))
                                        (__hash-put!
                                         _%h182423%_
                                         _%key182414%_
                                         _%value182417%_))
                                      (condition-variable-broadcast!
                                       __modstate-cv)
                                      (mutex-unlock! __modstate-mx)
                                      (let ()
                                        (declare (not safe))
                                        (raise _%exn182409%_))))
                                   (_%thunk182469%_
                                    (lambda ()
                                      (let ((_%result182440%_
                                             (__eval-module _%ctx182349%_)))
                                        (mutex-lock! __modstate-mx)
                                        (let* ((_%h182442%_ __modstate)
                                               (_%key182445%_ _%ctx182349%_)
                                               (_%value182448%_
                                                (list 'ready _%result182440%_))
                                               (_%h182452%_ _%h182442%_)
                                               (_%h182454%_ _%h182452%_))
                                          (declare (not safe))
                                          (__hash-put!
                                           _%h182454%_
                                           _%key182445%_
                                           _%value182448%_))
                                        (condition-variable-broadcast!
                                         __modstate-cv)
                                        (mutex-unlock! __modstate-mx)
                                        _%result182440%_)))
                                   (_%handler182474%_ _%handler182436%_)
                                   (_%thunk182484%_ _%thunk182469%_))
                              (declare (not safe))
                              (__with-catch
                               _%handler182474%_
                               _%thunk182484%_))))))))
          (if (pair? _%in182342%_)
              (let ((__tmp182590
                     (lambda (_%in182347%_)
                       (_%import1182344%_ _%in182347%_ '0))))
                (declare (not safe))
                (##for-each __tmp182590 _%in182342%_))
              (_%import1182344%_ _%in182342%_ '0)))))
    (define __eval-module
      (lambda (_%obj182340%_) (gx#core-eval-module _%obj182340%_)))
    (define __interrupt-handler
      (lambda ()
        (if __DEBUG
            (begin
              (newline (current-error-port))
              (display '"--- continuation backtrace:" (current-error-port))
              (newline (current-error-port))
              (let* ((_%stack-trace-head182336%_
                      (let ((_%$e182333%_
                             (string->number
                              (let ()
                                (declare (not safe))
                                (##getenv '"GERBIL_DEBUG_STACKTRACE" '"10")))))
                        (if _%$e182333%_ _%$e182333%_ '10)))
                     (__tmp182591
                      (lambda (_%cont182338%_)
                        (display-continuation-backtrace
                         _%cont182338%_
                         (current-error-port)
                         '1
                         '1
                         '0
                         _%stack-trace-head182336%_))))
                (declare (not safe))
                (##continuation-capture __tmp182591)))
            '#!void)
        (let () (declare (not safe)) (##default-user-interrupt-handler))))
    (define gerbil-runtime-init!
      (lambda (_%builtin-modules182190%_)
        (if __runtime-initialized
            '#!void
            (begin
              (let () (declare (not safe)) (dump-stack-trace? '#t))
              (let* ((_%home182192%_
                      (let () (declare (not safe)) (gerbil-home)))
                     (_%libdir182194%_ (path-expand '"lib" _%home182192%_))
                     (_%userpath182196%_
                      (path-expand
                       '"lib"
                       (let () (declare (not safe)) (gerbil-path))))
                     (_%loadpath182198%_
                      (if (let ()
                            (declare (not safe))
                            (##getenv '"GERBIL_BUILD_PREFIX" '#f))
                          (cons _%libdir182194%_ '())
                          (cons _%userpath182196%_
                                (cons _%libdir182194%_ '()))))
                     (_%loadpath182261%_
                      (let ((_%$e182200%_
                             (let ()
                               (declare (not safe))
                               (##getenv '"GERBIL_LOADPATH" '#f))))
                        (if _%$e182200%_
                            (let ((__tmp182592
                                   (let ((__tmp182594
                                          (lambda (_%x182205%_)
                                            (not (let ((_%str182207%_
                                                        _%x182205%_))
                                                   (if (string? _%str182207%_)
                                                       (let ((_%str182212%_
                                                              _%str182207%_))
                                                         (declare (not safe))
                                                         (__string-empty?
                                                          _%str182212%_))
                                                       (begin
                                                         (raise-contract-violation-error
                                                          '"contract violation"
                                                          'context:
                                                          'gerbil/runtime/init
                                                          'contract:
                                                          'string?
                                                          'value:
                                                          _%str182207%_)
                                                         '#!void))))))
                                         (__tmp182593
                                          (let* ((_%str182231%_ _%$e182200%_)
                                                 (_%char182234%_ '#\:))
                                            (if (string? _%str182231%_)
                                                (let* ((_%str182239%_
                                                        _%str182231%_)
                                                       (_%char182250%_
                                                        _%char182234%_))
                                                  (declare (not safe))
                                                  (__string-split
                                                   _%str182239%_
                                                   _%char182250%_))
                                                (begin
                                                  (raise-contract-violation-error
                                                   '"contract violation"
                                                   'context:
                                                   'gerbil/runtime/init
                                                   'contract:
                                                   'string?
                                                   'value:
                                                   _%str182231%_)
                                                  '#!void)))))
                                     (declare (not safe))
                                     (##filter __tmp182594 __tmp182593))))
                              (declare (not safe))
                              (##append __tmp182592 _%loadpath182198%_))
                            _%loadpath182198%_)))
                     (_%paths182264%_ _%loadpath182261%_)
                     (_%paths182269%_ _%paths182264%_))
                (declare (not safe))
                (__set-load-path! _%paths182269%_))
              (for-each
               (lambda (_%mod182281%_)
                 (let* ((_%h182283%_ __modules)
                        (_%key182286%_ _%mod182281%_)
                        (_%value182289%_ 'builtin)
                        (_%h182293%_ _%h182283%_)
                        (_%h182295%_ _%h182293%_))
                   (declare (not safe))
                   (__hash-put! _%h182295%_ _%key182286%_ _%value182289%_))
                 (let* ((_%h182308%_ __modules)
                        (_%key182311%_
                         (let ()
                           (declare (not safe))
                           (##string-append _%mod182281%_ '"~0")))
                        (_%value182314%_ 'builtin)
                        (_%h182318%_ _%h182308%_)
                        (_%h182320%_ _%h182318%_))
                   (declare (not safe))
                   (__hash-put! _%h182320%_ _%key182311%_ _%value182314%_)))
               _%builtin-modules182190%_)
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
