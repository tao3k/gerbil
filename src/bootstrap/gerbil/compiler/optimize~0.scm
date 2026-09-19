(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1789839234)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp274203
                   (let ((__obj274197
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
                       (gxc#optimizer-info:::init! __obj274197))
                     __obj274197)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp274203)))))
    (define gxc#optimize!
      (lambda (_%ctx273805%_)
        (let ((__tmp274205
               (lambda ()
                 (let ((__tmp274207
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx273805%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx273805%_)
                          (let ((__tmp274209
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp274208
                                 (##structure-ref
                                  _%ctx273805%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp274209 __tmp274208 '#t))
                          (let ((_%code273809%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx273805%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx273805%_
                             _%code273809%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp274206
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp274207
                    gxc#current-compile-local-type
                    __tmp274206))))
              (__tmp274204 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp274205
           gxc#current-compile-mutators
           __tmp274204))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx273791%_)
        (letrec ((_%load-it!273793%_
                  (lambda (_%id273803%_)
                    (if (let ((__tmp274210
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp274210 _%id273803%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id273803%_)
                          (let ((__tmp274211
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp274211 _%id273803%_ '#t)))))))
          (let* ((_%modid273795%_
                  (##structure-ref
                   _%ctx273791%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str273797%_ (symbol->string _%modid273795%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str273797%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str273797%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!273793%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!273793%_
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
      (lambda (_%ctx273728%_)
        (letrec* ((_%deps273730%_
                   (let* ((_%imports273781%_
                           (##structure-ref
                            _%ctx273728%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e273783%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx273728%_))))
                     (if _%$e273783%_
                         (cons _%$e273783%_ _%imports273781%_)
                         _%imports273781%_))))
          (let _%lp273732%_ ((_%rest273734%_ _%deps273730%_))
            (let* ((_%$%rest273735273743%_ _%rest273734%_)
                   (_%$%else273737273751%_ (lambda () '#!void))
                   (_%$%K273739273769%_
                    (lambda (_%rest273754%_ _%hd273755%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd273755%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp274213
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp274212
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd273755%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp274213 __tmp274212))
                                '#!void
                                (begin
                                  (let ((_%$e273758%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd273755%_))))
                                    (if _%$e273758%_
                                        (_%lp273732%_
                                         (cons _%$e273758%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%hd273755%_
                                                  '8
                                                  '#f
                                                  '#f))))
                                        (_%lp273732%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd273755%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd273755%_)))
                            (_%lp273732%_ _%rest273754%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd273755%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp274215
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp274214
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd273755%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp274215 __tmp274214))
                                    '#!void
                                    (begin
                                      (_%lp273732%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd273755%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd273755%_)))
                                (_%lp273732%_ _%rest273754%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd273755%_
                                     'gx#module-import::t))
                                  (_%lp273732%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd273755%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest273754%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd273755%_
                                         'gx#module-export::t))
                                      (_%lp273732%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd273755%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest273754%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd273755%_
                                             'gx#import-set::t))
                                          (_%lp273732%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd273755%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest273754%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd273755%_))))))))))
              (if (pair? _%$%rest273735273743%_)
                  (let ((_%$%hd273740273772%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest273735273743%_)))
                        (_%$%tl273741273774%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest273735273743%_))))
                    (let* ((_%hd273777%_ _%$%hd273740273772%_)
                           (_%rest273779%_ _%$%tl273741273774%_))
                      (_%$%K273739273769%_ _%rest273779%_ _%hd273777%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx273708%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx273708%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx273708%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht273710%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id273712%_
                    (##structure-ref
                     _%ctx273708%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod273714%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht273710%_ _%id273712%_)))
                   (_%$e273717%_ _%mod273714%_))
              (if _%$e273717%_
                  _%$e273717%_
                  (let* ((_%mod273720%_
                          (gxc#optimizer-import-ssxi _%ctx273708%_))
                         (_%val273725%_
                          (let ((_%$e273722%_ _%mod273720%_))
                            (if _%$e273722%_ _%$e273722%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht273710%_ _%id273712%_ _%val273725%_))
                    _%val273725%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx273706%_)
        (if (##structure-ref _%ctx273706%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx273706%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id273684%_)
        (letrec ((_%catch-e273686%_
                  (lambda (_%exn273704%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn273704%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn273704%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id273684%_))))
                    '#f))
                 (_%import-e273687%_
                  (lambda ()
                    (let* ((_%str-id273690%_
                            (let ((__tmp274216
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id273684%_))))
                              (declare (not safe))
                              (##string-append __tmp274216 '".ssxi")))
                           (_%artefact-path273697%_
                            (let ((_%$%odir273691273693%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%$%odir273691273693%_
                                  (let ((_%odir273695%_
                                         _%$%odir273691273693%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id273690%_
                                        '".ss"))
                                     _%odir273695%_))
                                  '#f)))
                           (_%library-path273699%_
                            (let ((__tmp274217
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id273690%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp274217)))
                           (_%ssxi-path273701%_
                            (if (and _%artefact-path273697%_
                                     (let ()
                                       (declare (not safe))
                                       (##file-exists?
                                        _%artefact-path273697%_)))
                                _%artefact-path273697%_
                                _%library-path273699%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path273701%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path273701%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e273686%_ _%import-e273687%_)))))
    (define gxc#optimize-source
      (lambda (_%stx273669%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx273669%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx273669%_))
        (let* ((_%stx273671%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx273669%_)))
               (_%stx273673%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx273671%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx273673%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx273673%_))
          (let _%fixpoint273676%_ ((_%current273678%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx273673%_))
            (let ((_%refined273680%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current273678%_ _%refined273680%_)
                  '#!void
                  (_%fixpoint273676%_ _%refined273680%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx273673%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx273673%_))
          (let ((_%stx273682%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx273673%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx273682%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp274219 (list gxc#::generate-runtime-empty::t))
            (__tmp274218 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp274219
         '()
         __tmp274218
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args273666%_
        (apply make-instance gxc#::generate-ssxi::t _%$args273666%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp274220
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
        (__make-atomic-promise __tmp274220)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx273658%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self273661%_
                (let ((__obj274199
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj274199))
               (__tmp274221
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self273661%_ _%stx273658%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp274221
           gxc#current-compile-method
           _%self273661%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self273618%_ _%stx273619%_)
        (let* ((_%$%g273621273631%_
                (lambda (_%$%g273622273628%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g273622273628%_))))
               (_%$%g273620273655%_
                (lambda (_%$%g273622273634%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g273622273634%_))
                      (let ((_%$%e273624273636%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g273622273634%_))))
                        (let ((_%$%hd273625273639%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e273624273636%_)))
                              (_%$%tl273626273641%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e273624273636%_))))
                          (let ((__tmp274224
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#generate-runtime-begin%
                                      _%self273618%_
                                      _%stx273619%_))))
                                (__tmp274222
                                 (let ((__tmp274223
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp274223 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp274224
                             gx#current-expander-phi
                             __tmp274222))))
                      (_%$%g273621273631%_ _%$%g273622273634%_)))))
          (_%$%g273620273655%_ _%stx273619%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self273557%_ _%stx273558%_)
        (let* ((_%$%g273560273574%_
                (lambda (_%$%g273561273571%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g273561273571%_))))
               (_%$%g273559273615%_
                (lambda (_%$%g273561273577%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g273561273577%_))
                      (let ((_%$%e273564273579%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g273561273577%_))))
                        (let ((_%$%hd273565273582%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e273564273579%_)))
                              (_%$%tl273566273584%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e273564273579%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl273566273584%_))
                              (let ((_%$%e273567273587%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl273566273584%_))))
                                (let ((_%$%hd273568273590%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e273567273587%_)))
                                      (_%$%tl273569273592%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e273567273587%_))))
                                  (let* ((_%ctx273609%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd273568273590%_)))
                                         (_%code273611%_
                                          (##structure-ref
                                           _%ctx273609%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp274225
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self273557%_
                                               _%code273611%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp274225
                                     gx#current-expander-context
                                     _%ctx273609%_))))
                              (_%$%g273560273574%_ _%$%g273561273577%_))))
                      (_%$%g273560273574%_ _%$%g273561273577%_)))))
          (_%$%g273559273615%_ _%stx273558%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self273364%_ _%stx273365%_)
        (letrec ((_%generate-e273367%_
                  (lambda (_%id273542%_)
                    (let* ((_%sym273544%_
                            (if (let ((__tmp274226
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp274226))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id273542%_))
                                '#f))
                           (_%$e273546%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym273544%_))))
                      (if _%$e273546%_
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"generate class decl"
                               _%sym273544%_))
                            (cons 'begin
                                  (cons (cons 'declare-class
                                              (cons _%sym273544%_
                                                    (cons (let ((__method274201
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__method-ref _%$e273546%_ 'typedecl))))
                    (if __method274201
                        (let ()
                          (declare (not safe))
                          (__method274201 _%$e273546%_))
                        (begin
                          (let ()
                            (declare (not safe))
                            (error '"Missing method" _%$e273546%_ 'typedecl))
                          '#!void)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons 'declare-type
                                                    (cons _%sym273544%_
                                                          (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (list 'quote
                                          (list 'typedecl _%sym273544%_))
                                    '('class::t)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          (let ((_%$e273551%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym273544%_))))
                            (if _%$e273551%_
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate typedecl "
                                     _%sym273544%_
                                     '" "
                                     _%$e273551%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%$e273551%_
                                         'gxc#!class::t))
                                      (cons 'declare-type
                                            (cons _%sym273544%_
                                                  (cons (list 'optimizer-resolve-class
                                                              (list 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (list 'typedecl _%sym273544%_))
                      (list 'quote
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class-name _%$e273551%_))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons 'declare-type
                                            (cons _%sym273544%_
                                                  (cons (let ((__method274200
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__method-ref _%$e273551%_ 'typedecl))))
                  (if __method274200
                      (let ()
                        (declare (not safe))
                        (__method274200 _%$e273551%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method" _%$e273551%_ 'typedecl))
                        '#!void)))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '(begin))))))))
          (let* ((_%__stx273812273813%_ _%stx273365%_)
                 (_%$%g273370273408%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx273812273813%_)))))
            (let ((_%__kont273814273815%_
                   (lambda (_%$%g273372273524%_)
                     (_%generate-e273367%_ _%$%g273372273524%_)))
                  (_%__kont273816273817%_
                   (lambda (_%$%g273385273459%_)
                     (let ((_%types273485%_
                            (map _%generate-e273367%_
                                 (let ((__tmp274227
                                        (lambda (_%$%g273477273480%_
                                                 _%$%g273478273482%_)
                                          (cons _%$%g273477273480%_
                                                _%$%g273478273482%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp274227
                                    '()
                                    _%$%g273385273459%_)))))
                       (cons 'begin _%types273485%_)))))
              (let ((_%__match273867273868%_
                     (lambda (_%$%e273386273413%_
                              _%$%hd273387273416%_
                              _%$%tl273388273418%_
                              _%$%e273389273421%_
                              _%$%hd273390273424%_
                              _%$%tl273391273426%_
                              _%__splice273818273819%_
                              _%$%target273392273429%_
                              _%$%tl273394273431%_)
                       (letrec ((_%$%loop273395273434%_
                                 (lambda (_%$%hd273393273437%_
                                          _%$%id273399273439%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd273393273437%_))
                                       (let ((_%$%e273396273441%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd273393273437%_))))
                                         (let ((_%$%lp-tl273398273446%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e273396273441%_)))
                                               (_%$%lp-hd273397273444%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e273396273441%_))))
                                           (_%$%loop273395273434%_
                                            _%$%lp-tl273398273446%_
                                            (cons _%$%lp-hd273397273444%_
                                                  _%$%id273399273439%_))))
                                       (let ((_%$%id273400273449%_
                                              (reverse _%$%id273399273439%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl273391273426%_))
                                             (let ((_%$%e273401273451%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl273391273426%_))))
                                               (let ((_%$%tl273403273456%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e273401273451%_)))
                                                     (_%$%hd273402273454%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e273401273451%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl273403273456%_))
                                                     (_%__kont273816273817%_
                                                      _%$%id273400273449%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g273370273408%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g273370273408%_))))))))
                         (_%$%loop273395273434%_
                          _%$%target273392273429%_
                          '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx273812273813%_))
                    (let ((_%$%e273373273492%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx273812273813%_))))
                      (let ((_%$%tl273375273497%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e273373273492%_)))
                            (_%$%hd273374273495%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e273373273492%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl273375273497%_))
                            (let ((_%$%e273376273500%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl273375273497%_))))
                              (let ((_%$%tl273378273505%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e273376273500%_)))
                                    (_%$%hd273377273503%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e273376273500%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd273377273503%_))
                                    (let ((_%$%e273379273508%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd273377273503%_))))
                                      (let ((_%$%tl273381273513%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e273379273508%_)))
                                            (_%$%hd273380273511%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e273379273508%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl273381273513%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl273378273505%_))
                                                (let ((_%$%e273382273516%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl273378273505%_))))
                                                  (let ((_%$%tl273384273521%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e273382273516%_)))
                                                        (_%$%hd273383273519%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e273382273516%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl273384273521%_))
                                                        (_%__kont273814273815%_
                                                         _%$%hd273380273511%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%$%hd273377273503%_))
                                                            (let ((_%__splice273818273819%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%$%hd273377273503%_
                              '0))))
                      (let ((_%$%tl273394273431%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice273818273819%_ '1)))
                            (_%$%target273392273429%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice273818273819%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl273394273431%_))
                            (_%__match273867273868%_
                             _%$%e273373273492%_
                             _%$%hd273374273495%_
                             _%$%tl273375273497%_
                             _%$%e273376273500%_
                             _%$%hd273377273503%_
                             _%$%tl273378273505%_
                             _%__splice273818273819%_
                             _%$%target273392273429%_
                             _%$%tl273394273431%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g273370273408%_)))))
                    (let () (declare (not safe)) (_%$%g273370273408%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%$%hd273377273503%_))
                                                    (let ((_%__splice273818273819%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%$%hd273377273503%_
                                                              '0))))
                                                      (let ((_%$%tl273394273431%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice273818273819%_ '1)))
                    (_%$%target273392273429%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice273818273819%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl273394273431%_))
                    (_%__match273867273868%_
                     _%$%e273373273492%_
                     _%$%hd273374273495%_
                     _%$%tl273375273497%_
                     _%$%e273376273500%_
                     _%$%hd273377273503%_
                     _%$%tl273378273505%_
                     _%__splice273818273819%_
                     _%$%target273392273429%_
                     _%$%tl273394273431%_)
                    (let () (declare (not safe)) (_%$%g273370273408%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g273370273408%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%$%hd273377273503%_))
                                                (let ((_%__splice273818273819%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd273377273503%_
                                                          '0))))
                                                  (let ((_%$%tl273394273431%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice273818273819%_
                                                            '1)))
                                                        (_%$%target273392273429%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice273818273819%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl273394273431%_))
                                                        (_%__match273867273868%_
                                                         _%$%e273373273492%_
                                                         _%$%hd273374273495%_
                                                         _%$%tl273375273497%_
                                                         _%$%e273376273500%_
                                                         _%$%hd273377273503%_
                                                         _%$%tl273378273505%_
                                                         _%__splice273818273819%_
                                                         _%$%target273392273429%_
                                                         _%$%tl273394273431%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g273370273408%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g273370273408%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%hd273377273503%_))
                                        (let ((_%__splice273818273819%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd273377273503%_
                                                  '0))))
                                          (let ((_%$%tl273394273431%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice273818273819%_
                                                    '1)))
                                                (_%$%target273392273429%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice273818273819%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl273394273431%_))
                                                (_%__match273867273868%_
                                                 _%$%e273373273492%_
                                                 _%$%hd273374273495%_
                                                 _%$%tl273375273497%_
                                                 _%$%e273376273500%_
                                                 _%$%hd273377273503%_
                                                 _%$%tl273378273505%_
                                                 _%__splice273818273819%_
                                                 _%$%target273392273429%_
                                                 _%$%tl273394273431%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g273370273408%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g273370273408%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g273370273408%_)))))
                    (let () (declare (not safe)) (_%$%g273370273408%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self272917%_ _%stx272918%_)
        (let* ((_%__stx273870273871%_ _%stx272918%_)
               (_%$%g272922273024%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx273870273871%_)))))
          (let ((_%__kont273872273873%_
                 (lambda (_%$%g272924273314%_
                          _%$%g272925273315%_
                          _%$%g272926273316%_
                          _%$%g272927273317%_
                          _%$%g272928273318%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g272927273317%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g272926273316%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g272925273315%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%g272924273314%_))
                                                 '())))))))
                (_%__kont273874273875%_
                 (lambda (_%$%g272977273140%_
                          _%$%g272978273141%_
                          _%$%g272979273142%_
                          _%$%g272980273143%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g272979273142%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g272978273141%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g272977273140%_))
                                           (cons '#f '())))))))
                (_%__kont273876273877%_ (lambda () '(begin))))
            (let ((_%__match274005274006%_
                   (lambda (_%$%e272929273186%_
                            _%$%hd272930273189%_
                            _%$%tl272931273191%_
                            _%$%e272932273194%_
                            _%$%hd272933273197%_
                            _%$%tl272934273199%_
                            _%$%e272935273202%_
                            _%$%hd272936273205%_
                            _%$%tl272937273207%_
                            _%$%e272938273210%_
                            _%$%hd272939273213%_
                            _%$%tl272940273215%_
                            _%$%e272941273218%_
                            _%$%hd272942273221%_
                            _%$%tl272943273223%_
                            _%$%e272944273226%_
                            _%$%hd272945273229%_
                            _%$%tl272946273231%_
                            _%$%e272947273234%_
                            _%$%hd272948273237%_
                            _%$%tl272949273239%_
                            _%$%e272950273242%_
                            _%$%hd272951273245%_
                            _%$%tl272952273247%_
                            _%$%e272953273250%_
                            _%$%hd272954273253%_
                            _%$%tl272955273255%_
                            _%$%e272956273258%_
                            _%$%hd272957273261%_
                            _%$%tl272958273263%_
                            _%$%e272959273266%_
                            _%$%hd272960273269%_
                            _%$%tl272961273271%_
                            _%$%e272962273274%_
                            _%$%hd272963273277%_
                            _%$%tl272964273279%_
                            _%$%e272965273282%_
                            _%$%hd272966273285%_
                            _%$%tl272967273287%_
                            _%$%e272968273290%_
                            _%$%hd272969273293%_
                            _%$%tl272970273295%_
                            _%$%e272971273298%_
                            _%$%hd272972273301%_
                            _%$%tl272973273303%_
                            _%$%e272974273306%_
                            _%$%hd272975273309%_
                            _%$%tl272976273311%_)
                     (let ((_%$%g272924273314%_ _%$%hd272975273309%_)
                           (_%$%g272925273315%_ _%$%hd272966273285%_)
                           (_%$%g272926273316%_ _%$%hd272957273261%_)
                           (_%$%g272927273317%_ _%$%hd272948273237%_)
                           (_%$%g272928273318%_ _%$%hd272939273213%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%$%g272928273318%_
                              'bind-method!))
                           (_%__kont273872273873%_
                            _%$%g272924273314%_
                            _%$%g272925273315%_
                            _%$%g272926273316%_
                            _%$%g272927273317%_
                            _%$%g272928273318%_)
                           (_%__kont273876273877%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx273870273871%_))
                  (let ((_%$%e272929273186%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx273870273871%_))))
                    (let ((_%$%tl272931273191%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e272929273186%_)))
                          (_%$%hd272930273189%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e272929273186%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl272931273191%_))
                          (let ((_%$%e272932273194%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl272931273191%_))))
                            (let ((_%$%tl272934273199%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e272932273194%_)))
                                  (_%$%hd272933273197%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e272932273194%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd272933273197%_))
                                  (let ((_%$%e272935273202%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd272933273197%_))))
                                    (let ((_%$%tl272937273207%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e272935273202%_)))
                                          (_%$%hd272936273205%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e272935273202%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd272936273205%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd272936273205%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl272937273207%_))
                                                  (let ((_%$%e272938273210%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl272937273207%_))))
                                                    (let ((_%$%tl272940273215%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e272938273210%_)))
                                                          (_%$%hd272939273213%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e272938273210%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl272940273215%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl272934273199%_))
                      (let ((_%$%e272941273218%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl272934273199%_))))
                        (let ((_%$%tl272943273223%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272941273218%_)))
                              (_%$%hd272942273221%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272941273218%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd272942273221%_))
                              (let ((_%$%e272944273226%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd272942273221%_))))
                                (let ((_%$%tl272946273231%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e272944273226%_)))
                                      (_%$%hd272945273229%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e272944273226%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd272945273229%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd272945273229%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl272946273231%_))
                                              (let ((_%$%e272947273234%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl272946273231%_))))
                                                (let ((_%$%tl272949273239%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e272947273234%_)))
                                                      (_%$%hd272948273237%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e272947273234%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl272949273239%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl272943273223%_))
                                                          (let ((_%$%e272950273242%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl272943273223%_))))
                    (let ((_%$%tl272952273247%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e272950273242%_)))
                          (_%$%hd272951273245%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e272950273242%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd272951273245%_))
                          (let ((_%$%e272953273250%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd272951273245%_))))
                            (let ((_%$%tl272955273255%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e272953273250%_)))
                                  (_%$%hd272954273253%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e272953273250%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd272954273253%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd272954273253%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl272955273255%_))
                                          (let ((_%$%e272956273258%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl272955273255%_))))
                                            (let ((_%$%tl272958273263%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e272956273258%_)))
                                                  (_%$%hd272957273261%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e272956273258%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl272958273263%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl272952273247%_))
                                                      (let ((_%$%e272959273266%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl272952273247%_))))
                (let ((_%$%tl272961273271%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e272959273266%_)))
                      (_%$%hd272960273269%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e272959273266%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd272960273269%_))
                      (let ((_%$%e272962273274%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd272960273269%_))))
                        (let ((_%$%tl272964273279%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e272962273274%_)))
                              (_%$%hd272963273277%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e272962273274%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd272963273277%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd272963273277%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl272964273279%_))
                                      (let ((_%$%e272965273282%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl272964273279%_))))
                                        (let ((_%$%tl272967273287%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e272965273282%_)))
                                              (_%$%hd272966273285%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e272965273282%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl272967273287%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl272961273271%_))
                                                  (let ((_%$%e272968273290%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl272961273271%_))))
                                                    (let ((_%$%tl272970273295%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e272968273290%_)))
                                                          (_%$%hd272969273293%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e272968273290%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd272969273293%_))
                                                          (let ((_%$%e272971273298%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd272969273293%_))))
                    (let ((_%$%tl272973273303%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e272971273298%_)))
                          (_%$%hd272972273301%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e272971273298%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd272972273301%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd272972273301%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl272973273303%_))
                                  (let ((_%$%e272974273306%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl272973273303%_))))
                                    (let ((_%$%tl272976273311%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e272974273306%_)))
                                          (_%$%hd272975273309%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e272974273306%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl272976273311%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl272970273295%_))
                                              (_%__match274005274006%_
                                               _%$%e272929273186%_
                                               _%$%hd272930273189%_
                                               _%$%tl272931273191%_
                                               _%$%e272932273194%_
                                               _%$%hd272933273197%_
                                               _%$%tl272934273199%_
                                               _%$%e272935273202%_
                                               _%$%hd272936273205%_
                                               _%$%tl272937273207%_
                                               _%$%e272938273210%_
                                               _%$%hd272939273213%_
                                               _%$%tl272940273215%_
                                               _%$%e272941273218%_
                                               _%$%hd272942273221%_
                                               _%$%tl272943273223%_
                                               _%$%e272944273226%_
                                               _%$%hd272945273229%_
                                               _%$%tl272946273231%_
                                               _%$%e272947273234%_
                                               _%$%hd272948273237%_
                                               _%$%tl272949273239%_
                                               _%$%e272950273242%_
                                               _%$%hd272951273245%_
                                               _%$%tl272952273247%_
                                               _%$%e272953273250%_
                                               _%$%hd272954273253%_
                                               _%$%tl272955273255%_
                                               _%$%e272956273258%_
                                               _%$%hd272957273261%_
                                               _%$%tl272958273263%_
                                               _%$%e272959273266%_
                                               _%$%hd272960273269%_
                                               _%$%tl272961273271%_
                                               _%$%e272962273274%_
                                               _%$%hd272963273277%_
                                               _%$%tl272964273279%_
                                               _%$%e272965273282%_
                                               _%$%hd272966273285%_
                                               _%$%tl272967273287%_
                                               _%$%e272968273290%_
                                               _%$%hd272969273293%_
                                               _%$%tl272970273295%_
                                               _%$%e272971273298%_
                                               _%$%hd272972273301%_
                                               _%$%tl272973273303%_
                                               _%$%e272974273306%_
                                               _%$%hd272975273309%_
                                               _%$%tl272976273311%_)
                                              (_%__kont273876273877%_))
                                          (_%__kont273876273877%_))))
                                  (_%__kont273876273877%_))
                              (_%__kont273876273877%_))
                          (_%__kont273876273877%_))))
                  (_%__kont273876273877%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl272961273271%_))
                                                      (if (let ((__tmp274228
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp274228 'bind-method!))
                  (let ((_%$%g272977273140%_ _%$%hd272966273285%_)
                        (_%$%g272978273141%_ _%$%hd272957273261%_)
                        (_%$%g272979273142%_ _%$%hd272948273237%_)
                        (_%$%g272980273143%_ _%$%hd272939273213%_))
                    (_%__kont273874273875%_
                     _%$%g272977273140%_
                     _%$%g272978273141%_
                     _%$%g272979273142%_
                     _%$%g272980273143%_))
                  (_%__kont273876273877%_))
              (_%__kont273876273877%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont273876273877%_))))
                                      (_%__kont273876273877%_))
                                  (_%__kont273876273877%_))
                              (_%__kont273876273877%_))))
                      (_%__kont273876273877%_))))
              (_%__kont273876273877%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont273876273877%_))))
                                          (_%__kont273876273877%_))
                                      (_%__kont273876273877%_))
                                  (_%__kont273876273877%_))))
                          (_%__kont273876273877%_))))
                  (_%__kont273876273877%_))
              (_%__kont273876273877%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont273876273877%_))
                                          (_%__kont273876273877%_))
                                      (_%__kont273876273877%_))))
                              (_%__kont273876273877%_))))
                      (_%__kont273876273877%_))
                  (_%__kont273876273877%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont273876273877%_))
                                              (_%__kont273876273877%_))
                                          (_%__kont273876273877%_))))
                                  (_%__kont273876273877%_))))
                          (_%__kont273876273877%_))))
                  (_%__kont273876273877%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self272741%_ _%stx272742%_)
        (let* ((_%__stx274114274115%_ _%stx272742%_)
               (_%$%g272745272785%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx274114274115%_)))))
          (let ((_%__kont274116274117%_
                 (lambda (_%$%g272747272891%_ _%$%g272748272892%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g272748272892%_))
                               (cons _%$%g272747272891%_ '())))))
                (_%__kont274118274119%_
                 (lambda (_%$%g272770272814%_ _%$%g272771272815%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx274114274115%_))
                (let ((_%$%e272749272835%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx274114274115%_))))
                  (let ((_%$%tl272751272840%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e272749272835%_)))
                        (_%$%hd272750272838%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e272749272835%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl272751272840%_))
                        (let ((_%$%e272752272843%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl272751272840%_))))
                          (let ((_%$%tl272754272848%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e272752272843%_)))
                                (_%$%hd272753272846%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e272752272843%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd272753272846%_))
                                (let ((_%$%e272755272851%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd272753272846%_))))
                                  (let ((_%$%tl272757272856%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e272755272851%_)))
                                        (_%$%hd272756272854%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e272755272851%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd272756272854%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%$%hd272756272854%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl272757272856%_))
                                                (let ((_%$%e272758272859%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl272757272856%_))))
                                                  (let ((_%$%tl272760272864%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e272758272859%_)))
                                                        (_%$%hd272759272862%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e272758272859%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl272760272864%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl272754272848%_))
                                                            (let ((_%$%e272761272867%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl272754272848%_))))
                      (let ((_%$%tl272763272872%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e272761272867%_)))
                            (_%$%hd272762272870%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e272761272867%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd272762272870%_))
                            (let ((_%$%e272764272875%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd272762272870%_))))
                              (let ((_%$%tl272766272880%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e272764272875%_)))
                                    (_%$%hd272765272878%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e272764272875%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd272765272878%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd272765272878%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl272766272880%_))
                                            (let ((_%$%e272767272883%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl272766272880%_))))
                                              (let ((_%$%tl272769272888%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e272767272883%_)))
                                                    (_%$%hd272768272886%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e272767272883%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl272769272888%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl272763272872%_))
                                                        (_%__kont274116274117%_
                                                         _%$%hd272768272886%_
                                                         _%$%hd272759272862%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g272745272785%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl272763272872%_))
                                                        (_%__kont274118274119%_
                                                         _%$%hd272762272870%_
                                                         _%$%hd272753272846%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g272745272785%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl272763272872%_))
                                                (_%__kont274118274119%_
                                                 _%$%hd272762272870%_
                                                 _%$%hd272753272846%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g272745272785%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl272763272872%_))
                                            (_%__kont274118274119%_
                                             _%$%hd272762272870%_
                                             _%$%hd272753272846%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g272745272785%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl272763272872%_))
                                        (_%__kont274118274119%_
                                         _%$%hd272762272870%_
                                         _%$%hd272753272846%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g272745272785%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl272763272872%_))
                                (_%__kont274118274119%_
                                 _%$%hd272762272870%_
                                 _%$%hd272753272846%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g272745272785%_))))))
                    (let () (declare (not safe)) (_%$%g272745272785%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl272754272848%_))
                    (let ((_%$%e272778272806%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl272754272848%_))))
                      (let ((_%$%tl272780272811%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e272778272806%_)))
                            (_%$%hd272779272809%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e272778272806%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl272780272811%_))
                            (_%__kont274118274119%_
                             _%$%hd272779272809%_
                             _%$%hd272753272846%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g272745272785%_)))))
                    (let () (declare (not safe)) (_%$%g272745272785%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl272754272848%_))
                                                    (let ((_%$%e272778272806%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl272754272848%_))))
                                                      (let ((_%$%tl272780272811%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e272778272806%_)))
                    (_%$%hd272779272809%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e272778272806%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl272780272811%_))
                    (_%__kont274118274119%_
                     _%$%hd272779272809%_
                     _%$%hd272753272846%_)
                    (let () (declare (not safe)) (_%$%g272745272785%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g272745272785%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl272754272848%_))
                                                (let ((_%$%e272778272806%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl272754272848%_))))
                                                  (let ((_%$%tl272780272811%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e272778272806%_)))
                                                        (_%$%hd272779272809%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e272778272806%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl272780272811%_))
                                                        (_%__kont274118274119%_
                                                         _%$%hd272779272809%_
                                                         _%$%hd272753272846%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g272745272785%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g272745272785%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl272754272848%_))
                                            (let ((_%$%e272778272806%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl272754272848%_))))
                                              (let ((_%$%tl272780272811%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e272778272806%_)))
                                                    (_%$%hd272779272809%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e272778272806%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl272780272811%_))
                                                    (_%__kont274118274119%_
                                                     _%$%hd272779272809%_
                                                     _%$%hd272753272846%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g272745272785%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g272745272785%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl272754272848%_))
                                    (let ((_%$%e272778272806%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl272754272848%_))))
                                      (let ((_%$%tl272780272811%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e272778272806%_)))
                                            (_%$%hd272779272809%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e272778272806%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl272780272811%_))
                                            (_%__kont274118274119%_
                                             _%$%hd272779272809%_
                                             _%$%hd272753272846%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g272745272785%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g272745272785%_))))))
                        (let () (declare (not safe)) (_%$%g272745272785%_)))))
                (let () (declare (not safe)) (_%$%g272745272785%_)))))))
    (define gxc#!nullable-type::typedecl
      (lambda (_%self272728%_)
        (let ((_%self272731%_ _%self272728%_))
          (list 'optimizer-resolve-type-expression
                ''typedecl
                (list 'quote
                      (let ()
                        (declare (not safe))
                        (gxc#optimizer-type-expression _%self272731%_)))))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!nullable-type::t
       'typedecl
       gxc#!nullable-type::typedecl
       '#f))
    (define gxc#!alias::typedecl
      (lambda (_%self272593%_)
        (let ((_%self272596%_ _%self272593%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self272596%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self272367%_)
        (let* ((_%self272370%_ _%self272367%_)
               (_%$%self272379272395%_ _%self272370%_)
               (_%$%E272381272398%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self272379272395%_
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
               (_%$%K272382272413%_
                (lambda (_%methods272401%_
                         _%metaclass272402%_
                         _%system?272403%_
                         _%final?272404%_
                         _%struct?272405%_
                         _%constructor272406%_
                         _%fields272407%_
                         _%slots272408%_
                         _%precendence-list272409%_
                         _%super272410%_
                         _%id272411%_)
                  (cons '@class
                        (cons _%id272411%_
                              (cons _%super272410%_
                                    (cons _%precendence-list272409%_
                                          (cons _%slots272408%_
                                                (cons _%fields272407%_
                                                      (cons _%constructor272406%_
                                                            (cons _%struct?272405%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?272404%_
                                (cons _%system?272403%_
                                      (cons _%metaclass272402%_
                                            (cons (if _%methods272401%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods272401%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%$%e272383272416%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272379272395%_
                   '1
                   '#f
                   '#f)))
               (_%id272419%_ _%$%e272383272416%_)
               (_%$%e272384272421%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272379272395%_
                   '2
                   '#f
                   '#f)))
               (_%super272424%_ _%$%e272384272421%_)
               (_%$%e272385272426%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272379272395%_
                   '3
                   '#f
                   '#f)))
               (_%precendence-list272429%_ _%$%e272385272426%_)
               (_%$%e272386272431%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272379272395%_
                   '4
                   '#f
                   '#f)))
               (_%slots272434%_ _%$%e272386272431%_)
               (_%$%e272387272436%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272379272395%_
                   '5
                   '#f
                   '#f)))
               (_%fields272439%_ _%$%e272387272436%_)
               (_%$%e272388272441%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272379272395%_
                   '6
                   '#f
                   '#f)))
               (_%constructor272444%_ _%$%e272388272441%_)
               (_%$%e272389272446%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272379272395%_
                   '7
                   '#f
                   '#f)))
               (_%struct?272449%_ _%$%e272389272446%_)
               (_%$%e272390272451%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272379272395%_
                   '8
                   '#f
                   '#f)))
               (_%final?272454%_ _%$%e272390272451%_)
               (_%$%e272391272456%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272379272395%_
                   '9
                   '#f
                   '#f)))
               (_%system?272459%_ _%$%e272391272456%_)
               (_%$%e272392272461%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272379272395%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass272464%_ _%$%e272392272461%_)
               (_%$%e272393272466%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self272379272395%_
                   '11
                   '#f
                   '#f)))
               (_%methods272469%_ _%$%e272393272466%_))
          (_%$%K272382272413%_
           _%methods272469%_
           _%metaclass272464%_
           _%system?272459%_
           _%final?272454%_
           _%struct?272449%_
           _%constructor272444%_
           _%fields272439%_
           _%slots272434%_
           _%precendence-list272429%_
           _%super272424%_
           _%id272419%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self272232%_)
        (let ((_%self272235%_ _%self272232%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self272235%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self272097%_)
        (let ((_%self272100%_ _%self272097%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self272100%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self271962%_)
        (let ((_%self271965%_ _%self271962%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self271965%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self271965%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self271965%_
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
      (lambda (_%self271827%_)
        (let ((_%self271830%_ _%self271827%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self271830%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self271830%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self271830%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self271692%_)
        (let ((_%self271695%_ _%self271692%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self271695%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self271695%_
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
      (lambda (_%self271506%_)
        (let* ((_%self271509%_ _%self271506%_)
               (_%$%self271518271527%_ _%self271509%_)
               (_%$%E271520271530%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self271518271527%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%$%K271521271549%_
                (lambda (_%dispatch271533%_
                         _%arity271534%_
                         _%signature271535%_)
                  (if _%signature271535%_
                      (let ((_%signature271537%_ _%signature271535%_))
                        (cons '@lambda
                              (cons _%arity271534%_
                                    (cons _%dispatch271533%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature271537%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature271537%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature271537%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature271537%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature271537%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity271534%_
                                  (cons _%dispatch271533%_ '()))))))
               (_%$%e271522271552%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self271518271527%_
                   '1
                   '#f
                   '#f)))
               (_%$%e271523271555%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self271518271527%_
                   '2
                   '#f
                   '#f)))
               (_%signature271558%_ _%$%e271523271555%_)
               (_%$%e271524271560%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self271518271527%_
                   '3
                   '#f
                   '#f)))
               (_%arity271563%_ _%$%e271524271560%_)
               (_%$%e271525271565%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self271518271527%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch271568%_ _%$%e271525271565%_))
          (_%$%K271521271549%_
           _%dispatch271568%_
           _%arity271563%_
           _%signature271558%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self271366%_)
        (let ((_%self271369%_ _%self271366%_))
          (letrec ((_%clause-e271380%_
                    (lambda (_%clause271382%_)
                      (cdr (let ((__method274202
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause271382%_
                                     'typedecl))))
                             (if __method274202
                                 (let ()
                                   (declare (not safe))
                                   (__method274202 _%clause271382%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause271382%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e271380%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self271369%_
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
      (lambda (_%self271231%_)
        (let ((_%self271234%_ _%self271231%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self271234%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self271234%_
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
      (lambda (_%self271096%_)
        (let ((_%self271099%_ _%self271096%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self271099%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self271099%_
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
      (lambda (_%self270961%_)
        (let ((_%self270964%_ _%self270961%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self270964%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
