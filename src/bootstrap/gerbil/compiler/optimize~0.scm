(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1789371548)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp273948
                   (let ((__obj273942
                          (let ()
                            (declare (not safe))
                            (##structure
                             gxc#optimizer-info::t
                             '#f
                             '#f
                             '#f
                             '#f))))
                     (let ()
                       (declare (not safe))
                       (gxc#optimizer-info:::init! __obj273942))
                     __obj273942)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp273948)))))
    (define gxc#optimize!
      (lambda (_%ctx273550%_)
        (let ((__tmp273950
               (lambda ()
                 (let ((__tmp273952
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx273550%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx273550%_)
                          (let ((__tmp273954
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp273953
                                 (##structure-ref
                                  _%ctx273550%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp273954 __tmp273953 '#t))
                          (let ((_%code273554%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx273550%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx273550%_
                             _%code273554%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp273951
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp273952
                    gxc#current-compile-local-type
                    __tmp273951))))
              (__tmp273949 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp273950
           gxc#current-compile-mutators
           __tmp273949))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx273536%_)
        (letrec ((_%load-it!273538%_
                  (lambda (_%id273548%_)
                    (if (let ((__tmp273955
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp273955 _%id273548%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id273548%_)
                          (let ((__tmp273956
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp273956 _%id273548%_ '#t)))))))
          (let* ((_%modid273540%_
                  (##structure-ref
                   _%ctx273536%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str273542%_ (symbol->string _%modid273540%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str273542%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str273542%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!273538%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!273538%_
                   '(gerbil/builtin
                     gerbil/builtin-inline-rules
                     gerbil/runtime/gambit
                     gerbil/runtime/util
                     gerbil/runtime/table
                     gerbil/runtime/control
                     gerbil/runtime/system
                     gerbil/runtime/c3
                     gerbil/runtime/mop
                     gerbil/runtime/mop-system-classes
                     gerbil/runtime/error
                     gerbil/runtime/interface
                     gerbil/runtime/hash
                     gerbil/runtime/thread
                     gerbil/runtime/syntax
                     gerbil/runtime/eval
                     gerbil/runtime/repl
                     gerbil/runtime/loader
                     gerbil/runtime/init
                     gerbil/runtime))))))))
    (define gxc#optimizer-load-ssxi-deps
      (lambda (_%ctx273473%_)
        (letrec* ((_%deps273475%_
                   (let* ((_%imports273526%_
                           (##structure-ref
                            _%ctx273473%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e273528%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx273473%_))))
                     (if _%$e273528%_
                         (cons _%$e273528%_ _%imports273526%_)
                         _%imports273526%_))))
          (let _%lp273477%_ ((_%rest273479%_ _%deps273475%_))
            (let* ((_%$%rest273480273488%_ _%rest273479%_)
                   (_%$%else273482273496%_ (lambda () '#!void))
                   (_%$%K273484273514%_
                    (lambda (_%rest273499%_ _%hd273500%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd273500%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp273958
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp273957
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd273500%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp273958 __tmp273957))
                                '#!void
                                (begin
                                  (let ((_%$e273503%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd273500%_))))
                                    (if _%$e273503%_
                                        (_%lp273477%_
                                         (cons _%$e273503%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%hd273500%_
                                                  '8
                                                  '#f
                                                  '#f))))
                                        (_%lp273477%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd273500%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd273500%_)))
                            (_%lp273477%_ _%rest273499%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd273500%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp273960
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp273959
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd273500%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp273960 __tmp273959))
                                    '#!void
                                    (begin
                                      (_%lp273477%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd273500%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd273500%_)))
                                (_%lp273477%_ _%rest273499%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd273500%_
                                     'gx#module-import::t))
                                  (_%lp273477%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd273500%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest273499%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd273500%_
                                         'gx#module-export::t))
                                      (_%lp273477%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd273500%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest273499%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd273500%_
                                             'gx#import-set::t))
                                          (_%lp273477%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd273500%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest273499%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd273500%_))))))))))
              (if (pair? _%$%rest273480273488%_)
                  (let ((_%$%hd273485273517%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest273480273488%_)))
                        (_%$%tl273486273519%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest273480273488%_))))
                    (let* ((_%hd273522%_ _%$%hd273485273517%_)
                           (_%rest273524%_ _%$%tl273486273519%_))
                      (_%$%K273484273514%_ _%rest273524%_ _%hd273522%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx273453%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx273453%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx273453%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht273455%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id273457%_
                    (##structure-ref
                     _%ctx273453%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod273459%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht273455%_ _%id273457%_)))
                   (_%$e273462%_ _%mod273459%_))
              (if _%$e273462%_
                  _%$e273462%_
                  (let* ((_%mod273465%_
                          (gxc#optimizer-import-ssxi _%ctx273453%_))
                         (_%val273470%_
                          (let ((_%$e273467%_ _%mod273465%_))
                            (if _%$e273467%_ _%$e273467%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht273455%_ _%id273457%_ _%val273470%_))
                    _%val273470%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx273451%_)
        (if (##structure-ref _%ctx273451%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx273451%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id273429%_)
        (letrec ((_%catch-e273431%_
                  (lambda (_%exn273449%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn273449%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn273449%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id273429%_))))
                    '#f))
                 (_%import-e273432%_
                  (lambda ()
                    (let* ((_%str-id273435%_
                            (let ((__tmp273961
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id273429%_))))
                              (declare (not safe))
                              (##string-append __tmp273961 '".ssxi")))
                           (_%artefact-path273442%_
                            (let ((_%$%odir273436273438%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%$%odir273436273438%_
                                  (let ((_%odir273440%_
                                         _%$%odir273436273438%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id273435%_
                                        '".ss"))
                                     _%odir273440%_))
                                  '#f)))
                           (_%library-path273444%_
                            (let ((__tmp273962
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id273435%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp273962)))
                           (_%ssxi-path273446%_
                            (if (and _%artefact-path273442%_
                                     (let ()
                                       (declare (not safe))
                                       (##file-exists?
                                        _%artefact-path273442%_)))
                                _%artefact-path273442%_
                                _%library-path273444%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path273446%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path273446%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e273431%_ _%import-e273432%_)))))
    (define gxc#optimize-source
      (lambda (_%stx273414%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx273414%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx273414%_))
        (let* ((_%stx273416%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx273414%_)))
               (_%stx273418%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx273416%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx273418%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx273418%_))
          (let _%fixpoint273421%_ ((_%current273423%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx273418%_))
            (let ((_%refined273425%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current273423%_ _%refined273425%_)
                  '#!void
                  (_%fixpoint273421%_ _%refined273425%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx273418%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx273418%_))
          (let ((_%stx273427%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx273418%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx273427%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp273964 (list gxc#::generate-runtime-empty::t))
            (__tmp273963 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp273964
         '()
         __tmp273963
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args273411%_
        (apply make-instance gxc#::generate-ssxi::t _%$args273411%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp273965
             (lambda ()
               (force gxc#::generate-runtime-empty-bind-methods!)
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin
                  gxc#generate-runtime-begin%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin-syntax
                  gxc#generate-ssxi-begin-syntax%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#begin-annotation
                  gxc#generate-ssxi-begin-annotation%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#module
                  gxc#generate-ssxi-module%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#define-values
                  gxc#generate-ssxi-define-values%))
               (let ()
                 (declare (not safe))
                 (bind-method!__0
                  gxc#::generate-ssxi::t
                  '%#call
                  gxc#generate-ssxi-call%))
               (let ()
                 (declare (not safe))
                 (__seal-class! gxc#::generate-ssxi::t)))))
        (declare (not safe))
        (__make-atomic-promise __tmp273965)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx273403%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self273406%_
                (let ((__obj273944
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj273944))
               (__tmp273966
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self273406%_ _%stx273403%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp273966
           gxc#current-compile-method
           _%self273406%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self273363%_ _%stx273364%_)
        (let* ((_%$%g273366273376%_
                (lambda (_%$%g273367273373%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g273367273373%_))))
               (_%$%g273365273400%_
                (lambda (_%$%g273367273379%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g273367273379%_))
                      (let ((_%$%e273369273381%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g273367273379%_))))
                        (let ((_%$%hd273370273384%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e273369273381%_)))
                              (_%$%tl273371273386%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e273369273381%_))))
                          (let ((__tmp273969
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#generate-runtime-begin%
                                      _%self273363%_
                                      _%stx273364%_))))
                                (__tmp273967
                                 (let ((__tmp273968
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp273968 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp273969
                             gx#current-expander-phi
                             __tmp273967))))
                      (_%$%g273366273376%_ _%$%g273367273379%_)))))
          (_%$%g273365273400%_ _%stx273364%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self273302%_ _%stx273303%_)
        (let* ((_%$%g273305273319%_
                (lambda (_%$%g273306273316%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g273306273316%_))))
               (_%$%g273304273360%_
                (lambda (_%$%g273306273322%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g273306273322%_))
                      (let ((_%$%e273309273324%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g273306273322%_))))
                        (let ((_%$%hd273310273327%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e273309273324%_)))
                              (_%$%tl273311273329%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e273309273324%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl273311273329%_))
                              (let ((_%$%e273312273332%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl273311273329%_))))
                                (let ((_%$%hd273313273335%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e273312273332%_)))
                                      (_%$%tl273314273337%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e273312273332%_))))
                                  (let* ((_%ctx273354%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd273313273335%_)))
                                         (_%code273356%_
                                          (##structure-ref
                                           _%ctx273354%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp273970
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self273302%_
                                               _%code273356%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp273970
                                     gx#current-expander-context
                                     _%ctx273354%_))))
                              (_%$%g273305273319%_ _%$%g273306273322%_))))
                      (_%$%g273305273319%_ _%$%g273306273322%_)))))
          (_%$%g273304273360%_ _%stx273303%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self273109%_ _%stx273110%_)
        (letrec ((_%generate-e273112%_
                  (lambda (_%id273287%_)
                    (let* ((_%sym273289%_
                            (if (let ((__tmp273971
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp273971))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id273287%_))
                                '#f))
                           (_%$e273291%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym273289%_))))
                      (if _%$e273291%_
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"generate class decl"
                               _%sym273289%_))
                            (cons 'begin
                                  (cons (cons 'declare-class
                                              (cons _%sym273289%_
                                                    (cons (let ((__method273946
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__method-ref _%$e273291%_ 'typedecl))))
                    (if __method273946
                        (let ()
                          (declare (not safe))
                          (__method273946 _%$e273291%_))
                        (begin
                          (let ()
                            (declare (not safe))
                            (error '"Missing method" _%$e273291%_ 'typedecl))
                          '#!void)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons 'declare-type
                                                    (cons _%sym273289%_
                                                          (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (list 'quote
                                          (list 'typedecl _%sym273289%_))
                                    '('class::t)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          (let ((_%$e273296%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym273289%_))))
                            (if _%$e273296%_
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate typedecl "
                                     _%sym273289%_
                                     '" "
                                     _%$e273296%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%$e273296%_
                                         'gxc#!class::t))
                                      (cons 'declare-type
                                            (cons _%sym273289%_
                                                  (cons (list 'optimizer-resolve-class
                                                              (list 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (list 'typedecl _%sym273289%_))
                      (list 'quote
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class-name _%$e273296%_))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons 'declare-type
                                            (cons _%sym273289%_
                                                  (cons (let ((__method273945
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__method-ref _%$e273296%_ 'typedecl))))
                  (if __method273945
                      (let ()
                        (declare (not safe))
                        (__method273945 _%$e273296%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method" _%$e273296%_ 'typedecl))
                        '#!void)))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '(begin))))))))
          (let* ((_%__stx273557273558%_ _%stx273110%_)
                 (_%$%g273115273153%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx273557273558%_)))))
            (let ((_%__kont273559273560%_
                   (lambda (_%$%g273117273269%_)
                     (_%generate-e273112%_ _%$%g273117273269%_)))
                  (_%__kont273561273562%_
                   (lambda (_%$%g273130273204%_)
                     (let ((_%types273230%_
                            (map _%generate-e273112%_
                                 (let ((__tmp273972
                                        (lambda (_%$%g273222273225%_
                                                 _%$%g273223273227%_)
                                          (cons _%$%g273222273225%_
                                                _%$%g273223273227%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp273972
                                    '()
                                    _%$%g273130273204%_)))))
                       (cons 'begin _%types273230%_)))))
              (let ((_%__match273612273613%_
                     (lambda (_%$%e273131273158%_
                              _%$%hd273132273161%_
                              _%$%tl273133273163%_
                              _%$%e273134273166%_
                              _%$%hd273135273169%_
                              _%$%tl273136273171%_
                              _%__splice273563273564%_
                              _%$%target273137273174%_
                              _%$%tl273139273176%_)
                       (letrec ((_%$%loop273140273179%_
                                 (lambda (_%$%hd273138273182%_
                                          _%$%id273144273184%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd273138273182%_))
                                       (let ((_%$%e273141273186%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd273138273182%_))))
                                         (let ((_%$%lp-tl273143273191%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e273141273186%_)))
                                               (_%$%lp-hd273142273189%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e273141273186%_))))
                                           (_%$%loop273140273179%_
                                            _%$%lp-tl273143273191%_
                                            (cons _%$%lp-hd273142273189%_
                                                  _%$%id273144273184%_))))
                                       (let ((_%$%id273145273194%_
                                              (reverse _%$%id273144273184%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl273136273171%_))
                                             (let ((_%$%e273146273196%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl273136273171%_))))
                                               (let ((_%$%tl273148273201%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e273146273196%_)))
                                                     (_%$%hd273147273199%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e273146273196%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl273148273201%_))
                                                     (_%__kont273561273562%_
                                                      _%$%id273145273194%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g273115273153%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g273115273153%_))))))))
                         (_%$%loop273140273179%_
                          _%$%target273137273174%_
                          '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx273557273558%_))
                    (let ((_%$%e273118273237%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx273557273558%_))))
                      (let ((_%$%tl273120273242%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e273118273237%_)))
                            (_%$%hd273119273240%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e273118273237%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl273120273242%_))
                            (let ((_%$%e273121273245%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl273120273242%_))))
                              (let ((_%$%tl273123273250%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e273121273245%_)))
                                    (_%$%hd273122273248%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e273121273245%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd273122273248%_))
                                    (let ((_%$%e273124273253%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd273122273248%_))))
                                      (let ((_%$%tl273126273258%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e273124273253%_)))
                                            (_%$%hd273125273256%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e273124273253%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl273126273258%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl273123273250%_))
                                                (let ((_%$%e273127273261%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl273123273250%_))))
                                                  (let ((_%$%tl273129273266%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e273127273261%_)))
                                                        (_%$%hd273128273264%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e273127273261%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl273129273266%_))
                                                        (_%__kont273559273560%_
                                                         _%$%hd273125273256%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%$%hd273122273248%_))
                                                            (let ((_%__splice273563273564%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%$%hd273122273248%_
                              '0))))
                      (let ((_%$%tl273139273176%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice273563273564%_ '1)))
                            (_%$%target273137273174%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice273563273564%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl273139273176%_))
                            (_%__match273612273613%_
                             _%$%e273118273237%_
                             _%$%hd273119273240%_
                             _%$%tl273120273242%_
                             _%$%e273121273245%_
                             _%$%hd273122273248%_
                             _%$%tl273123273250%_
                             _%__splice273563273564%_
                             _%$%target273137273174%_
                             _%$%tl273139273176%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g273115273153%_)))))
                    (let () (declare (not safe)) (_%$%g273115273153%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%$%hd273122273248%_))
                                                    (let ((_%__splice273563273564%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%$%hd273122273248%_
                                                              '0))))
                                                      (let ((_%$%tl273139273176%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice273563273564%_ '1)))
                    (_%$%target273137273174%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice273563273564%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl273139273176%_))
                    (_%__match273612273613%_
                     _%$%e273118273237%_
                     _%$%hd273119273240%_
                     _%$%tl273120273242%_
                     _%$%e273121273245%_
                     _%$%hd273122273248%_
                     _%$%tl273123273250%_
                     _%__splice273563273564%_
                     _%$%target273137273174%_
                     _%$%tl273139273176%_)
                    (let () (declare (not safe)) (_%$%g273115273153%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g273115273153%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%$%hd273122273248%_))
                                                (let ((_%__splice273563273564%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd273122273248%_
                                                          '0))))
                                                  (let ((_%$%tl273139273176%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice273563273564%_
                                                            '1)))
                                                        (_%$%target273137273174%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice273563273564%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl273139273176%_))
                                                        (_%__match273612273613%_
                                                         _%$%e273118273237%_
                                                         _%$%hd273119273240%_
                                                         _%$%tl273120273242%_
                                                         _%$%e273121273245%_
                                                         _%$%hd273122273248%_
                                                         _%$%tl273123273250%_
                                                         _%__splice273563273564%_
                                                         _%$%target273137273174%_
                                                         _%$%tl273139273176%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g273115273153%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g273115273153%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%hd273122273248%_))
                                        (let ((_%__splice273563273564%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd273122273248%_
                                                  '0))))
                                          (let ((_%$%tl273139273176%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice273563273564%_
                                                    '1)))
                                                (_%$%target273137273174%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice273563273564%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl273139273176%_))
                                                (_%__match273612273613%_
                                                 _%$%e273118273237%_
                                                 _%$%hd273119273240%_
                                                 _%$%tl273120273242%_
                                                 _%$%e273121273245%_
                                                 _%$%hd273122273248%_
                                                 _%$%tl273123273250%_
                                                 _%__splice273563273564%_
                                                 _%$%target273137273174%_
                                                 _%$%tl273139273176%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g273115273153%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g273115273153%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g273115273153%_)))))
                    (let () (declare (not safe)) (_%$%g273115273153%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self272662%_ _%stx272663%_)
        (let* ((_%__stx273615273616%_ _%stx272663%_)
               (_%$%g272667272769%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx273615273616%_)))))
          (let ((_%__kont273617273618%_
                 (lambda (_%$%g272669273059%_
                          _%$%g272670273060%_
                          _%$%g272671273061%_
                          _%$%g272672273062%_
                          _%$%g272673273063%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g272672273062%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g272671273061%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g272670273060%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%g272669273059%_))
                                                 '())))))))
                (_%__kont273619273620%_
                 (lambda (_%$%g272722272885%_
                          _%$%g272723272886%_
                          _%$%g272724272887%_
                          _%$%g272725272888%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g272724272887%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g272723272886%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g272722272885%_))
                                           (cons '#f '())))))))
                (_%__kont273621273622%_ (lambda () '(begin))))
            (let ((_%__match273750273751%_
                   (lambda (_%$%e272674272931%_
                            _%$%hd272675272934%_
                            _%$%tl272676272936%_
                            _%$%e272677272939%_
                            _%$%hd272678272942%_
                            _%$%tl272679272944%_
                            _%$%e272680272947%_
                            _%$%hd272681272950%_
                            _%$%tl272682272952%_
                            _%$%e272683272955%_
                            _%$%hd272684272958%_
                            _%$%tl272685272960%_
                            _%$%e272686272963%_
                            _%$%hd272687272966%_
                            _%$%tl272688272968%_
                            _%$%e272689272971%_
                            _%$%hd272690272974%_
                            _%$%tl272691272976%_
                            _%$%e272692272979%_
                            _%$%hd272693272982%_
                            _%$%tl272694272984%_
                            _%$%e272695272987%_
                            _%$%hd272696272990%_
                            _%$%tl272697272992%_
                            _%$%e272698272995%_
                            _%$%hd272699272998%_
                            _%$%tl272700273000%_
                            _%$%e272701273003%_
                            _%$%hd272702273006%_
                            _%$%tl272703273008%_
                            _%$%e272704273011%_
                            _%$%hd272705273014%_
                            _%$%tl272706273016%_
                            _%$%e272707273019%_
                            _%$%hd272708273022%_
                            _%$%tl272709273024%_
                            _%$%e272710273027%_
                            _%$%hd272711273030%_
                            _%$%tl272712273032%_
                            _%$%e272713273035%_
                            _%$%hd272714273038%_
                            _%$%tl272715273040%_
                            _%$%e272716273043%_
                            _%$%hd272717273046%_
                            _%$%tl272718273048%_
                            _%$%e272719273051%_
                            _%$%hd272720273054%_
                            _%$%tl272721273056%_)
                     (let ((_%$%g272669273059%_ _%$%hd272720273054%_)
                           (_%$%g272670273060%_ _%$%hd272711273030%_)
                           (_%$%g272671273061%_ _%$%hd272702273006%_)
                           (_%$%g272672273062%_ _%$%hd272693272982%_)
                           (_%$%g272673273063%_ _%$%hd272684272958%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%$%g272673273063%_
                              'bind-method!))
                           (_%__kont273617273618%_
                            _%$%g272669273059%_
                            _%$%g272670273060%_
                            _%$%g272671273061%_
                            _%$%g272672273062%_
                            _%$%g272673273063%_)
                           (_%__kont273621273622%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx273615273616%_))
                  (let ((_%$%e272674272931%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx273615273616%_))))
                    (let ((_%$%tl272676272936%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e272674272931%_)))
                          (_%$%hd272675272934%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e272674272931%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl272676272936%_))
                          (let ((_%$%e272677272939%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl272676272936%_))))
                            (let ((_%$%tl272679272944%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e272677272939%_)))
                                  (_%$%hd272678272942%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e272677272939%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd272678272942%_))
                                  (let ((_%$%e272680272947%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd272678272942%_))))
                                    (let ((_%$%tl272682272952%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e272680272947%_)))
                                          (_%$%hd272681272950%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e272680272947%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd272681272950%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd272681272950%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl272682272952%_))
                                                  (let ((_%$%e272683272955%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl272682272952%_))))
                                                    (let ((_%$%tl272685272960%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e272683272955%_)))
                                                          (_%$%hd272684272958%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e272683272955%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl272685272960%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl272679272944%_))
                      (let ((_%$%e272686272963%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl272679272944%_))))
                        (let ((_%$%tl272688272968%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272686272963%_)))
                              (_%$%hd272687272966%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272686272963%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd272687272966%_))
                              (let ((_%$%e272689272971%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd272687272966%_))))
                                (let ((_%$%tl272691272976%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272689272971%_)))
                                      (_%$%hd272690272974%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272689272971%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd272690272974%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd272690272974%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl272691272976%_))
                                              (let ((_%$%e272692272979%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl272691272976%_))))
                                                (let ((_%$%tl272694272984%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e272692272979%_)))
                                                      (_%$%hd272693272982%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e272692272979%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl272694272984%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl272688272968%_))
                                                          (let ((_%$%e272695272987%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl272688272968%_))))
                    (let ((_%$%tl272697272992%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e272695272987%_)))
                          (_%$%hd272696272990%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e272695272987%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd272696272990%_))
                          (let ((_%$%e272698272995%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd272696272990%_))))
                            (let ((_%$%tl272700273000%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e272698272995%_)))
                                  (_%$%hd272699272998%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e272698272995%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd272699272998%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd272699272998%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl272700273000%_))
                                          (let ((_%$%e272701273003%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl272700273000%_))))
                                            (let ((_%$%tl272703273008%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e272701273003%_)))
                                                  (_%$%hd272702273006%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e272701273003%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl272703273008%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl272697272992%_))
                                                      (let ((_%$%e272704273011%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl272697272992%_))))
                (let ((_%$%tl272706273016%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e272704273011%_)))
                      (_%$%hd272705273014%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e272704273011%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd272705273014%_))
                      (let ((_%$%e272707273019%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd272705273014%_))))
                        (let ((_%$%tl272709273024%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272707273019%_)))
                              (_%$%hd272708273022%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272707273019%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd272708273022%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd272708273022%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl272709273024%_))
                                      (let ((_%$%e272710273027%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl272709273024%_))))
                                        (let ((_%$%tl272712273032%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e272710273027%_)))
                                              (_%$%hd272711273030%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e272710273027%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl272712273032%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl272706273016%_))
                                                  (let ((_%$%e272713273035%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl272706273016%_))))
                                                    (let ((_%$%tl272715273040%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e272713273035%_)))
                                                          (_%$%hd272714273038%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e272713273035%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd272714273038%_))
                                                          (let ((_%$%e272716273043%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd272714273038%_))))
                    (let ((_%$%tl272718273048%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e272716273043%_)))
                          (_%$%hd272717273046%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e272716273043%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd272717273046%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd272717273046%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl272718273048%_))
                                  (let ((_%$%e272719273051%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl272718273048%_))))
                                    (let ((_%$%tl272721273056%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e272719273051%_)))
                                          (_%$%hd272720273054%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e272719273051%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl272721273056%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl272715273040%_))
                                              (_%__match273750273751%_
                                               _%$%e272674272931%_
                                               _%$%hd272675272934%_
                                               _%$%tl272676272936%_
                                               _%$%e272677272939%_
                                               _%$%hd272678272942%_
                                               _%$%tl272679272944%_
                                               _%$%e272680272947%_
                                               _%$%hd272681272950%_
                                               _%$%tl272682272952%_
                                               _%$%e272683272955%_
                                               _%$%hd272684272958%_
                                               _%$%tl272685272960%_
                                               _%$%e272686272963%_
                                               _%$%hd272687272966%_
                                               _%$%tl272688272968%_
                                               _%$%e272689272971%_
                                               _%$%hd272690272974%_
                                               _%$%tl272691272976%_
                                               _%$%e272692272979%_
                                               _%$%hd272693272982%_
                                               _%$%tl272694272984%_
                                               _%$%e272695272987%_
                                               _%$%hd272696272990%_
                                               _%$%tl272697272992%_
                                               _%$%e272698272995%_
                                               _%$%hd272699272998%_
                                               _%$%tl272700273000%_
                                               _%$%e272701273003%_
                                               _%$%hd272702273006%_
                                               _%$%tl272703273008%_
                                               _%$%e272704273011%_
                                               _%$%hd272705273014%_
                                               _%$%tl272706273016%_
                                               _%$%e272707273019%_
                                               _%$%hd272708273022%_
                                               _%$%tl272709273024%_
                                               _%$%e272710273027%_
                                               _%$%hd272711273030%_
                                               _%$%tl272712273032%_
                                               _%$%e272713273035%_
                                               _%$%hd272714273038%_
                                               _%$%tl272715273040%_
                                               _%$%e272716273043%_
                                               _%$%hd272717273046%_
                                               _%$%tl272718273048%_
                                               _%$%e272719273051%_
                                               _%$%hd272720273054%_
                                               _%$%tl272721273056%_)
                                              (_%__kont273621273622%_))
                                          (_%__kont273621273622%_))))
                                  (_%__kont273621273622%_))
                              (_%__kont273621273622%_))
                          (_%__kont273621273622%_))))
                  (_%__kont273621273622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl272706273016%_))
                                                      (if (let ((__tmp273973
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp273973 'bind-method!))
                  (let ((_%$%g272722272885%_ _%$%hd272711273030%_)
                        (_%$%g272723272886%_ _%$%hd272702273006%_)
                        (_%$%g272724272887%_ _%$%hd272693272982%_)
                        (_%$%g272725272888%_ _%$%hd272684272958%_))
                    (_%__kont273619273620%_
                     _%$%g272722272885%_
                     _%$%g272723272886%_
                     _%$%g272724272887%_
                     _%$%g272725272888%_))
                  (_%__kont273621273622%_))
              (_%__kont273621273622%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont273621273622%_))))
                                      (_%__kont273621273622%_))
                                  (_%__kont273621273622%_))
                              (_%__kont273621273622%_))))
                      (_%__kont273621273622%_))))
              (_%__kont273621273622%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont273621273622%_))))
                                          (_%__kont273621273622%_))
                                      (_%__kont273621273622%_))
                                  (_%__kont273621273622%_))))
                          (_%__kont273621273622%_))))
                  (_%__kont273621273622%_))
              (_%__kont273621273622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont273621273622%_))
                                          (_%__kont273621273622%_))
                                      (_%__kont273621273622%_))))
                              (_%__kont273621273622%_))))
                      (_%__kont273621273622%_))
                  (_%__kont273621273622%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont273621273622%_))
                                              (_%__kont273621273622%_))
                                          (_%__kont273621273622%_))))
                                  (_%__kont273621273622%_))))
                          (_%__kont273621273622%_))))
                  (_%__kont273621273622%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self272486%_ _%stx272487%_)
        (let* ((_%__stx273859273860%_ _%stx272487%_)
               (_%$%g272490272530%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx273859273860%_)))))
          (let ((_%__kont273861273862%_
                 (lambda (_%$%g272492272636%_ _%$%g272493272637%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g272493272637%_))
                               (cons _%$%g272492272636%_ '())))))
                (_%__kont273863273864%_
                 (lambda (_%$%g272515272559%_ _%$%g272516272560%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx273859273860%_))
                (let ((_%$%e272494272580%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx273859273860%_))))
                  (let ((_%$%tl272496272585%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e272494272580%_)))
                        (_%$%hd272495272583%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e272494272580%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl272496272585%_))
                        (let ((_%$%e272497272588%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl272496272585%_))))
                          (let ((_%$%tl272499272593%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e272497272588%_)))
                                (_%$%hd272498272591%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e272497272588%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd272498272591%_))
                                (let ((_%$%e272500272596%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd272498272591%_))))
                                  (let ((_%$%tl272502272601%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e272500272596%_)))
                                        (_%$%hd272501272599%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e272500272596%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd272501272599%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%$%hd272501272599%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl272502272601%_))
                                                (let ((_%$%e272503272604%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl272502272601%_))))
                                                  (let ((_%$%tl272505272609%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e272503272604%_)))
                                                        (_%$%hd272504272607%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e272503272604%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl272505272609%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl272499272593%_))
                                                            (let ((_%$%e272506272612%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl272499272593%_))))
                      (let ((_%$%tl272508272617%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e272506272612%_)))
                            (_%$%hd272507272615%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e272506272612%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd272507272615%_))
                            (let ((_%$%e272509272620%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd272507272615%_))))
                              (let ((_%$%tl272511272625%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e272509272620%_)))
                                    (_%$%hd272510272623%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e272509272620%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd272510272623%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd272510272623%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl272511272625%_))
                                            (let ((_%$%e272512272628%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl272511272625%_))))
                                              (let ((_%$%tl272514272633%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e272512272628%_)))
                                                    (_%$%hd272513272631%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e272512272628%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl272514272633%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl272508272617%_))
                                                        (_%__kont273861273862%_
                                                         _%$%hd272513272631%_
                                                         _%$%hd272504272607%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g272490272530%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl272508272617%_))
                                                        (_%__kont273863273864%_
                                                         _%$%hd272507272615%_
                                                         _%$%hd272498272591%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g272490272530%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl272508272617%_))
                                                (_%__kont273863273864%_
                                                 _%$%hd272507272615%_
                                                 _%$%hd272498272591%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g272490272530%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl272508272617%_))
                                            (_%__kont273863273864%_
                                             _%$%hd272507272615%_
                                             _%$%hd272498272591%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g272490272530%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl272508272617%_))
                                        (_%__kont273863273864%_
                                         _%$%hd272507272615%_
                                         _%$%hd272498272591%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g272490272530%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl272508272617%_))
                                (_%__kont273863273864%_
                                 _%$%hd272507272615%_
                                 _%$%hd272498272591%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g272490272530%_))))))
                    (let () (declare (not safe)) (_%$%g272490272530%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl272499272593%_))
                    (let ((_%$%e272523272551%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl272499272593%_))))
                      (let ((_%$%tl272525272556%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e272523272551%_)))
                            (_%$%hd272524272554%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e272523272551%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl272525272556%_))
                            (_%__kont273863273864%_
                             _%$%hd272524272554%_
                             _%$%hd272498272591%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g272490272530%_)))))
                    (let () (declare (not safe)) (_%$%g272490272530%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl272499272593%_))
                                                    (let ((_%$%e272523272551%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl272499272593%_))))
                                                      (let ((_%$%tl272525272556%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e272523272551%_)))
                    (_%$%hd272524272554%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e272523272551%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl272525272556%_))
                    (_%__kont273863273864%_
                     _%$%hd272524272554%_
                     _%$%hd272498272591%_)
                    (let () (declare (not safe)) (_%$%g272490272530%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g272490272530%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl272499272593%_))
                                                (let ((_%$%e272523272551%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl272499272593%_))))
                                                  (let ((_%$%tl272525272556%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e272523272551%_)))
                                                        (_%$%hd272524272554%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e272523272551%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl272525272556%_))
                                                        (_%__kont273863273864%_
                                                         _%$%hd272524272554%_
                                                         _%$%hd272498272591%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g272490272530%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g272490272530%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl272499272593%_))
                                            (let ((_%$%e272523272551%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl272499272593%_))))
                                              (let ((_%$%tl272525272556%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e272523272551%_)))
                                                    (_%$%hd272524272554%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e272523272551%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl272525272556%_))
                                                    (_%__kont273863273864%_
                                                     _%$%hd272524272554%_
                                                     _%$%hd272498272591%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g272490272530%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g272490272530%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl272499272593%_))
                                    (let ((_%$%e272523272551%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl272499272593%_))))
                                      (let ((_%$%tl272525272556%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e272523272551%_)))
                                            (_%$%hd272524272554%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e272523272551%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl272525272556%_))
                                            (_%__kont273863273864%_
                                             _%$%hd272524272554%_
                                             _%$%hd272498272591%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g272490272530%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g272490272530%_))))))
                        (let () (declare (not safe)) (_%$%g272490272530%_)))))
                (let () (declare (not safe)) (_%$%g272490272530%_)))))))
    (define gxc#!nullable-type::typedecl
      (lambda (_%self272473%_)
        (let ((_%self272476%_ _%self272473%_))
          (list 'optimizer-resolve-type-expression
                ''typedecl
                (list 'quote
                      (let ()
                        (declare (not safe))
                        (gxc#optimizer-type-expression _%self272476%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!nullable-type::t
       'typedecl
       gxc#!nullable-type::typedecl
       '#f))
    (define gxc#!alias::typedecl
      (lambda (_%self272338%_)
        (let ((_%self272341%_ _%self272338%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self272341%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self272112%_)
        (let* ((_%self272115%_ _%self272112%_)
               (_%$%self272124272140%_ _%self272115%_)
               (_%$%E272126272143%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self272124272140%_
                           '((!class id
                                     super
                                     precendence-list
                                     slots
                                     fields
                                     constructor
                                     struct?
                                     final?
                                     system?
                                     metaclass
                                     methods))))
                  '#!void))
               (_%$%K272127272158%_
                (lambda (_%methods272146%_
                         _%metaclass272147%_
                         _%system?272148%_
                         _%final?272149%_
                         _%struct?272150%_
                         _%constructor272151%_
                         _%fields272152%_
                         _%slots272153%_
                         _%precendence-list272154%_
                         _%super272155%_
                         _%id272156%_)
                  (cons '@class
                        (cons _%id272156%_
                              (cons _%super272155%_
                                    (cons _%precendence-list272154%_
                                          (cons _%slots272153%_
                                                (cons _%fields272152%_
                                                      (cons _%constructor272151%_
                                                            (cons _%struct?272150%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?272149%_
                                (cons _%system?272148%_
                                      (cons _%metaclass272147%_
                                            (cons (if _%methods272146%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods272146%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%$%e272128272161%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272124272140%_
                   '1
                   '#f
                   '#f)))
               (_%id272164%_ _%$%e272128272161%_)
               (_%$%e272129272166%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272124272140%_
                   '2
                   '#f
                   '#f)))
               (_%super272169%_ _%$%e272129272166%_)
               (_%$%e272130272171%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272124272140%_
                   '3
                   '#f
                   '#f)))
               (_%precendence-list272174%_ _%$%e272130272171%_)
               (_%$%e272131272176%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272124272140%_
                   '4
                   '#f
                   '#f)))
               (_%slots272179%_ _%$%e272131272176%_)
               (_%$%e272132272181%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272124272140%_
                   '5
                   '#f
                   '#f)))
               (_%fields272184%_ _%$%e272132272181%_)
               (_%$%e272133272186%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272124272140%_
                   '6
                   '#f
                   '#f)))
               (_%constructor272189%_ _%$%e272133272186%_)
               (_%$%e272134272191%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272124272140%_
                   '7
                   '#f
                   '#f)))
               (_%struct?272194%_ _%$%e272134272191%_)
               (_%$%e272135272196%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272124272140%_
                   '8
                   '#f
                   '#f)))
               (_%final?272199%_ _%$%e272135272196%_)
               (_%$%e272136272201%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272124272140%_
                   '9
                   '#f
                   '#f)))
               (_%system?272204%_ _%$%e272136272201%_)
               (_%$%e272137272206%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272124272140%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass272209%_ _%$%e272137272206%_)
               (_%$%e272138272211%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272124272140%_
                   '11
                   '#f
                   '#f)))
               (_%methods272214%_ _%$%e272138272211%_))
          (_%$%K272127272158%_
           _%methods272214%_
           _%metaclass272209%_
           _%system?272204%_
           _%final?272199%_
           _%struct?272194%_
           _%constructor272189%_
           _%fields272184%_
           _%slots272179%_
           _%precendence-list272174%_
           _%super272169%_
           _%id272164%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self271977%_)
        (let ((_%self271980%_ _%self271977%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self271980%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self271842%_)
        (let ((_%self271845%_ _%self271842%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self271845%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self271707%_)
        (let ((_%self271710%_ _%self271707%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self271710%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self271710%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self271710%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!accessor::t
       'typedecl
       gxc#!accessor::typedecl
       '#f))
    (define gxc#!mutator::typedecl
      (lambda (_%self271572%_)
        (let ((_%self271575%_ _%self271572%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self271575%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self271575%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self271575%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self271437%_)
        (let ((_%self271440%_ _%self271437%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self271440%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self271440%_
                               '2
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!interface::t
       'typedecl
       gxc#!interface::typedecl
       '#f))
    (define gxc#!lambda::typedecl
      (lambda (_%self271251%_)
        (let* ((_%self271254%_ _%self271251%_)
               (_%$%self271263271272%_ _%self271254%_)
               (_%$%E271265271275%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self271263271272%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%$%K271266271294%_
                (lambda (_%dispatch271278%_
                         _%arity271279%_
                         _%signature271280%_)
                  (if _%signature271280%_
                      (let ((_%signature271282%_ _%signature271280%_))
                        (cons '@lambda
                              (cons _%arity271279%_
                                    (cons _%dispatch271278%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature271282%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature271282%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature271282%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature271282%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature271282%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity271279%_
                                  (cons _%dispatch271278%_ '()))))))
               (_%$%e271267271297%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self271263271272%_
                   '1
                   '#f
                   '#f)))
               (_%$%e271268271300%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self271263271272%_
                   '2
                   '#f
                   '#f)))
               (_%signature271303%_ _%$%e271268271300%_)
               (_%$%e271269271305%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self271263271272%_
                   '3
                   '#f
                   '#f)))
               (_%arity271308%_ _%$%e271269271305%_)
               (_%$%e271270271310%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self271263271272%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch271313%_ _%$%e271270271310%_))
          (_%$%K271266271294%_
           _%dispatch271313%_
           _%arity271308%_
           _%signature271303%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self271111%_)
        (let ((_%self271114%_ _%self271111%_))
          (letrec ((_%clause-e271125%_
                    (lambda (_%clause271127%_)
                      (cdr (let ((__method273947
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause271127%_
                                     'typedecl))))
                             (if __method273947
                                 (let ()
                                   (declare (not safe))
                                   (__method273947 _%clause271127%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause271127%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e271125%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self271114%_
                          '3
                          '#f
                          '#f))))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!case-lambda::t
       'typedecl
       gxc#!case-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda::typedecl
      (lambda (_%self270976%_)
        (let ((_%self270979%_ _%self270976%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self270979%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self270979%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda::t
       'typedecl
       gxc#!kw-lambda::typedecl
       '#f))
    (define gxc#!kw-lambda-primary::typedecl
      (lambda (_%self270841%_)
        (let ((_%self270844%_ _%self270841%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self270844%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self270844%_
                               '4
                               '#f
                               '#f))
                            '()))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!kw-lambda-primary::t
       'typedecl
       gxc#!kw-lambda-primary::typedecl
       '#f))
    (define gxc#!primitive-predicate::typedecl
      (lambda (_%self270706%_)
        (let ((_%self270709%_ _%self270706%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self270709%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
