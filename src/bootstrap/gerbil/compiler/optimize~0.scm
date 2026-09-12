(declare (block) (standard-bindings) (extended-bindings))
(begin
  (define gerbil/compiler/optimize::timestamp 1789188916)
  (begin
    (define gxc#optimizer-info-init!
      (lambda ()
        (if (let () (declare (not safe)) (gxc#current-compile-optimizer-info))
            '#!void
            (let ((__tmp272153
                   (let ((__obj272147
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
                       (gxc#optimizer-info:::init! __obj272147))
                     __obj272147)))
              (declare (not safe))
              (gxc#current-compile-optimizer-info __tmp272153)))))
    (define gxc#optimize!
      (lambda (_%ctx271755%_)
        (let ((__tmp272155
               (lambda ()
                 (let ((__tmp272157
                        (lambda ()
                          (gxc#optimizer-load-builtin-ssxi _%ctx271755%_)
                          (gxc#optimizer-load-ssxi-deps _%ctx271755%_)
                          (let ((__tmp272159
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f))
                                (__tmp272158
                                 (##structure-ref
                                  _%ctx271755%_
                                  '1
                                  gx#expander-context::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp272159 __tmp272158 '#t))
                          (let ((_%code271759%_
                                 (gxc#optimize-source
                                  (##structure-ref
                                   _%ctx271755%_
                                   '11
                                   gx#module-context::t
                                   '#f))))
                            (##structure-set!
                             _%ctx271755%_
                             _%code271759%_
                             '11
                             gx#module-context::t
                             '#f))))
                       (__tmp272156
                        (let () (declare (not safe)) (make-hash-table-eq))))
                   (declare (not safe))
                   (call-with-parameters__1
                    __tmp272157
                    gxc#current-compile-local-type
                    __tmp272156))))
              (__tmp272154 (let () (declare (not safe)) (make-hash-table-eq))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp272155
           gxc#current-compile-mutators
           __tmp272154))))
    (define gxc#optimizer-load-builtin-ssxi
      (lambda (_%ctx271741%_)
        (letrec ((_%load-it!271743%_
                  (lambda (_%id271753%_)
                    (if (let ((__tmp272160
                               (##structure-ref
                                (let ()
                                  (declare (not safe))
                                  (gxc#current-compile-optimizer-info))
                                '3
                                gxc#optimizer-info::t
                                '#f)))
                          (declare (not safe))
                          (hash-get __tmp272160 _%id271753%_))
                        '#!void
                        (begin
                          (gxc#optimizer-import-ssxi-by-id _%id271753%_)
                          (let ((__tmp272161
                                 (##structure-ref
                                  (let ()
                                    (declare (not safe))
                                    (gxc#current-compile-optimizer-info))
                                  '3
                                  gxc#optimizer-info::t
                                  '#f)))
                            (declare (not safe))
                            (hash-put! __tmp272161 _%id271753%_ '#t)))))))
          (let* ((_%modid271745%_
                  (##structure-ref
                   _%ctx271741%_
                   '1
                   gx#expander-context::t
                   '#f))
                 (_%modid-str271747%_ (symbol->string _%modid271745%_)))
            (if (or (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/runtime" _%modid-str271747%_))
                    (let ()
                      (declare (not safe))
                      (##string-prefix? '"gerbil/core" _%modid-str271747%_)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!271743%_
                   '(gerbil/builtin gerbil/builtin-inline-rules)))
                (let ()
                  (declare (not safe))
                  (##for-each
                   _%load-it!271743%_
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
      (lambda (_%ctx271678%_)
        (letrec* ((_%deps271680%_
                   (let* ((_%imports271731%_
                           (##structure-ref
                            _%ctx271678%_
                            '8
                            gx#module-context::t
                            '#f))
                          (_%$e271733%_
                           (let ()
                             (declare (not safe))
                             (gx#core-context-prelude__% _%ctx271678%_))))
                     (if _%$e271733%_
                         (cons _%$e271733%_ _%imports271731%_)
                         _%imports271731%_))))
          (let _%lp271682%_ ((_%rest271684%_ _%deps271680%_))
            (let* ((_%$%rest271685271693%_ _%rest271684%_)
                   (_%$%else271687271701%_ (lambda () '#!void))
                   (_%$%K271689271719%_
                    (lambda (_%rest271704%_ _%hd271705%_)
                      (if (let ()
                            (declare (not safe))
                            (##structure-instance-of?
                             _%hd271705%_
                             'gx#module-context::t))
                          (let ()
                            (if (let ((__tmp272163
                                       (##structure-ref
                                        (let ()
                                          (declare (not safe))
                                          (gxc#current-compile-optimizer-info))
                                        '3
                                        gxc#optimizer-info::t
                                        '#f))
                                      (__tmp272162
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd271705%_
                                          '1
                                          '#f
                                          '#f))))
                                  (declare (not safe))
                                  (hash-get __tmp272163 __tmp272162))
                                '#!void
                                (begin
                                  (let ((_%$e271708%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#core-context-prelude__%
                                            _%hd271705%_))))
                                    (if _%$e271708%_
                                        (_%lp271682%_
                                         (cons _%$e271708%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##unchecked-structure-ref
                                                  _%hd271705%_
                                                  '8
                                                  '#f
                                                  '#f))))
                                        (_%lp271682%_
                                         (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd271705%_
                                            '8
                                            '#f
                                            '#f)))))
                                  (gxc#optimizer-load-ssxi _%hd271705%_)))
                            (_%lp271682%_ _%rest271704%_))
                          (if (let ()
                                (declare (not safe))
                                (##structure-instance-of?
                                 _%hd271705%_
                                 'gx#prelude-context::t))
                              (let ()
                                (if (let ((__tmp272165
                                           (##structure-ref
                                            (let ()
                                              (declare (not safe))
                                              (gxc#current-compile-optimizer-info))
                                            '3
                                            gxc#optimizer-info::t
                                            '#f))
                                          (__tmp272164
                                           (let ()
                                             (declare (not safe))
                                             (##unchecked-structure-ref
                                              _%hd271705%_
                                              '1
                                              '#f
                                              '#f))))
                                      (declare (not safe))
                                      (hash-get __tmp272165 __tmp272164))
                                    '#!void
                                    (begin
                                      (_%lp271682%_
                                       (let ()
                                         (declare (not safe))
                                         (##unchecked-structure-ref
                                          _%hd271705%_
                                          '7
                                          '#f
                                          '#f)))
                                      (gxc#optimizer-load-ssxi _%hd271705%_)))
                                (_%lp271682%_ _%rest271704%_))
                              (if (let ()
                                    (declare (not safe))
                                    (##structure-direct-instance-of?
                                     _%hd271705%_
                                     'gx#module-import::t))
                                  (_%lp271682%_
                                   (cons (let ()
                                           (declare (not safe))
                                           (##unchecked-structure-ref
                                            _%hd271705%_
                                            '1
                                            '#f
                                            '#f))
                                         _%rest271704%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-direct-instance-of?
                                         _%hd271705%_
                                         'gx#module-export::t))
                                      (_%lp271682%_
                                       (cons (let ()
                                               (declare (not safe))
                                               (##unchecked-structure-ref
                                                _%hd271705%_
                                                '1
                                                '#f
                                                '#f))
                                             _%rest271704%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (##structure-direct-instance-of?
                                             _%hd271705%_
                                             'gx#import-set::t))
                                          (_%lp271682%_
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (##unchecked-structure-ref
                                                    _%hd271705%_
                                                    '1
                                                    '#f
                                                    '#f))
                                                 _%rest271704%_))
                                          (let ()
                                            (declare (not safe))
                                            (error '"Unexpected module import"
                                                   _%hd271705%_))))))))))
              (if (pair? _%$%rest271685271693%_)
                  (let ((_%$%hd271690271722%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%rest271685271693%_)))
                        (_%$%tl271691271724%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%rest271685271693%_))))
                    (let* ((_%hd271727%_ _%$%hd271690271722%_)
                           (_%rest271729%_ _%$%tl271691271724%_))
                      (_%$%K271689271719%_ _%rest271729%_ _%hd271727%_)))
                  '#!void))))))
    (define gxc#optimizer-load-ssxi
      (lambda (_%ctx271658%_)
        (if (and (let ()
                   (declare (not safe))
                   (##structure-instance-of?
                    _%ctx271658%_
                    'gx#module-context::t))
                 (list? (let ()
                          (declare (not safe))
                          (##unchecked-structure-ref
                           _%ctx271658%_
                           '7
                           '#f
                           '#f))))
            '#!void
            (let* ((_%ht271660%_
                    (##structure-ref
                     (let ()
                       (declare (not safe))
                       (gxc#current-compile-optimizer-info))
                     '3
                     gxc#optimizer-info::t
                     '#f))
                   (_%id271662%_
                    (##structure-ref
                     _%ctx271658%_
                     '1
                     gx#expander-context::t
                     '#f))
                   (_%mod271664%_
                    (let ()
                      (declare (not safe))
                      (hash-get _%ht271660%_ _%id271662%_)))
                   (_%$e271667%_ _%mod271664%_))
              (if _%$e271667%_
                  _%$e271667%_
                  (let* ((_%mod271670%_
                          (gxc#optimizer-import-ssxi _%ctx271658%_))
                         (_%val271675%_
                          (let ((_%$e271672%_ _%mod271670%_))
                            (if _%$e271672%_ _%$e271672%_ '#!void))))
                    (let ()
                      (declare (not safe))
                      (hash-put! _%ht271660%_ _%id271662%_ _%val271675%_))
                    _%val271675%_))))))
    (define gxc#optimizer-import-ssxi
      (lambda (_%ctx271656%_)
        (if (##structure-ref _%ctx271656%_ '1 gx#expander-context::t '#f)
            (gxc#optimizer-import-ssxi-by-id
             (##structure-ref _%ctx271656%_ '1 gx#expander-context::t '#f))
            '#f)))
    (define gxc#optimizer-import-ssxi-by-id
      (lambda (_%id271634%_)
        (letrec ((_%catch-e271636%_
                  (lambda (_%exn271654%_)
                    (if (equal? (let ()
                                  (declare (not safe))
                                  (error-message _%exn271654%_))
                                '"cannot find library module")
                        '#!void
                        (begin
                          (let ()
                            (declare (not safe))
                            (display-exception__0 _%exn271654%_))
                          (let ()
                            (declare (not safe))
                            (displayln
                             '"*** WARNING Failed to load ssxi module for "
                             _%id271634%_))))
                    '#f))
                 (_%import-e271637%_
                  (lambda ()
                    (let* ((_%str-id271640%_
                            (let ((__tmp272166
                                   (let ()
                                     (declare (not safe))
                                     (gxc#module-id->path-string
                                      _%id271634%_))))
                              (declare (not safe))
                              (##string-append __tmp272166 '".ssxi")))
                           (_%artefact-path271647%_
                            (let ((_%$%odir271641271643%_
                                   (let ()
                                     (declare (not safe))
                                     (gxc#current-compile-output-dir))))
                              (if _%$%odir271641271643%_
                                  (let ((_%odir271645%_
                                         _%$%odir271641271643%_))
                                    (path-expand
                                     (let ()
                                       (declare (not safe))
                                       (##string-append
                                        _%str-id271640%_
                                        '".ss"))
                                     _%odir271645%_))
                                  '#f)))
                           (_%library-path271649%_
                            (let ((__tmp272167
                                   (let ()
                                     (declare (not safe))
                                     (##string-append
                                      '":"
                                      _%str-id271640%_
                                      '".ss"))))
                              (declare (not safe))
                              (##string->symbol __tmp272167)))
                           (_%ssxi-path271651%_
                            (if (and _%artefact-path271647%_
                                     (file-exists? _%artefact-path271647%_))
                                _%artefact-path271647%_
                                _%library-path271649%_)))
                      (let ()
                        (declare (not safe))
                        (gxc#verbose
                         '"Loading ssxi module "
                         _%ssxi-path271651%_))
                      (let ()
                        (declare (not safe))
                        (gx#import-module__% _%ssxi-path271651%_ '#t '#t))))))
          (let ()
            (declare (not safe))
            (__with-catch _%catch-e271636%_ _%import-e271637%_)))))
    (define gxc#optimize-source
      (lambda (_%stx271619%_)
        (let ()
          (declare (not safe))
          (gxc#apply-collect-mutators _%stx271619%_))
        (let ()
          (declare (not safe))
          (gxc#apply-collect-top-level-type-info _%stx271619%_))
        (let* ((_%stx271621%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-generate-method-specializers _%stx271619%_)))
               (_%stx271623%_
                (let ()
                  (declare (not safe))
                  (gxc#apply-lift-top-lambdas _%stx271621%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-type-info _%stx271623%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-mutable-type-info _%stx271623%_))
          (let _%fixpoint271626%_ ((_%current271628%_
                                    (let ()
                                      (declare (not safe))
                                      (gxc#optimizer-current-types))))
            (let ()
              (declare (not safe))
              (gxc#apply-refine-type-info _%stx271623%_))
            (let ((_%refined271630%_
                   (let ()
                     (declare (not safe))
                     (gxc#optimizer-current-types))))
              (if (equal? _%current271628%_ _%refined271630%_)
                  '#!void
                  (_%fixpoint271626%_ _%refined271630%_))))
          (let ()
            (declare (not safe))
            (gxc#apply-check-return-type _%stx271623%_))
          (let ()
            (declare (not safe))
            (gxc#apply-collect-top-level-declarations _%stx271623%_))
          (let ((_%stx271632%_
                 (let ()
                   (declare (not safe))
                   (gxc#apply-optimize-annotated _%stx271623%_))))
            (declare (not safe))
            (gxc#apply-optimize-call _%stx271632%_)))))
    (define gxc#::generate-ssxi::t
      (let ((__tmp272169 (list gxc#::generate-runtime-empty::t))
            (__tmp272168 (cons (cons 'final: '#t) '())))
        (declare (not safe))
        (__make-class-type
         'gxc#::generate-ssxi::t
         '::generate-ssxi
         __tmp272169
         '()
         __tmp272168
         '#f)))
    (define gxc#::generate-ssxi?
      (let ()
        (declare (not safe))
        (__make-class-predicate gxc#::generate-ssxi::t)))
    (define gxc#make-::generate-ssxi
      (lambda _%$args271616%_
        (apply make-instance gxc#::generate-ssxi::t _%$args271616%_)))
    (define gxc#::generate-ssxi-bind-methods!
      (let ((__tmp272170
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
        (__make-atomic-promise __tmp272170)))
    (define gxc#apply-generate-ssxi
      (lambda (_%stx271608%_)
        (force gxc#::generate-ssxi-bind-methods!)
        (let* ((_%self271611%_
                (let ((__obj272149
                       (let ()
                         (declare (not safe))
                         (##structure gxc#::generate-ssxi::t))))
                  __obj272149))
               (__tmp272171
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gxc#compile-e__1 _%self271611%_ _%stx271608%_)))))
          (declare (not safe))
          (call-with-parameters__1
           __tmp272171
           gxc#current-compile-method
           _%self271611%_))))
    (define gxc#generate-ssxi-begin-syntax%
      (lambda (_%self271568%_ _%stx271569%_)
        (let* ((_%$%g271571271581%_
                (lambda (_%$%g271572271578%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271572271578%_))))
               (_%$%g271570271605%_
                (lambda (_%$%g271572271584%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271572271584%_))
                      (let ((_%$%e271574271586%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g271572271584%_))))
                        (let ((_%$%hd271575271589%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271574271586%_)))
                              (_%$%tl271576271591%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271574271586%_))))
                          (let ((__tmp272174
                                 (lambda ()
                                   (let ()
                                     (declare (not safe))
                                     (gxc#generate-runtime-begin%
                                      _%self271568%_
                                      _%stx271569%_))))
                                (__tmp272172
                                 (let ((__tmp272173
                                        (let ()
                                          (declare (not safe))
                                          (gx#current-expander-phi))))
                                   (declare (not safe))
                                   (##fx+ __tmp272173 '1))))
                            (declare (not safe))
                            (call-with-parameters__1
                             __tmp272174
                             gx#current-expander-phi
                             __tmp272172))))
                      (_%$%g271571271581%_ _%$%g271572271584%_)))))
          (_%$%g271570271605%_ _%stx271569%_))))
    (define gxc#generate-ssxi-module%
      (lambda (_%self271507%_ _%stx271508%_)
        (let* ((_%$%g271510271524%_
                (lambda (_%$%g271511271521%_)
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%$%g271511271521%_))))
               (_%$%g271509271565%_
                (lambda (_%$%g271511271527%_)
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%g271511271527%_))
                      (let ((_%$%e271514271529%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%g271511271527%_))))
                        (let ((_%$%hd271515271532%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e271514271529%_)))
                              (_%$%tl271516271534%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e271514271529%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%tl271516271534%_))
                              (let ((_%$%e271517271537%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%tl271516271534%_))))
                                (let ((_%$%hd271518271540%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e271517271537%_)))
                                      (_%$%tl271519271542%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e271517271537%_))))
                                  (let* ((_%ctx271559%_
                                          (let ()
                                            (declare (not safe))
                                            (gx#syntax-local-e__0
                                             _%$%hd271518271540%_)))
                                         (_%code271561%_
                                          (##structure-ref
                                           _%ctx271559%_
                                           '11
                                           gx#module-context::t
                                           '#f))
                                         (__tmp272175
                                          (lambda ()
                                            (let ()
                                              (declare (not safe))
                                              (gxc#compile-e__1
                                               _%self271507%_
                                               _%code271561%_)))))
                                    (declare (not safe))
                                    (call-with-parameters__1
                                     __tmp272175
                                     gx#current-expander-context
                                     _%ctx271559%_))))
                              (_%$%g271510271524%_ _%$%g271511271527%_))))
                      (_%$%g271510271524%_ _%$%g271511271527%_)))))
          (_%$%g271509271565%_ _%stx271508%_))))
    (define gxc#generate-ssxi-define-values%
      (lambda (_%self271314%_ _%stx271315%_)
        (letrec ((_%generate-e271317%_
                  (lambda (_%id271492%_)
                    (let* ((_%sym271494%_
                            (if (let ((__tmp272176
                                       (let ()
                                         (declare (not safe))
                                         (gx#datum->syntax__0 '#f 'id))))
                                  (declare (not safe))
                                  (gx#identifier? __tmp272176))
                                (let ()
                                  (declare (not safe))
                                  (gxc#identifier-symbol _%id271492%_))
                                '#f))
                           (_%$e271496%_
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class _%sym271494%_))))
                      (if _%$e271496%_
                          (let ()
                            (let ()
                              (declare (not safe))
                              (gxc#verbose
                               '"generate class decl"
                               _%sym271494%_))
                            (cons 'begin
                                  (cons (cons 'declare-class
                                              (cons _%sym271494%_
                                                    (cons (let ((__method272150
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (__method-ref _%$e271496%_ 'typedecl))))
                    (if __method272150
                        (let ()
                          (declare (not safe))
                          (__method272150 _%$e271496%_))
                        (begin
                          (let ()
                            (declare (not safe))
                            (error '"Missing method" _%$e271496%_ 'typedecl))
                          '#!void)))
                  '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                        (cons (cons 'declare-type
                                                    (cons _%sym271494%_
                                                          (cons (cons 'optimizer-resolve-class
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                              (cons (list 'quote
                                          (list 'typedecl _%sym271494%_))
                                    '('class::t)))
                        '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              '()))))
                          (let ((_%$e271501%_
                                 (let ()
                                   (declare (not safe))
                                   (gxc#optimizer-lookup-type _%sym271494%_))))
                            (if _%$e271501%_
                                (let ()
                                  (let ()
                                    (declare (not safe))
                                    (gxc#verbose
                                     '"generate typedecl "
                                     _%sym271494%_
                                     '" "
                                     _%$e271501%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (##structure-instance-of?
                                         _%$e271501%_
                                         'gxc#!class::t))
                                      (cons 'declare-type
                                            (cons _%sym271494%_
                                                  (cons (list 'optimizer-resolve-class
                                                              (list 'quote
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (list 'typedecl _%sym271494%_))
                      (list 'quote
                            (let ()
                              (declare (not safe))
                              (gxc#optimizer-lookup-class-name _%$e271501%_))))
                '())))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                      (cons 'declare-type
                                            (cons _%sym271494%_
                                                  (cons (let ((__method272151
                                                               (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (declare (not safe))
                         (__method-ref _%$e271501%_ 'typedecl))))
                  (if __method272151
                      (let ()
                        (declare (not safe))
                        (__method272151 _%$e271501%_))
                      (begin
                        (let ()
                          (declare (not safe))
                          (error '"Missing method" _%$e271501%_ 'typedecl))
                        '#!void)))
                '())))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                '(begin))))))))
          (let* ((_%__stx271762271763%_ _%stx271315%_)
                 (_%$%g271320271358%_
                  (lambda ()
                    (let ()
                      (declare (not safe))
                      (gx#raise-syntax-error
                       '#f
                       '"Bad syntax; invalid match target"
                       _%__stx271762271763%_)))))
            (let ((_%__kont271764271765%_
                   (lambda (_%$%g271322271474%_)
                     (_%generate-e271317%_ _%$%g271322271474%_)))
                  (_%__kont271766271767%_
                   (lambda (_%$%g271335271409%_)
                     (let ((_%types271435%_
                            (map _%generate-e271317%_
                                 (let ((__tmp272177
                                        (lambda (_%$%g271427271430%_
                                                 _%$%g271428271432%_)
                                          (cons _%$%g271427271430%_
                                                _%$%g271428271432%_))))
                                   (declare (not safe))
                                   (foldr__0
                                    __tmp272177
                                    '()
                                    _%$%g271335271409%_)))))
                       (cons 'begin _%types271435%_)))))
              (let ((_%__match271817271818%_
                     (lambda (_%$%e271336271363%_
                              _%$%hd271337271366%_
                              _%$%tl271338271368%_
                              _%$%e271339271371%_
                              _%$%hd271340271374%_
                              _%$%tl271341271376%_
                              _%__splice271768271769%_
                              _%$%target271342271379%_
                              _%$%tl271344271381%_)
                       (letrec ((_%$%loop271345271384%_
                                 (lambda (_%$%hd271343271387%_
                                          _%$%id271349271389%_)
                                   (if (let ()
                                         (declare (not safe))
                                         (gx#stx-pair? _%$%hd271343271387%_))
                                       (let ((_%$%e271346271391%_
                                              (let ()
                                                (declare (not safe))
                                                (gx#stx-e
                                                 _%$%hd271343271387%_))))
                                         (let ((_%$%lp-tl271348271396%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##cdr _%$%e271346271391%_)))
                                               (_%$%lp-hd271347271394%_
                                                (let ()
                                                  (declare (not safe))
                                                  (##car _%$%e271346271391%_))))
                                           (_%$%loop271345271384%_
                                            _%$%lp-tl271348271396%_
                                            (cons _%$%lp-hd271347271394%_
                                                  _%$%id271349271389%_))))
                                       (let ((_%$%id271350271399%_
                                              (reverse _%$%id271349271389%_)))
                                         (if (let ()
                                               (declare (not safe))
                                               (gx#stx-pair?
                                                _%$%tl271341271376%_))
                                             (let ((_%$%e271351271401%_
                                                    (let ()
                                                      (declare (not safe))
                                                      (gx#stx-e
                                                       _%$%tl271341271376%_))))
                                               (let ((_%$%tl271353271406%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##cdr _%$%e271351271401%_)))
                                                     (_%$%hd271352271404%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (##car _%$%e271351271401%_))))
                                                 (if (let ()
                                                       (declare (not safe))
                                                       (gx#stx-null?
                                                        _%$%tl271353271406%_))
                                                     (_%__kont271766271767%_
                                                      _%$%id271350271399%_)
                                                     (let ()
                                                       (declare (not safe))
                                                       (_%$%g271320271358%_)))))
                                             (let ()
                                               (declare (not safe))
                                               (_%$%g271320271358%_))))))))
                         (_%$%loop271345271384%_
                          _%$%target271342271379%_
                          '())))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%__stx271762271763%_))
                    (let ((_%$%e271323271442%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%__stx271762271763%_))))
                      (let ((_%$%tl271325271447%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e271323271442%_)))
                            (_%$%hd271324271445%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e271323271442%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%tl271325271447%_))
                            (let ((_%$%e271326271450%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%tl271325271447%_))))
                              (let ((_%$%tl271328271455%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e271326271450%_)))
                                    (_%$%hd271327271453%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e271326271450%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%hd271327271453%_))
                                    (let ((_%$%e271329271458%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%hd271327271453%_))))
                                      (let ((_%$%tl271331271463%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e271329271458%_)))
                                            (_%$%hd271330271461%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e271329271458%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl271331271463%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl271328271455%_))
                                                (let ((_%$%e271332271466%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl271328271455%_))))
                                                  (let ((_%$%tl271334271471%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e271332271466%_)))
                                                        (_%$%hd271333271469%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e271332271466%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl271334271471%_))
                                                        (_%__kont271764271765%_
                                                         _%$%hd271330271461%_)
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair/null?
                                                               _%$%hd271327271453%_))
                                                            (let ((_%__splice271768271769%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#syntax-split-splice->vector
                              _%$%hd271327271453%_
                              '0))))
                      (let ((_%$%tl271344271381%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice271768271769%_ '1)))
                            (_%$%target271342271379%_
                             (let ()
                               (declare (not safe))
                               (##vector-ref _%__splice271768271769%_ '0))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl271344271381%_))
                            (_%__match271817271818%_
                             _%$%e271323271442%_
                             _%$%hd271324271445%_
                             _%$%tl271325271447%_
                             _%$%e271326271450%_
                             _%$%hd271327271453%_
                             _%$%tl271328271455%_
                             _%__splice271768271769%_
                             _%$%target271342271379%_
                             _%$%tl271344271381%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g271320271358%_)))))
                    (let () (declare (not safe)) (_%$%g271320271358%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair/null?
                                                       _%$%hd271327271453%_))
                                                    (let ((_%__splice271768271769%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#syntax-split-splice->vector
                                                              _%$%hd271327271453%_
                                                              '0))))
                                                      (let ((_%$%tl271344271381%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##vector-ref _%__splice271768271769%_ '1)))
                    (_%$%target271342271379%_
                     (let ()
                       (declare (not safe))
                       (##vector-ref _%__splice271768271769%_ '0))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl271344271381%_))
                    (_%__match271817271818%_
                     _%$%e271323271442%_
                     _%$%hd271324271445%_
                     _%$%tl271325271447%_
                     _%$%e271326271450%_
                     _%$%hd271327271453%_
                     _%$%tl271328271455%_
                     _%__splice271768271769%_
                     _%$%target271342271379%_
                     _%$%tl271344271381%_)
                    (let () (declare (not safe)) (_%$%g271320271358%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g271320271358%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair/null?
                                                   _%$%hd271327271453%_))
                                                (let ((_%__splice271768271769%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#syntax-split-splice->vector
                                                          _%$%hd271327271453%_
                                                          '0))))
                                                  (let ((_%$%tl271344271381%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice271768271769%_
                                                            '1)))
                                                        (_%$%target271342271379%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##vector-ref
                                                            _%__splice271768271769%_
                                                            '0))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl271344271381%_))
                                                        (_%__match271817271818%_
                                                         _%$%e271323271442%_
                                                         _%$%hd271324271445%_
                                                         _%$%tl271325271447%_
                                                         _%$%e271326271450%_
                                                         _%$%hd271327271453%_
                                                         _%$%tl271328271455%_
                                                         _%__splice271768271769%_
                                                         _%$%target271342271379%_
                                                         _%$%tl271344271381%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g271320271358%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g271320271358%_))))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-pair/null?
                                           _%$%hd271327271453%_))
                                        (let ((_%__splice271768271769%_
                                               (let ()
                                                 (declare (not safe))
                                                 (gx#syntax-split-splice->vector
                                                  _%$%hd271327271453%_
                                                  '0))))
                                          (let ((_%$%tl271344271381%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice271768271769%_
                                                    '1)))
                                                (_%$%target271342271379%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (##vector-ref
                                                    _%__splice271768271769%_
                                                    '0))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl271344271381%_))
                                                (_%__match271817271818%_
                                                 _%$%e271323271442%_
                                                 _%$%hd271324271445%_
                                                 _%$%tl271325271447%_
                                                 _%$%e271326271450%_
                                                 _%$%hd271327271453%_
                                                 _%$%tl271328271455%_
                                                 _%__splice271768271769%_
                                                 _%$%target271342271379%_
                                                 _%$%tl271344271381%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g271320271358%_)))))
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g271320271358%_))))))
                            (let ()
                              (declare (not safe))
                              (_%$%g271320271358%_)))))
                    (let () (declare (not safe)) (_%$%g271320271358%_)))))))))
    (define gxc#generate-ssxi-call%
      (lambda (_%self270867%_ _%stx270868%_)
        (let* ((_%__stx271820271821%_ _%stx270868%_)
               (_%$%g270872270974%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx271820271821%_)))))
          (let ((_%__kont271822271823%_
                 (lambda (_%$%g270874271264%_
                          _%$%g270875271265%_
                          _%$%g270876271266%_
                          _%$%g270877271267%_
                          _%$%g270878271268%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g270877271267%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g270876271266%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g270875271265%_))
                                           (cons (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%g270874271264%_))
                                                 '())))))))
                (_%__kont271824271825%_
                 (lambda (_%$%g270927271090%_
                          _%$%g270928271091%_
                          _%$%g270929271092%_
                          _%$%g270930271093%_)
                   (cons 'declare-method
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g270929271092%_))
                               (cons (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%g270928271091%_))
                                     (cons (let ()
                                             (declare (not safe))
                                             (gxc#identifier-symbol
                                              _%$%g270927271090%_))
                                           (cons '#f '())))))))
                (_%__kont271826271827%_ (lambda () '(begin))))
            (let ((_%__match271955271956%_
                   (lambda (_%$%e270879271136%_
                            _%$%hd270880271139%_
                            _%$%tl270881271141%_
                            _%$%e270882271144%_
                            _%$%hd270883271147%_
                            _%$%tl270884271149%_
                            _%$%e270885271152%_
                            _%$%hd270886271155%_
                            _%$%tl270887271157%_
                            _%$%e270888271160%_
                            _%$%hd270889271163%_
                            _%$%tl270890271165%_
                            _%$%e270891271168%_
                            _%$%hd270892271171%_
                            _%$%tl270893271173%_
                            _%$%e270894271176%_
                            _%$%hd270895271179%_
                            _%$%tl270896271181%_
                            _%$%e270897271184%_
                            _%$%hd270898271187%_
                            _%$%tl270899271189%_
                            _%$%e270900271192%_
                            _%$%hd270901271195%_
                            _%$%tl270902271197%_
                            _%$%e270903271200%_
                            _%$%hd270904271203%_
                            _%$%tl270905271205%_
                            _%$%e270906271208%_
                            _%$%hd270907271211%_
                            _%$%tl270908271213%_
                            _%$%e270909271216%_
                            _%$%hd270910271219%_
                            _%$%tl270911271221%_
                            _%$%e270912271224%_
                            _%$%hd270913271227%_
                            _%$%tl270914271229%_
                            _%$%e270915271232%_
                            _%$%hd270916271235%_
                            _%$%tl270917271237%_
                            _%$%e270918271240%_
                            _%$%hd270919271243%_
                            _%$%tl270920271245%_
                            _%$%e270921271248%_
                            _%$%hd270922271251%_
                            _%$%tl270923271253%_
                            _%$%e270924271256%_
                            _%$%hd270925271259%_
                            _%$%tl270926271261%_)
                     (let ((_%$%g270874271264%_ _%$%hd270925271259%_)
                           (_%$%g270875271265%_ _%$%hd270916271235%_)
                           (_%$%g270876271266%_ _%$%hd270907271211%_)
                           (_%$%g270877271267%_ _%$%hd270898271187%_)
                           (_%$%g270878271268%_ _%$%hd270889271163%_))
                       (if (let ()
                             (declare (not safe))
                             (gxc#runtime-identifier=?
                              _%$%g270878271268%_
                              'bind-method!))
                           (_%__kont271822271823%_
                            _%$%g270874271264%_
                            _%$%g270875271265%_
                            _%$%g270876271266%_
                            _%$%g270877271267%_
                            _%$%g270878271268%_)
                           (_%__kont271826271827%_))))))
              (if (let ()
                    (declare (not safe))
                    (gx#stx-pair? _%__stx271820271821%_))
                  (let ((_%$%e270879271136%_
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%__stx271820271821%_))))
                    (let ((_%$%tl270881271141%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270879271136%_)))
                          (_%$%hd270880271139%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270879271136%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%tl270881271141%_))
                          (let ((_%$%e270882271144%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%tl270881271141%_))))
                            (let ((_%$%tl270884271149%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e270882271144%_)))
                                  (_%$%hd270883271147%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e270882271144%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%hd270883271147%_))
                                  (let ((_%$%e270885271152%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%hd270883271147%_))))
                                    (let ((_%$%tl270887271157%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e270885271152%_)))
                                          (_%$%hd270886271155%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e270885271152%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#identifier?
                                             _%$%hd270886271155%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-eq?
                                                 '%#ref
                                                 _%$%hd270886271155%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl270887271157%_))
                                                  (let ((_%$%e270888271160%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl270887271157%_))))
                                                    (let ((_%$%tl270890271165%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e270888271160%_)))
                                                          (_%$%hd270889271163%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e270888271160%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-null?
                                                             _%$%tl270890271165%_))
                                                          (if (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (gx#stx-pair? _%$%tl270884271149%_))
                      (let ((_%$%e270891271168%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%tl270884271149%_))))
                        (let ((_%$%tl270893271173%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270891271168%_)))
                              (_%$%hd270892271171%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270891271168%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-pair? _%$%hd270892271171%_))
                              (let ((_%$%e270894271176%_
                                     (let ()
                                       (declare (not safe))
                                       (gx#stx-e _%$%hd270892271171%_))))
                                (let ((_%$%tl270896271181%_
                                       (let ()
                                         (declare (not safe))
                                         (##cdr _%$%e270894271176%_)))
                                      (_%$%hd270895271179%_
                                       (let ()
                                         (declare (not safe))
                                         (##car _%$%e270894271176%_))))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#identifier? _%$%hd270895271179%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-eq?
                                             '%#ref
                                             _%$%hd270895271179%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-pair?
                                                 _%$%tl270896271181%_))
                                              (let ((_%$%e270897271184%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (gx#stx-e
                                                        _%$%tl270896271181%_))))
                                                (let ((_%$%tl270899271189%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##cdr _%$%e270897271184%_)))
                                                      (_%$%hd270898271187%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (##car _%$%e270897271184%_))))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl270899271189%_))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%tl270893271173%_))
                                                          (let ((_%$%e270900271192%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%tl270893271173%_))))
                    (let ((_%$%tl270902271197%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270900271192%_)))
                          (_%$%hd270901271195%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270900271192%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#stx-pair? _%$%hd270901271195%_))
                          (let ((_%$%e270903271200%_
                                 (let ()
                                   (declare (not safe))
                                   (gx#stx-e _%$%hd270901271195%_))))
                            (let ((_%$%tl270905271205%_
                                   (let ()
                                     (declare (not safe))
                                     (##cdr _%$%e270903271200%_)))
                                  (_%$%hd270904271203%_
                                   (let ()
                                     (declare (not safe))
                                     (##car _%$%e270903271200%_))))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#identifier? _%$%hd270904271203%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-eq?
                                         '%#quote
                                         _%$%hd270904271203%_))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-pair?
                                             _%$%tl270905271205%_))
                                          (let ((_%$%e270906271208%_
                                                 (let ()
                                                   (declare (not safe))
                                                   (gx#stx-e
                                                    _%$%tl270905271205%_))))
                                            (let ((_%$%tl270908271213%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##cdr _%$%e270906271208%_)))
                                                  (_%$%hd270907271211%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (##car _%$%e270906271208%_))))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-null?
                                                     _%$%tl270908271213%_))
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-pair?
                                                         _%$%tl270902271197%_))
                                                      (let ((_%$%e270909271216%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (gx#stx-e _%$%tl270902271197%_))))
                (let ((_%$%tl270911271221%_
                       (let ()
                         (declare (not safe))
                         (##cdr _%$%e270909271216%_)))
                      (_%$%hd270910271219%_
                       (let ()
                         (declare (not safe))
                         (##car _%$%e270909271216%_))))
                  (if (let ()
                        (declare (not safe))
                        (gx#stx-pair? _%$%hd270910271219%_))
                      (let ((_%$%e270912271224%_
                             (let ()
                               (declare (not safe))
                               (gx#stx-e _%$%hd270910271219%_))))
                        (let ((_%$%tl270914271229%_
                               (let ()
                                 (declare (not safe))
                                 (##cdr _%$%e270912271224%_)))
                              (_%$%hd270913271227%_
                               (let ()
                                 (declare (not safe))
                                 (##car _%$%e270912271224%_))))
                          (if (let ()
                                (declare (not safe))
                                (gx#identifier? _%$%hd270913271227%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-eq? '%#ref _%$%hd270913271227%_))
                                  (if (let ()
                                        (declare (not safe))
                                        (gx#stx-pair? _%$%tl270914271229%_))
                                      (let ((_%$%e270915271232%_
                                             (let ()
                                               (declare (not safe))
                                               (gx#stx-e
                                                _%$%tl270914271229%_))))
                                        (let ((_%$%tl270917271237%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##cdr _%$%e270915271232%_)))
                                              (_%$%hd270916271235%_
                                               (let ()
                                                 (declare (not safe))
                                                 (##car _%$%e270915271232%_))))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270917271237%_))
                                              (if (let ()
                                                    (declare (not safe))
                                                    (gx#stx-pair?
                                                     _%$%tl270911271221%_))
                                                  (let ((_%$%e270918271240%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (gx#stx-e
                                                            _%$%tl270911271221%_))))
                                                    (let ((_%$%tl270920271245%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##cdr _%$%e270918271240%_)))
                                                          (_%$%hd270919271243%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (##car _%$%e270918271240%_))))
                                                      (if (let ()
                                                            (declare
                                                              (not safe))
                                                            (gx#stx-pair?
                                                             _%$%hd270919271243%_))
                                                          (let ((_%$%e270921271248%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#stx-e _%$%hd270919271243%_))))
                    (let ((_%$%tl270923271253%_
                           (let ()
                             (declare (not safe))
                             (##cdr _%$%e270921271248%_)))
                          (_%$%hd270922271251%_
                           (let ()
                             (declare (not safe))
                             (##car _%$%e270921271248%_))))
                      (if (let ()
                            (declare (not safe))
                            (gx#identifier? _%$%hd270922271251%_))
                          (if (let ()
                                (declare (not safe))
                                (gx#stx-eq? '%#quote _%$%hd270922271251%_))
                              (if (let ()
                                    (declare (not safe))
                                    (gx#stx-pair? _%$%tl270923271253%_))
                                  (let ((_%$%e270924271256%_
                                         (let ()
                                           (declare (not safe))
                                           (gx#stx-e _%$%tl270923271253%_))))
                                    (let ((_%$%tl270926271261%_
                                           (let ()
                                             (declare (not safe))
                                             (##cdr _%$%e270924271256%_)))
                                          (_%$%hd270925271259%_
                                           (let ()
                                             (declare (not safe))
                                             (##car _%$%e270924271256%_))))
                                      (if (let ()
                                            (declare (not safe))
                                            (gx#stx-null?
                                             _%$%tl270926271261%_))
                                          (if (let ()
                                                (declare (not safe))
                                                (gx#stx-null?
                                                 _%$%tl270920271245%_))
                                              (_%__match271955271956%_
                                               _%$%e270879271136%_
                                               _%$%hd270880271139%_
                                               _%$%tl270881271141%_
                                               _%$%e270882271144%_
                                               _%$%hd270883271147%_
                                               _%$%tl270884271149%_
                                               _%$%e270885271152%_
                                               _%$%hd270886271155%_
                                               _%$%tl270887271157%_
                                               _%$%e270888271160%_
                                               _%$%hd270889271163%_
                                               _%$%tl270890271165%_
                                               _%$%e270891271168%_
                                               _%$%hd270892271171%_
                                               _%$%tl270893271173%_
                                               _%$%e270894271176%_
                                               _%$%hd270895271179%_
                                               _%$%tl270896271181%_
                                               _%$%e270897271184%_
                                               _%$%hd270898271187%_
                                               _%$%tl270899271189%_
                                               _%$%e270900271192%_
                                               _%$%hd270901271195%_
                                               _%$%tl270902271197%_
                                               _%$%e270903271200%_
                                               _%$%hd270904271203%_
                                               _%$%tl270905271205%_
                                               _%$%e270906271208%_
                                               _%$%hd270907271211%_
                                               _%$%tl270908271213%_
                                               _%$%e270909271216%_
                                               _%$%hd270910271219%_
                                               _%$%tl270911271221%_
                                               _%$%e270912271224%_
                                               _%$%hd270913271227%_
                                               _%$%tl270914271229%_
                                               _%$%e270915271232%_
                                               _%$%hd270916271235%_
                                               _%$%tl270917271237%_
                                               _%$%e270918271240%_
                                               _%$%hd270919271243%_
                                               _%$%tl270920271245%_
                                               _%$%e270921271248%_
                                               _%$%hd270922271251%_
                                               _%$%tl270923271253%_
                                               _%$%e270924271256%_
                                               _%$%hd270925271259%_
                                               _%$%tl270926271261%_)
                                              (_%__kont271826271827%_))
                                          (_%__kont271826271827%_))))
                                  (_%__kont271826271827%_))
                              (_%__kont271826271827%_))
                          (_%__kont271826271827%_))))
                  (_%__kont271826271827%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (if (let ()
                                                        (declare (not safe))
                                                        (gx#stx-null?
                                                         _%$%tl270911271221%_))
                                                      (if (let ((__tmp272178
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (let ()
                           (declare (not safe))
                           (gx#datum->syntax__0 '#f '-bind-method))))
                    (declare (not safe))
                    (gxc#runtime-identifier=? __tmp272178 'bind-method!))
                  (let ((_%$%g270927271090%_ _%$%hd270916271235%_)
                        (_%$%g270928271091%_ _%$%hd270907271211%_)
                        (_%$%g270929271092%_ _%$%hd270898271187%_)
                        (_%$%g270930271093%_ _%$%hd270889271163%_))
                    (_%__kont271824271825%_
                     _%$%g270927271090%_
                     _%$%g270928271091%_
                     _%$%g270929271092%_
                     _%$%g270930271093%_))
                  (_%__kont271826271827%_))
              (_%__kont271826271827%_)))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont271826271827%_))))
                                      (_%__kont271826271827%_))
                                  (_%__kont271826271827%_))
                              (_%__kont271826271827%_))))
                      (_%__kont271826271827%_))))
              (_%__kont271826271827%_))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont271826271827%_))))
                                          (_%__kont271826271827%_))
                                      (_%__kont271826271827%_))
                                  (_%__kont271826271827%_))))
                          (_%__kont271826271827%_))))
                  (_%__kont271826271827%_))
              (_%__kont271826271827%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                              (_%__kont271826271827%_))
                                          (_%__kont271826271827%_))
                                      (_%__kont271826271827%_))))
                              (_%__kont271826271827%_))))
                      (_%__kont271826271827%_))
                  (_%__kont271826271827%_))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                  (_%__kont271826271827%_))
                                              (_%__kont271826271827%_))
                                          (_%__kont271826271827%_))))
                                  (_%__kont271826271827%_))))
                          (_%__kont271826271827%_))))
                  (_%__kont271826271827%_)))))))
    (define gxc#generate-ssxi-begin-annotation%
      (lambda (_%self270691%_ _%stx270692%_)
        (let* ((_%__stx272064272065%_ _%stx270692%_)
               (_%$%g270695270735%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (gx#raise-syntax-error
                     '#f
                     '"Bad syntax; invalid match target"
                     _%__stx272064272065%_)))))
          (let ((_%__kont272066272067%_
                 (lambda (_%$%g270697270841%_ _%$%g270698270842%_)
                   (cons 'declare-inline-rule!
                         (cons (let ()
                                 (declare (not safe))
                                 (gxc#identifier-symbol _%$%g270698270842%_))
                               (cons _%$%g270697270841%_ '())))))
                (_%__kont272068272069%_
                 (lambda (_%$%g270720270764%_ _%$%g270721270765%_) '(begin))))
            (if (let ()
                  (declare (not safe))
                  (gx#stx-pair? _%__stx272064272065%_))
                (let ((_%$%e270699270785%_
                       (let ()
                         (declare (not safe))
                         (gx#stx-e _%__stx272064272065%_))))
                  (let ((_%$%tl270701270790%_
                         (let ()
                           (declare (not safe))
                           (##cdr _%$%e270699270785%_)))
                        (_%$%hd270700270788%_
                         (let ()
                           (declare (not safe))
                           (##car _%$%e270699270785%_))))
                    (if (let ()
                          (declare (not safe))
                          (gx#stx-pair? _%$%tl270701270790%_))
                        (let ((_%$%e270702270793%_
                               (let ()
                                 (declare (not safe))
                                 (gx#stx-e _%$%tl270701270790%_))))
                          (let ((_%$%tl270704270798%_
                                 (let ()
                                   (declare (not safe))
                                   (##cdr _%$%e270702270793%_)))
                                (_%$%hd270703270796%_
                                 (let ()
                                   (declare (not safe))
                                   (##car _%$%e270702270793%_))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-pair? _%$%hd270703270796%_))
                                (let ((_%$%e270705270801%_
                                       (let ()
                                         (declare (not safe))
                                         (gx#stx-e _%$%hd270703270796%_))))
                                  (let ((_%$%tl270707270806%_
                                         (let ()
                                           (declare (not safe))
                                           (##cdr _%$%e270705270801%_)))
                                        (_%$%hd270706270804%_
                                         (let ()
                                           (declare (not safe))
                                           (##car _%$%e270705270801%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#identifier?
                                           _%$%hd270706270804%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-eq?
                                               '@inline
                                               _%$%hd270706270804%_))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl270707270806%_))
                                                (let ((_%$%e270708270809%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl270707270806%_))))
                                                  (let ((_%$%tl270710270814%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e270708270809%_)))
                                                        (_%$%hd270709270812%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e270708270809%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl270710270814%_))
                                                        (if (let ()
                                                              (declare
                                                                (not safe))
                                                              (gx#stx-pair?
                                                               _%$%tl270704270798%_))
                                                            (let ((_%$%e270711270817%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl270704270798%_))))
                      (let ((_%$%tl270713270822%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e270711270817%_)))
                            (_%$%hd270712270820%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e270711270817%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-pair? _%$%hd270712270820%_))
                            (let ((_%$%e270714270825%_
                                   (let ()
                                     (declare (not safe))
                                     (gx#stx-e _%$%hd270712270820%_))))
                              (let ((_%$%tl270716270830%_
                                     (let ()
                                       (declare (not safe))
                                       (##cdr _%$%e270714270825%_)))
                                    (_%$%hd270715270828%_
                                     (let ()
                                       (declare (not safe))
                                       (##car _%$%e270714270825%_))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#identifier? _%$%hd270715270828%_))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-eq?
                                           '%#quote
                                           _%$%hd270715270828%_))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl270716270830%_))
                                            (let ((_%$%e270717270833%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl270716270830%_))))
                                              (let ((_%$%tl270719270838%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e270717270833%_)))
                                                    (_%$%hd270718270836%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e270717270833%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl270719270838%_))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl270713270822%_))
                                                        (_%__kont272066272067%_
                                                         _%$%hd270718270836%_
                                                         _%$%hd270709270812%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g270695270735%_)))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl270713270822%_))
                                                        (_%__kont272068272069%_
                                                         _%$%hd270712270820%_
                                                         _%$%hd270703270796%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g270695270735%_))))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-null?
                                                   _%$%tl270713270822%_))
                                                (_%__kont272068272069%_
                                                 _%$%hd270712270820%_
                                                 _%$%hd270703270796%_)
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g270695270735%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl270713270822%_))
                                            (_%__kont272068272069%_
                                             _%$%hd270712270820%_
                                             _%$%hd270703270796%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g270695270735%_))))
                                    (if (let ()
                                          (declare (not safe))
                                          (gx#stx-null? _%$%tl270713270822%_))
                                        (_%__kont272068272069%_
                                         _%$%hd270712270820%_
                                         _%$%hd270703270796%_)
                                        (let ()
                                          (declare (not safe))
                                          (_%$%g270695270735%_))))))
                            (if (let ()
                                  (declare (not safe))
                                  (gx#stx-null? _%$%tl270713270822%_))
                                (_%__kont272068272069%_
                                 _%$%hd270712270820%_
                                 _%$%hd270703270796%_)
                                (let ()
                                  (declare (not safe))
                                  (_%$%g270695270735%_))))))
                    (let () (declare (not safe)) (_%$%g270695270735%_)))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-pair? _%$%tl270704270798%_))
                    (let ((_%$%e270728270756%_
                           (let ()
                             (declare (not safe))
                             (gx#stx-e _%$%tl270704270798%_))))
                      (let ((_%$%tl270730270761%_
                             (let ()
                               (declare (not safe))
                               (##cdr _%$%e270728270756%_)))
                            (_%$%hd270729270759%_
                             (let ()
                               (declare (not safe))
                               (##car _%$%e270728270756%_))))
                        (if (let ()
                              (declare (not safe))
                              (gx#stx-null? _%$%tl270730270761%_))
                            (_%__kont272068272069%_
                             _%$%hd270729270759%_
                             _%$%hd270703270796%_)
                            (let ()
                              (declare (not safe))
                              (_%$%g270695270735%_)))))
                    (let () (declare (not safe)) (_%$%g270695270735%_))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-pair?
                                                       _%$%tl270704270798%_))
                                                    (let ((_%$%e270728270756%_
                                                           (let ()
                                                             (declare
                                                               (not safe))
                                                             (gx#stx-e
                                                              _%$%tl270704270798%_))))
                                                      (let ((_%$%tl270730270761%_
                                                             (let ()
                                                               (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                         (not safe))
                       (##cdr _%$%e270728270756%_)))
                    (_%$%hd270729270759%_
                     (let ()
                       (declare (not safe))
                       (##car _%$%e270728270756%_))))
                (if (let ()
                      (declare (not safe))
                      (gx#stx-null? _%$%tl270730270761%_))
                    (_%__kont272068272069%_
                     _%$%hd270729270759%_
                     _%$%hd270703270796%_)
                    (let () (declare (not safe)) (_%$%g270695270735%_)))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g270695270735%_))))
                                            (if (let ()
                                                  (declare (not safe))
                                                  (gx#stx-pair?
                                                   _%$%tl270704270798%_))
                                                (let ((_%$%e270728270756%_
                                                       (let ()
                                                         (declare (not safe))
                                                         (gx#stx-e
                                                          _%$%tl270704270798%_))))
                                                  (let ((_%$%tl270730270761%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##cdr _%$%e270728270756%_)))
                                                        (_%$%hd270729270759%_
                                                         (let ()
                                                           (declare (not safe))
                                                           (##car _%$%e270728270756%_))))
                                                    (if (let ()
                                                          (declare (not safe))
                                                          (gx#stx-null?
                                                           _%$%tl270730270761%_))
                                                        (_%__kont272068272069%_
                                                         _%$%hd270729270759%_
                                                         _%$%hd270703270796%_)
                                                        (let ()
                                                          (declare (not safe))
                                                          (_%$%g270695270735%_)))))
                                                (let ()
                                                  (declare (not safe))
                                                  (_%$%g270695270735%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-pair?
                                               _%$%tl270704270798%_))
                                            (let ((_%$%e270728270756%_
                                                   (let ()
                                                     (declare (not safe))
                                                     (gx#stx-e
                                                      _%$%tl270704270798%_))))
                                              (let ((_%$%tl270730270761%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##cdr _%$%e270728270756%_)))
                                                    (_%$%hd270729270759%_
                                                     (let ()
                                                       (declare (not safe))
                                                       (##car _%$%e270728270756%_))))
                                                (if (let ()
                                                      (declare (not safe))
                                                      (gx#stx-null?
                                                       _%$%tl270730270761%_))
                                                    (_%__kont272068272069%_
                                                     _%$%hd270729270759%_
                                                     _%$%hd270703270796%_)
                                                    (let ()
                                                      (declare (not safe))
                                                      (_%$%g270695270735%_)))))
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g270695270735%_))))))
                                (if (let ()
                                      (declare (not safe))
                                      (gx#stx-pair? _%$%tl270704270798%_))
                                    (let ((_%$%e270728270756%_
                                           (let ()
                                             (declare (not safe))
                                             (gx#stx-e _%$%tl270704270798%_))))
                                      (let ((_%$%tl270730270761%_
                                             (let ()
                                               (declare (not safe))
                                               (##cdr _%$%e270728270756%_)))
                                            (_%$%hd270729270759%_
                                             (let ()
                                               (declare (not safe))
                                               (##car _%$%e270728270756%_))))
                                        (if (let ()
                                              (declare (not safe))
                                              (gx#stx-null?
                                               _%$%tl270730270761%_))
                                            (_%__kont272068272069%_
                                             _%$%hd270729270759%_
                                             _%$%hd270703270796%_)
                                            (let ()
                                              (declare (not safe))
                                              (_%$%g270695270735%_)))))
                                    (let ()
                                      (declare (not safe))
                                      (_%$%g270695270735%_))))))
                        (let () (declare (not safe)) (_%$%g270695270735%_)))))
                (let () (declare (not safe)) (_%$%g270695270735%_)))))))
    (define gxc#!alias::typedecl
      (lambda (_%self270678%_)
        (let ((_%self270681%_ _%self270678%_))
          (cons '@alias
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self270681%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!alias::t 'typedecl gxc#!alias::typedecl '#f))
    (define gxc#!class::typedecl
      (lambda (_%self270452%_)
        (let* ((_%self270455%_ _%self270452%_)
               (_%$%self270464270480%_ _%self270455%_)
               (_%$%E270466270483%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self270464270480%_
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
               (_%$%K270467270498%_
                (lambda (_%methods270486%_
                         _%metaclass270487%_
                         _%system?270488%_
                         _%final?270489%_
                         _%struct?270490%_
                         _%constructor270491%_
                         _%fields270492%_
                         _%slots270493%_
                         _%precendence-list270494%_
                         _%super270495%_
                         _%id270496%_)
                  (cons '@class
                        (cons _%id270496%_
                              (cons _%super270495%_
                                    (cons _%precendence-list270494%_
                                          (cons _%slots270493%_
                                                (cons _%fields270492%_
                                                      (cons _%constructor270491%_
                                                            (cons _%struct?270490%_
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (cons _%final?270489%_
                                (cons _%system?270488%_
                                      (cons _%metaclass270487%_
                                            (cons (if _%methods270486%_
                                                      (let ()
                                                        (declare (not safe))
                                                        (hash->list
                                                         _%methods270486%_))
                                                      '#f)
                                                  '()))))))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
               (_%$%e270468270501%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270464270480%_
                   '1
                   '#f
                   '#f)))
               (_%id270504%_ _%$%e270468270501%_)
               (_%$%e270469270506%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270464270480%_
                   '2
                   '#f
                   '#f)))
               (_%super270509%_ _%$%e270469270506%_)
               (_%$%e270470270511%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270464270480%_
                   '3
                   '#f
                   '#f)))
               (_%precendence-list270514%_ _%$%e270470270511%_)
               (_%$%e270471270516%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270464270480%_
                   '4
                   '#f
                   '#f)))
               (_%slots270519%_ _%$%e270471270516%_)
               (_%$%e270472270521%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270464270480%_
                   '5
                   '#f
                   '#f)))
               (_%fields270524%_ _%$%e270472270521%_)
               (_%$%e270473270526%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270464270480%_
                   '6
                   '#f
                   '#f)))
               (_%constructor270529%_ _%$%e270473270526%_)
               (_%$%e270474270531%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270464270480%_
                   '7
                   '#f
                   '#f)))
               (_%struct?270534%_ _%$%e270474270531%_)
               (_%$%e270475270536%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270464270480%_
                   '8
                   '#f
                   '#f)))
               (_%final?270539%_ _%$%e270475270536%_)
               (_%$%e270476270541%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270464270480%_
                   '9
                   '#f
                   '#f)))
               (_%system?270544%_ _%$%e270476270541%_)
               (_%$%e270477270546%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270464270480%_
                   '10
                   '#f
                   '#f)))
               (_%metaclass270549%_ _%$%e270477270546%_)
               (_%$%e270478270551%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self270464270480%_
                   '11
                   '#f
                   '#f)))
               (_%methods270554%_ _%$%e270478270551%_))
          (_%$%K270467270498%_
           _%methods270554%_
           _%metaclass270549%_
           _%system?270544%_
           _%final?270539%_
           _%struct?270534%_
           _%constructor270529%_
           _%fields270524%_
           _%slots270519%_
           _%precendence-list270514%_
           _%super270509%_
           _%id270504%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!class::t 'typedecl gxc#!class::typedecl '#f))
    (define gxc#!predicate::typedecl
      (lambda (_%self270317%_)
        (let ((_%self270320%_ _%self270317%_))
          (cons '@predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self270320%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!predicate::t
       'typedecl
       gxc#!predicate::typedecl
       '#f))
    (define gxc#!constructor::typedecl
      (lambda (_%self270182%_)
        (let ((_%self270185%_ _%self270182%_))
          (cons '@constructor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self270185%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!constructor::t
       'typedecl
       gxc#!constructor::typedecl
       '#f))
    (define gxc#!accessor::typedecl
      (lambda (_%self270047%_)
        (let ((_%self270050%_ _%self270047%_))
          (cons '@accessor
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self270050%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self270050%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self270050%_
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
      (lambda (_%self269912%_)
        (let ((_%self269915%_ _%self269912%_))
          (cons '@mutator
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self269915%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self269915%_
                               '3
                               '#f
                               '#f))
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%self269915%_
                                     '4
                                     '#f
                                     '#f))
                                  '())))))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!mutator::t 'typedecl gxc#!mutator::typedecl '#f))
    (define gxc#!interface::typedecl
      (lambda (_%self269777%_)
        (let ((_%self269780%_ _%self269777%_))
          (cons '@interface
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self269780%_ '1 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self269780%_
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
      (lambda (_%self269591%_)
        (let* ((_%self269594%_ _%self269591%_)
               (_%$%self269603269612%_ _%self269594%_)
               (_%$%E269605269615%_
                (lambda ()
                  (let ()
                    (declare (not safe))
                    (error '"No clause matching"
                           _%$%self269603269612%_
                           '((!lambda _ signature arity dispatch))))
                  '#!void))
               (_%$%K269606269634%_
                (lambda (_%dispatch269618%_
                         _%arity269619%_
                         _%signature269620%_)
                  (if _%signature269620%_
                      (let ((_%signature269622%_ _%signature269620%_))
                        (cons '@lambda
                              (cons _%arity269619%_
                                    (cons _%dispatch269618%_
                                          (cons 'signature:
                                                (cons (cons 'return:
                                                            (cons (let ()
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                            (declare (not safe))
                            (##unchecked-structure-ref
                             _%signature269622%_
                             '1
                             '#f
                             '#f))
                          (cons 'effect:
                                (cons (let ()
                                        (declare (not safe))
                                        (##unchecked-structure-ref
                                         _%signature269622%_
                                         '2
                                         '#f
                                         '#f))
                                      (cons 'arguments:
                                            (cons (let ()
                                                    (declare (not safe))
                                                    (##unchecked-structure-ref
                                                     _%signature269622%_
                                                     '3
                                                     '#f
                                                     '#f))
                                                  (cons 'unchecked:
                                                        (cons (let ()
                                                                (declare
;;<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<<
                          (not safe))
                        (##unchecked-structure-ref
                         _%signature269622%_
                         '4
                         '#f
                         '#f))
                      (cons 'origin:
                            (cons (let ()
                                    (declare (not safe))
                                    (##unchecked-structure-ref
                                     _%signature269622%_
                                     '5
                                     '#f
                                     '#f))
                                  '()))))))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
              '()))))))
;;>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>
                      (cons '@lambda
                            (cons _%arity269619%_
                                  (cons _%dispatch269618%_ '()))))))
               (_%$%e269607269637%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self269603269612%_
                   '1
                   '#f
                   '#f)))
               (_%$%e269608269640%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self269603269612%_
                   '2
                   '#f
                   '#f)))
               (_%signature269643%_ _%$%e269608269640%_)
               (_%$%e269609269645%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self269603269612%_
                   '3
                   '#f
                   '#f)))
               (_%arity269648%_ _%$%e269609269645%_)
               (_%$%e269610269650%_
                (let ()
                  (declare (not safe))
                  (##unchecked-structure-ref
                   _%$%self269603269612%_
                   '4
                   '#f
                   '#f)))
               (_%dispatch269653%_ _%$%e269610269650%_))
          (_%$%K269606269634%_
           _%dispatch269653%_
           _%arity269648%_
           _%signature269643%_))))
    (let ()
      (declare (not safe))
      (__bind-method!__% gxc#!lambda::t 'typedecl gxc#!lambda::typedecl '#f))
    (define gxc#!case-lambda::typedecl
      (lambda (_%self269451%_)
        (let ((_%self269454%_ _%self269451%_))
          (letrec ((_%clause-e269465%_
                    (lambda (_%clause269467%_)
                      (cdr (let ((__method272152
                                  (let ()
                                    (declare (not safe))
                                    (__method-ref
                                     _%clause269467%_
                                     'typedecl))))
                             (if __method272152
                                 (let ()
                                   (declare (not safe))
                                   (__method272152 _%clause269467%_))
                                 (begin
                                   (let ()
                                     (declare (not safe))
                                     (error '"Missing method"
                                            _%clause269467%_
                                            'typedecl))
                                   '#!void)))))))
            (cons '@case-lambda
                  (map _%clause-e269465%_
                       (let ()
                         (declare (not safe))
                         (##unchecked-structure-ref
                          _%self269454%_
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
      (lambda (_%self269316%_)
        (let ((_%self269319%_ _%self269316%_))
          (cons '@kw-lambda
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self269319%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self269319%_
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
      (lambda (_%self269181%_)
        (let ((_%self269184%_ _%self269181%_))
          (cons '@kw-lambda-dispatch
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self269184%_ '3 '#f '#f))
                      (cons (let ()
                              (declare (not safe))
                              (##unchecked-structure-ref
                               _%self269184%_
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
      (lambda (_%self269046%_)
        (let ((_%self269049%_ _%self269046%_))
          (cons '@primitive-predicate
                (cons (let ()
                        (declare (not safe))
                        (##unchecked-structure-ref _%self269049%_ '1 '#f '#f))
                      '())))))
    (let ()
      (declare (not safe))
      (__bind-method!__%
       gxc#!primitive-predicate::t
       'typedecl
       gxc#!primitive-predicate::typedecl
       '#f))))
