(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1784758133)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp272170
                   (let ((__obj272164
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
                       (gxc#optimizer-info:::init! __obj272164))
                     __obj272164)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp272170)))))
    (define gxc#optimize!
      (lambda (_%ctx271772%_)
        (let ((__tmp272172
               (lambda ()
                 (let ((__tmp272174
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx271772%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx271772%_)
                          (let ((__tmp272176
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp272175
                                 (##structure-ref
                                  _%ctx271772%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp272176 __tmp272175 '#t))
                          (let ((_%code271776%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx271772%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx271772%_
                             _%code271776%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp272173
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp272174
                    gxc#current-compile-local-type
                    __tmp272173))))
              (__tmp272171 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp272172
           gxc#current-compile-mutators
           __tmp272171))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx271758%_)
        (letrec ((_%load-it!271760%_
                  (lambda (_%id271770%_)
                    (if (let ((__tmp272177
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp272177 _%id271770%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id271770%_)
                          (let ((__tmp272178
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp272178 _%id271770%_ '#t)))))))
          (let* ((_%modid271762%_
                  (##structure-ref
                   _%ctx271758%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str271764%_ (symbol->string _%modid271762%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str271764%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str271764%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!271760%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!271760%_
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
      (lambda (_%ctx271695%_)
        (letrec* ((_%deps271697%_
                   (let* ((_%imports271748%_
                           (##structure-ref
                            _%ctx271695%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e271750%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx271695%_))))
                     (if _%$e271750%_
                         (cons _%$e271750%_ _%imports271748%_)
                         _%imports271748%_))))
          (let _%lp271699%_ ((_%rest271701%_ _%deps271697%_))
            (let* ((_%$%rest271702271710%_ _%rest271701%_)
                   (_%$%else271704271718%_ (lambda () '#!void))
                   (_%$%K271706271736%_
                    (lambda (_%rest271721%_ _%hd271722%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd271722%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp272180
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp272179
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd271722%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp272180 __tmp272179))
                                '#!void
                                (begin
                                  (let ((_%$e271725%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd271722%_))))
                                    (if _%$e271725%_
                                        (_%lp271699%_
                                         (cons _%$e271725%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%hd271722%_
                                                  '8
                                                  '#f
                                                  '#f))))
                                        (_%lp271699%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd271722%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd271722%_)))
                            (_%lp271699%_ _%rest271721%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd271722%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp272182
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp272181
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd271722%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp272182 __tmp272181))
                                    '#!void
                                    (begin
                                      (_%lp271699%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd271722%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd271722%_)))
                                (_%lp271699%_ _%rest271721%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd271722%_
                                     'gx#module-import::t))
                                  (_%lp271699%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd271722%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest271721%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd271722%_
                                         'gx#module-export::t))
                                      (_%lp271699%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd271722%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest271721%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd271722%_
                                             'gx#import-set::t))
                                          (_%lp271699%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd271722%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest271721%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd271722%_))))))))))
              (if (pair? _%$%rest271702271710%_)
                  (let ((_%$%hd271707271739%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest271702271710%_)))
                        (_%$%tl271708271741%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest271702271710%_))))
                    (let* ((_%hd271744%_ _%$%hd271707271739%_)
                           (_%rest271746%_ _%$%tl271708271741%_))
                      (_%$%K271706271736%_ _%rest271746%_ _%hd271744%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx271675%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx271675%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx271675%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht271677%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id271679%_
                    (##structure-ref
                     _%ctx271675%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod271681%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht271677%_ _%id271679%_)))
                   (_%$e271684%_ _%mod271681%_))
              (if _%$e271684%_
                  _%$e271684%_
                  (let* ((_%mod271687%_
                          (gxc#optimizer-import-ssxi _%ctx271675%_))
                         (_%val271692%_
                          (let ((_%$e271689%_ _%mod271687%_))
                            (if _%$e271689%_ _%$e271689%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht271677%_ _%id271679%_ _%val271692%_))
                    _%val271692%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx271673%_)
        (if (##structure-ref _%ctx271673%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx271673%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id271651%_)
        (letrec ((_%catch-e271653%_
                  (lambda (_%exn271671%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn271671%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn271671%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id271651%_))))
                    '#f))
                 (_%import-e271654%_
                  (lambda ()
                    (let* ((_%str-id271657%_
                            (let ((__tmp272183
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id271651%_))))
                              (declare (not safe))
                              (##string-append __tmp272183 '".ssxi")))
                           (_%artefact-path271664%_
                            (let ((_%$%odir271658271660%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%$%odir271658271660%_
                                  (let ((_%odir271662%_
                                         _%$%odir271658271660%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id271657%_
                                        '".ss"))
                                     _%odir271662%_))
                                  '#f)))
                           (_%library-path271666%_
                            (let ((__tmp272184
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id271657%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp272184)))
                           (_%ssxi-path271668%_
                            (if (and _%artefact-path271664%_
                                     (file-exists? _%artefact-path271664%_))
                                _%artefact-path271664%_
                                _%library-path271666%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path271668%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path271668%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e271653%_ _%import-e271654%_)))))
    (define gxc#optimize-source
      (lambda (_%stx271636%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx271636%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx271636%_))
        (let* ((_%stx271638%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx271636%_)))
               (_%stx271640%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx271638%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx271640%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx271640%_))
          (let _%fixpoint271643%_ ((_%current271645%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx271640%_))
            (let ((_%refined271647%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current271645%_ _%refined271647%_)
                  '#!void
                  (_%fixpoint271643%_ _%refined271647%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx271640%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx271640%_))
          (let ((_%stx271649%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx271640%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx271649%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp272186 (list gxc#::generate-runtime-empty::t))
            (__tmp272185 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp272186
         '()
         __tmp272185
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args271633%_
        (apply make-instance gxc#::generate-ssxi::t _%$args271633%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp272187
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
        (__make-atomic-promise __tmp272187)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx271625%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self271628%_
                (let ((__obj272166
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj272166))
               (__tmp272188
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self271628%_ _%stx271625%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp272188
           gxc#current-compile-method
           _%self271628%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self271585%_ _%stx271586%_)
        (let* ((_%$%g271588271598%_
                (lambda (_%$%g271589271595%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271589271595%_))))
               (_%$%g271587271622%_
                (lambda (_%$%g271589271601%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271589271601%_))
                      (let ((_%$%e271591271603%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g271589271601%_))))
                        (let ((_%$%hd271592271606%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271591271603%_)))
                              (_%$%tl271593271608%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271591271603%_))))
                          (let ((__tmp272191
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#generate-runtime-begin%
                                      _%self271585%_
                                      _%stx271586%_))))
                                (__tmp272189
                                 (let ((__tmp272190
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp272190 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp272191
                             gx#current-expander-phi
                             __tmp272189))))
                      (_%$%g271588271598%_ _%$%g271589271601%_)))))
          (_%$%g271587271622%_ _%stx271586%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self271524%_ _%stx271525%_)
        (let* ((_%$%g271527271541%_
                (lambda (_%$%g271528271538%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271528271538%_))))
               (_%$%g271526271582%_
                (lambda (_%$%g271528271544%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271528271544%_))
                      (let ((_%$%e271531271546%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g271528271544%_))))
                        (let ((_%$%hd271532271549%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271531271546%_)))
                              (_%$%tl271533271551%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271531271546%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271533271551%_))
                              (let ((_%$%e271534271554%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl271533271551%_))))
                                (let ((_%$%hd271535271557%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271534271554%_)))
                                      (_%$%tl271536271559%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271534271554%_))))
                                  (let* ((_%ctx271576%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd271535271557%_)))
                                         (_%code271578%_
                                          (##structure-ref
                                           _%ctx271576%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp272192
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self271524%_
                                               _%code271578%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp272192
                                     gx#current-expander-context
                                     _%ctx271576%_))))
                              (_%$%g271527271541%_ _%$%g271528271544%_))))
                      (_%$%g271527271541%_ _%$%g271528271544%_)))))
          (_%$%g271526271582%_ _%stx271525%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self271331%_ _%stx271332%_)
        (letrec ((_%generate-e271334%_
                  (lambda (_%id271509%_)
                    (let* ((_%sym271511%_
                            (if (let ((__tmp272193
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp272193))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id271509%_))
                                '#f))
                           (_%$e271513%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym271511%_))))
                      (if _%$e271513%_
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"generate class decl"
                               _%sym271511%_))
                            (cons 'begin
                                  (cons (cons 'declare-class
                                              (cons _%sym271511%_
                                                    (cons (let ((__method272167
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__method-ref _%$e271513%_ 'typedecl))))
                    (if __method272167
                        (let ()
                          (declare (not safe))
                          (__method272167 _%$e271513%_))
                        (begin
                          (let ()
                            (declare (not safe))
                            (error '"Missing method" _%$e271513%_ 'typedecl))
                          '#!void)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons 'declare-type
                                                    (cons _%sym271511%_
                                                          (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (list 'quote
                                          (list 'typedecl _%sym271511%_))
                                    '('class::t)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          (let ((_%$e271518%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym271511%_))))
                            (if _%$e271518%_
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate typedecl "
                                     _%sym271511%_
                                     '" "
                                     _%$e271518%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%$e271518%_
                                         'gxc#!class::t))
                                      (cons 'declare-type
                                            (cons _%sym271511%_
                                                  (cons (list 'optimizer-resolve-class
                                                              (list 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (list 'typedecl _%sym271511%_))
                      (list 'quote
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class-name _%$e271518%_))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons 'declare-type
                                            (cons _%sym271511%_
                                                  (cons (let ((__method272168
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__method-ref _%$e271518%_ 'typedecl))))
                  (if __method272168
                      (let ()
                        (declare (not safe))
                        (__method272168 _%$e271518%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method" _%$e271518%_ 'typedecl))
                        '#!void)))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '(begin))))))))
          (let* ((_%__stx271779271780%_ _%stx271332%_)
                 (_%$%g271337271375%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx271779271780%_)))))
            (let ((_%__kont271781271782%_
                   (lambda (_%$%g271339271491%_)
                     (_%generate-e271334%_ _%$%g271339271491%_)))
                  (_%__kont271783271784%_
                   (lambda (_%$%g271352271426%_)
                     (let ((_%types271452%_
                            (map _%generate-e271334%_
                                 (let ((__tmp272194
                                        (lambda (_%$%g271444271447%_
                                                 _%$%g271445271449%_)
                                          (cons _%$%g271444271447%_
                                                _%$%g271445271449%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp272194
                                    '()
                                    _%$%g271352271426%_)))))
                       (cons 'begin _%types271452%_)))))
              (let ((_%__match271834271835%_
                     (lambda (_%$%e271353271380%_
                              _%$%hd271354271383%_
                              _%$%tl271355271385%_
                              _%$%e271356271388%_
                              _%$%hd271357271391%_
                              _%$%tl271358271393%_
                              _%__splice271785271786%_
                              _%$%target271359271396%_
                              _%$%tl271361271398%_)
                       (letrec ((_%$%loop271362271401%_
                                 (lambda (_%$%hd271360271404%_
                                          _%$%id271366271406%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd271360271404%_))
                                       (let ((_%$%e271363271408%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd271360271404%_))))
                                         (let ((_%$%lp-tl271365271413%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e271363271408%_)))
                                               (_%$%lp-hd271364271411%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e271363271408%_))))
                                           (_%$%loop271362271401%_
                                            _%$%lp-tl271365271413%_
                                            (cons _%$%lp-hd271364271411%_
                                                  _%$%id271366271406%_))))
                                       (let ((_%$%id271367271416%_
                                              (reverse _%$%id271366271406%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl271358271393%_))
                                             (let ((_%$%e271368271418%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl271358271393%_))))
                                               (let ((_%$%tl271370271423%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e271368271418%_)))
                                                     (_%$%hd271369271421%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e271368271418%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl271370271423%_))
                                                     (_%__kont271783271784%_
                                                      _%$%id271367271416%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g271337271375%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g271337271375%_))))))))
                         (_%$%loop271362271401%_
                          _%$%target271359271396%_
                          '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx271779271780%_))
                    (let ((_%$%e271340271459%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx271779271780%_))))
                      (let ((_%$%tl271342271464%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e271340271459%_)))
                            (_%$%hd271341271462%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e271340271459%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl271342271464%_))
                            (let ((_%$%e271343271467%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl271342271464%_))))
                              (let ((_%$%tl271345271472%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e271343271467%_)))
                                    (_%$%hd271344271470%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e271343271467%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd271344271470%_))
                                    (let ((_%$%e271346271475%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd271344271470%_))))
                                      (let ((_%$%tl271348271480%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e271346271475%_)))
                                            (_%$%hd271347271478%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e271346271475%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl271348271480%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl271345271472%_))
                                                (let ((_%$%e271349271483%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl271345271472%_))))
                                                  (let ((_%$%tl271351271488%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e271349271483%_)))
                                                        (_%$%hd271350271486%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e271349271483%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl271351271488%_))
                                                        (_%__kont271781271782%_
                                                         _%$%hd271347271478%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%$%hd271344271470%_))
                                                            (let ((_%__splice271785271786%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%$%hd271344271470%_
                              '0))))
                      (let ((_%$%tl271361271398%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice271785271786%_ '1)))
                            (_%$%target271359271396%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice271785271786%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl271361271398%_))
                            (_%__match271834271835%_
                             _%$%e271340271459%_
                             _%$%hd271341271462%_
                             _%$%tl271342271464%_
                             _%$%e271343271467%_
                             _%$%hd271344271470%_
                             _%$%tl271345271472%_
                             _%__splice271785271786%_
                             _%$%target271359271396%_
                             _%$%tl271361271398%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g271337271375%_)))))
                    (let () (declare (not safe)) (_%$%g271337271375%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%$%hd271344271470%_))
                                                    (let ((_%__splice271785271786%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%$%hd271344271470%_
                                                              '0))))
                                                      (let ((_%$%tl271361271398%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice271785271786%_ '1)))
                    (_%$%target271359271396%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice271785271786%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl271361271398%_))
                    (_%__match271834271835%_
                     _%$%e271340271459%_
                     _%$%hd271341271462%_
                     _%$%tl271342271464%_
                     _%$%e271343271467%_
                     _%$%hd271344271470%_
                     _%$%tl271345271472%_
                     _%__splice271785271786%_
                     _%$%target271359271396%_
                     _%$%tl271361271398%_)
                    (let () (declare (not safe)) (_%$%g271337271375%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g271337271375%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%$%hd271344271470%_))
                                                (let ((_%__splice271785271786%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd271344271470%_
                                                          '0))))
                                                  (let ((_%$%tl271361271398%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice271785271786%_
                                                            '1)))
                                                        (_%$%target271359271396%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice271785271786%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl271361271398%_))
                                                        (_%__match271834271835%_
                                                         _%$%e271340271459%_
                                                         _%$%hd271341271462%_
                                                         _%$%tl271342271464%_
                                                         _%$%e271343271467%_
                                                         _%$%hd271344271470%_
                                                         _%$%tl271345271472%_
                                                         _%__splice271785271786%_
                                                         _%$%target271359271396%_
                                                         _%$%tl271361271398%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g271337271375%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g271337271375%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%hd271344271470%_))
                                        (let ((_%__splice271785271786%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd271344271470%_
                                                  '0))))
                                          (let ((_%$%tl271361271398%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice271785271786%_
                                                    '1)))
                                                (_%$%target271359271396%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice271785271786%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl271361271398%_))
                                                (_%__match271834271835%_
                                                 _%$%e271340271459%_
                                                 _%$%hd271341271462%_
                                                 _%$%tl271342271464%_
                                                 _%$%e271343271467%_
                                                 _%$%hd271344271470%_
                                                 _%$%tl271345271472%_
                                                 _%__splice271785271786%_
                                                 _%$%target271359271396%_
                                                 _%$%tl271361271398%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g271337271375%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g271337271375%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g271337271375%_)))))
                    (let () (declare (not safe)) (_%$%g271337271375%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self270884%_ _%stx270885%_)
        (let* ((_%__stx271837271838%_ _%stx270885%_)
               (_%$%g270889270991%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx271837271838%_)))))
          (let ((_%__kont271839271840%_
                 (lambda (_%$%g270891271281%_
                          _%$%g270892271282%_
                          _%$%g270893271283%_
                          _%$%g270894271284%_
                          _%$%g270895271285%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g270894271284%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g270893271283%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g270892271282%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%g270891271281%_))
                                                 '())))))))
                (_%__kont271841271842%_
                 (lambda (_%$%g270944271107%_
                          _%$%g270945271108%_
                          _%$%g270946271109%_
                          _%$%g270947271110%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g270946271109%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g270945271108%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g270944271107%_))
                                           (cons '#f '())))))))
                (_%__kont271843271844%_ (lambda () '(begin))))
            (let ((_%__match271972271973%_
                   (lambda (_%$%e270896271153%_
                            _%$%hd270897271156%_
                            _%$%tl270898271158%_
                            _%$%e270899271161%_
                            _%$%hd270900271164%_
                            _%$%tl270901271166%_
                            _%$%e270902271169%_
                            _%$%hd270903271172%_
                            _%$%tl270904271174%_
                            _%$%e270905271177%_
                            _%$%hd270906271180%_
                            _%$%tl270907271182%_
                            _%$%e270908271185%_
                            _%$%hd270909271188%_
                            _%$%tl270910271190%_
                            _%$%e270911271193%_
                            _%$%hd270912271196%_
                            _%$%tl270913271198%_
                            _%$%e270914271201%_
                            _%$%hd270915271204%_
                            _%$%tl270916271206%_
                            _%$%e270917271209%_
                            _%$%hd270918271212%_
                            _%$%tl270919271214%_
                            _%$%e270920271217%_
                            _%$%hd270921271220%_
                            _%$%tl270922271222%_
                            _%$%e270923271225%_
                            _%$%hd270924271228%_
                            _%$%tl270925271230%_
                            _%$%e270926271233%_
                            _%$%hd270927271236%_
                            _%$%tl270928271238%_
                            _%$%e270929271241%_
                            _%$%hd270930271244%_
                            _%$%tl270931271246%_
                            _%$%e270932271249%_
                            _%$%hd270933271252%_
                            _%$%tl270934271254%_
                            _%$%e270935271257%_
                            _%$%hd270936271260%_
                            _%$%tl270937271262%_
                            _%$%e270938271265%_
                            _%$%hd270939271268%_
                            _%$%tl270940271270%_
                            _%$%e270941271273%_
                            _%$%hd270942271276%_
                            _%$%tl270943271278%_)
                     (let ((_%$%g270891271281%_ _%$%hd270942271276%_)
                           (_%$%g270892271282%_ _%$%hd270933271252%_)
                           (_%$%g270893271283%_ _%$%hd270924271228%_)
                           (_%$%g270894271284%_ _%$%hd270915271204%_)
                           (_%$%g270895271285%_ _%$%hd270906271180%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%$%g270895271285%_
                              'bind-method!))
                           (_%__kont271839271840%_
                            _%$%g270891271281%_
                            _%$%g270892271282%_
                            _%$%g270893271283%_
                            _%$%g270894271284%_
                            _%$%g270895271285%_)
                           (_%__kont271843271844%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx271837271838%_))
                  (let ((_%$%e270896271153%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx271837271838%_))))
                    (let ((_%$%tl270898271158%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270896271153%_)))
                          (_%$%hd270897271156%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270896271153%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl270898271158%_))
                          (let ((_%$%e270899271161%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl270898271158%_))))
                            (let ((_%$%tl270901271166%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e270899271161%_)))
                                  (_%$%hd270900271164%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e270899271161%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd270900271164%_))
                                  (let ((_%$%e270902271169%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd270900271164%_))))
                                    (let ((_%$%tl270904271174%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e270902271169%_)))
                                          (_%$%hd270903271172%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e270902271169%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd270903271172%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd270903271172%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl270904271174%_))
                                                  (let ((_%$%e270905271177%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl270904271174%_))))
                                                    (let ((_%$%tl270907271182%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e270905271177%_)))
                                                          (_%$%hd270906271180%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e270905271177%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl270907271182%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl270901271166%_))
                      (let ((_%$%e270908271185%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl270901271166%_))))
                        (let ((_%$%tl270910271190%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270908271185%_)))
                              (_%$%hd270909271188%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270908271185%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd270909271188%_))
                              (let ((_%$%e270911271193%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd270909271188%_))))
                                (let ((_%$%tl270913271198%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270911271193%_)))
                                      (_%$%hd270912271196%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270911271193%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd270912271196%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd270912271196%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl270913271198%_))
                                              (let ((_%$%e270914271201%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl270913271198%_))))
                                                (let ((_%$%tl270916271206%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e270914271201%_)))
                                                      (_%$%hd270915271204%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e270914271201%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl270916271206%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl270910271190%_))
                                                          (let ((_%$%e270917271209%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl270910271190%_))))
                    (let ((_%$%tl270919271214%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270917271209%_)))
                          (_%$%hd270918271212%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270917271209%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd270918271212%_))
                          (let ((_%$%e270920271217%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd270918271212%_))))
                            (let ((_%$%tl270922271222%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e270920271217%_)))
                                  (_%$%hd270921271220%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e270920271217%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd270921271220%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd270921271220%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl270922271222%_))
                                          (let ((_%$%e270923271225%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl270922271222%_))))
                                            (let ((_%$%tl270925271230%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e270923271225%_)))
                                                  (_%$%hd270924271228%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e270923271225%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl270925271230%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl270919271214%_))
                                                      (let ((_%$%e270926271233%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl270919271214%_))))
                (let ((_%$%tl270928271238%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e270926271233%_)))
                      (_%$%hd270927271236%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e270926271233%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd270927271236%_))
                      (let ((_%$%e270929271241%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd270927271236%_))))
                        (let ((_%$%tl270931271246%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270929271241%_)))
                              (_%$%hd270930271244%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270929271241%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd270930271244%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd270930271244%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl270931271246%_))
                                      (let ((_%$%e270932271249%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl270931271246%_))))
                                        (let ((_%$%tl270934271254%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270932271249%_)))
                                              (_%$%hd270933271252%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270932271249%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270934271254%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl270928271238%_))
                                                  (let ((_%$%e270935271257%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl270928271238%_))))
                                                    (let ((_%$%tl270937271262%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e270935271257%_)))
                                                          (_%$%hd270936271260%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e270935271257%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd270936271260%_))
                                                          (let ((_%$%e270938271265%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd270936271260%_))))
                    (let ((_%$%tl270940271270%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270938271265%_)))
                          (_%$%hd270939271268%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270938271265%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd270939271268%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd270939271268%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl270940271270%_))
                                  (let ((_%$%e270941271273%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl270940271270%_))))
                                    (let ((_%$%tl270943271278%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e270941271273%_)))
                                          (_%$%hd270942271276%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e270941271273%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl270943271278%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270937271262%_))
                                              (_%__match271972271973%_
                                               _%$%e270896271153%_
                                               _%$%hd270897271156%_
                                               _%$%tl270898271158%_
                                               _%$%e270899271161%_
                                               _%$%hd270900271164%_
                                               _%$%tl270901271166%_
                                               _%$%e270902271169%_
                                               _%$%hd270903271172%_
                                               _%$%tl270904271174%_
                                               _%$%e270905271177%_
                                               _%$%hd270906271180%_
                                               _%$%tl270907271182%_
                                               _%$%e270908271185%_
                                               _%$%hd270909271188%_
                                               _%$%tl270910271190%_
                                               _%$%e270911271193%_
                                               _%$%hd270912271196%_
                                               _%$%tl270913271198%_
                                               _%$%e270914271201%_
                                               _%$%hd270915271204%_
                                               _%$%tl270916271206%_
                                               _%$%e270917271209%_
                                               _%$%hd270918271212%_
                                               _%$%tl270919271214%_
                                               _%$%e270920271217%_
                                               _%$%hd270921271220%_
                                               _%$%tl270922271222%_
                                               _%$%e270923271225%_
                                               _%$%hd270924271228%_
                                               _%$%tl270925271230%_
                                               _%$%e270926271233%_
                                               _%$%hd270927271236%_
                                               _%$%tl270928271238%_
                                               _%$%e270929271241%_
                                               _%$%hd270930271244%_
                                               _%$%tl270931271246%_
                                               _%$%e270932271249%_
                                               _%$%hd270933271252%_
                                               _%$%tl270934271254%_
                                               _%$%e270935271257%_
                                               _%$%hd270936271260%_
                                               _%$%tl270937271262%_
                                               _%$%e270938271265%_
                                               _%$%hd270939271268%_
                                               _%$%tl270940271270%_
                                               _%$%e270941271273%_
                                               _%$%hd270942271276%_
                                               _%$%tl270943271278%_)
                                              (_%__kont271843271844%_))
                                          (_%__kont271843271844%_))))
                                  (_%__kont271843271844%_))
                              (_%__kont271843271844%_))
                          (_%__kont271843271844%_))))
                  (_%__kont271843271844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl270928271238%_))
                                                      (if (let ((__tmp272195
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp272195 'bind-method!))
                  (let ((_%$%g270944271107%_ _%$%hd270933271252%_)
                        (_%$%g270945271108%_ _%$%hd270924271228%_)
                        (_%$%g270946271109%_ _%$%hd270915271204%_)
                        (_%$%g270947271110%_ _%$%hd270906271180%_))
                    (_%__kont271841271842%_
                     _%$%g270944271107%_
                     _%$%g270945271108%_
                     _%$%g270946271109%_
                     _%$%g270947271110%_))
                  (_%__kont271843271844%_))
              (_%__kont271843271844%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont271843271844%_))))
                                      (_%__kont271843271844%_))
                                  (_%__kont271843271844%_))
                              (_%__kont271843271844%_))))
                      (_%__kont271843271844%_))))
              (_%__kont271843271844%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont271843271844%_))))
                                          (_%__kont271843271844%_))
                                      (_%__kont271843271844%_))
                                  (_%__kont271843271844%_))))
                          (_%__kont271843271844%_))))
                  (_%__kont271843271844%_))
              (_%__kont271843271844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont271843271844%_))
                                          (_%__kont271843271844%_))
                                      (_%__kont271843271844%_))))
                              (_%__kont271843271844%_))))
                      (_%__kont271843271844%_))
                  (_%__kont271843271844%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont271843271844%_))
                                              (_%__kont271843271844%_))
                                          (_%__kont271843271844%_))))
                                  (_%__kont271843271844%_))))
                          (_%__kont271843271844%_))))
                  (_%__kont271843271844%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self270708%_ _%stx270709%_)
        (let* ((_%__stx272081272082%_ _%stx270709%_)
               (_%$%g270712270752%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx272081272082%_)))))
          (let ((_%__kont272083272084%_
                 (lambda (_%$%g270714270858%_ _%$%g270715270859%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g270715270859%_))
                               (cons _%$%g270714270858%_ '())))))
                (_%__kont272085272086%_
                 (lambda (_%$%g270737270781%_ _%$%g270738270782%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx272081272082%_))
                (let ((_%$%e270716270802%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx272081272082%_))))
                  (let ((_%$%tl270718270807%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e270716270802%_)))
                        (_%$%hd270717270805%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e270716270802%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl270718270807%_))
                        (let ((_%$%e270719270810%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl270718270807%_))))
                          (let ((_%$%tl270721270815%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e270719270810%_)))
                                (_%$%hd270720270813%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e270719270810%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd270720270813%_))
                                (let ((_%$%e270722270818%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd270720270813%_))))
                                  (let ((_%$%tl270724270823%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e270722270818%_)))
                                        (_%$%hd270723270821%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e270722270818%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd270723270821%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%$%hd270723270821%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl270724270823%_))
                                                (let ((_%$%e270725270826%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl270724270823%_))))
                                                  (let ((_%$%tl270727270831%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e270725270826%_)))
                                                        (_%$%hd270726270829%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e270725270826%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl270727270831%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl270721270815%_))
                                                            (let ((_%$%e270728270834%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl270721270815%_))))
                      (let ((_%$%tl270730270839%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e270728270834%_)))
                            (_%$%hd270729270837%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e270728270834%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd270729270837%_))
                            (let ((_%$%e270731270842%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd270729270837%_))))
                              (let ((_%$%tl270733270847%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e270731270842%_)))
                                    (_%$%hd270732270845%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e270731270842%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd270732270845%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd270732270845%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl270733270847%_))
                                            (let ((_%$%e270734270850%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl270733270847%_))))
                                              (let ((_%$%tl270736270855%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e270734270850%_)))
                                                    (_%$%hd270735270853%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e270734270850%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl270736270855%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl270730270839%_))
                                                        (_%__kont272083272084%_
                                                         _%$%hd270735270853%_
                                                         _%$%hd270726270829%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g270712270752%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl270730270839%_))
                                                        (_%__kont272085272086%_
                                                         _%$%hd270729270837%_
                                                         _%$%hd270720270813%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g270712270752%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl270730270839%_))
                                                (_%__kont272085272086%_
                                                 _%$%hd270729270837%_
                                                 _%$%hd270720270813%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g270712270752%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl270730270839%_))
                                            (_%__kont272085272086%_
                                             _%$%hd270729270837%_
                                             _%$%hd270720270813%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g270712270752%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl270730270839%_))
                                        (_%__kont272085272086%_
                                         _%$%hd270729270837%_
                                         _%$%hd270720270813%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g270712270752%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl270730270839%_))
                                (_%__kont272085272086%_
                                 _%$%hd270729270837%_
                                 _%$%hd270720270813%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g270712270752%_))))))
                    (let () (declare (not safe)) (_%$%g270712270752%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl270721270815%_))
                    (let ((_%$%e270745270773%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl270721270815%_))))
                      (let ((_%$%tl270747270778%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e270745270773%_)))
                            (_%$%hd270746270776%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e270745270773%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl270747270778%_))
                            (_%__kont272085272086%_
                             _%$%hd270746270776%_
                             _%$%hd270720270813%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g270712270752%_)))))
                    (let () (declare (not safe)) (_%$%g270712270752%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl270721270815%_))
                                                    (let ((_%$%e270745270773%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl270721270815%_))))
                                                      (let ((_%$%tl270747270778%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e270745270773%_)))
                    (_%$%hd270746270776%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e270745270773%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl270747270778%_))
                    (_%__kont272085272086%_
                     _%$%hd270746270776%_
                     _%$%hd270720270813%_)
                    (let () (declare (not safe)) (_%$%g270712270752%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g270712270752%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl270721270815%_))
                                                (let ((_%$%e270745270773%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl270721270815%_))))
                                                  (let ((_%$%tl270747270778%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e270745270773%_)))
                                                        (_%$%hd270746270776%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e270745270773%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl270747270778%_))
                                                        (_%__kont272085272086%_
                                                         _%$%hd270746270776%_
                                                         _%$%hd270720270813%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g270712270752%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g270712270752%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl270721270815%_))
                                            (let ((_%$%e270745270773%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl270721270815%_))))
                                              (let ((_%$%tl270747270778%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e270745270773%_)))
                                                    (_%$%hd270746270776%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e270745270773%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl270747270778%_))
                                                    (_%__kont272085272086%_
                                                     _%$%hd270746270776%_
                                                     _%$%hd270720270813%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g270712270752%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g270712270752%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl270721270815%_))
                                    (let ((_%$%e270745270773%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl270721270815%_))))
                                      (let ((_%$%tl270747270778%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e270745270773%_)))
                                            (_%$%hd270746270776%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e270745270773%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl270747270778%_))
                                            (_%__kont272085272086%_
                                             _%$%hd270746270776%_
                                             _%$%hd270720270813%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g270712270752%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g270712270752%_))))))
                        (let () (declare (not safe)) (_%$%g270712270752%_)))))
                (let () (declare (not safe)) (_%$%g270712270752%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self270695%_)
        (let ((_%self270698%_ _%self270695%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self270698%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self270469%_)
        (let* ((_%self270472%_ _%self270469%_)
               (_%$%self270481270497%_ _%self270472%_)
               (_%$%E270483270500%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self270481270497%_
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
               (_%$%K270484270515%_
                (lambda (_%methods270503%_
                         _%metaclass270504%_
                         _%system?270505%_
                         _%final?270506%_
                         _%struct?270507%_
                         _%constructor270508%_
                         _%fields270509%_
                         _%slots270510%_
                         _%precendence-list270511%_
                         _%super270512%_
                         _%id270513%_)
                  (cons '@class
                        (cons _%id270513%_
                              (cons _%super270512%_
                                    (cons _%precendence-list270511%_
                                          (cons _%slots270510%_
                                                (cons _%fields270509%_
                                                      (cons _%constructor270508%_
                                                            (cons _%struct?270507%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?270506%_
                                (cons _%system?270505%_
                                      (cons _%metaclass270504%_
                                            (cons (if _%methods270503%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods270503%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%$%e270485270518%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270481270497%_
                   '1
                   '#f
                   '#f)))
               (_%id270521%_ _%$%e270485270518%_)
               (_%$%e270486270523%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270481270497%_
                   '2
                   '#f
                   '#f)))
               (_%super270526%_ _%$%e270486270523%_)
               (_%$%e270487270528%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270481270497%_
                   '3
                   '#f
                   '#f)))
               (_%precendence-list270531%_ _%$%e270487270528%_)
               (_%$%e270488270533%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270481270497%_
                   '4
                   '#f
                   '#f)))
               (_%slots270536%_ _%$%e270488270533%_)
               (_%$%e270489270538%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270481270497%_
                   '5
                   '#f
                   '#f)))
               (_%fields270541%_ _%$%e270489270538%_)
               (_%$%e270490270543%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270481270497%_
                   '6
                   '#f
                   '#f)))
               (_%constructor270546%_ _%$%e270490270543%_)
               (_%$%e270491270548%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270481270497%_
                   '7
                   '#f
                   '#f)))
               (_%struct?270551%_ _%$%e270491270548%_)
               (_%$%e270492270553%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270481270497%_
                   '8
                   '#f
                   '#f)))
               (_%final?270556%_ _%$%e270492270553%_)
               (_%$%e270493270558%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270481270497%_
                   '9
                   '#f
                   '#f)))
               (_%system?270561%_ _%$%e270493270558%_)
               (_%$%e270494270563%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270481270497%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass270566%_ _%$%e270494270563%_)
               (_%$%e270495270568%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270481270497%_
                   '11
                   '#f
                   '#f)))
               (_%methods270571%_ _%$%e270495270568%_))
          (_%$%K270484270515%_
           _%methods270571%_
           _%metaclass270566%_
           _%system?270561%_
           _%final?270556%_
           _%struct?270551%_
           _%constructor270546%_
           _%fields270541%_
           _%slots270536%_
           _%precendence-list270531%_
           _%super270526%_
           _%id270521%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self270334%_)
        (let ((_%self270337%_ _%self270334%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self270337%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self270199%_)
        (let ((_%self270202%_ _%self270199%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self270202%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self270064%_)
        (let ((_%self270067%_ _%self270064%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self270067%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self270067%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self270067%_
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
      (lambda (_%self269929%_)
        (let ((_%self269932%_ _%self269929%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self269932%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self269932%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self269932%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self269794%_)
        (let ((_%self269797%_ _%self269794%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self269797%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self269797%_
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
      (lambda (_%self269608%_)
        (let* ((_%self269611%_ _%self269608%_)
               (_%$%self269620269629%_ _%self269611%_)
               (_%$%E269622269632%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self269620269629%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%$%K269623269651%_
                (lambda (_%dispatch269635%_
                         _%arity269636%_
                         _%signature269637%_)
                  (if _%signature269637%_
                      (let ((_%signature269639%_ _%signature269637%_))
                        (cons '@lambda
                              (cons _%arity269636%_
                                    (cons _%dispatch269635%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature269639%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature269639%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature269639%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature269639%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature269639%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity269636%_
                                  (cons _%dispatch269635%_ '()))))))
               (_%$%e269624269654%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self269620269629%_
                   '1
                   '#f
                   '#f)))
               (_%$%e269625269657%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self269620269629%_
                   '2
                   '#f
                   '#f)))
               (_%signature269660%_ _%$%e269625269657%_)
               (_%$%e269626269662%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self269620269629%_
                   '3
                   '#f
                   '#f)))
               (_%arity269665%_ _%$%e269626269662%_)
               (_%$%e269627269667%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self269620269629%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch269670%_ _%$%e269627269667%_))
          (_%$%K269623269651%_
           _%dispatch269670%_
           _%arity269665%_
           _%signature269660%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self269468%_)
        (let ((_%self269471%_ _%self269468%_))
          (letrec ((_%clause-e269482%_
                    (lambda (_%clause269484%_)
                      (cdr (let ((__method272169
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause269484%_
                                     'typedecl))))
                             (if __method272169
                                 (let ()
                                   (declare (not safe))
                                   (__method272169 _%clause269484%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause269484%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e269482%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self269471%_
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
      (lambda (_%self269333%_)
        (let ((_%self269336%_ _%self269333%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self269336%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self269336%_
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
      (lambda (_%self269198%_)
        (let ((_%self269201%_ _%self269198%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self269201%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self269201%_
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
      (lambda (_%self269063%_)
        (let ((_%self269066%_ _%self269063%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self269066%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
