(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1789552497)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp274041
                   (let ((__obj274035
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
                       (gxc#optimizer-info:::init! __obj274035))
                     __obj274035)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp274041)))))
    (define gxc#optimize!
      (lambda (_%ctx273643%_)
        (let ((__tmp274043
               (lambda ()
                 (let ((__tmp274045
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx273643%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx273643%_)
                          (let ((__tmp274047
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp274046
                                 (##structure-ref
                                  _%ctx273643%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp274047 __tmp274046 '#t))
                          (let ((_%code273647%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx273643%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx273643%_
                             _%code273647%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp274044
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp274045
                    gxc#current-compile-local-type
                    __tmp274044))))
              (__tmp274042 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp274043
           gxc#current-compile-mutators
           __tmp274042))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx273629%_)
        (letrec ((_%load-it!273631%_
                  (lambda (_%id273641%_)
                    (if (let ((__tmp274048
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp274048 _%id273641%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id273641%_)
                          (let ((__tmp274049
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp274049 _%id273641%_ '#t)))))))
          (let* ((_%modid273633%_
                  (##structure-ref
                   _%ctx273629%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str273635%_ (symbol->string _%modid273633%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str273635%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str273635%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!273631%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!273631%_
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
      (lambda (_%ctx273566%_)
        (letrec* ((_%deps273568%_
                   (let* ((_%imports273619%_
                           (##structure-ref
                            _%ctx273566%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e273621%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx273566%_))))
                     (if _%$e273621%_
                         (cons _%$e273621%_ _%imports273619%_)
                         _%imports273619%_))))
          (let _%lp273570%_ ((_%rest273572%_ _%deps273568%_))
            (let* ((_%$%rest273573273581%_ _%rest273572%_)
                   (_%$%else273575273589%_ (lambda () '#!void))
                   (_%$%K273577273607%_
                    (lambda (_%rest273592%_ _%hd273593%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd273593%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp274051
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp274050
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd273593%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp274051 __tmp274050))
                                '#!void
                                (begin
                                  (let ((_%$e273596%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd273593%_))))
                                    (if _%$e273596%_
                                        (_%lp273570%_
                                         (cons _%$e273596%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%hd273593%_
                                                  '8
                                                  '#f
                                                  '#f))))
                                        (_%lp273570%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd273593%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd273593%_)))
                            (_%lp273570%_ _%rest273592%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd273593%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp274053
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp274052
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd273593%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp274053 __tmp274052))
                                    '#!void
                                    (begin
                                      (_%lp273570%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd273593%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd273593%_)))
                                (_%lp273570%_ _%rest273592%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd273593%_
                                     'gx#module-import::t))
                                  (_%lp273570%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd273593%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest273592%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd273593%_
                                         'gx#module-export::t))
                                      (_%lp273570%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd273593%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest273592%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd273593%_
                                             'gx#import-set::t))
                                          (_%lp273570%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd273593%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest273592%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd273593%_))))))))))
              (if (pair? _%$%rest273573273581%_)
                  (let ((_%$%hd273578273610%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest273573273581%_)))
                        (_%$%tl273579273612%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest273573273581%_))))
                    (let* ((_%hd273615%_ _%$%hd273578273610%_)
                           (_%rest273617%_ _%$%tl273579273612%_))
                      (_%$%K273577273607%_ _%rest273617%_ _%hd273615%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx273546%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx273546%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx273546%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht273548%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id273550%_
                    (##structure-ref
                     _%ctx273546%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod273552%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht273548%_ _%id273550%_)))
                   (_%$e273555%_ _%mod273552%_))
              (if _%$e273555%_
                  _%$e273555%_
                  (let* ((_%mod273558%_
                          (gxc#optimizer-import-ssxi _%ctx273546%_))
                         (_%val273563%_
                          (let ((_%$e273560%_ _%mod273558%_))
                            (if _%$e273560%_ _%$e273560%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht273548%_ _%id273550%_ _%val273563%_))
                    _%val273563%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx273544%_)
        (if (##structure-ref _%ctx273544%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx273544%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id273522%_)
        (letrec ((_%catch-e273524%_
                  (lambda (_%exn273542%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn273542%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn273542%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id273522%_))))
                    '#f))
                 (_%import-e273525%_
                  (lambda ()
                    (let* ((_%str-id273528%_
                            (let ((__tmp274054
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id273522%_))))
                              (declare (not safe))
                              (##string-append __tmp274054 '".ssxi")))
                           (_%artefact-path273535%_
                            (let ((_%$%odir273529273531%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%$%odir273529273531%_
                                  (let ((_%odir273533%_
                                         _%$%odir273529273531%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id273528%_
                                        '".ss"))
                                     _%odir273533%_))
                                  '#f)))
                           (_%library-path273537%_
                            (let ((__tmp274055
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id273528%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp274055)))
                           (_%ssxi-path273539%_
                            (if (and _%artefact-path273535%_
                                     (let ()
                                       (declare (not safe))
                                       (##file-exists?
                                        _%artefact-path273535%_)))
                                _%artefact-path273535%_
                                _%library-path273537%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path273539%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path273539%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e273524%_ _%import-e273525%_)))))
    (define gxc#optimize-source
      (lambda (_%stx273507%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx273507%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx273507%_))
        (let* ((_%stx273509%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx273507%_)))
               (_%stx273511%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx273509%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx273511%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx273511%_))
          (let _%fixpoint273514%_ ((_%current273516%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx273511%_))
            (let ((_%refined273518%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current273516%_ _%refined273518%_)
                  '#!void
                  (_%fixpoint273514%_ _%refined273518%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx273511%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx273511%_))
          (let ((_%stx273520%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx273511%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx273520%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp274057 (list gxc#::generate-runtime-empty::t))
            (__tmp274056 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp274057
         '()
         __tmp274056
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args273504%_
        (apply make-instance gxc#::generate-ssxi::t _%$args273504%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp274058
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
        (__make-atomic-promise __tmp274058)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx273496%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self273499%_
                (let ((__obj274037
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj274037))
               (__tmp274059
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self273499%_ _%stx273496%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp274059
           gxc#current-compile-method
           _%self273499%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self273456%_ _%stx273457%_)
        (let* ((_%$%g273459273469%_
                (lambda (_%$%g273460273466%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g273460273466%_))))
               (_%$%g273458273493%_
                (lambda (_%$%g273460273472%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g273460273472%_))
                      (let ((_%$%e273462273474%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g273460273472%_))))
                        (let ((_%$%hd273463273477%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e273462273474%_)))
                              (_%$%tl273464273479%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e273462273474%_))))
                          (let ((__tmp274062
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#generate-runtime-begin%
                                      _%self273456%_
                                      _%stx273457%_))))
                                (__tmp274060
                                 (let ((__tmp274061
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp274061 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp274062
                             gx#current-expander-phi
                             __tmp274060))))
                      (_%$%g273459273469%_ _%$%g273460273472%_)))))
          (_%$%g273458273493%_ _%stx273457%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self273395%_ _%stx273396%_)
        (let* ((_%$%g273398273412%_
                (lambda (_%$%g273399273409%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g273399273409%_))))
               (_%$%g273397273453%_
                (lambda (_%$%g273399273415%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g273399273415%_))
                      (let ((_%$%e273402273417%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g273399273415%_))))
                        (let ((_%$%hd273403273420%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e273402273417%_)))
                              (_%$%tl273404273422%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e273402273417%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl273404273422%_))
                              (let ((_%$%e273405273425%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl273404273422%_))))
                                (let ((_%$%hd273406273428%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e273405273425%_)))
                                      (_%$%tl273407273430%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e273405273425%_))))
                                  (let* ((_%ctx273447%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd273406273428%_)))
                                         (_%code273449%_
                                          (##structure-ref
                                           _%ctx273447%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp274063
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self273395%_
                                               _%code273449%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp274063
                                     gx#current-expander-context
                                     _%ctx273447%_))))
                              (_%$%g273398273412%_ _%$%g273399273415%_))))
                      (_%$%g273398273412%_ _%$%g273399273415%_)))))
          (_%$%g273397273453%_ _%stx273396%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self273202%_ _%stx273203%_)
        (letrec ((_%generate-e273205%_
                  (lambda (_%id273380%_)
                    (let* ((_%sym273382%_
                            (if (let ((__tmp274064
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp274064))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id273380%_))
                                '#f))
                           (_%$e273384%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym273382%_))))
                      (if _%$e273384%_
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"generate class decl"
                               _%sym273382%_))
                            (cons 'begin
                                  (cons (cons 'declare-class
                                              (cons _%sym273382%_
                                                    (cons (let ((__method274039
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__method-ref _%$e273384%_ 'typedecl))))
                    (if __method274039
                        (let ()
                          (declare (not safe))
                          (__method274039 _%$e273384%_))
                        (begin
                          (let ()
                            (declare (not safe))
                            (error '"Missing method" _%$e273384%_ 'typedecl))
                          '#!void)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons 'declare-type
                                                    (cons _%sym273382%_
                                                          (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (list 'quote
                                          (list 'typedecl _%sym273382%_))
                                    '('class::t)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          (let ((_%$e273389%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym273382%_))))
                            (if _%$e273389%_
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate typedecl "
                                     _%sym273382%_
                                     '" "
                                     _%$e273389%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%$e273389%_
                                         'gxc#!class::t))
                                      (cons 'declare-type
                                            (cons _%sym273382%_
                                                  (cons (list 'optimizer-resolve-class
                                                              (list 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (list 'typedecl _%sym273382%_))
                      (list 'quote
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class-name _%$e273389%_))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons 'declare-type
                                            (cons _%sym273382%_
                                                  (cons (let ((__method274038
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__method-ref _%$e273389%_ 'typedecl))))
                  (if __method274038
                      (let ()
                        (declare (not safe))
                        (__method274038 _%$e273389%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method" _%$e273389%_ 'typedecl))
                        '#!void)))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '(begin))))))))
          (let* ((_%__stx273650273651%_ _%stx273203%_)
                 (_%$%g273208273246%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx273650273651%_)))))
            (let ((_%__kont273652273653%_
                   (lambda (_%$%g273210273362%_)
                     (_%generate-e273205%_ _%$%g273210273362%_)))
                  (_%__kont273654273655%_
                   (lambda (_%$%g273223273297%_)
                     (let ((_%types273323%_
                            (map _%generate-e273205%_
                                 (let ((__tmp274065
                                        (lambda (_%$%g273315273318%_
                                                 _%$%g273316273320%_)
                                          (cons _%$%g273315273318%_
                                                _%$%g273316273320%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp274065
                                    '()
                                    _%$%g273223273297%_)))))
                       (cons 'begin _%types273323%_)))))
              (let ((_%__match273705273706%_
                     (lambda (_%$%e273224273251%_
                              _%$%hd273225273254%_
                              _%$%tl273226273256%_
                              _%$%e273227273259%_
                              _%$%hd273228273262%_
                              _%$%tl273229273264%_
                              _%__splice273656273657%_
                              _%$%target273230273267%_
                              _%$%tl273232273269%_)
                       (letrec ((_%$%loop273233273272%_
                                 (lambda (_%$%hd273231273275%_
                                          _%$%id273237273277%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd273231273275%_))
                                       (let ((_%$%e273234273279%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd273231273275%_))))
                                         (let ((_%$%lp-tl273236273284%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e273234273279%_)))
                                               (_%$%lp-hd273235273282%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e273234273279%_))))
                                           (_%$%loop273233273272%_
                                            _%$%lp-tl273236273284%_
                                            (cons _%$%lp-hd273235273282%_
                                                  _%$%id273237273277%_))))
                                       (let ((_%$%id273238273287%_
                                              (reverse _%$%id273237273277%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl273229273264%_))
                                             (let ((_%$%e273239273289%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl273229273264%_))))
                                               (let ((_%$%tl273241273294%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e273239273289%_)))
                                                     (_%$%hd273240273292%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e273239273289%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl273241273294%_))
                                                     (_%__kont273654273655%_
                                                      _%$%id273238273287%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g273208273246%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g273208273246%_))))))))
                         (_%$%loop273233273272%_
                          _%$%target273230273267%_
                          '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx273650273651%_))
                    (let ((_%$%e273211273330%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx273650273651%_))))
                      (let ((_%$%tl273213273335%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e273211273330%_)))
                            (_%$%hd273212273333%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e273211273330%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl273213273335%_))
                            (let ((_%$%e273214273338%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl273213273335%_))))
                              (let ((_%$%tl273216273343%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e273214273338%_)))
                                    (_%$%hd273215273341%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e273214273338%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd273215273341%_))
                                    (let ((_%$%e273217273346%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd273215273341%_))))
                                      (let ((_%$%tl273219273351%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e273217273346%_)))
                                            (_%$%hd273218273349%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e273217273346%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl273219273351%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl273216273343%_))
                                                (let ((_%$%e273220273354%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl273216273343%_))))
                                                  (let ((_%$%tl273222273359%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e273220273354%_)))
                                                        (_%$%hd273221273357%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e273220273354%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl273222273359%_))
                                                        (_%__kont273652273653%_
                                                         _%$%hd273218273349%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%$%hd273215273341%_))
                                                            (let ((_%__splice273656273657%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%$%hd273215273341%_
                              '0))))
                      (let ((_%$%tl273232273269%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice273656273657%_ '1)))
                            (_%$%target273230273267%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice273656273657%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl273232273269%_))
                            (_%__match273705273706%_
                             _%$%e273211273330%_
                             _%$%hd273212273333%_
                             _%$%tl273213273335%_
                             _%$%e273214273338%_
                             _%$%hd273215273341%_
                             _%$%tl273216273343%_
                             _%__splice273656273657%_
                             _%$%target273230273267%_
                             _%$%tl273232273269%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g273208273246%_)))))
                    (let () (declare (not safe)) (_%$%g273208273246%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%$%hd273215273341%_))
                                                    (let ((_%__splice273656273657%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%$%hd273215273341%_
                                                              '0))))
                                                      (let ((_%$%tl273232273269%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice273656273657%_ '1)))
                    (_%$%target273230273267%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice273656273657%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl273232273269%_))
                    (_%__match273705273706%_
                     _%$%e273211273330%_
                     _%$%hd273212273333%_
                     _%$%tl273213273335%_
                     _%$%e273214273338%_
                     _%$%hd273215273341%_
                     _%$%tl273216273343%_
                     _%__splice273656273657%_
                     _%$%target273230273267%_
                     _%$%tl273232273269%_)
                    (let () (declare (not safe)) (_%$%g273208273246%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g273208273246%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%$%hd273215273341%_))
                                                (let ((_%__splice273656273657%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd273215273341%_
                                                          '0))))
                                                  (let ((_%$%tl273232273269%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice273656273657%_
                                                            '1)))
                                                        (_%$%target273230273267%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice273656273657%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl273232273269%_))
                                                        (_%__match273705273706%_
                                                         _%$%e273211273330%_
                                                         _%$%hd273212273333%_
                                                         _%$%tl273213273335%_
                                                         _%$%e273214273338%_
                                                         _%$%hd273215273341%_
                                                         _%$%tl273216273343%_
                                                         _%__splice273656273657%_
                                                         _%$%target273230273267%_
                                                         _%$%tl273232273269%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g273208273246%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g273208273246%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%hd273215273341%_))
                                        (let ((_%__splice273656273657%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd273215273341%_
                                                  '0))))
                                          (let ((_%$%tl273232273269%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice273656273657%_
                                                    '1)))
                                                (_%$%target273230273267%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice273656273657%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl273232273269%_))
                                                (_%__match273705273706%_
                                                 _%$%e273211273330%_
                                                 _%$%hd273212273333%_
                                                 _%$%tl273213273335%_
                                                 _%$%e273214273338%_
                                                 _%$%hd273215273341%_
                                                 _%$%tl273216273343%_
                                                 _%__splice273656273657%_
                                                 _%$%target273230273267%_
                                                 _%$%tl273232273269%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g273208273246%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g273208273246%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g273208273246%_)))))
                    (let () (declare (not safe)) (_%$%g273208273246%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self272755%_ _%stx272756%_)
        (let* ((_%__stx273708273709%_ _%stx272756%_)
               (_%$%g272760272862%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx273708273709%_)))))
          (let ((_%__kont273710273711%_
                 (lambda (_%$%g272762273152%_
                          _%$%g272763273153%_
                          _%$%g272764273154%_
                          _%$%g272765273155%_
                          _%$%g272766273156%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g272765273155%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g272764273154%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g272763273153%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%g272762273152%_))
                                                 '())))))))
                (_%__kont273712273713%_
                 (lambda (_%$%g272815272978%_
                          _%$%g272816272979%_
                          _%$%g272817272980%_
                          _%$%g272818272981%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g272817272980%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g272816272979%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g272815272978%_))
                                           (cons '#f '())))))))
                (_%__kont273714273715%_ (lambda () '(begin))))
            (let ((_%__match273843273844%_
                   (lambda (_%$%e272767273024%_
                            _%$%hd272768273027%_
                            _%$%tl272769273029%_
                            _%$%e272770273032%_
                            _%$%hd272771273035%_
                            _%$%tl272772273037%_
                            _%$%e272773273040%_
                            _%$%hd272774273043%_
                            _%$%tl272775273045%_
                            _%$%e272776273048%_
                            _%$%hd272777273051%_
                            _%$%tl272778273053%_
                            _%$%e272779273056%_
                            _%$%hd272780273059%_
                            _%$%tl272781273061%_
                            _%$%e272782273064%_
                            _%$%hd272783273067%_
                            _%$%tl272784273069%_
                            _%$%e272785273072%_
                            _%$%hd272786273075%_
                            _%$%tl272787273077%_
                            _%$%e272788273080%_
                            _%$%hd272789273083%_
                            _%$%tl272790273085%_
                            _%$%e272791273088%_
                            _%$%hd272792273091%_
                            _%$%tl272793273093%_
                            _%$%e272794273096%_
                            _%$%hd272795273099%_
                            _%$%tl272796273101%_
                            _%$%e272797273104%_
                            _%$%hd272798273107%_
                            _%$%tl272799273109%_
                            _%$%e272800273112%_
                            _%$%hd272801273115%_
                            _%$%tl272802273117%_
                            _%$%e272803273120%_
                            _%$%hd272804273123%_
                            _%$%tl272805273125%_
                            _%$%e272806273128%_
                            _%$%hd272807273131%_
                            _%$%tl272808273133%_
                            _%$%e272809273136%_
                            _%$%hd272810273139%_
                            _%$%tl272811273141%_
                            _%$%e272812273144%_
                            _%$%hd272813273147%_
                            _%$%tl272814273149%_)
                     (let ((_%$%g272762273152%_ _%$%hd272813273147%_)
                           (_%$%g272763273153%_ _%$%hd272804273123%_)
                           (_%$%g272764273154%_ _%$%hd272795273099%_)
                           (_%$%g272765273155%_ _%$%hd272786273075%_)
                           (_%$%g272766273156%_ _%$%hd272777273051%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%$%g272766273156%_
                              'bind-method!))
                           (_%__kont273710273711%_
                            _%$%g272762273152%_
                            _%$%g272763273153%_
                            _%$%g272764273154%_
                            _%$%g272765273155%_
                            _%$%g272766273156%_)
                           (_%__kont273714273715%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx273708273709%_))
                  (let ((_%$%e272767273024%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx273708273709%_))))
                    (let ((_%$%tl272769273029%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e272767273024%_)))
                          (_%$%hd272768273027%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e272767273024%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl272769273029%_))
                          (let ((_%$%e272770273032%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl272769273029%_))))
                            (let ((_%$%tl272772273037%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e272770273032%_)))
                                  (_%$%hd272771273035%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e272770273032%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd272771273035%_))
                                  (let ((_%$%e272773273040%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd272771273035%_))))
                                    (let ((_%$%tl272775273045%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e272773273040%_)))
                                          (_%$%hd272774273043%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e272773273040%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd272774273043%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd272774273043%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl272775273045%_))
                                                  (let ((_%$%e272776273048%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl272775273045%_))))
                                                    (let ((_%$%tl272778273053%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e272776273048%_)))
                                                          (_%$%hd272777273051%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e272776273048%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl272778273053%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl272772273037%_))
                      (let ((_%$%e272779273056%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl272772273037%_))))
                        (let ((_%$%tl272781273061%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272779273056%_)))
                              (_%$%hd272780273059%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272779273056%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd272780273059%_))
                              (let ((_%$%e272782273064%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd272780273059%_))))
                                (let ((_%$%tl272784273069%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272782273064%_)))
                                      (_%$%hd272783273067%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272782273064%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd272783273067%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd272783273067%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl272784273069%_))
                                              (let ((_%$%e272785273072%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl272784273069%_))))
                                                (let ((_%$%tl272787273077%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e272785273072%_)))
                                                      (_%$%hd272786273075%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e272785273072%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl272787273077%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl272781273061%_))
                                                          (let ((_%$%e272788273080%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl272781273061%_))))
                    (let ((_%$%tl272790273085%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e272788273080%_)))
                          (_%$%hd272789273083%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e272788273080%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd272789273083%_))
                          (let ((_%$%e272791273088%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd272789273083%_))))
                            (let ((_%$%tl272793273093%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e272791273088%_)))
                                  (_%$%hd272792273091%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e272791273088%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd272792273091%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd272792273091%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl272793273093%_))
                                          (let ((_%$%e272794273096%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl272793273093%_))))
                                            (let ((_%$%tl272796273101%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e272794273096%_)))
                                                  (_%$%hd272795273099%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e272794273096%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl272796273101%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl272790273085%_))
                                                      (let ((_%$%e272797273104%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl272790273085%_))))
                (let ((_%$%tl272799273109%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e272797273104%_)))
                      (_%$%hd272798273107%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e272797273104%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd272798273107%_))
                      (let ((_%$%e272800273112%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd272798273107%_))))
                        (let ((_%$%tl272802273117%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272800273112%_)))
                              (_%$%hd272801273115%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272800273112%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd272801273115%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd272801273115%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl272802273117%_))
                                      (let ((_%$%e272803273120%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl272802273117%_))))
                                        (let ((_%$%tl272805273125%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e272803273120%_)))
                                              (_%$%hd272804273123%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e272803273120%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl272805273125%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl272799273109%_))
                                                  (let ((_%$%e272806273128%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl272799273109%_))))
                                                    (let ((_%$%tl272808273133%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e272806273128%_)))
                                                          (_%$%hd272807273131%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e272806273128%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd272807273131%_))
                                                          (let ((_%$%e272809273136%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd272807273131%_))))
                    (let ((_%$%tl272811273141%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e272809273136%_)))
                          (_%$%hd272810273139%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e272809273136%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd272810273139%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd272810273139%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl272811273141%_))
                                  (let ((_%$%e272812273144%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl272811273141%_))))
                                    (let ((_%$%tl272814273149%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e272812273144%_)))
                                          (_%$%hd272813273147%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e272812273144%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl272814273149%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl272808273133%_))
                                              (_%__match273843273844%_
                                               _%$%e272767273024%_
                                               _%$%hd272768273027%_
                                               _%$%tl272769273029%_
                                               _%$%e272770273032%_
                                               _%$%hd272771273035%_
                                               _%$%tl272772273037%_
                                               _%$%e272773273040%_
                                               _%$%hd272774273043%_
                                               _%$%tl272775273045%_
                                               _%$%e272776273048%_
                                               _%$%hd272777273051%_
                                               _%$%tl272778273053%_
                                               _%$%e272779273056%_
                                               _%$%hd272780273059%_
                                               _%$%tl272781273061%_
                                               _%$%e272782273064%_
                                               _%$%hd272783273067%_
                                               _%$%tl272784273069%_
                                               _%$%e272785273072%_
                                               _%$%hd272786273075%_
                                               _%$%tl272787273077%_
                                               _%$%e272788273080%_
                                               _%$%hd272789273083%_
                                               _%$%tl272790273085%_
                                               _%$%e272791273088%_
                                               _%$%hd272792273091%_
                                               _%$%tl272793273093%_
                                               _%$%e272794273096%_
                                               _%$%hd272795273099%_
                                               _%$%tl272796273101%_
                                               _%$%e272797273104%_
                                               _%$%hd272798273107%_
                                               _%$%tl272799273109%_
                                               _%$%e272800273112%_
                                               _%$%hd272801273115%_
                                               _%$%tl272802273117%_
                                               _%$%e272803273120%_
                                               _%$%hd272804273123%_
                                               _%$%tl272805273125%_
                                               _%$%e272806273128%_
                                               _%$%hd272807273131%_
                                               _%$%tl272808273133%_
                                               _%$%e272809273136%_
                                               _%$%hd272810273139%_
                                               _%$%tl272811273141%_
                                               _%$%e272812273144%_
                                               _%$%hd272813273147%_
                                               _%$%tl272814273149%_)
                                              (_%__kont273714273715%_))
                                          (_%__kont273714273715%_))))
                                  (_%__kont273714273715%_))
                              (_%__kont273714273715%_))
                          (_%__kont273714273715%_))))
                  (_%__kont273714273715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl272799273109%_))
                                                      (if (let ((__tmp274066
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp274066 'bind-method!))
                  (let ((_%$%g272815272978%_ _%$%hd272804273123%_)
                        (_%$%g272816272979%_ _%$%hd272795273099%_)
                        (_%$%g272817272980%_ _%$%hd272786273075%_)
                        (_%$%g272818272981%_ _%$%hd272777273051%_))
                    (_%__kont273712273713%_
                     _%$%g272815272978%_
                     _%$%g272816272979%_
                     _%$%g272817272980%_
                     _%$%g272818272981%_))
                  (_%__kont273714273715%_))
              (_%__kont273714273715%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont273714273715%_))))
                                      (_%__kont273714273715%_))
                                  (_%__kont273714273715%_))
                              (_%__kont273714273715%_))))
                      (_%__kont273714273715%_))))
              (_%__kont273714273715%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont273714273715%_))))
                                          (_%__kont273714273715%_))
                                      (_%__kont273714273715%_))
                                  (_%__kont273714273715%_))))
                          (_%__kont273714273715%_))))
                  (_%__kont273714273715%_))
              (_%__kont273714273715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont273714273715%_))
                                          (_%__kont273714273715%_))
                                      (_%__kont273714273715%_))))
                              (_%__kont273714273715%_))))
                      (_%__kont273714273715%_))
                  (_%__kont273714273715%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont273714273715%_))
                                              (_%__kont273714273715%_))
                                          (_%__kont273714273715%_))))
                                  (_%__kont273714273715%_))))
                          (_%__kont273714273715%_))))
                  (_%__kont273714273715%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self272579%_ _%stx272580%_)
        (let* ((_%__stx273952273953%_ _%stx272580%_)
               (_%$%g272583272623%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx273952273953%_)))))
          (let ((_%__kont273954273955%_
                 (lambda (_%$%g272585272729%_ _%$%g272586272730%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g272586272730%_))
                               (cons _%$%g272585272729%_ '())))))
                (_%__kont273956273957%_
                 (lambda (_%$%g272608272652%_ _%$%g272609272653%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx273952273953%_))
                (let ((_%$%e272587272673%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx273952273953%_))))
                  (let ((_%$%tl272589272678%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e272587272673%_)))
                        (_%$%hd272588272676%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e272587272673%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl272589272678%_))
                        (let ((_%$%e272590272681%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl272589272678%_))))
                          (let ((_%$%tl272592272686%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e272590272681%_)))
                                (_%$%hd272591272684%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e272590272681%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd272591272684%_))
                                (let ((_%$%e272593272689%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd272591272684%_))))
                                  (let ((_%$%tl272595272694%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e272593272689%_)))
                                        (_%$%hd272594272692%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e272593272689%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd272594272692%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%$%hd272594272692%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl272595272694%_))
                                                (let ((_%$%e272596272697%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl272595272694%_))))
                                                  (let ((_%$%tl272598272702%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e272596272697%_)))
                                                        (_%$%hd272597272700%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e272596272697%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl272598272702%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl272592272686%_))
                                                            (let ((_%$%e272599272705%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl272592272686%_))))
                      (let ((_%$%tl272601272710%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e272599272705%_)))
                            (_%$%hd272600272708%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e272599272705%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd272600272708%_))
                            (let ((_%$%e272602272713%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd272600272708%_))))
                              (let ((_%$%tl272604272718%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e272602272713%_)))
                                    (_%$%hd272603272716%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e272602272713%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd272603272716%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd272603272716%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl272604272718%_))
                                            (let ((_%$%e272605272721%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl272604272718%_))))
                                              (let ((_%$%tl272607272726%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e272605272721%_)))
                                                    (_%$%hd272606272724%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e272605272721%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl272607272726%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl272601272710%_))
                                                        (_%__kont273954273955%_
                                                         _%$%hd272606272724%_
                                                         _%$%hd272597272700%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g272583272623%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl272601272710%_))
                                                        (_%__kont273956273957%_
                                                         _%$%hd272600272708%_
                                                         _%$%hd272591272684%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g272583272623%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl272601272710%_))
                                                (_%__kont273956273957%_
                                                 _%$%hd272600272708%_
                                                 _%$%hd272591272684%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g272583272623%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl272601272710%_))
                                            (_%__kont273956273957%_
                                             _%$%hd272600272708%_
                                             _%$%hd272591272684%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g272583272623%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl272601272710%_))
                                        (_%__kont273956273957%_
                                         _%$%hd272600272708%_
                                         _%$%hd272591272684%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g272583272623%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl272601272710%_))
                                (_%__kont273956273957%_
                                 _%$%hd272600272708%_
                                 _%$%hd272591272684%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g272583272623%_))))))
                    (let () (declare (not safe)) (_%$%g272583272623%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl272592272686%_))
                    (let ((_%$%e272616272644%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl272592272686%_))))
                      (let ((_%$%tl272618272649%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e272616272644%_)))
                            (_%$%hd272617272647%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e272616272644%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl272618272649%_))
                            (_%__kont273956273957%_
                             _%$%hd272617272647%_
                             _%$%hd272591272684%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g272583272623%_)))))
                    (let () (declare (not safe)) (_%$%g272583272623%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl272592272686%_))
                                                    (let ((_%$%e272616272644%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl272592272686%_))))
                                                      (let ((_%$%tl272618272649%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e272616272644%_)))
                    (_%$%hd272617272647%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e272616272644%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl272618272649%_))
                    (_%__kont273956273957%_
                     _%$%hd272617272647%_
                     _%$%hd272591272684%_)
                    (let () (declare (not safe)) (_%$%g272583272623%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g272583272623%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl272592272686%_))
                                                (let ((_%$%e272616272644%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl272592272686%_))))
                                                  (let ((_%$%tl272618272649%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e272616272644%_)))
                                                        (_%$%hd272617272647%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e272616272644%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl272618272649%_))
                                                        (_%__kont273956273957%_
                                                         _%$%hd272617272647%_
                                                         _%$%hd272591272684%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g272583272623%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g272583272623%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl272592272686%_))
                                            (let ((_%$%e272616272644%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl272592272686%_))))
                                              (let ((_%$%tl272618272649%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e272616272644%_)))
                                                    (_%$%hd272617272647%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e272616272644%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl272618272649%_))
                                                    (_%__kont273956273957%_
                                                     _%$%hd272617272647%_
                                                     _%$%hd272591272684%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g272583272623%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g272583272623%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl272592272686%_))
                                    (let ((_%$%e272616272644%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl272592272686%_))))
                                      (let ((_%$%tl272618272649%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e272616272644%_)))
                                            (_%$%hd272617272647%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e272616272644%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl272618272649%_))
                                            (_%__kont273956273957%_
                                             _%$%hd272617272647%_
                                             _%$%hd272591272684%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g272583272623%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g272583272623%_))))))
                        (let () (declare (not safe)) (_%$%g272583272623%_)))))
                (let () (declare (not safe)) (_%$%g272583272623%_)))))))
    (define gxc#!nullable-type::typedecl
      (lambda (_%self272566%_)
        (let ((_%self272569%_ _%self272566%_))
          (list 'optimizer-resolve-type-expression
                ''typedecl
                (list 'quote
                      (let ()
                        (declare (not safe))
                        (gxc#optimizer-type-expression _%self272569%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!nullable-type::t
       'typedecl
       gxc#!nullable-type::typedecl
       '#f))
    (define gxc#!alias::typedecl
      (lambda (_%self272431%_)
        (let ((_%self272434%_ _%self272431%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self272434%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self272205%_)
        (let* ((_%self272208%_ _%self272205%_)
               (_%$%self272217272233%_ _%self272208%_)
               (_%$%E272219272236%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self272217272233%_
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
               (_%$%K272220272251%_
                (lambda (_%methods272239%_
                         _%metaclass272240%_
                         _%system?272241%_
                         _%final?272242%_
                         _%struct?272243%_
                         _%constructor272244%_
                         _%fields272245%_
                         _%slots272246%_
                         _%precendence-list272247%_
                         _%super272248%_
                         _%id272249%_)
                  (cons '@class
                        (cons _%id272249%_
                              (cons _%super272248%_
                                    (cons _%precendence-list272247%_
                                          (cons _%slots272246%_
                                                (cons _%fields272245%_
                                                      (cons _%constructor272244%_
                                                            (cons _%struct?272243%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?272242%_
                                (cons _%system?272241%_
                                      (cons _%metaclass272240%_
                                            (cons (if _%methods272239%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods272239%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%$%e272221272254%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272217272233%_
                   '1
                   '#f
                   '#f)))
               (_%id272257%_ _%$%e272221272254%_)
               (_%$%e272222272259%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272217272233%_
                   '2
                   '#f
                   '#f)))
               (_%super272262%_ _%$%e272222272259%_)
               (_%$%e272223272264%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272217272233%_
                   '3
                   '#f
                   '#f)))
               (_%precendence-list272267%_ _%$%e272223272264%_)
               (_%$%e272224272269%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272217272233%_
                   '4
                   '#f
                   '#f)))
               (_%slots272272%_ _%$%e272224272269%_)
               (_%$%e272225272274%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272217272233%_
                   '5
                   '#f
                   '#f)))
               (_%fields272277%_ _%$%e272225272274%_)
               (_%$%e272226272279%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272217272233%_
                   '6
                   '#f
                   '#f)))
               (_%constructor272282%_ _%$%e272226272279%_)
               (_%$%e272227272284%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272217272233%_
                   '7
                   '#f
                   '#f)))
               (_%struct?272287%_ _%$%e272227272284%_)
               (_%$%e272228272289%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272217272233%_
                   '8
                   '#f
                   '#f)))
               (_%final?272292%_ _%$%e272228272289%_)
               (_%$%e272229272294%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272217272233%_
                   '9
                   '#f
                   '#f)))
               (_%system?272297%_ _%$%e272229272294%_)
               (_%$%e272230272299%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272217272233%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass272302%_ _%$%e272230272299%_)
               (_%$%e272231272304%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272217272233%_
                   '11
                   '#f
                   '#f)))
               (_%methods272307%_ _%$%e272231272304%_))
          (_%$%K272220272251%_
           _%methods272307%_
           _%metaclass272302%_
           _%system?272297%_
           _%final?272292%_
           _%struct?272287%_
           _%constructor272282%_
           _%fields272277%_
           _%slots272272%_
           _%precendence-list272267%_
           _%super272262%_
           _%id272257%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self272070%_)
        (let ((_%self272073%_ _%self272070%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self272073%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self271935%_)
        (let ((_%self271938%_ _%self271935%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self271938%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self271800%_)
        (let ((_%self271803%_ _%self271800%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self271803%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self271803%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self271803%_
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
      (lambda (_%self271665%_)
        (let ((_%self271668%_ _%self271665%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self271668%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self271668%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self271668%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self271530%_)
        (let ((_%self271533%_ _%self271530%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self271533%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self271533%_
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
      (lambda (_%self271344%_)
        (let* ((_%self271347%_ _%self271344%_)
               (_%$%self271356271365%_ _%self271347%_)
               (_%$%E271358271368%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self271356271365%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%$%K271359271387%_
                (lambda (_%dispatch271371%_
                         _%arity271372%_
                         _%signature271373%_)
                  (if _%signature271373%_
                      (let ((_%signature271375%_ _%signature271373%_))
                        (cons '@lambda
                              (cons _%arity271372%_
                                    (cons _%dispatch271371%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature271375%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature271375%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature271375%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature271375%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature271375%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity271372%_
                                  (cons _%dispatch271371%_ '()))))))
               (_%$%e271360271390%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self271356271365%_
                   '1
                   '#f
                   '#f)))
               (_%$%e271361271393%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self271356271365%_
                   '2
                   '#f
                   '#f)))
               (_%signature271396%_ _%$%e271361271393%_)
               (_%$%e271362271398%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self271356271365%_
                   '3
                   '#f
                   '#f)))
               (_%arity271401%_ _%$%e271362271398%_)
               (_%$%e271363271403%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self271356271365%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch271406%_ _%$%e271363271403%_))
          (_%$%K271359271387%_
           _%dispatch271406%_
           _%arity271401%_
           _%signature271396%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self271204%_)
        (let ((_%self271207%_ _%self271204%_))
          (letrec ((_%clause-e271218%_
                    (lambda (_%clause271220%_)
                      (cdr (let ((__method274040
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause271220%_
                                     'typedecl))))
                             (if __method274040
                                 (let ()
                                   (declare (not safe))
                                   (__method274040 _%clause271220%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause271220%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e271218%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self271207%_
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
      (lambda (_%self271069%_)
        (let ((_%self271072%_ _%self271069%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self271072%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self271072%_
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
      (lambda (_%self270934%_)
        (let ((_%self270937%_ _%self270934%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self270937%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self270937%_
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
      (lambda (_%self270799%_)
        (let ((_%self270802%_ _%self270799%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self270802%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
